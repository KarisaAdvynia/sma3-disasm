Sub080F67D4:
push  {r4-r5,lr}                ; 080F67D4
ldr   r0,=0x03007244            ; 080F67D6
ldr   r1,[r0]                   ; 080F67D8
mov   r3,0xF0                   ; 080F67DA
lsl   r3,r3,0x1                 ; 080F67DC
add   r2,r1,r3                  ; 080F67DE
mov   r4,0x80                   ; 080F67E0
lsl   r4,r4,0x2                 ; 080F67E2
add   r3,r1,r4                  ; 080F67E4
ldr   r4,=0x030069E4            ; 080F67E6
mov   r5,r0                     ; 080F67E8
@@Code080F67EA:
ldr   r0,[r2]                   ; 080F67EA
asr   r1,r0,0x8                 ; 080F67EC
strh  r1,[r4]                   ; 080F67EE
add   r4,0x2                    ; 080F67F0
ldr   r1,[r2,0x20]              ; 080F67F2
add   r0,r0,r1                  ; 080F67F4
stmia r2!,{r0}                  ; 080F67F6
cmp   r2,r3                     ; 080F67F8
blo   @@Code080F67EA            ; 080F67FA
ldr   r0,[r5]                   ; 080F67FC
mov   r1,0x88                   ; 080F67FE
lsl   r1,r1,0x2                 ; 080F6800
add   r2,r0,r1                  ; 080F6802
mov   r4,0x8B                   ; 080F6804
lsl   r4,r4,0x2                 ; 080F6806
add   r3,r0,r4                  ; 080F6808
@@Code080F680A:
ldr   r0,[r2]                   ; 080F680A
ldr   r1,[r2,0xC]               ; 080F680C
add   r0,r0,r1                  ; 080F680E
stmia r2!,{r0}                  ; 080F6810
cmp   r2,r3                     ; 080F6812
blo   @@Code080F680A            ; 080F6814
pop   {r4-r5}                   ; 080F6816
pop   {r0}                      ; 080F6818
bx    r0                        ; 080F681A
.pool                           ; 080F681C

Sub080F6824:
push  {lr}                      ; 080F6824
mov   r1,r0                     ; 080F6826
ldr   r2,[r1,0xC]               ; 080F6828
cmp   r2,0x0                    ; 080F682A
ble   @@Code080F6834            ; 080F682C
ldr   r0,[r1,0x4]               ; 080F682E
add   r0,r0,r2                  ; 080F6830
b     @@Code080F6836            ; 080F6832
@@Code080F6834:
ldr   r0,[r1,0x4]               ; 080F6834
@@Code080F6836:
str   r0,[r1,0x24]              ; 080F6836
pop   {r0}                      ; 080F6838
bx    r0                        ; 080F683A

Sub080F683C:
mov   r12,r0                    ; 080F683C
lsl   r1,r1,0x18                ; 080F683E
lsr   r1,r1,0x18                ; 080F6840
mov   r3,r12                    ; 080F6842
add   r3,0x3A                   ; 080F6844
mov   r2,0x0                    ; 080F6846
strb  r1,[r3]                   ; 080F6848
add   r3,0x1                    ; 080F684A
strb  r2,[r3]                   ; 080F684C
ldr   r2,=DataPtrs082139F8      ; 080F684E
lsl   r1,r1,0x2                 ; 080F6850
add   r2,r1,r2                  ; 080F6852
ldr   r2,[r2]                   ; 080F6854
ldrb  r2,[r2]                   ; 080F6856
mov   r3,r12                    ; 080F6858
strh  r2,[r3,0x28]              ; 080F685A
ldr   r2,=DataPtrs08213A6C      ; 080F685C
add   r1,r1,r2                  ; 080F685E
ldr   r1,[r1]                   ; 080F6860
ldrb  r1,[r1]                   ; 080F6862
strh  r1,[r3,0x2A]              ; 080F6864
bx    lr                        ; 080F6866
.pool                           ; 080F6868

Sub080F6870:
push  {r4-r6,lr}                ; 080F6870
lsl   r0,r0,0x18                ; 080F6872
lsr   r3,r0,0x18                ; 080F6874
ldr   r6,=0x03007244            ; 080F6876
ldr   r1,[r6]                   ; 080F6878
ldr   r5,=0x024A                ; 080F687A
add   r1,r1,r5                  ; 080F687C
ldrb  r0,[r1]                   ; 080F687E
add   r0,0x1                    ; 080F6880
strb  r0,[r1]                   ; 080F6882
ldr   r0,[r6]                   ; 080F6884
add   r4,r0,r5                  ; 080F6886
ldrb  r1,[r4]                   ; 080F6888
mov   r0,0xF                    ; 080F688A
and   r0,r1                     ; 080F688C
cmp   r0,0x5                    ; 080F688E
bne   @@Code080F68A4            ; 080F6890
mov   r0,0xF0                   ; 080F6892
and   r0,r1                     ; 080F6894
strb  r0,[r4]                   ; 080F6896
b     @@Code080F68D6            ; 080F6898
.pool                           ; 080F689A

@@Code080F68A4:
cmp   r0,0x1                    ; 080F68A4
bne   @@Code080F68D6            ; 080F68A6
ldr   r1,=0x03002200            ; 080F68A8
ldr   r2,=Data081975F6          ; 080F68AA
lsl   r0,r3,0x1                 ; 080F68AC
add   r0,r0,r2                  ; 080F68AE
ldrh  r0,[r0]                   ; 080F68B0
ldr   r2,=0x4058                ; 080F68B2
add   r1,r1,r2                  ; 080F68B4
strh  r0,[r1]                   ; 080F68B6
ldr   r3,=Data08197606          ; 080F68B8
ldrb  r0,[r4]                   ; 080F68BA
lsr   r0,r0,0x4                 ; 080F68BC
mov   r2,0x1                    ; 080F68BE
and   r0,r2                     ; 080F68C0
lsl   r0,r0,0x1                 ; 080F68C2
add   r0,r0,r3                  ; 080F68C4
ldrh  r0,[r0]                   ; 080F68C6
bl    PlayYISound               ; 080F68C8
ldr   r1,[r6]                   ; 080F68CC
add   r1,r1,r5                  ; 080F68CE
ldrb  r0,[r1]                   ; 080F68D0
add   r0,0x10                   ; 080F68D2
strb  r0,[r1]                   ; 080F68D4
@@Code080F68D6:
pop   {r4-r6}                   ; 080F68D6
pop   {r0}                      ; 080F68D8
bx    r0                        ; 080F68DA
.pool                           ; 080F68DC

Sub080F68EC:
push  {r4-r7,lr}                ; 080F68EC
mov   r2,r0                     ; 080F68EE
ldrh  r7,[r2,0x2A]              ; 080F68F0
cmp   r7,0x0                    ; 080F68F2
bne   @@Code080F6952            ; 080F68F4
mov   r1,r2                     ; 080F68F6
add   r1,0x3B                   ; 080F68F8
ldrb  r0,[r1]                   ; 080F68FA
add   r0,0x1                    ; 080F68FC
strb  r0,[r1]                   ; 080F68FE
ldr   r0,=DataPtrs082139F8      ; 080F6900
mov   r12,r0                    ; 080F6902
mov   r3,r2                     ; 080F6904
add   r3,0x3A                   ; 080F6906
ldrb  r0,[r3]                   ; 080F6908
lsl   r5,r0,0x2                 ; 080F690A
mov   r4,r12                    ; 080F690C
add   r0,r5,r4                  ; 080F690E
ldrb  r6,[r1]                   ; 080F6910
ldr   r0,[r0]                   ; 080F6912
add   r0,r0,r6                  ; 080F6914
ldrb  r4,[r0]                   ; 080F6916
cmp   r4,0xFF                   ; 080F6918
bne   @@Code080F6944            ; 080F691A
strb  r7,[r1]                   ; 080F691C
ldr   r1,=DataPtrs08213A6C      ; 080F691E
ldrb  r0,[r3]                   ; 080F6920
lsl   r0,r0,0x2                 ; 080F6922
add   r0,r0,r1                  ; 080F6924
ldr   r0,[r0]                   ; 080F6926
ldrb  r0,[r0]                   ; 080F6928
strh  r0,[r2,0x2A]              ; 080F692A
ldrb  r0,[r3]                   ; 080F692C
lsl   r0,r0,0x2                 ; 080F692E
add   r0,r12                    ; 080F6930
ldr   r0,[r0]                   ; 080F6932
ldrb  r0,[r0]                   ; 080F6934
strh  r0,[r2,0x28]              ; 080F6936
mov   r0,0x1                    ; 080F6938
b     @@Code080F6954            ; 080F693A
.pool                           ; 080F693C

@@Code080F6944:
ldr   r0,=DataPtrs08213A6C      ; 080F6944
add   r0,r5,r0                  ; 080F6946
ldr   r0,[r0]                   ; 080F6948
add   r0,r0,r6                  ; 080F694A
ldrb  r0,[r0]                   ; 080F694C
strh  r0,[r2,0x2A]              ; 080F694E
strh  r4,[r2,0x28]              ; 080F6950
@@Code080F6952:
mov   r0,0x0                    ; 080F6952
@@Code080F6954:
pop   {r4-r7}                   ; 080F6954
pop   {r1}                      ; 080F6956
bx    r1                        ; 080F6958
.pool                           ; 080F695A

Sub080F6960:
push  {lr}                      ; 080F6960
mov   r2,r0                     ; 080F6962
ldr   r1,[r2,0xC]               ; 080F6964
ldr   r0,=0xFFFFFD00            ; 080F6966
cmp   r1,r0                     ; 080F6968
bge   @@Code080F6988            ; 080F696A
ldr   r1,=DataPtrs082139F8      ; 080F696C
mov   r0,r2                     ; 080F696E
add   r0,0x3A                   ; 080F6970
ldrb  r0,[r0]                   ; 080F6972
lsl   r0,r0,0x2                 ; 080F6974
add   r0,r0,r1                  ; 080F6976
ldr   r0,[r0]                   ; 080F6978
ldrb  r0,[r0,0x1]               ; 080F697A
b     @@Code080F69DC            ; 080F697C
.pool                           ; 080F697E

@@Code080F6988:
cmp   r1,0xFF                   ; 080F6988
bgt   @@Code080F69A4            ; 080F698A
ldr   r1,=DataPtrs082139F8      ; 080F698C
mov   r0,r2                     ; 080F698E
add   r0,0x3A                   ; 080F6990
ldrb  r0,[r0]                   ; 080F6992
lsl   r0,r0,0x2                 ; 080F6994
add   r0,r0,r1                  ; 080F6996
ldr   r0,[r0]                   ; 080F6998
ldrb  r0,[r0,0x2]               ; 080F699A
b     @@Code080F69DC            ; 080F699C
.pool                           ; 080F699E

@@Code080F69A4:
ldr   r0,[r2,0x24]              ; 080F69A4
ldr   r1,=0xFFFFF800            ; 080F69A6
add   r0,r0,r1                  ; 080F69A8
ldr   r1,[r2,0x4]               ; 080F69AA
cmp   r1,r0                     ; 080F69AC
bge   @@Code080F69CC            ; 080F69AE
ldr   r1,=DataPtrs082139F8      ; 080F69B0
mov   r0,r2                     ; 080F69B2
add   r0,0x3A                   ; 080F69B4
ldrb  r0,[r0]                   ; 080F69B6
lsl   r0,r0,0x2                 ; 080F69B8
add   r0,r0,r1                  ; 080F69BA
ldr   r0,[r0]                   ; 080F69BC
ldrb  r0,[r0,0x3]               ; 080F69BE
b     @@Code080F69DC            ; 080F69C0
.pool                           ; 080F69C2

@@Code080F69CC:
ldr   r1,=DataPtrs082139F8      ; 080F69CC
mov   r0,r2                     ; 080F69CE
add   r0,0x3A                   ; 080F69D0
ldrb  r0,[r0]                   ; 080F69D2
lsl   r0,r0,0x2                 ; 080F69D4
add   r0,r0,r1                  ; 080F69D6
ldr   r0,[r0]                   ; 080F69D8
ldrb  r0,[r0,0x4]               ; 080F69DA
@@Code080F69DC:
strh  r0,[r2,0x28]              ; 080F69DC
mov   r1,r2                     ; 080F69DE
add   r1,0x3B                   ; 080F69E0
ldrb  r0,[r1]                   ; 080F69E2
add   r0,0x1                    ; 080F69E4
strb  r0,[r1]                   ; 080F69E6
mov   r0,0x0                    ; 080F69E8
pop   {r1}                      ; 080F69EA
bx    r1                        ; 080F69EC
.pool                           ; 080F69EE

Sub080F69F4:
push  {lr}                      ; 080F69F4
mov   r1,r0                     ; 080F69F6
add   r1,0x2A                   ; 080F69F8
mov   r2,r0                     ; 080F69FA
add   r2,0x30                   ; 080F69FC
@@Code080F69FE:
ldrh  r0,[r1]                   ; 080F69FE
cmp   r0,0x0                    ; 080F6A00
beq   @@Code080F6A08            ; 080F6A02
sub   r0,0x1                    ; 080F6A04
strh  r0,[r1]                   ; 080F6A06
@@Code080F6A08:
add   r1,0x2                    ; 080F6A08
cmp   r1,r2                     ; 080F6A0A
blo   @@Code080F69FE            ; 080F6A0C
pop   {r0}                      ; 080F6A0E
bx    r0                        ; 080F6A10
.pool                           ; 080F6A12

Sub080F6A14:
push  {r4,lr}                   ; 080F6A14
mov   r2,r0                     ; 080F6A16
mov   r3,r2                     ; 080F6A18
add   r3,0x36                   ; 080F6A1A
mov   r4,0x0                    ; 080F6A1C
strb  r4,[r3]                   ; 080F6A1E
ldr   r0,[r2]                   ; 080F6A20
ldr   r1,[r2,0x8]               ; 080F6A22
add   r0,r0,r1                  ; 080F6A24
str   r0,[r2]                   ; 080F6A26
ldr   r0,[r2,0x4]               ; 080F6A28
ldr   r1,[r2,0xC]               ; 080F6A2A
add   r0,r0,r1                  ; 080F6A2C
str   r0,[r2,0x4]               ; 080F6A2E
ldr   r1,[r2,0x24]              ; 080F6A30
cmp   r0,r1                     ; 080F6A32
ble   @@Code080F6A3E            ; 080F6A34
str   r1,[r2,0x4]               ; 080F6A36
mov   r0,0x1                    ; 080F6A38
strb  r0,[r3]                   ; 080F6A3A
str   r4,[r2,0xC]               ; 080F6A3C
@@Code080F6A3E:
ldr   r0,[r2,0x1C]              ; 080F6A3E
cmp   r0,0x0                    ; 080F6A40
bge   @@Code080F6A50            ; 080F6A42
ldr   r1,[r2,0x8]               ; 080F6A44
cmp   r1,r0                     ; 080F6A46
ble   @@Code080F6A5A            ; 080F6A48
ldr   r0,[r2,0x14]              ; 080F6A4A
sub   r0,r1,r0                  ; 080F6A4C
b     @@Code080F6A5A            ; 080F6A4E
@@Code080F6A50:
ldr   r1,[r2,0x8]               ; 080F6A50
cmp   r1,r0                     ; 080F6A52
bge   @@Code080F6A5A            ; 080F6A54
ldr   r0,[r2,0x14]              ; 080F6A56
add   r0,r1,r0                  ; 080F6A58
@@Code080F6A5A:
str   r0,[r2,0x8]               ; 080F6A5A
ldr   r0,[r2,0xC]               ; 080F6A5C
ldr   r1,[r2,0x18]              ; 080F6A5E
add   r0,r0,r1                  ; 080F6A60
str   r0,[r2,0xC]               ; 080F6A62
ldr   r1,=0x03FF                ; 080F6A64
cmp   r0,r1                     ; 080F6A66
ble   @@Code080F6A70            ; 080F6A68
mov   r0,0x80                   ; 080F6A6A
lsl   r0,r0,0x3                 ; 080F6A6C
str   r0,[r2,0xC]               ; 080F6A6E
@@Code080F6A70:
pop   {r4}                      ; 080F6A70
pop   {r0}                      ; 080F6A72
bx    r0                        ; 080F6A74
.pool                           ; 080F6A76

Sub080F6A7C:
push  {r4-r7,lr}                ; 080F6A7C
mov   r7,r10                    ; 080F6A7E
mov   r6,r9                     ; 080F6A80
mov   r5,r8                     ; 080F6A82
push  {r5-r7}                   ; 080F6A84
mov   r12,r0                    ; 080F6A86
ldr   r0,=0x03007244            ; 080F6A88
ldr   r2,[r0]                   ; 080F6A8A
mov   r0,0x88                   ; 080F6A8C
lsl   r0,r0,0x2                 ; 080F6A8E
add   r1,r2,r0                  ; 080F6A90
mov   r3,r12                    ; 080F6A92
ldr   r0,[r3]                   ; 080F6A94
ldr   r1,[r1]                   ; 080F6A96
sub   r0,r0,r1                  ; 080F6A98
lsl   r0,r0,0x8                 ; 080F6A9A
lsr   r7,r0,0x10                ; 080F6A9C
mov   r0,r7                     ; 080F6A9E
add   r0,0x40                   ; 080F6AA0
lsl   r0,r0,0x10                ; 080F6AA2
ldr   r1,=0x013F0000            ; 080F6AA4
cmp   r0,r1                     ; 080F6AA6
bls   @@Code080F6AAC            ; 080F6AA8
b     @@Code080F6BBE            ; 080F6AAA
@@Code080F6AAC:
mov   r0,0xFA                   ; 080F6AAC
lsl   r0,r0,0x1                 ; 080F6AAE
add   r1,r2,r0                  ; 080F6AB0
ldr   r0,[r3,0x4]               ; 080F6AB2
ldr   r1,[r1]                   ; 080F6AB4
sub   r0,r0,r1                  ; 080F6AB6
lsl   r0,r0,0x8                 ; 080F6AB8
lsr   r0,r0,0x10                ; 080F6ABA
mov   r10,r0                    ; 080F6ABC
ldr   r1,=0x03002200            ; 080F6ABE
ldr   r2,=0x47D0                ; 080F6AC0
add   r3,r1,r2                  ; 080F6AC2
ldrh  r0,[r3]                   ; 080F6AC4
lsl   r0,r0,0x3                 ; 080F6AC6
mov   r2,0xE0                   ; 080F6AC8
lsl   r2,r2,0x6                 ; 080F6ACA
add   r1,r1,r2                  ; 080F6ACC
add   r5,r0,r1                  ; 080F6ACE
ldr   r2,=DataPtrs082138A8      ; 080F6AD0
mov   r0,r12                    ; 080F6AD2
ldrh  r1,[r0,0x28]              ; 080F6AD4
lsl   r0,r1,0x2                 ; 080F6AD6
add   r0,r0,r2                  ; 080F6AD8
ldr   r4,[r0]                   ; 080F6ADA
ldr   r0,=Data0821396C          ; 080F6ADC
add   r1,r1,r0                  ; 080F6ADE
ldrb  r0,[r1]                   ; 080F6AE0
cmp   r0,0x0                    ; 080F6AE2
beq   @@Code080F6BBE            ; 080F6AE4
mov   r9,r3                     ; 080F6AE6
mov   r6,r0                     ; 080F6AE8
ldr   r1,=0x01FF                ; 080F6AEA
mov   r8,r1                     ; 080F6AEC
@@Code080F6AEE:
ldrb  r1,[r4,0x1]               ; 080F6AEE
add   r1,r10                    ; 080F6AF0
lsl   r1,r1,0x18                ; 080F6AF2
lsr   r1,r1,0x18                ; 080F6AF4
ldrb  r2,[r4,0x2]               ; 080F6AF6
mov   r0,0xC0                   ; 080F6AF8
and   r0,r2                     ; 080F6AFA
lsl   r0,r0,0x8                 ; 080F6AFC
orr   r1,r0                     ; 080F6AFE
strh  r1,[r5]                   ; 080F6B00
mov   r0,r12                    ; 080F6B02
add   r0,0x37                   ; 080F6B04
ldrb  r0,[r0]                   ; 080F6B06
cmp   r0,0x0                    ; 080F6B08
beq   @@Code080F6B64            ; 080F6B0A
mov   r1,0x0                    ; 080F6B0C
ldsb  r1,[r4,r1]                ; 080F6B0E
sub   r1,r7,r1                  ; 080F6B10
ldrb  r3,[r4,0x2]               ; 080F6B12
lsr   r0,r3,0x4                 ; 080F6B14
ldr   r2,=Data0819760A          ; 080F6B16
add   r0,r0,r2                  ; 080F6B18
mov   r2,0x0                    ; 080F6B1A
ldsb  r2,[r0,r2]                ; 080F6B1C
add   r2,r2,r1                  ; 080F6B1E
mov   r0,r8                     ; 080F6B20
and   r2,r0                     ; 080F6B22
mov   r0,0x30                   ; 080F6B24
and   r0,r3                     ; 080F6B26
lsl   r0,r0,0xA                 ; 080F6B28
orr   r2,r0                     ; 080F6B2A
mov   r0,0x2                    ; 080F6B2C
and   r0,r3                     ; 080F6B2E
lsl   r0,r0,0x18                ; 080F6B30
lsr   r0,r0,0x18                ; 080F6B32
lsl   r0,r0,0xB                 ; 080F6B34
mov   r3,0x80                   ; 080F6B36
lsl   r3,r3,0x5                 ; 080F6B38
mov   r1,r3                     ; 080F6B3A
eor   r0,r1                     ; 080F6B3C
orr   r2,r0                     ; 080F6B3E
strh  r2,[r5,0x2]               ; 080F6B40
b     @@Code080F6B86            ; 080F6B42
.pool                           ; 080F6B44

@@Code080F6B64:
mov   r1,0x0                    ; 080F6B64
ldsb  r1,[r4,r1]                ; 080F6B66
add   r1,r7,r1                  ; 080F6B68
mov   r0,r8                     ; 080F6B6A
and   r1,r0                     ; 080F6B6C
ldrb  r2,[r4,0x2]               ; 080F6B6E
mov   r0,0x30                   ; 080F6B70
and   r0,r2                     ; 080F6B72
lsl   r0,r0,0xA                 ; 080F6B74
orr   r1,r0                     ; 080F6B76
mov   r0,0x2                    ; 080F6B78
and   r0,r2                     ; 080F6B7A
lsl   r0,r0,0x18                ; 080F6B7C
lsr   r0,r0,0x18                ; 080F6B7E
lsl   r0,r0,0xB                 ; 080F6B80
orr   r1,r0                     ; 080F6B82
strh  r1,[r5,0x2]               ; 080F6B84
@@Code080F6B86:
mov   r0,r12                    ; 080F6B86
add   r0,0x38                   ; 080F6B88
ldrb  r0,[r0]                   ; 080F6B8A
mov   r1,0x7                    ; 080F6B8C
and   r1,r0                     ; 080F6B8E
lsl   r1,r1,0xC                 ; 080F6B90
ldrb  r2,[r4,0x2]               ; 080F6B92
mov   r0,0x1                    ; 080F6B94
and   r0,r2                     ; 080F6B96
lsl   r0,r0,0x8                 ; 080F6B98
orr   r1,r0                     ; 080F6B9A
ldrb  r2,[r4,0x3]               ; 080F6B9C
orr   r2,r1                     ; 080F6B9E
mov   r0,r12                    ; 080F6BA0
add   r0,0x39                   ; 080F6BA2
ldrb  r0,[r0]                   ; 080F6BA4
lsl   r0,r0,0xA                 ; 080F6BA6
orr   r2,r0                     ; 080F6BA8
strh  r2,[r5,0x4]               ; 080F6BAA
add   r5,0x8                    ; 080F6BAC
add   r4,0x4                    ; 080F6BAE
mov   r1,r9                     ; 080F6BB0
ldrh  r0,[r1]                   ; 080F6BB2
add   r0,0x1                    ; 080F6BB4
strh  r0,[r1]                   ; 080F6BB6
sub   r6,0x1                    ; 080F6BB8
cmp   r6,0x0                    ; 080F6BBA
bne   @@Code080F6AEE            ; 080F6BBC
@@Code080F6BBE:
pop   {r3-r5}                   ; 080F6BBE
mov   r8,r3                     ; 080F6BC0
mov   r9,r4                     ; 080F6BC2
mov   r10,r5                    ; 080F6BC4
pop   {r4-r7}                   ; 080F6BC6
pop   {r0}                      ; 080F6BC8
bx    r0                        ; 080F6BCA

Sub080F6BCC:
push  {r4-r7,lr}                ; 080F6BCC
mov   r7,r10                    ; 080F6BCE
mov   r6,r9                     ; 080F6BD0
mov   r5,r8                     ; 080F6BD2
push  {r5-r7}                   ; 080F6BD4
add   sp,-0x4                   ; 080F6BD6
lsl   r0,r0,0x10                ; 080F6BD8
lsr   r7,r0,0x10                ; 080F6BDA
lsl   r1,r1,0x10                ; 080F6BDC
lsr   r1,r1,0x10                ; 080F6BDE
mov   r8,r1                     ; 080F6BE0
lsl   r2,r2,0x10                ; 080F6BE2
lsr   r6,r2,0x10                ; 080F6BE4
lsl   r3,r3,0x10                ; 080F6BE6
lsr   r5,r3,0x10                ; 080F6BE8
mov   r1,sp                     ; 080F6BEA
mov   r0,0x0                    ; 080F6BEC
strh  r0,[r1]                   ; 080F6BEE
ldr   r1,=0x02011400            ; 080F6BF0
ldr   r2,=0x01000200            ; 080F6BF2
mov   r0,sp                     ; 080F6BF4
bl    swi_MemoryCopy4or2        ; 080F6BF6  Memory copy/fill, 4- or 2-byte blocks
cmp   r5,0x0                    ; 080F6BFA
beq   @@Code080F6C86            ; 080F6BFC
mov   r0,r8                     ; 080F6BFE
lsl   r1,r0,0x2                 ; 080F6C00
ldr   r0,=0x02011400            ; 080F6C02
add   r4,r1,r0                  ; 080F6C04
add   r0,0x4                    ; 080F6C06
add   r3,r1,r0                  ; 080F6C08
cmp   r6,0x0                    ; 080F6C0A
beq   @@Code080F6C16            ; 080F6C0C
sub   r0,0x2                    ; 080F6C0E
add   r4,r1,r0                  ; 080F6C10
add   r0,0x4                    ; 080F6C12
add   r3,r1,r0                  ; 080F6C14
@@Code080F6C16:
ldr   r1,=Data081AF2CC          ; 080F6C16
lsl   r0,r5,0x1                 ; 080F6C18
add   r0,r0,r1                  ; 080F6C1A
ldrh  r0,[r0]                   ; 080F6C1C
mov   r9,r0                     ; 080F6C1E
mov   r6,0x0                    ; 080F6C20
mov   r8,r5                     ; 080F6C22
ldr   r1,=Data081967DC          ; 080F6C24
mov   r10,r1                    ; 080F6C26
mov   r0,0xFF                   ; 080F6C28
mov   r12,r0                    ; 080F6C2A
@@Code080F6C2C:
lsr   r0,r6,0x8                 ; 080F6C2C
mov   r1,r12                    ; 080F6C2E
and   r0,r1                     ; 080F6C30
lsl   r0,r0,0x1                 ; 080F6C32
add   r0,r10                    ; 080F6C34
ldrh  r2,[r0]                   ; 080F6C36
mov   r0,r8                     ; 080F6C38
mul   r0,r2                     ; 080F6C3A
lsl   r0,r0,0x10                ; 080F6C3C
lsr   r0,r0,0x18                ; 080F6C3E
and   r0,r1                     ; 080F6C40
mov   r1,r0                     ; 080F6C42
sub   r0,r7,r1                  ; 080F6C44
lsl   r0,r0,0x10                ; 080F6C46
lsr   r2,r0,0x10                ; 080F6C48
cmp   r2,r7                     ; 080F6C4A
bls   @@Code080F6C50            ; 080F6C4C
mov   r2,0x0                    ; 080F6C4E
@@Code080F6C50:
lsl   r0,r2,0x8                 ; 080F6C50
strh  r0,[r4]                   ; 080F6C52
strh  r0,[r3]                   ; 080F6C54
add   r0,r7,r1                  ; 080F6C56
lsl   r0,r0,0x10                ; 080F6C58
lsr   r2,r0,0x10                ; 080F6C5A
cmp   r2,0xF0                   ; 080F6C5C
bls   @@Code080F6C62            ; 080F6C5E
mov   r2,0xF0                   ; 080F6C60
@@Code080F6C62:
ldrh  r1,[r4]                   ; 080F6C62
mov   r0,r2                     ; 080F6C64
orr   r0,r1                     ; 080F6C66
strh  r0,[r4]                   ; 080F6C68
ldrh  r0,[r3]                   ; 080F6C6A
orr   r2,r0                     ; 080F6C6C
strh  r2,[r3]                   ; 080F6C6E
sub   r4,0x4                    ; 080F6C70
add   r3,0x4                    ; 080F6C72
mov   r1,r9                     ; 080F6C74
add   r0,r6,r1                  ; 080F6C76
lsl   r0,r0,0x10                ; 080F6C78
lsr   r6,r0,0x10                ; 080F6C7A
sub   r0,r5,0x1                 ; 080F6C7C
lsl   r0,r0,0x10                ; 080F6C7E
lsr   r5,r0,0x10                ; 080F6C80
cmp   r5,0x0                    ; 080F6C82
bne   @@Code080F6C2C            ; 080F6C84
@@Code080F6C86:
add   sp,0x4                    ; 080F6C86
pop   {r3-r5}                   ; 080F6C88
mov   r8,r3                     ; 080F6C8A
mov   r9,r4                     ; 080F6C8C
mov   r10,r5                    ; 080F6C8E
pop   {r4-r7}                   ; 080F6C90
pop   {r0}                      ; 080F6C92
bx    r0                        ; 080F6C94
.pool                           ; 080F6C96

Sub080F6CA8:
push  {r4-r7,lr}                ; 080F6CA8
mov   r7,r9                     ; 080F6CAA
mov   r6,r8                     ; 080F6CAC
push  {r6-r7}                   ; 080F6CAE
ldr   r0,=0x03007244            ; 080F6CB0
ldr   r5,[r0]                   ; 080F6CB2
ldr   r1,=Data08197670          ; 080F6CB4
ldr   r2,=0x03002200            ; 080F6CB6
ldr   r3,=0x4088                ; 080F6CB8
add   r0,r2,r3                  ; 080F6CBA
ldrh  r0,[r0]                   ; 080F6CBC
add   r0,r0,r1                  ; 080F6CBE
ldrb  r7,[r0]                   ; 080F6CC0
mov   r6,0x0                    ; 080F6CC2
mov   r9,r6                     ; 080F6CC4
ldr   r0,=0x4058                ; 080F6CC6
add   r0,r0,r2                  ; 080F6CC8
mov   r8,r0                     ; 080F6CCA
mov   r4,r5                     ; 080F6CCC
add   r4,0x20                   ; 080F6CCE
@@Code080F6CD0:
strb  r6,[r4,0x14]              ; 080F6CD0
strb  r7,[r4,0x18]              ; 080F6CD2
ldr   r1,=Data08197628          ; 080F6CD4
lsl   r0,r6,0x2                 ; 080F6CD6
add   r0,r0,r1                  ; 080F6CD8
ldr   r0,[r0]                   ; 080F6CDA
str   r0,[r5]                   ; 080F6CDC
ldr   r0,=Data08197648          ; 080F6CDE
add   r0,r6,r0                  ; 080F6CE0
ldrb  r0,[r0]                   ; 080F6CE2
lsl   r0,r0,0x8                 ; 080F6CE4
str   r0,[r4,0x4]               ; 080F6CE6
str   r0,[r5,0x4]               ; 080F6CE8
mov   r0,0x3                    ; 080F6CEA
strb  r0,[r4,0x19]              ; 080F6CEC
cmp   r6,0x4                    ; 080F6CEE
bne   @@Code080F6D12            ; 080F6CF0
mov   r1,r9                     ; 080F6CF2
strb  r1,[r4,0x19]              ; 080F6CF4
mov   r0,0x15                   ; 080F6CF6
strh  r0,[r4,0x8]               ; 080F6CF8
ldr   r0,=0xFFFFFED0            ; 080F6CFA
str   r0,[r5,0x8]               ; 080F6CFC
ldr   r0,=0xFFFFFB00            ; 080F6CFE
str   r0,[r5,0x10]              ; 080F6D00
str   r0,[r5,0xC]               ; 080F6D02
mov   r0,0xF0                   ; 080F6D04
mov   r3,r8                     ; 080F6D06
strh  r0,[r3]                   ; 080F6D08
mov   r0,0x1                    ; 080F6D0A
mov   r1,r8                     ; 080F6D0C
bl    PlayYISound               ; 080F6D0E
@@Code080F6D12:
ldr   r0,=Data08197650          ; 080F6D12
lsl   r1,r6,0x1                 ; 080F6D14
add   r0,r1,r0                  ; 080F6D16
ldrh  r0,[r0]                   ; 080F6D18
strb  r0,[r4,0x17]              ; 080F6D1A
ldr   r0,=Data08197660          ; 080F6D1C
add   r1,r1,r0                  ; 080F6D1E
ldrb  r1,[r1]                   ; 080F6D20
mov   r0,r5                     ; 080F6D22
bl    Sub080F683C               ; 080F6D24
mov   r0,0x40                   ; 080F6D28
str   r0,[r5,0x18]              ; 080F6D2A
mov   r0,0x80                   ; 080F6D2C
lsl   r0,r0,0x3                 ; 080F6D2E
str   r0,[r4]                   ; 080F6D30
add   r7,0x1                    ; 080F6D32
add   r4,0x3C                   ; 080F6D34
add   r5,0x3C                   ; 080F6D36
add   r6,0x1                    ; 080F6D38
cmp   r6,0x7                    ; 080F6D3A
ble   @@Code080F6CD0            ; 080F6D3C
pop   {r3-r4}                   ; 080F6D3E
mov   r8,r3                     ; 080F6D40
mov   r9,r4                     ; 080F6D42
pop   {r4-r7}                   ; 080F6D44
pop   {r0}                      ; 080F6D46
bx    r0                        ; 080F6D48
.pool                           ; 080F6D4A

Sub080F6D78:
push  {r4-r7,lr}                ; 080F6D78
add   sp,-0x4                   ; 080F6D7A
mov   r0,sp                     ; 080F6D7C
ldr   r1,=0x7FFF                ; 080F6D7E
mov   r4,r1                     ; 080F6D80
strh  r4,[r0]                   ; 080F6D82
ldr   r5,=0x02010400            ; 080F6D84
ldr   r6,=0x01000100            ; 080F6D86
mov   r1,r5                     ; 080F6D88
mov   r2,r6                     ; 080F6D8A
bl    swi_MemoryCopy4or2        ; 080F6D8C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                     ; 080F6D90
add   r0,0x2                    ; 080F6D92
strh  r4,[r0]                   ; 080F6D94
ldr   r4,=0x02010800            ; 080F6D96
mov   r1,r4                     ; 080F6D98
mov   r2,r6                     ; 080F6D9A
bl    swi_MemoryCopy4or2        ; 080F6D9C  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data0822348C          ; 080F6DA0
mov   r1,r5                     ; 080F6DA2
mov   r2,0x80                   ; 080F6DA4
bl    swi_MemoryCopy4or2        ; 080F6DA6  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data0822358C          ; 080F6DAA
ldr   r1,=0x02010500            ; 080F6DAC
mov   r2,0x20                   ; 080F6DAE
bl    swi_MemoryCopy4or2        ; 080F6DB0  Memory copy/fill, 4- or 2-byte blocks
mov   r2,0x80                   ; 080F6DB4
lsl   r2,r2,0x1                 ; 080F6DB6
mov   r0,r5                     ; 080F6DB8
mov   r1,r4                     ; 080F6DBA
bl    swi_MemoryCopy4or2        ; 080F6DBC  Memory copy/fill, 4- or 2-byte blocks
mov   r3,0x0                    ; 080F6DC0
ldr   r7,=0x02010600            ; 080F6DC2
ldr   r6,=0x02010A00            ; 080F6DC4
ldr   r5,=ColorTable            ; 080F6DC6
ldr   r4,=0x1813                ; 080F6DC8
@@Code080F6DCA:
lsl   r1,r3,0x1                 ; 080F6DCA
add   r2,r1,r7                  ; 080F6DCC
add   r1,r1,r6                  ; 080F6DCE
add   r0,r3,r4                  ; 080F6DD0
lsl   r0,r0,0x1                 ; 080F6DD2
add   r0,r0,r5                  ; 080F6DD4
ldrh  r0,[r0]                   ; 080F6DD6
strh  r0,[r1]                   ; 080F6DD8
strh  r0,[r2]                   ; 080F6DDA
add   r0,r3,0x1                 ; 080F6DDC
lsl   r0,r0,0x10                ; 080F6DDE
lsr   r3,r0,0x10                ; 080F6DE0
cmp   r3,0x7F                   ; 080F6DE2
bls   @@Code080F6DCA            ; 080F6DE4
ldr   r0,=0x02010400            ; 080F6DE6
mov   r1,0xA0                   ; 080F6DE8
lsl   r1,r1,0x13                ; 080F6DEA
mov   r4,0x80                   ; 080F6DEC
lsl   r4,r4,0x1                 ; 080F6DEE
mov   r2,r4                     ; 080F6DF0
bl    swi_MemoryCopy4or2        ; 080F6DF2  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x02010600            ; 080F6DF6
ldr   r1,=0x05000200            ; 080F6DF8
mov   r2,r4                     ; 080F6DFA
bl    swi_MemoryCopy4or2        ; 080F6DFC  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                    ; 080F6E00
pop   {r4-r7}                   ; 080F6E02
pop   {r0}                      ; 080F6E04
bx    r0                        ; 080F6E06
.pool                           ; 080F6E08

Sub080F6E38:
push  {lr}                      ; 080F6E38
ldr   r0,=Data0820FFB8          ; 080F6E3A
mov   r1,0xC0                   ; 080F6E3C
lsl   r1,r1,0x13                ; 080F6E3E
bl    swi_LZ77_VRAM             ; 080F6E40  LZ77 decompress (VRAM)
ldr   r0,=Data08214EC4          ; 080F6E44
ldr   r1,=0x06008000            ; 080F6E46
bl    swi_LZ77_VRAM             ; 080F6E48  LZ77 decompress (VRAM)
ldr   r0,=Data082157C4          ; 080F6E4C
ldr   r1,=0x06009800            ; 080F6E4E
mov   r2,0x80                   ; 080F6E50
lsl   r2,r2,0x2                 ; 080F6E52
bl    swi_MemoryCopy32          ; 080F6E54  Memory copy/fill, 32-byte blocks
pop   {r0}                      ; 080F6E58
bx    r0                        ; 080F6E5A
.pool                           ; 080F6E5C

Sub080F6E70:
push  {lr}                      ; 080F6E70
ldr   r0,=Data0820E290          ; 080F6E72
ldr   r1,=0x0201FC00            ; 080F6E74  decompressed graphics buffer
bl    swi_LZ77_WRAM             ; 080F6E76  LZ77 decompress (WRAM)
ldr   r0,=0x02021580            ; 080F6E7A
ldr   r1,=0x06013380            ; 080F6E7C
mov   r2,0x20                   ; 080F6E7E
bl    swi_MemoryCopy32          ; 080F6E80  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021780            ; 080F6E84
ldr   r1,=0x06013780            ; 080F6E86
mov   r2,0x20                   ; 080F6E88
bl    swi_MemoryCopy32          ; 080F6E8A  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021980            ; 080F6E8E
ldr   r1,=0x06013B80            ; 080F6E90
mov   r2,0x20                   ; 080F6E92
bl    swi_MemoryCopy32          ; 080F6E94  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021B80            ; 080F6E98
ldr   r1,=0x06013F80            ; 080F6E9A
mov   r2,0x20                   ; 080F6E9C
bl    swi_MemoryCopy32          ; 080F6E9E  Memory copy/fill, 32-byte blocks
pop   {r0}                      ; 080F6EA2
bx    r0                        ; 080F6EA4
.pool                           ; 080F6EA6

Sub080F6ED0:
push  {lr}                      ; 080F6ED0
ldr   r0,=Data0820F13C          ; 080F6ED2
ldr   r1,=0x0201FC00            ; 080F6ED4  decompressed graphics buffer
bl    swi_LZ77_WRAM             ; 080F6ED6  LZ77 decompress (WRAM)
ldr   r0,=0x02021580            ; 080F6EDA
ldr   r1,=0x06013380            ; 080F6EDC
mov   r2,0x20                   ; 080F6EDE
bl    swi_MemoryCopy32          ; 080F6EE0  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021780            ; 080F6EE4
ldr   r1,=0x06013780            ; 080F6EE6
mov   r2,0x20                   ; 080F6EE8
bl    swi_MemoryCopy32          ; 080F6EEA  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021980            ; 080F6EEE
ldr   r1,=0x06013B80            ; 080F6EF0
mov   r2,0x20                   ; 080F6EF2
bl    swi_MemoryCopy32          ; 080F6EF4  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021B80            ; 080F6EF8
ldr   r1,=0x06013F80            ; 080F6EFA
mov   r2,0x20                   ; 080F6EFC
bl    swi_MemoryCopy32          ; 080F6EFE  Memory copy/fill, 32-byte blocks
pop   {r0}                      ; 080F6F02
bx    r0                        ; 080F6F04
.pool                           ; 080F6F06

Sub080F6F30:
push  {r4,lr}                   ; 080F6F30
lsl   r0,r0,0x18                ; 080F6F32
lsr   r4,r0,0x18                ; 080F6F34
cmp   r4,0x0                    ; 080F6F36
bne   @@Code080F6F4C            ; 080F6F38
ldr   r0,=Data0820E290          ; 080F6F3A
ldr   r1,=0x0201FC00            ; 080F6F3C  decompressed graphics buffer
bl    swi_LZ77_WRAM             ; 080F6F3E  LZ77 decompress (WRAM)
b     @@Code080F6F54            ; 080F6F42
.pool                           ; 080F6F44

@@Code080F6F4C:
ldr   r0,=Data0820F13C          ; 080F6F4C
ldr   r1,=0x0201FC00            ; 080F6F4E  decompressed graphics buffer
bl    swi_LZ77_WRAM             ; 080F6F50  LZ77 decompress (WRAM)
@@Code080F6F54:
ldr   r0,=0x0201FC00            ; 080F6F54  decompressed graphics buffer
ldr   r1,=0x06010200            ; 080F6F56
mov   r2,0x80                   ; 080F6F58
bl    swi_MemoryCopy32          ; 080F6F5A  Memory copy/fill, 32-byte blocks
ldr   r0,=0x0201FE00            ; 080F6F5E
ldr   r1,=0x06010600            ; 080F6F60
mov   r2,0x80                   ; 080F6F62
bl    swi_MemoryCopy32          ; 080F6F64  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020000            ; 080F6F68
ldr   r1,=0x06010A00            ; 080F6F6A
mov   r2,0x80                   ; 080F6F6C
bl    swi_MemoryCopy32          ; 080F6F6E  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020200            ; 080F6F72
ldr   r1,=0x06010E00            ; 080F6F74
mov   r2,0x80                   ; 080F6F76
bl    swi_MemoryCopy32          ; 080F6F78  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020400            ; 080F6F7C
ldr   r1,=0x06011200            ; 080F6F7E
mov   r2,0x80                   ; 080F6F80
bl    swi_MemoryCopy32          ; 080F6F82  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020600            ; 080F6F86
ldr   r1,=0x06011600            ; 080F6F88
mov   r2,0x80                   ; 080F6F8A
bl    swi_MemoryCopy32          ; 080F6F8C  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020800            ; 080F6F90
ldr   r1,=0x06011A00            ; 080F6F92
mov   r2,0x80                   ; 080F6F94
bl    swi_MemoryCopy32          ; 080F6F96  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020A00            ; 080F6F9A
ldr   r1,=0x06011E00            ; 080F6F9C
mov   r2,0x80                   ; 080F6F9E
bl    swi_MemoryCopy32          ; 080F6FA0  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020C00            ; 080F6FA4
ldr   r1,=0x06012200            ; 080F6FA6
mov   r2,0x80                   ; 080F6FA8
bl    swi_MemoryCopy32          ; 080F6FAA  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02020E00            ; 080F6FAE
ldr   r1,=0x06012600            ; 080F6FB0
mov   r2,0x80                   ; 080F6FB2
bl    swi_MemoryCopy32          ; 080F6FB4  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021000            ; 080F6FB8
ldr   r1,=0x06012A00            ; 080F6FBA
mov   r2,0x80                   ; 080F6FBC
bl    swi_MemoryCopy32          ; 080F6FBE  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021200            ; 080F6FC2
ldr   r1,=0x06012E00            ; 080F6FC4
mov   r2,0x80                   ; 080F6FC6
bl    swi_MemoryCopy32          ; 080F6FC8  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021400            ; 080F6FCC
ldr   r1,=0x06013200            ; 080F6FCE
mov   r2,0x80                   ; 080F6FD0
bl    swi_MemoryCopy32          ; 080F6FD2  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021600            ; 080F6FD6
ldr   r1,=0x06013600            ; 080F6FD8
mov   r2,0x80                   ; 080F6FDA
bl    swi_MemoryCopy32          ; 080F6FDC  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021800            ; 080F6FE0
ldr   r1,=0x06013A00            ; 080F6FE2
mov   r2,0x80                   ; 080F6FE4
bl    swi_MemoryCopy32          ; 080F6FE6  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02021A00            ; 080F6FEA
ldr   r1,=0x06013E00            ; 080F6FEC
mov   r2,0x80                   ; 080F6FEE
bl    swi_MemoryCopy32          ; 080F6FF0  Memory copy/fill, 32-byte blocks
cmp   r4,0x0                    ; 080F6FF4
bne   @@Code080F6FFC            ; 080F6FF6
bl    Sub080F6ED0               ; 080F6FF8
@@Code080F6FFC:
pop   {r4}                      ; 080F6FFC
pop   {r0}                      ; 080F6FFE
bx    r0                        ; 080F7000
.pool                           ; 080F7002

Cutscene100Init:
; Game state 49: 100% cutscene init
push  {r4-r7,lr}                ; 080F7088
add   sp,-0x4                   ; 080F708A
bl    Sub08002534               ; 080F708C
bl    Sub08002338               ; 080F7090
ldr   r0,=0x0300700C            ; 080F7094
mov   r5,0x0                    ; 080F7096
str   r5,[r0]                   ; 080F7098
ldr   r4,=0x03002200            ; 080F709A
ldr   r0,=0x48F9                ; 080F709C
add   r1,r4,r0                  ; 080F709E
mov   r0,0x5                    ; 080F70A0
strb  r0,[r1]                   ; 080F70A2
ldr   r1,=0x48B0                ; 080F70A4
add   r0,r4,r1                  ; 080F70A6
strh  r5,[r0]                   ; 080F70A8
ldr   r2,=0x48B2                ; 080F70AA
add   r0,r4,r2                  ; 080F70AC
strh  r5,[r0]                   ; 080F70AE
ldr   r3,=0x48B4                ; 080F70B0
add   r0,r4,r3                  ; 080F70B2
strh  r5,[r0]                   ; 080F70B4
add   r1,0xE                    ; 080F70B6
add   r0,r4,r1                  ; 080F70B8
strh  r5,[r0]                   ; 080F70BA
add   r2,0x44                   ; 080F70BC
add   r1,r4,r2                  ; 080F70BE
mov   r0,0x7                    ; 080F70C0
strb  r0,[r1]                   ; 080F70C2
ldr   r6,=0x03007240            ; 080F70C4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r6]                   ; 080F70C6
cmp   r0,0x0                    ; 080F70C8
bne   @@Code080F70E4            ; 080F70CA
mov   r1,0xAD                   ; 080F70CC
lsl   r1,r1,0x6                 ; 080F70CE  2B40
mov   r0,r4                     ; 080F70D0
bl    DynamicAllocate           ; 080F70D2
mov   r1,r0                     ; 080F70D6
str   r1,[r6]                   ; 080F70D8
str   r5,[sp]                   ; 080F70DA
ldr   r2,=0x05000AD0            ; 080F70DC
mov   r0,sp                     ; 080F70DE
bl    swi_MemoryCopy4or2        ; 080F70E0  Memory copy/fill, 4- or 2-byte blocks
@@Code080F70E4:
ldr   r6,=0x03007244            ; 080F70E4
ldr   r0,[r6]                   ; 080F70E6
cmp   r0,0x0                    ; 080F70E8
bne   @@Code080F7104            ; 080F70EA
mov   r1,0x93                   ; 080F70EC
lsl   r1,r1,0x2                 ; 080F70EE
mov   r0,r4                     ; 080F70F0
bl    DynamicAllocate           ; 080F70F2
mov   r1,r0                     ; 080F70F6
str   r1,[r6]                   ; 080F70F8
str   r5,[sp]                   ; 080F70FA
ldr   r2,=0x05000093            ; 080F70FC
mov   r0,sp                     ; 080F70FE
bl    swi_MemoryCopy4or2        ; 080F7100  Memory copy/fill, 4- or 2-byte blocks
@@Code080F7104:
bl    Sub0804C9A4               ; 080F7104
str   r5,[sp]                   ; 080F7108
ldr   r0,=0x0300702C            ; 080F710A  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080F710C
ldr   r2,=0x05000628            ; 080F710E
mov   r0,sp                     ; 080F7110
bl    swi_MemoryCopy4or2        ; 080F7112  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082AF690          ; 080F7116  global sprite graphics
ldr   r1,=0x06010000            ; 080F7118
bl    swi_LZ77_VRAM             ; 080F711A  LZ77 decompress (VRAM)
bl    Sub08013474               ; 080F711E
bl    Sub080F6E38               ; 080F7122
mov   r0,0x0                    ; 080F7126
bl    Sub080F6F30               ; 080F7128
bl    Sub080F6D78               ; 080F712C
ldr   r0,=Data0821724C          ; 080F7130
ldr   r1,=0x0600A000            ; 080F7132
bl    swi_LZ77_VRAM             ; 080F7134  LZ77 decompress (VRAM)
ldr   r2,=0x04000008            ; 080F7138
ldr   r3,=0x47C8                ; 080F713A
add   r1,r4,r3                  ; 080F713C
ldr   r0,=0x1408                ; 080F713E
strh  r0,[r1]                   ; 080F7140
strh  r0,[r2]                   ; 080F7142
ldr   r0,=Data08213AB0          ; 080F7144
ldr   r1,=0x0600B000            ; 080F7146
bl    swi_LZ77_VRAM             ; 080F7148  LZ77 decompress (VRAM)
ldr   r2,=0x0400000A            ; 080F714C
ldr   r5,=0x47CA                ; 080F714E
add   r1,r4,r5                  ; 080F7150
ldr   r0,=0x5603                ; 080F7152
strh  r0,[r1]                   ; 080F7154
strh  r0,[r2]                   ; 080F7156
ldr   r0,=Data0821400C          ; 080F7158
ldr   r1,=0x0600C000            ; 080F715A
bl    swi_LZ77_VRAM             ; 080F715C  LZ77 decompress (VRAM)
ldr   r2,=0x0400000C            ; 080F7160
ldr   r0,=0x47CC                ; 080F7162
add   r1,r4,r0                  ; 080F7164
ldr   r0,=0xD802                ; 080F7166
strh  r0,[r1]                   ; 080F7168
strh  r0,[r2]                   ; 080F716A
ldr   r0,=Data08214A3C          ; 080F716C
ldr   r1,=0x0600E000            ; 080F716E
bl    swi_LZ77_VRAM             ; 080F7170  LZ77 decompress (VRAM)
ldr   r2,=0x0400000E            ; 080F7174
ldr   r3,=0x47CE                ; 080F7176
add   r1,r4,r3                  ; 080F7178
ldr   r0,=0xDC03                ; 080F717A
strh  r0,[r1]                   ; 080F717C
strh  r0,[r2]                   ; 080F717E
mov   r3,0x0                    ; 080F7180
ldr   r0,=0x4960                ; 080F7182
add   r5,r4,r0                  ; 080F7184
mov   r1,0x0                    ; 080F7186
add   r0,0x3                    ; 080F7188
add   r2,r4,r0                  ; 080F718A
mov   r6,r4                     ; 080F718C
@@Code080F718E:
add   r0,r3,r5                  ; 080F718E
strb  r1,[r0]                   ; 080F7190
add   r0,r3,r2                  ; 080F7192
strb  r1,[r0]                   ; 080F7194
add   r0,r3,0x1                 ; 080F7196
lsl   r0,r0,0x10                ; 080F7198
lsr   r3,r0,0x10                ; 080F719A
cmp   r3,0x2                    ; 080F719C
bls   @@Code080F718E            ; 080F719E
ldr   r1,=0x4966                ; 080F71A0
add   r0,r6,r1                  ; 080F71A2
mov   r1,0x0                    ; 080F71A4
strb  r1,[r0]                   ; 080F71A6
ldr   r7,=0x03007244            ; 080F71A8
ldr   r5,[r7]                   ; 080F71AA
mov   r2,0xF0                   ; 080F71AC
lsl   r2,r2,0x1                 ; 080F71AE
add   r0,r5,r2                  ; 080F71B0
str   r1,[r0]                   ; 080F71B2
mov   r3,0xF2                   ; 080F71B4
lsl   r3,r3,0x1                 ; 080F71B6
add   r0,r5,r3                  ; 080F71B8
mov   r3,0xC0                   ; 080F71BA
lsl   r3,r3,0x9                 ; 080F71BC
str   r3,[r0]                   ; 080F71BE
mov   r4,0xF4                   ; 080F71C0
lsl   r4,r4,0x1                 ; 080F71C2
add   r0,r5,r4                  ; 080F71C4
str   r3,[r0]                   ; 080F71C6
add   r2,0xC                    ; 080F71C8
add   r0,r5,r2                  ; 080F71CA
str   r1,[r0]                   ; 080F71CC
add   r4,0x8                    ; 080F71CE
add   r0,r5,r4                  ; 080F71D0
str   r1,[r0]                   ; 080F71D2
mov   r0,0xFA                   ; 080F71D4
lsl   r0,r0,0x1                 ; 080F71D6
add   r2,r5,r0                  ; 080F71D8
mov   r0,0xA0                   ; 080F71DA
lsl   r0,r0,0x7                 ; 080F71DC
str   r0,[r2]                   ; 080F71DE
add   r4,0x8                    ; 080F71E0
add   r2,r5,r4                  ; 080F71E2
mov   r0,0x90                   ; 080F71E4
lsl   r0,r0,0x9                 ; 080F71E6
str   r0,[r2]                   ; 080F71E8
mov   r0,0xFE                   ; 080F71EA
lsl   r0,r0,0x1                 ; 080F71EC
add   r2,r5,r0                  ; 080F71EE
mov   r0,0xB0                   ; 080F71F0
lsl   r0,r0,0x9                 ; 080F71F2
str   r0,[r2]                   ; 080F71F4
mov   r2,0x88                   ; 080F71F6
lsl   r2,r2,0x2                 ; 080F71F8
add   r0,r5,r2                  ; 080F71FA
str   r3,[r0]                   ; 080F71FC
mov   r3,0x89                   ; 080F71FE
lsl   r3,r3,0x2                 ; 080F7200
add   r2,r5,r3                  ; 080F7202
mov   r0,0xC8                   ; 080F7204
lsl   r0,r0,0x9                 ; 080F7206
str   r0,[r2]                   ; 080F7208
add   r4,0x30                   ; 080F720A
add   r2,r5,r4                  ; 080F720C
mov   r0,0xB4                   ; 080F720E
lsl   r0,r0,0xB                 ; 080F7210
str   r0,[r2]                   ; 080F7212
mov   r2,0x80                   ; 080F7214
lsl   r2,r2,0x2                 ; 080F7216
add   r0,r5,r2                  ; 080F7218
str   r1,[r0]                   ; 080F721A
sub   r3,0x20                   ; 080F721C
add   r0,r5,r3                  ; 080F721E
str   r1,[r0]                   ; 080F7220
sub   r4,0x20                   ; 080F7222
add   r0,r5,r4                  ; 080F7224
str   r1,[r0]                   ; 080F7226
add   r2,0xC                    ; 080F7228
add   r0,r5,r2                  ; 080F722A
str   r1,[r0]                   ; 080F722C
add   r3,0xC                    ; 080F722E
add   r0,r5,r3                  ; 080F7230
str   r1,[r0]                   ; 080F7232
add   r4,0xC                    ; 080F7234
add   r0,r5,r4                  ; 080F7236
str   r1,[r0]                   ; 080F7238
add   r2,0xC                    ; 080F723A
add   r0,r5,r2                  ; 080F723C
str   r1,[r0]                   ; 080F723E
add   r3,0xC                    ; 080F7240
add   r0,r5,r3                  ; 080F7242
str   r1,[r0]                   ; 080F7244
add   r4,0x18                   ; 080F7246
add   r0,r5,r4                  ; 080F7248
str   r1,[r0]                   ; 080F724A
add   r2,0x18                   ; 080F724C
add   r0,r5,r2                  ; 080F724E
str   r1,[r0]                   ; 080F7250
add   r3,0x18                   ; 080F7252
add   r0,r5,r3                  ; 080F7254
str   r1,[r0]                   ; 080F7256
ldr   r2,=0x04000010            ; 080F7258
ldr   r4,=0x47E4                ; 080F725A
add   r0,r6,r4                  ; 080F725C
strh  r1,[r0]                   ; 080F725E
strh  r1,[r2]                   ; 080F7260
add   r2,0x2                    ; 080F7262
ldr   r3,=0x47EC                ; 080F7264
add   r0,r6,r3                  ; 080F7266
strh  r1,[r0]                   ; 080F7268
strh  r1,[r2]                   ; 080F726A
add   r2,0x2                    ; 080F726C
add   r4,0x2                    ; 080F726E
add   r0,r6,r4                  ; 080F7270
strh  r1,[r0]                   ; 080F7272
strh  r1,[r2]                   ; 080F7274
ldr   r3,=0x04000016            ; 080F7276
ldr   r0,=0x47EE                ; 080F7278
add   r2,r6,r0                  ; 080F727A
mov   r0,0x50                   ; 080F727C
strh  r0,[r2]                   ; 080F727E
strh  r0,[r3]                   ; 080F7280
ldr   r2,=0x04000018            ; 080F7282
ldr   r3,=0x47E8                ; 080F7284
add   r0,r6,r3                  ; 080F7286
strh  r1,[r0]                   ; 080F7288
strh  r1,[r2]                   ; 080F728A
ldr   r3,=0x0400001A            ; 080F728C
add   r4,0xA                    ; 080F728E
add   r2,r6,r4                  ; 080F7290
mov   r0,0x98                   ; 080F7292
lsl   r0,r0,0x1                 ; 080F7294
strh  r0,[r2]                   ; 080F7296
strh  r0,[r3]                   ; 080F7298
ldr   r2,=0x0400001C            ; 080F729A
ldr   r3,=0x47EA                ; 080F729C
add   r0,r6,r3                  ; 080F729E
strh  r1,[r0]                   ; 080F72A0
strh  r1,[r2]                   ; 080F72A2
add   r2,0x2                    ; 080F72A4
add   r4,0x2                    ; 080F72A6
add   r1,r6,r4                  ; 080F72A8
mov   r0,0xB0                   ; 080F72AA
lsl   r0,r0,0x1                 ; 080F72AC
strh  r0,[r1]                   ; 080F72AE
strh  r0,[r2]                   ; 080F72B0
ldr   r4,=0x03007240            ; 080F72B2  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080F72B4
ldr   r2,=0x29CC                ; 080F72B6
add   r0,r0,r2                  ; 080F72B8
ldrb  r1,[r0]                   ; 080F72BA
mov   r3,0x7                    ; 080F72BC
mov   r0,r3                     ; 080F72BE
and   r0,r1                     ; 080F72C0
ldr   r1,=0x0241                ; 080F72C2
add   r5,r5,r1                  ; 080F72C4
strb  r0,[r5]                   ; 080F72C6
ldr   r1,[r7]                   ; 080F72C8
ldr   r0,[r4]                   ; 080F72CA
add   r0,r0,r2                  ; 080F72CC
ldrh  r0,[r0]                   ; 080F72CE
lsr   r0,r0,0x3                 ; 080F72D0
and   r0,r3                     ; 080F72D2
ldr   r5,=0x0242                ; 080F72D4
add   r1,r1,r5                  ; 080F72D6
strb  r0,[r1]                   ; 080F72D8
ldr   r1,[r7]                   ; 080F72DA
ldr   r0,[r4]                   ; 080F72DC
add   r0,r0,r2                  ; 080F72DE
ldrh  r0,[r0]                   ; 080F72E0
lsr   r0,r0,0x6                 ; 080F72E2
and   r0,r3                     ; 080F72E4
add   r5,0x1                    ; 080F72E6
add   r1,r1,r5                  ; 080F72E8
strb  r0,[r1]                   ; 080F72EA
ldr   r1,[r7]                   ; 080F72EC
ldr   r0,[r4]                   ; 080F72EE
add   r0,r0,r2                  ; 080F72F0
ldrh  r0,[r0]                   ; 080F72F2
lsr   r0,r0,0x9                 ; 080F72F4
and   r0,r3                     ; 080F72F6
mov   r2,0x91                   ; 080F72F8
lsl   r2,r2,0x2                 ; 080F72FA
add   r1,r1,r2                  ; 080F72FC
strb  r0,[r1]                   ; 080F72FE
ldr   r3,=0x414C                ; 080F7300
add   r0,r6,r3                  ; 080F7302
ldrh  r0,[r0]                   ; 080F7304
add   r0,0x1                    ; 080F7306
lsl   r0,r0,0x10                ; 080F7308
lsr   r4,r0,0x10                ; 080F730A
ldr   r0,=0x270F                ; 080F730C
cmp   r4,r0                     ; 080F730E
bls   @@Code080F7314            ; 080F7310
mov   r4,r0                     ; 080F7312
@@Code080F7314:
mov   r3,0x0                    ; 080F7314
ldr   r6,=Data081976B8          ; 080F7316
mov   r5,r7                     ; 080F7318
@@Code080F731A:
lsl   r0,r3,0x1                 ; 080F731A
add   r0,r0,r6                  ; 080F731C
ldrh  r2,[r0]                   ; 080F731E
cmp   r4,r2                     ; 080F7320
blo   @@Code080F7410            ; 080F7322
ldr   r0,[r5]                   ; 080F7324
ldr   r1,=0x0245                ; 080F7326
add   r0,r0,r1                  ; 080F7328
add   r0,r0,r3                  ; 080F732A
ldrb  r1,[r0]                   ; 080F732C
add   r1,0x1                    ; 080F732E
strb  r1,[r0]                   ; 080F7330
sub   r0,r4,r2                  ; 080F7332
lsl   r0,r0,0x10                ; 080F7334
lsr   r4,r0,0x10                ; 080F7336
b     @@Code080F731A            ; 080F7338
.pool                           ; 080F733A

@@Code080F7410:
add   r0,r3,0x1                 ; 080F7410
lsl   r0,r0,0x10                ; 080F7412
lsr   r3,r0,0x10                ; 080F7414
cmp   r3,0x3                    ; 080F7416
bhi   @@Code080F741C            ; 080F7418
b     @@Code080F731A            ; 080F741A
@@Code080F741C:
bl    Sub080F6CA8               ; 080F741C
ldr   r2,=0x03002200            ; 080F7420
ldr   r3,=0x4886                ; 080F7422
add   r0,r2,r3                  ; 080F7424
mov   r6,0x0                    ; 080F7426
mov   r4,0x0                    ; 080F7428
strh  r4,[r0]                   ; 080F742A
ldr   r5,=0x4904                ; 080F742C
add   r0,r2,r5                  ; 080F742E
mov   r5,0x1                    ; 080F7430
strb  r5,[r0]                   ; 080F7432
ldr   r3,=0x04000054            ; 080F7434
ldr   r0,=0x488C                ; 080F7436
add   r1,r2,r0                  ; 080F7438
mov   r0,0x10                   ; 080F743A
strh  r0,[r1]                   ; 080F743C
strh  r0,[r3]                   ; 080F743E
sub   r3,0x4                    ; 080F7440
ldr   r0,=0x4888                ; 080F7442
add   r1,r2,r0                  ; 080F7444
mov   r0,0xEF                   ; 080F7446
strh  r0,[r1]                   ; 080F7448
strh  r0,[r3]                   ; 080F744A
ldr   r1,=0x04000052            ; 080F744C
ldr   r3,=0x488A                ; 080F744E
add   r0,r2,r3                  ; 080F7450
strh  r4,[r0]                   ; 080F7452
strh  r4,[r1]                   ; 080F7454
ldr   r3,=0x04000040            ; 080F7456
ldr   r4,=0x488E                ; 080F7458
add   r1,r2,r4                  ; 080F745A
ldr   r0,=0x20E0                ; 080F745C
strh  r0,[r1]                   ; 080F745E
strh  r0,[r3]                   ; 080F7460
add   r3,0x4                    ; 080F7462
ldr   r0,=0x4890                ; 080F7464
add   r1,r2,r0                  ; 080F7466
ldr   r0,=0x1878                ; 080F7468
strh  r0,[r1]                   ; 080F746A
strh  r0,[r3]                   ; 080F746C
sub   r3,0x2                    ; 080F746E
add   r4,0x4                    ; 080F7470
add   r1,r2,r4                  ; 080F7472
ldr   r0,=0x20D0                ; 080F7474
strh  r0,[r1]                   ; 080F7476
strh  r0,[r3]                   ; 080F7478
add   r3,0x4                    ; 080F747A
ldr   r0,=0x4894                ; 080F747C
add   r1,r2,r0                  ; 080F747E
ldr   r0,=0x3078                ; 080F7480
strh  r0,[r1]                   ; 080F7482
strh  r0,[r3]                   ; 080F7484
add   r3,0x2                    ; 080F7486
ldr   r1,=0x4A03                ; 080F7488
add   r0,r2,r1                  ; 080F748A
mov   r1,0x3F                   ; 080F748C
strb  r1,[r0]                   ; 080F748E
strb  r1,[r3]                   ; 080F7490
add   r3,0x1                    ; 080F7492
ldr   r4,=0x4A04                ; 080F7494
add   r0,r2,r4                  ; 080F7496
strb  r1,[r0]                   ; 080F7498
strb  r1,[r3]                   ; 080F749A
ldr   r4,=0x0400004A            ; 080F749C
ldr   r3,=0x48CC                ; 080F749E
add   r0,r2,r3                  ; 080F74A0
mov   r3,0x3F                   ; 080F74A2
strh  r1,[r0]                   ; 080F74A4
strb  r3,[r4]                   ; 080F74A6
ldr   r4,=0x4905                ; 080F74A8
add   r1,r2,r4                  ; 080F74AA
ldrb  r0,[r1]                   ; 080F74AC
add   r0,0x1                    ; 080F74AE
strb  r0,[r1]                   ; 080F74B0
ldr   r1,=0x48FF                ; 080F74B2
add   r0,r2,r1                  ; 080F74B4
strb  r6,[r0]                   ; 080F74B6
ldr   r0,=0x0300700C            ; 080F74B8
str   r5,[r0]                   ; 080F74BA
ldr   r3,=0x04000200            ; 080F74BC
ldr   r4,=0x47C2                ; 080F74BE
add   r1,r2,r4                  ; 080F74C0
ldr   r0,=0x2005                ; 080F74C2
strh  r0,[r1]                   ; 080F74C4
strh  r0,[r3]                   ; 080F74C6
ldr   r3,=0x04000004            ; 080F74C8
ldr   r0,=0x47C4                ; 080F74CA
add   r1,r2,r0                  ; 080F74CC
ldr   r0,=0x0F28                ; 080F74CE
strh  r0,[r1]                   ; 080F74D0
strh  r0,[r3]                   ; 080F74D2
mov   r1,0x80                   ; 080F74D4
lsl   r1,r1,0x13                ; 080F74D6
ldr   r3,=0x47C6                ; 080F74D8
add   r2,r2,r3                  ; 080F74DA
mov   r0,0xFE                   ; 080F74DC
lsl   r0,r0,0x7                 ; 080F74DE
strh  r0,[r2]                   ; 080F74E0
strh  r0,[r1]                   ; 080F74E2
ldr   r0,=0x04000208            ; 080F74E4
strh  r5,[r0]                   ; 080F74E6
add   sp,0x4                    ; 080F74E8
pop   {r4-r7}                   ; 080F74EA
pop   {r0}                      ; 080F74EC
bx    r0                        ; 080F74EE
.pool                           ; 080F74F0

Sub080F756C:
push  {lr}                      ; 080F756C
ldr   r0,=0x04000006            ; 080F756E
ldrh  r0,[r0]                   ; 080F7570
cmp   r0,0x9F                   ; 080F7572
bhi   @@Code080F7584            ; 080F7574
lsl   r0,r0,0x11                ; 080F7576
ldr   r1,=0x04000040            ; 080F7578
lsr   r0,r0,0xF                 ; 080F757A
ldr   r2,=0x02011400            ; 080F757C
add   r0,r0,r2                  ; 080F757E
ldrh  r0,[r0]                   ; 080F7580
strh  r0,[r1]                   ; 080F7582
@@Code080F7584:
pop   {r0}                      ; 080F7584
bx    r0                        ; 080F7586
.pool                           ; 080F7588

Sub080F7594:
push  {r4-r7,lr}                ; 080F7594
mov   r7,r9                     ; 080F7596
mov   r6,r8                     ; 080F7598
push  {r6-r7}                   ; 080F759A
add   sp,-0x4                   ; 080F759C
ldr   r4,=0x03002200            ; 080F759E
ldr   r0,=0x48B4                ; 080F75A0
add   r7,r4,r0                  ; 080F75A2
ldrh  r0,[r7]                   ; 080F75A4
mov   r12,r0                    ; 080F75A6
cmp   r0,0x0                    ; 080F75A8
beq   @@Code080F75BC            ; 080F75AA
sub   r0,0x1                    ; 080F75AC
strh  r0,[r7]                   ; 080F75AE
b     @@Code080F76F2            ; 080F75B0
.pool                           ; 080F75B2

@@Code080F75BC:
mov   r0,0x6                    ; 080F75BC
strh  r0,[r7]                   ; 080F75BE
ldr   r6,=0x03007244            ; 080F75C0
ldr   r1,[r6]                   ; 080F75C2
mov   r3,0x8F                   ; 080F75C4
lsl   r3,r3,0x2                 ; 080F75C6
add   r1,r1,r3                  ; 080F75C8
ldrb  r0,[r1]                   ; 080F75CA
add   r0,0x1                    ; 080F75CC
strb  r0,[r1]                   ; 080F75CE
ldr   r5,[r6]                   ; 080F75D0
add   r3,r5,r3                  ; 080F75D2
ldrb  r2,[r3]                   ; 080F75D4
lsl   r1,r2,0x8                 ; 080F75D6
mov   r0,0x10                   ; 080F75D8
sub   r0,r0,r2                  ; 080F75DA
orr   r1,r0                     ; 080F75DC
ldr   r2,=0x488C                ; 080F75DE
add   r2,r2,r4                  ; 080F75E0
mov   r8,r2                     ; 080F75E2
strh  r1,[r2]                   ; 080F75E4
ldrb  r3,[r3]                   ; 080F75E6
cmp   r3,0x10                   ; 080F75E8
beq   @@Code080F75EE            ; 080F75EA
b     @@Code080F76F2            ; 080F75EC
@@Code080F75EE:
ldr   r0,=0x48B2                ; 080F75EE
add   r1,r4,r0                  ; 080F75F0
ldrh  r0,[r1]                   ; 080F75F2
add   r0,0x1                    ; 080F75F4
strh  r0,[r1]                   ; 080F75F6
mov   r2,0x90                   ; 080F75F8
lsl   r2,r2,0x2                 ; 080F75FA
add   r1,r5,r2                  ; 080F75FC
mov   r0,0x0                    ; 080F75FE
strb  r0,[r1]                   ; 080F7600
ldr   r1,=Data081976C0          ; 080F7602
ldr   r0,[r6]                   ; 080F7604
add   r0,r0,r2                  ; 080F7606
ldrb  r0,[r0]                   ; 080F7608
add   r0,r0,r1                  ; 080F760A
ldrb  r0,[r0]                   ; 080F760C
strh  r0,[r7]                   ; 080F760E
ldr   r0,=0x04000054            ; 080F7610
mov   r1,r8                     ; 080F7612
strh  r3,[r1]                   ; 080F7614
strh  r3,[r0]                   ; 080F7616
ldr   r2,=0x04000048            ; 080F7618
ldr   r5,=0x4A03                ; 080F761A
add   r1,r4,r5                  ; 080F761C
mov   r0,0x11                   ; 080F761E
strb  r0,[r1]                   ; 080F7620
strb  r0,[r2]                   ; 080F7622
add   r2,0x1                    ; 080F7624
ldr   r7,=0x4A04                ; 080F7626
add   r1,r4,r7                  ; 080F7628
mov   r0,0x3F                   ; 080F762A
strb  r0,[r1]                   ; 080F762C
strb  r0,[r2]                   ; 080F762E
ldr   r3,=0x0400004A            ; 080F7630
ldr   r0,=0x48CC                ; 080F7632
add   r1,r4,r0                  ; 080F7634
mov   r2,0x1F                   ; 080F7636
mov   r0,0x1F                   ; 080F7638
strh  r0,[r1]                   ; 080F763A
strb  r2,[r3]                   ; 080F763C
sub   r3,0xA                    ; 080F763E
ldr   r1,=0x02011400            ; 080F7640
ldrh  r2,[r1]                   ; 080F7642
ldr   r5,=0x488E                ; 080F7644
add   r0,r4,r5                  ; 080F7646
strh  r2,[r0]                   ; 080F7648
ldr   r0,=0xFFFF                ; 080F764A
and   r0,r2                     ; 080F764C
strh  r0,[r3]                   ; 080F764E
add   r3,0x4                    ; 080F7650
ldr   r7,=0x4890                ; 080F7652
add   r2,r4,r7                  ; 080F7654
mov   r0,0xFF                   ; 080F7656
strh  r0,[r2]                   ; 080F7658
strh  r0,[r3]                   ; 080F765A
sub   r3,0x2                    ; 080F765C
ldr   r0,=0x4892                ; 080F765E
add   r2,r4,r0                  ; 080F7660
ldr   r0,=0xA0D8                ; 080F7662
strh  r0,[r2]                   ; 080F7664
strh  r0,[r3]                   ; 080F7666
add   r3,0x4                    ; 080F7668
add   r5,0x6                    ; 080F766A
add   r2,r4,r5                  ; 080F766C
ldr   r0,=0x5890                ; 080F766E
strh  r0,[r2]                   ; 080F7670
strh  r0,[r3]                   ; 080F7672
mov   r0,sp                     ; 080F7674
mov   r7,r12                    ; 080F7676
strh  r7,[r0]                   ; 080F7678
ldr   r2,=0x01000200            ; 080F767A
bl    swi_MemoryCopy4or2        ; 080F767C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x030021C0            ; 080F7680
ldr   r0,=Sub080F756C+1         ; 080F7682
str   r0,[r1,0x10]              ; 080F7684
ldr   r2,=0x04000200            ; 080F7686
ldr   r0,=0x47C2                ; 080F7688
add   r1,r4,r0                  ; 080F768A
ldr   r0,=0x2003                ; 080F768C
strh  r0,[r1]                   ; 080F768E
strh  r0,[r2]                   ; 080F7690
ldr   r2,=0x04000004            ; 080F7692
sub   r5,0xD0                   ; 080F7694
add   r1,r4,r5                  ; 080F7696
mov   r0,0x18                   ; 080F7698
strh  r0,[r1]                   ; 080F769A
strh  r0,[r2]                   ; 080F769C
mov   r5,0x0                    ; 080F769E
ldr   r7,=0x9050                ; 080F76A0
mov   r9,r7                     ; 080F76A2
ldr   r0,=0xFFFF9050            ; 080F76A4
mov   r8,r0                     ; 080F76A6
ldr   r1,=0x0600A32A            ; 080F76A8
mov   r12,r1                    ; 080F76AA
@@Code080F76AC:
mov   r6,0x0                    ; 080F76AC
mov   r7,r8                     ; 080F76AE
add   r2,r5,r7                  ; 080F76B0
lsl   r1,r5,0x1                 ; 080F76B2
ldr   r4,=0x0600A328            ; 080F76B4
ldr   r3,=0x0600A334            ; 080F76B6
@@Code080F76B8:
mov   r0,r9                     ; 080F76B8
strh  r0,[r4]                   ; 080F76BA
mov   r7,r12                    ; 080F76BC
add   r0,r1,r7                  ; 080F76BE
strh  r2,[r0]                   ; 080F76C0
mov   r0,r9                     ; 080F76C2
strh  r0,[r3]                   ; 080F76C4
add   r2,0x10                   ; 080F76C6
add   r1,0x40                   ; 080F76C8
add   r4,0x40                   ; 080F76CA
add   r3,0x40                   ; 080F76CC
add   r6,0x1                    ; 080F76CE
cmp   r6,0x4                    ; 080F76D0
ble   @@Code080F76B8            ; 080F76D2
add   r5,0x1                    ; 080F76D4
cmp   r5,0x4                    ; 080F76D6
ble   @@Code080F76AC            ; 080F76D8
ldr   r1,=0x9050                ; 080F76DA
mov   r2,r1                     ; 080F76DC
ldr   r1,=0x0600A468            ; 080F76DE
ldr   r0,=0x0600A2E8            ; 080F76E0
mov   r5,0x6                    ; 080F76E2
@@Code080F76E4:
strh  r2,[r0]                   ; 080F76E4
strh  r2,[r1]                   ; 080F76E6
add   r1,0x2                    ; 080F76E8
add   r0,0x2                    ; 080F76EA
sub   r5,0x1                    ; 080F76EC
cmp   r5,0x0                    ; 080F76EE
bge   @@Code080F76E4            ; 080F76F0
@@Code080F76F2:
add   sp,0x4                    ; 080F76F2
pop   {r3-r4}                   ; 080F76F4
mov   r8,r3                     ; 080F76F6
mov   r9,r4                     ; 080F76F8
pop   {r4-r7}                   ; 080F76FA
pop   {r0}                      ; 080F76FC
bx    r0                        ; 080F76FE
.pool                           ; 080F7700

Sub080F777C:
push  {r4-r6,lr}                ; 080F777C
ldr   r6,=0x03002200            ; 080F777E
ldr   r0,=0x48B4                ; 080F7780
add   r4,r6,r0                  ; 080F7782
ldrh  r0,[r4]                   ; 080F7784
cmp   r0,0x0                    ; 080F7786
beq   @@Code080F7798            ; 080F7788
sub   r0,0x1                    ; 080F778A
strh  r0,[r4]                   ; 080F778C
b     @@Code080F7826            ; 080F778E
.pool                           ; 080F7790

@@Code080F7798:
ldr   r2,=0x03007244            ; 080F7798
ldr   r3,[r2]                   ; 080F779A
mov   r0,0x90                   ; 080F779C
lsl   r0,r0,0x2                 ; 080F779E
add   r1,r3,r0                  ; 080F77A0
ldrb  r5,[r1]                   ; 080F77A2
cmp   r5,0x3                    ; 080F77A4
bne   @@Code080F77CC            ; 080F77A6
ldr   r2,=0x48B2                ; 080F77A8
add   r1,r6,r2                  ; 080F77AA
ldrh  r0,[r1]                   ; 080F77AC
add   r0,0x1                    ; 080F77AE
mov   r2,0x0                    ; 080F77B0
strh  r0,[r1]                   ; 080F77B2
mov   r1,0x90                   ; 080F77B4
lsl   r1,r1,0x2                 ; 080F77B6
add   r0,r3,r1                  ; 080F77B8
strb  r2,[r0]                   ; 080F77BA
mov   r0,0x40                   ; 080F77BC
strh  r0,[r4]                   ; 080F77BE
b     @@Code080F7826            ; 080F77C0
.pool                           ; 080F77C2

@@Code080F77CC:
add   r0,r5,0x1                 ; 080F77CC
strb  r0,[r1]                   ; 080F77CE
ldr   r1,=Data081976C0          ; 080F77D0
ldr   r0,[r2]                   ; 080F77D2
mov   r2,0x90                   ; 080F77D4
lsl   r2,r2,0x2                 ; 080F77D6
add   r0,r0,r2                  ; 080F77D8
ldrb  r0,[r0]                   ; 080F77DA
add   r0,r0,r1                  ; 080F77DC
ldrb  r0,[r0]                   ; 080F77DE
strh  r0,[r4]                   ; 080F77E0
ldr   r0,=Data081976C4          ; 080F77E2
lsl   r4,r5,0x1                 ; 080F77E4
add   r0,r4,r0                  ; 080F77E6
ldrh  r0,[r0]                   ; 080F77E8
ldr   r2,=0x4058                ; 080F77EA
add   r1,r6,r2                  ; 080F77EC
strh  r0,[r1]                   ; 080F77EE
ldr   r0,=Data081976CA          ; 080F77F0
add   r0,r4,r0                  ; 080F77F2
ldrh  r0,[r0]                   ; 080F77F4
bl    PlayYISound               ; 080F77F6
mov   r2,0x0                    ; 080F77FA
lsl   r0,r5,0x2                 ; 080F77FC
ldr   r1,=Data081976D4          ; 080F77FE
add   r0,r0,r1                  ; 080F7800
ldr   r5,[r0]                   ; 080F7802
ldr   r0,=Data081976E0          ; 080F7804
add   r4,r4,r0                  ; 080F7806
ldrh  r4,[r4]                   ; 080F7808
@@Code080F780A:
lsl   r0,r2,0x1                 ; 080F780A
add   r3,r2,0x1                 ; 080F780C
add   r1,r2,r4                  ; 080F780E
add   r0,r0,r5                  ; 080F7810
mov   r2,0x4                    ; 080F7812
@@Code080F7814:
strh  r1,[r0]                   ; 080F7814
add   r1,0x10                   ; 080F7816
add   r0,0x40                   ; 080F7818
sub   r2,0x1                    ; 080F781A
cmp   r2,0x0                    ; 080F781C
bge   @@Code080F7814            ; 080F781E
mov   r2,r3                     ; 080F7820
cmp   r2,0x3                    ; 080F7822
ble   @@Code080F780A            ; 080F7824
@@Code080F7826:
pop   {r4-r6}                   ; 080F7826
pop   {r0}                      ; 080F7828
bx    r0                        ; 080F782A
.pool                           ; 080F782C

Sub080F7844:
push  {r4-r7,lr}                ; 080F7844
ldr   r6,=0x03002200            ; 080F7846
ldr   r0,=0x48B4                ; 080F7848
add   r7,r6,r0                  ; 080F784A
ldrh  r0,[r7]                   ; 080F784C
cmp   r0,0x0                    ; 080F784E
beq   @@Code080F7874            ; 080F7850
sub   r0,0x1                    ; 080F7852
strh  r0,[r7]                   ; 080F7854
lsl   r0,r0,0x10                ; 080F7856
cmp   r0,0x0                    ; 080F7858
bne   @@Code080F78BE            ; 080F785A
ldr   r0,=0x4058                ; 080F785C
add   r1,r6,r0                  ; 080F785E
mov   r0,0x36                   ; 080F7860
bl    PlayYISound               ; 080F7862
b     @@Code080F78BE            ; 080F7866
.pool                           ; 080F7868

@@Code080F7874:
ldr   r1,=0x4901                ; 080F7874
add   r0,r6,r1                  ; 080F7876
ldrb  r1,[r0]                   ; 080F7878
mov   r0,0x1                    ; 080F787A
and   r0,r1                     ; 080F787C
ldr   r5,=0x03007244            ; 080F787E
cmp   r0,0x0                    ; 080F7880
beq   @@Code080F7892            ; 080F7882
ldr   r1,[r5]                   ; 080F7884
mov   r0,0x8E                   ; 080F7886
lsl   r0,r0,0x2                 ; 080F7888
add   r1,r1,r0                  ; 080F788A
ldrh  r0,[r1]                   ; 080F788C
add   r0,0x1                    ; 080F788E
strh  r0,[r1]                   ; 080F7890
@@Code080F7892:
ldr   r0,[r5]                   ; 080F7892
mov   r4,0x8E                   ; 080F7894
lsl   r4,r4,0x2                 ; 080F7896
add   r0,r0,r4                  ; 080F7898
ldrh  r3,[r0]                   ; 080F789A
mov   r0,0xBE                   ; 080F789C
mov   r1,0x72                   ; 080F789E
mov   r2,0x0                    ; 080F78A0
bl    Sub080F6BCC               ; 080F78A2
ldr   r0,[r5]                   ; 080F78A6
add   r0,r0,r4                  ; 080F78A8
ldrh  r0,[r0]                   ; 080F78AA
cmp   r0,0x15                   ; 080F78AC
bne   @@Code080F78BE            ; 080F78AE
ldr   r1,=0x48B2                ; 080F78B0
add   r0,r6,r1                  ; 080F78B2
ldrh  r1,[r0]                   ; 080F78B4
add   r1,0x1                    ; 080F78B6
strh  r1,[r0]                   ; 080F78B8
mov   r0,0x8                    ; 080F78BA
strh  r0,[r7]                   ; 080F78BC
@@Code080F78BE:
pop   {r4-r7}                   ; 080F78BE
pop   {r0}                      ; 080F78C0
bx    r0                        ; 080F78C2
.pool                           ; 080F78C4

Sub080F78D0:
push  {r4-r7,lr}                ; 080F78D0
mov   r7,r9                     ; 080F78D2
mov   r6,r8                     ; 080F78D4
push  {r6-r7}                   ; 080F78D6
ldr   r7,=0x03002200            ; 080F78D8
ldr   r0,=0x48B4                ; 080F78DA
add   r4,r7,r0                  ; 080F78DC
ldrh  r0,[r4]                   ; 080F78DE
cmp   r0,0x0                    ; 080F78E0
beq   @@Code080F790C            ; 080F78E2
sub   r0,0x1                    ; 080F78E4
strh  r0,[r4]                   ; 080F78E6
ldr   r0,=0x03007244            ; 080F78E8
ldr   r0,[r0]                   ; 080F78EA
mov   r1,0x8E                   ; 080F78EC
lsl   r1,r1,0x2                 ; 080F78EE
add   r0,r0,r1                  ; 080F78F0
ldrh  r3,[r0]                   ; 080F78F2
mov   r0,0xBE                   ; 080F78F4
mov   r1,0x72                   ; 080F78F6
mov   r2,0x0                    ; 080F78F8
bl    Sub080F6BCC               ; 080F78FA
b     @@Code080F79AE            ; 080F78FE
.pool                           ; 080F7900

@@Code080F790C:
ldr   r5,=0x03007244            ; 080F790C
ldr   r0,[r5]                   ; 080F790E
mov   r1,0x8E                   ; 080F7910
lsl   r1,r1,0x2                 ; 080F7912
add   r0,r0,r1                  ; 080F7914
ldrh  r3,[r0]                   ; 080F7916
mov   r0,0xBE                   ; 080F7918
mov   r1,0x72                   ; 080F791A
mov   r2,0x0                    ; 080F791C
bl    Sub080F6BCC               ; 080F791E
ldr   r1,[r5]                   ; 080F7922
mov   r6,0x90                   ; 080F7924
lsl   r6,r6,0x2                 ; 080F7926
add   r1,r1,r6                  ; 080F7928
ldrb  r0,[r1]                   ; 080F792A
add   r0,0x1                    ; 080F792C
strb  r0,[r1]                   ; 080F792E
mov   r0,0x8                    ; 080F7930
strh  r0,[r4]                   ; 080F7932
ldr   r0,[r5]                   ; 080F7934
add   r0,r0,r6                  ; 080F7936
ldrb  r1,[r0]                   ; 080F7938
mov   r0,0x1                    ; 080F793A
and   r0,r1                     ; 080F793C
cmp   r0,0x0                    ; 080F793E
beq   @@Code080F7950            ; 080F7940
ldr   r0,=0x4058                ; 080F7942
add   r1,r7,r0                  ; 080F7944
mov   r0,0xB8                   ; 080F7946
strh  r0,[r1]                   ; 080F7948
mov   r0,0xA5                   ; 080F794A
bl    PlayYISound               ; 080F794C
@@Code080F7950:
mov   r4,0x0                    ; 080F7950
mov   r9,r5                     ; 080F7952
ldr   r1,=Data081976E6          ; 080F7954
mov   r12,r1                    ; 080F7956
ldr   r0,=0x0600A32A            ; 080F7958
mov   r8,r0                     ; 080F795A
mov   r7,r9                     ; 080F795C
@@Code080F795E:
mov   r3,0x0                    ; 080F795E
lsl   r0,r4,0x1                 ; 080F7960
add   r5,r4,0x1                 ; 080F7962
mov   r1,r8                     ; 080F7964
add   r2,r0,r1                  ; 080F7966
@@Code080F7968:
ldr   r0,[r7]                   ; 080F7968
add   r0,r0,r6                  ; 080F796A
ldrb  r0,[r0]                   ; 080F796C
lsl   r0,r0,0x1                 ; 080F796E
add   r0,r12                    ; 080F7970
ldrh  r0,[r0]                   ; 080F7972
add   r0,r0,r4                  ; 080F7974
lsl   r1,r3,0x4                 ; 080F7976
add   r0,r0,r1                  ; 080F7978
strh  r0,[r2]                   ; 080F797A
add   r2,0x40                   ; 080F797C
add   r3,0x1                    ; 080F797E
cmp   r3,0x4                    ; 080F7980
ble   @@Code080F7968            ; 080F7982
mov   r4,r5                     ; 080F7984
cmp   r4,0x4                    ; 080F7986
ble   @@Code080F795E            ; 080F7988
mov   r1,r9                     ; 080F798A
ldr   r0,[r1]                   ; 080F798C
mov   r1,0x90                   ; 080F798E
lsl   r1,r1,0x2                 ; 080F7990
add   r0,r0,r1                  ; 080F7992
ldrb  r0,[r0]                   ; 080F7994
cmp   r0,0x4                    ; 080F7996
bne   @@Code080F79AE            ; 080F7998
ldr   r1,=0x03002200            ; 080F799A
ldr   r0,=0x48B4                ; 080F799C
add   r2,r1,r0                  ; 080F799E
mov   r0,0x40                   ; 080F79A0
strh  r0,[r2]                   ; 080F79A2
ldr   r0,=0x48B2                ; 080F79A4
add   r1,r1,r0                  ; 080F79A6
ldrh  r0,[r1]                   ; 080F79A8
add   r0,0x1                    ; 080F79AA
strh  r0,[r1]                   ; 080F79AC
@@Code080F79AE:
pop   {r3-r4}                   ; 080F79AE
mov   r8,r3                     ; 080F79B0
mov   r9,r4                     ; 080F79B2
pop   {r4-r7}                   ; 080F79B4
pop   {r0}                      ; 080F79B6
bx    r0                        ; 080F79B8
.pool                           ; 080F79BA

Sub080F79D8:
push  {r4-r7,lr}                ; 080F79D8
ldr   r7,=0x03002200            ; 080F79DA
ldr   r0,=0x48B4                ; 080F79DC
add   r6,r7,r0                  ; 080F79DE
ldrh  r0,[r6]                   ; 080F79E0
mov   r2,r0                     ; 080F79E2
cmp   r2,0x0                    ; 080F79E4
beq   @@Code080F7A24            ; 080F79E6
sub   r0,0x1                    ; 080F79E8
strh  r0,[r6]                   ; 080F79EA
ldr   r0,=0x03007244            ; 080F79EC
ldr   r0,[r0]                   ; 080F79EE
mov   r1,0x8E                   ; 080F79F0
lsl   r1,r1,0x2                 ; 080F79F2
add   r0,r0,r1                  ; 080F79F4
ldrh  r3,[r0]                   ; 080F79F6
mov   r0,0xBE                   ; 080F79F8
mov   r1,0x72                   ; 080F79FA
mov   r2,0x0                    ; 080F79FC
bl    Sub080F6BCC               ; 080F79FE
ldrh  r0,[r6]                   ; 080F7A02
cmp   r0,0x0                    ; 080F7A04
bne   @@Code080F7A64            ; 080F7A06
ldr   r0,=0x4058                ; 080F7A08
add   r1,r7,r0                  ; 080F7A0A
mov   r0,0x35                   ; 080F7A0C
bl    PlayYISound               ; 080F7A0E
b     @@Code080F7A64            ; 080F7A12
.pool                           ; 080F7A14

@@Code080F7A24:
ldr   r5,=0x03007244            ; 080F7A24
ldr   r0,[r5]                   ; 080F7A26
mov   r4,0x8E                   ; 080F7A28
lsl   r4,r4,0x2                 ; 080F7A2A
add   r1,r0,r4                  ; 080F7A2C
ldrh  r0,[r1]                   ; 080F7A2E
sub   r0,0x2                    ; 080F7A30
strh  r0,[r1]                   ; 080F7A32
lsl   r0,r0,0x10                ; 080F7A34
cmp   r0,0x0                    ; 080F7A36
bgt   @@Code080F7A3C            ; 080F7A38
strh  r2,[r1]                   ; 080F7A3A
@@Code080F7A3C:
ldr   r0,[r5]                   ; 080F7A3C
add   r0,r0,r4                  ; 080F7A3E
ldrh  r3,[r0]                   ; 080F7A40
mov   r0,0xBE                   ; 080F7A42
mov   r1,0x72                   ; 080F7A44
mov   r2,0x0                    ; 080F7A46
bl    Sub080F6BCC               ; 080F7A48
ldr   r0,[r5]                   ; 080F7A4C
add   r0,r0,r4                  ; 080F7A4E
ldrh  r0,[r0]                   ; 080F7A50
cmp   r0,0x0                    ; 080F7A52
bne   @@Code080F7A64            ; 080F7A54
ldr   r1,=0x48B2                ; 080F7A56
add   r0,r7,r1                  ; 080F7A58
ldrh  r1,[r0]                   ; 080F7A5A
add   r1,0x1                    ; 080F7A5C
strh  r1,[r0]                   ; 080F7A5E
mov   r0,0x10                   ; 080F7A60
strh  r0,[r6]                   ; 080F7A62
@@Code080F7A64:
pop   {r4-r7}                   ; 080F7A64
pop   {r0}                      ; 080F7A66
bx    r0                        ; 080F7A68
.pool                           ; 080F7A6A

Sub080F7A74:
push  {r4-r7,lr}                ; 080F7A74
add   sp,-0x4                   ; 080F7A76
ldr   r0,=0x03002200            ; 080F7A78
ldr   r2,=0x48B4                ; 080F7A7A
add   r1,r0,r2                  ; 080F7A7C
ldrh  r0,[r1]                   ; 080F7A7E
cmp   r0,0x0                    ; 080F7A80
beq   @@Code080F7A94            ; 080F7A82
sub   r0,0x1                    ; 080F7A84
strh  r0,[r1]                   ; 080F7A86
b     @@Code080F7B9C            ; 080F7A88
.pool                           ; 080F7A8A

@@Code080F7A94:
mov   r7,sp                     ; 080F7A94
add   r7,0x2                    ; 080F7A96
ldr   r3,=0x0600A1C6            ; 080F7A98
ldr   r2,=Data081976F0          ; 080F7A9A
ldr   r1,=0x0600A186            ; 080F7A9C
mov   r4,0x5                    ; 080F7A9E
@@Code080F7AA0:
ldrh  r0,[r2]                   ; 080F7AA0
strh  r0,[r1]                   ; 080F7AA2
add   r0,0x10                   ; 080F7AA4
strh  r0,[r3]                   ; 080F7AA6
add   r3,0x2                    ; 080F7AA8
add   r2,0x2                    ; 080F7AAA
add   r1,0x2                    ; 080F7AAC
sub   r4,0x1                    ; 080F7AAE
cmp   r4,0x0                    ; 080F7AB0
bge   @@Code080F7AA0            ; 080F7AB2
ldr   r3,=0xFFFF800D            ; 080F7AB4
ldr   r2,=0x0600A170            ; 080F7AB6
ldr   r1,=0xFFFF800C            ; 080F7AB8
ldr   r0,=0x0600A16E            ; 080F7ABA
mov   r4,0x4                    ; 080F7ABC
@@Code080F7ABE:
strh  r1,[r0]                   ; 080F7ABE
strh  r3,[r2]                   ; 080F7AC0
add   r3,0x10                   ; 080F7AC2
add   r2,0x40                   ; 080F7AC4
add   r1,0x10                   ; 080F7AC6
add   r0,0x40                   ; 080F7AC8
sub   r4,0x1                    ; 080F7ACA
cmp   r4,0x0                    ; 080F7ACC
bge   @@Code080F7ABE            ; 080F7ACE
mov   r4,0x0                    ; 080F7AD0
mov   r5,sp                     ; 080F7AD2
ldr   r3,=0x808F                ; 080F7AD4
mov   r6,r3                     ; 080F7AD6
@@Code080F7AD8:
strh  r6,[r5]                   ; 080F7AD8
ldr   r0,=0x0600A328            ; 080F7ADA
add   r1,r4,r0                  ; 080F7ADC
mov   r0,sp                     ; 080F7ADE
ldr   r2,=0x01000007            ; 080F7AE0
bl    swi_MemoryCopy4or2        ; 080F7AE2  Memory copy/fill, 4- or 2-byte blocks
add   r4,0x40                   ; 080F7AE6
ldr   r0,=0x013F                ; 080F7AE8
cmp   r4,r0                     ; 080F7AEA
ble   @@Code080F7AD8            ; 080F7AEC
mov   r0,sp                     ; 080F7AEE
ldr   r1,=0x808F                ; 080F7AF0
mov   r4,r1                     ; 080F7AF2
strh  r4,[r0]                   ; 080F7AF4
ldr   r1,=0x0600A2E8            ; 080F7AF6
ldr   r5,=0x01000007            ; 080F7AF8
mov   r2,r5                     ; 080F7AFA
bl    swi_MemoryCopy4or2        ; 080F7AFC  Memory copy/fill, 4- or 2-byte blocks
strh  r4,[r7]                   ; 080F7B00
ldr   r1,=0x0600A468            ; 080F7B02
mov   r0,r7                     ; 080F7B04
mov   r2,r5                     ; 080F7B06
bl    swi_MemoryCopy4or2        ; 080F7B08  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x04000050            ; 080F7B0C
ldr   r1,=0x03002200            ; 080F7B0E
ldr   r3,=0x4888                ; 080F7B10
add   r0,r1,r3                  ; 080F7B12
mov   r6,0x0                    ; 080F7B14
mov   r5,0x0                    ; 080F7B16
mov   r3,0xFF                   ; 080F7B18
strh  r3,[r0]                   ; 080F7B1A
strh  r3,[r2]                   ; 080F7B1C
add   r2,0x4                    ; 080F7B1E
ldr   r4,=0x488C                ; 080F7B20
add   r0,r1,r4                  ; 080F7B22
strh  r5,[r0]                   ; 080F7B24
strh  r5,[r2]                   ; 080F7B26
ldr   r4,=0x04000048            ; 080F7B28
ldr   r7,=0x4A03                ; 080F7B2A
add   r0,r1,r7                  ; 080F7B2C
mov   r2,0x3F                   ; 080F7B2E
strb  r2,[r0]                   ; 080F7B30
strb  r2,[r4]                   ; 080F7B32
add   r4,0x1                    ; 080F7B34
add   r7,0x1                    ; 080F7B36
add   r0,r1,r7                  ; 080F7B38
strb  r2,[r0]                   ; 080F7B3A
strb  r2,[r4]                   ; 080F7B3C
ldr   r2,=0x0400004A            ; 080F7B3E
ldr   r4,=0x48CC                ; 080F7B40
add   r0,r1,r4                  ; 080F7B42
strh  r5,[r0]                   ; 080F7B44
strb  r6,[r2]                   ; 080F7B46
sub   r2,0xA                    ; 080F7B48
ldr   r7,=0x488E                ; 080F7B4A
add   r0,r1,r7                  ; 080F7B4C
strh  r3,[r0]                   ; 080F7B4E
strh  r3,[r2]                   ; 080F7B50
add   r2,0x4                    ; 080F7B52
sub   r4,0x3A                   ; 080F7B54
add   r0,r1,r4                  ; 080F7B56
strh  r3,[r0]                   ; 080F7B58
strh  r3,[r2]                   ; 080F7B5A
sub   r2,0x2                    ; 080F7B5C
add   r7,0x2                    ; 080F7B5E
add   r0,r1,r7                  ; 080F7B60
strh  r3,[r0]                   ; 080F7B62
strh  r3,[r2]                   ; 080F7B64
add   r2,0x4                    ; 080F7B66
add   r4,0x2                    ; 080F7B68
add   r0,r1,r4                  ; 080F7B6A
strh  r3,[r0]                   ; 080F7B6C
strh  r3,[r2]                   ; 080F7B6E
ldr   r3,=0x04000200            ; 080F7B70
sub   r7,0xCE                   ; 080F7B72
add   r2,r1,r7                  ; 080F7B74
ldr   r0,=0x2001                ; 080F7B76
strh  r0,[r2]                   ; 080F7B78
strh  r0,[r3]                   ; 080F7B7A
ldr   r3,=0x04000004            ; 080F7B7C
ldr   r0,=0x47C4                ; 080F7B7E
add   r2,r1,r0                  ; 080F7B80
mov   r0,0x8                    ; 080F7B82
strh  r0,[r2]                   ; 080F7B84
strh  r0,[r3]                   ; 080F7B86
ldr   r3,=0x48B2                ; 080F7B88
add   r2,r1,r3                  ; 080F7B8A
ldrh  r0,[r2]                   ; 080F7B8C
add   r0,0x1                    ; 080F7B8E
strh  r0,[r2]                   ; 080F7B90
ldr   r4,=0x4058                ; 080F7B92
add   r1,r1,r4                  ; 080F7B94
mov   r0,0x40                   ; 080F7B96
bl    PlayYISound               ; 080F7B98
@@Code080F7B9C:
add   sp,0x4                    ; 080F7B9C
pop   {r4-r7}                   ; 080F7B9E
pop   {r0}                      ; 080F7BA0
bx    r0                        ; 080F7BA2
.pool                           ; 080F7BA4

Return080F7C14:
bx    lr                        ; 080F7C14
.pool                           ; 080F7C16

Sub080F7C18:
push  {r4-r7,lr}                ; 080F7C18
ldr   r6,=0x03002200            ; 080F7C1A
ldr   r0,=0x48B4                ; 080F7C1C
add   r1,r6,r0                  ; 080F7C1E
ldrh  r0,[r1]                   ; 080F7C20
cmp   r0,0x0                    ; 080F7C22
beq   @@Code080F7C34            ; 080F7C24
sub   r0,0x1                    ; 080F7C26
strh  r0,[r1]                   ; 080F7C28
b     @@Code080F7C80            ; 080F7C2A
.pool                           ; 080F7C2C

@@Code080F7C34:
mov   r0,0x6                    ; 080F7C34
strh  r0,[r1]                   ; 080F7C36
ldr   r7,=0x03007244            ; 080F7C38
ldr   r1,[r7]                   ; 080F7C3A
mov   r3,0x8F                   ; 080F7C3C
lsl   r3,r3,0x2                 ; 080F7C3E
add   r1,r1,r3                  ; 080F7C40
ldrb  r0,[r1]                   ; 080F7C42
sub   r0,0x1                    ; 080F7C44
strb  r0,[r1]                   ; 080F7C46
ldr   r4,[r7]                   ; 080F7C48
add   r3,r4,r3                  ; 080F7C4A
ldrb  r2,[r3]                   ; 080F7C4C
lsl   r1,r2,0x8                 ; 080F7C4E
mov   r0,0x10                   ; 080F7C50
sub   r0,r0,r2                  ; 080F7C52
orr   r1,r0                     ; 080F7C54
ldr   r2,=0x488C                ; 080F7C56
add   r0,r6,r2                  ; 080F7C58
strh  r1,[r0]                   ; 080F7C5A
ldrb  r5,[r3]                   ; 080F7C5C
cmp   r5,0x0                    ; 080F7C5E
bne   @@Code080F7C80            ; 080F7C60
ldr   r0,=0x4905                ; 080F7C62
add   r1,r6,r0                  ; 080F7C64
mov   r0,0x33                   ; 080F7C66
strb  r0,[r1]                   ; 080F7C68
mov   r0,r6                     ; 080F7C6A
mov   r1,r4                     ; 080F7C6C
bl    DynamicDeallocate         ; 080F7C6E
str   r5,[r7]                   ; 080F7C72
ldr   r4,=0x03007240            ; 080F7C74  Normal gameplay IWRAM (0300220C)
ldr   r1,[r4]                   ; 080F7C76
mov   r0,r6                     ; 080F7C78
bl    DynamicDeallocate         ; 080F7C7A
str   r5,[r4]                   ; 080F7C7E
@@Code080F7C80:
pop   {r4-r7}                   ; 080F7C80
pop   {r0}                      ; 080F7C82
bx    r0                        ; 080F7C84
.pool                           ; 080F7C86

Sub080F7C98:
push  {r4,lr}                   ; 080F7C98
ldr   r1,=CodePtrs081976FC      ; 080F7C9A
ldr   r4,=0x03002200            ; 080F7C9C
ldr   r0,=0x48B2                ; 080F7C9E
add   r4,r4,r0                  ; 080F7CA0
ldrh  r0,[r4]                   ; 080F7CA2
lsl   r0,r0,0x2                 ; 080F7CA4
add   r0,r0,r1                  ; 080F7CA6
ldr   r0,[r0]                   ; 080F7CA8
bl    Sub_bx_r0                 ; 080F7CAA
ldrh  r0,[r4]                   ; 080F7CAE
cmp   r0,0x5                    ; 080F7CB0
bls   @@Code080F7D14            ; 080F7CB2
ldr   r3,=0x03007244            ; 080F7CB4
ldr   r0,[r3]                   ; 080F7CB6
ldr   r2,=0x023F                ; 080F7CB8
add   r1,r0,r2                  ; 080F7CBA
ldrb  r0,[r1]                   ; 080F7CBC
mov   r4,r0                     ; 080F7CBE
cmp   r4,0x0                    ; 080F7CC0
beq   @@Code080F7CE0            ; 080F7CC2
sub   r0,0x1                    ; 080F7CC4
strb  r0,[r1]                   ; 080F7CC6
b     @@Code080F7D14            ; 080F7CC8
.pool                           ; 080F7CCA

@@Code080F7CE0:
mov   r0,0x6                    ; 080F7CE0
strb  r0,[r1]                   ; 080F7CE2
ldr   r1,[r3]                   ; 080F7CE4
ldr   r2,=0x023E                ; 080F7CE6
add   r1,r1,r2                  ; 080F7CE8
ldrb  r0,[r1]                   ; 080F7CEA
add   r0,0x1                    ; 080F7CEC
strb  r0,[r1]                   ; 080F7CEE
ldr   r0,[r3]                   ; 080F7CF0
add   r1,r0,r2                  ; 080F7CF2
ldrb  r0,[r1]                   ; 080F7CF4
cmp   r0,0x3                    ; 080F7CF6
bne   @@Code080F7CFC            ; 080F7CF8
strb  r4,[r1]                   ; 080F7CFA
@@Code080F7CFC:
ldr   r1,=Data081975D4          ; 080F7CFC
ldr   r0,[r3]                   ; 080F7CFE
add   r0,r0,r2                  ; 080F7D00
ldrb  r0,[r0]                   ; 080F7D02
lsl   r0,r0,0x2                 ; 080F7D04
add   r0,r0,r1                  ; 080F7D06
ldr   r0,[r0]                   ; 080F7D08
ldr   r1,=0x06009800            ; 080F7D0A
mov   r2,0x80                   ; 080F7D0C
lsl   r2,r2,0x2                 ; 080F7D0E
bl    swi_MemoryCopy32          ; 080F7D10  Memory copy/fill, 32-byte blocks
@@Code080F7D14:
pop   {r4}                      ; 080F7D14
pop   {r0}                      ; 080F7D16
bx    r0                        ; 080F7D18
.pool                           ; 080F7D1A

Sub080F7D28:
push  {lr}                      ; 080F7D28
ldr   r0,=0x03007244            ; 080F7D2A
ldr   r3,[r0]                   ; 080F7D2C
ldr   r1,=0x0125                ; 080F7D2E
add   r0,r3,r1                  ; 080F7D30
ldrb  r0,[r0]                   ; 080F7D32
cmp   r0,0x3                    ; 080F7D34
bne   @@Code080F7D84            ; 080F7D36
ldr   r0,=0x023A                ; 080F7D38
add   r1,r3,r0                  ; 080F7D3A
ldrh  r0,[r1]                   ; 080F7D3C
cmp   r0,0x0                    ; 080F7D3E
beq   @@Code080F7D54            ; 080F7D40
sub   r0,0x1                    ; 080F7D42
strh  r0,[r1]                   ; 080F7D44
b     @@Code080F7D84            ; 080F7D46
.pool                           ; 080F7D48

@@Code080F7D54:
ldr   r2,=0x03002200            ; 080F7D54
ldr   r0,=0x48B2                ; 080F7D56
add   r1,r2,r0                  ; 080F7D58
ldrh  r0,[r1]                   ; 080F7D5A
add   r0,0x1                    ; 080F7D5C
strh  r0,[r1]                   ; 080F7D5E
mov   r0,0x8F                   ; 080F7D60
lsl   r0,r0,0x2                 ; 080F7D62
add   r1,r3,r0                  ; 080F7D64
mov   r0,0x10                   ; 080F7D66
strb  r0,[r1]                   ; 080F7D68
ldr   r0,=0x488C                ; 080F7D6A
add   r1,r2,r0                  ; 080F7D6C
mov   r0,0x80                   ; 080F7D6E
lsl   r0,r0,0x5                 ; 080F7D70
strh  r0,[r1]                   ; 080F7D72
ldr   r0,=0x4888                ; 080F7D74
add   r1,r2,r0                  ; 080F7D76
mov   r0,0xFF                   ; 080F7D78
strh  r0,[r1]                   ; 080F7D7A
ldr   r1,=0x48B4                ; 080F7D7C
add   r2,r2,r1                  ; 080F7D7E
mov   r0,0x6                    ; 080F7D80
strh  r0,[r2]                   ; 080F7D82
@@Code080F7D84:
pop   {r0}                      ; 080F7D84
bx    r0                        ; 080F7D86
.pool                           ; 080F7D88

Sub080F7D9C:
push  {r4,lr}                   ; 080F7D9C
ldr   r4,=0x03002200            ; 080F7D9E
ldr   r0,=0x48B4                ; 080F7DA0
add   r1,r4,r0                  ; 080F7DA2
ldrh  r0,[r1]                   ; 080F7DA4
cmp   r0,0x0                    ; 080F7DA6
beq   @@Code080F7DB8            ; 080F7DA8
sub   r0,0x1                    ; 080F7DAA
strh  r0,[r1]                   ; 080F7DAC
b     @@Code080F7E12            ; 080F7DAE
.pool                           ; 080F7DB0

@@Code080F7DB8:
mov   r0,0x6                    ; 080F7DB8
strh  r0,[r1]                   ; 080F7DBA
ldr   r2,=0x03007244            ; 080F7DBC
ldr   r1,[r2]                   ; 080F7DBE
mov   r3,0x8F                   ; 080F7DC0
lsl   r3,r3,0x2                 ; 080F7DC2
add   r1,r1,r3                  ; 080F7DC4
ldrb  r0,[r1]                   ; 080F7DC6
sub   r0,0x1                    ; 080F7DC8
strb  r0,[r1]                   ; 080F7DCA
ldr   r2,[r2]                   ; 080F7DCC
add   r2,r2,r3                  ; 080F7DCE
ldrb  r3,[r2]                   ; 080F7DD0
lsl   r1,r3,0x8                 ; 080F7DD2
mov   r0,0x10                   ; 080F7DD4
sub   r0,r0,r3                  ; 080F7DD6
orr   r1,r0                     ; 080F7DD8
ldr   r3,=0x488C                ; 080F7DDA
add   r0,r4,r3                  ; 080F7DDC
strh  r1,[r0]                   ; 080F7DDE
ldrb  r1,[r2]                   ; 080F7DE0
cmp   r1,0x0                    ; 080F7DE2
bne   @@Code080F7E12            ; 080F7DE4
ldr   r2,=0x48B2                ; 080F7DE6
add   r0,r4,r2                  ; 080F7DE8
strh  r1,[r0]                   ; 080F7DEA
add   r3,0x24                   ; 080F7DEC
add   r1,r4,r3                  ; 080F7DEE
ldrh  r0,[r1]                   ; 080F7DF0
add   r0,0x1                    ; 080F7DF2
strh  r0,[r1]                   ; 080F7DF4
ldr   r0,=Data08215308          ; 080F7DF6
ldr   r1,=0x06008000            ; 080F7DF8
bl    swi_LZ77_VRAM             ; 080F7DFA  LZ77 decompress (VRAM)
ldr   r0,=Data082157C4          ; 080F7DFE
ldr   r1,=0x06009800            ; 080F7E00
mov   r2,0x80                   ; 080F7E02
lsl   r2,r2,0x2                 ; 080F7E04
bl    swi_MemoryCopy32          ; 080F7E06  Memory copy/fill, 32-byte blocks
ldr   r0,=Data082173D4          ; 080F7E0A
ldr   r1,=0x0600A000            ; 080F7E0C
bl    swi_LZ77_VRAM             ; 080F7E0E  LZ77 decompress (VRAM)
@@Code080F7E12:
pop   {r4}                      ; 080F7E12
pop   {r0}                      ; 080F7E14
bx    r0                        ; 080F7E16
.pool                           ; 080F7E18

Sub080F7E3C:
push  {lr}                      ; 080F7E3C
mov   r3,r0                     ; 080F7E3E
ldr   r2,=0x03007244            ; 080F7E40
ldr   r0,[r2]                   ; 080F7E42
add   r0,0xF0                   ; 080F7E44
ldr   r1,[r3]                   ; 080F7E46
ldr   r0,[r0]                   ; 080F7E48
sub   r1,r1,r0                  ; 080F7E4A
cmp   r1,0x0                    ; 080F7E4C
ble   @@Code080F7E5C            ; 080F7E4E
mov   r1,r3                     ; 080F7E50
add   r1,0x37                   ; 080F7E52
mov   r0,0x0                    ; 080F7E54
b     @@Code080F7E62            ; 080F7E56
.pool                           ; 080F7E58

@@Code080F7E5C:
mov   r1,r3                     ; 080F7E5C
add   r1,0x37                   ; 080F7E5E
mov   r0,0x1                    ; 080F7E60
@@Code080F7E62:
strb  r0,[r1]                   ; 080F7E62
ldrh  r0,[r3,0x2C]              ; 080F7E64
cmp   r0,0x0                    ; 080F7E66
beq   @@Code080F7E8C            ; 080F7E68
cmp   r0,0x1                    ; 080F7E6A
bne   @@Code080F7EC2            ; 080F7E6C
ldr   r0,=0xFFFFFC00            ; 080F7E6E
str   r0,[r3,0x10]              ; 080F7E70
str   r0,[r3,0xC]               ; 080F7E72
ldr   r0,[r2]                   ; 080F7E74
ldr   r1,=0x0249                ; 080F7E76
add   r0,r0,r1                  ; 080F7E78
ldrb  r0,[r0]                   ; 080F7E7A
bl    Sub080F6870               ; 080F7E7C
b     @@Code080F7EC2            ; 080F7E80
.pool                           ; 080F7E82

@@Code080F7E8C:
mov   r0,r3                     ; 080F7E8C
add   r0,0x36                   ; 080F7E8E
ldrb  r0,[r0]                   ; 080F7E90
cmp   r0,0x0                    ; 080F7E92
beq   @@Code080F7EBC            ; 080F7E94
mov   r1,0x0                    ; 080F7E96
mov   r0,0x14                   ; 080F7E98
strh  r0,[r3,0x2C]              ; 080F7E9A
mov   r0,r3                     ; 080F7E9C
add   r0,0x3B                   ; 080F7E9E
strb  r1,[r0]                   ; 080F7EA0
ldr   r1,=Data08197734          ; 080F7EA2
ldr   r0,[r2]                   ; 080F7EA4
ldr   r2,=0x0249                ; 080F7EA6
add   r0,r0,r2                  ; 080F7EA8
ldrb  r0,[r0]                   ; 080F7EAA
add   r0,r0,r1                  ; 080F7EAC
ldrb  r0,[r0]                   ; 080F7EAE
strh  r0,[r3,0x28]              ; 080F7EB0
b     @@Code080F7EC2            ; 080F7EB2
.pool                           ; 080F7EB4

@@Code080F7EBC:
mov   r0,r3                     ; 080F7EBC
bl    Sub080F6960               ; 080F7EBE
@@Code080F7EC2:
pop   {r0}                      ; 080F7EC2
bx    r0                        ; 080F7EC4
.pool                           ; 080F7EC6

Sub080F7EC8:
push  {r4-r5,lr}                ; 080F7EC8
mov   r5,r0                     ; 080F7ECA
ldr   r0,=0x03007244            ; 080F7ECC
ldr   r4,[r0]                   ; 080F7ECE
add   r4,0xF0                   ; 080F7ED0
mov   r0,r5                     ; 080F7ED2
bl    Sub080F68EC               ; 080F7ED4
ldr   r0,[r4]                   ; 080F7ED8
ldr   r1,[r5]                   ; 080F7EDA
sub   r0,r0,r1                  ; 080F7EDC
ldr   r1,=0x87FF                ; 080F7EDE
cmp   r0,r1                     ; 080F7EE0
bgt   @@Code080F7F0A            ; 080F7EE2
mov   r0,r5                     ; 080F7EE4
add   r0,0x3B                   ; 080F7EE6
ldrb  r0,[r0]                   ; 080F7EE8
cmp   r0,0x2                    ; 080F7EEA
bne   @@Code080F7F0A            ; 080F7EEC
mov   r1,r5                     ; 080F7EEE
add   r1,0x37                   ; 080F7EF0
mov   r0,0x1                    ; 080F7EF2
strb  r0,[r1]                   ; 080F7EF4
sub   r1,0x2                    ; 080F7EF6
ldrb  r0,[r1]                   ; 080F7EF8
add   r0,0x1                    ; 080F7EFA
strb  r0,[r1]                   ; 080F7EFC
mov   r0,r5                     ; 080F7EFE
mov   r1,0x9                    ; 080F7F00
bl    Sub080F683C               ; 080F7F02
mov   r0,0x10                   ; 080F7F06
strh  r0,[r5,0x2C]              ; 080F7F08
@@Code080F7F0A:
pop   {r4-r5}                   ; 080F7F0A
pop   {r0}                      ; 080F7F0C
bx    r0                        ; 080F7F0E
.pool                           ; 080F7F10

Sub080F7F18:
push  {r4-r5,lr}                ; 080F7F18
mov   r5,r0                     ; 080F7F1A
ldrh  r0,[r5,0x2C]              ; 080F7F1C
cmp   r0,0x0                    ; 080F7F1E
beq   @@Code080F7F68            ; 080F7F20
cmp   r0,0x1                    ; 080F7F22
bne   @@Code080F7FA6            ; 080F7F24
ldrh  r1,[r5,0x30]              ; 080F7F26
cmp   r1,0x2                    ; 080F7F28
bne   @@Code080F7F58            ; 080F7F2A
mov   r0,r5                     ; 080F7F2C
add   r0,0x37                   ; 080F7F2E
mov   r4,0x0                    ; 080F7F30
strb  r4,[r0]                   ; 080F7F32
mov   r1,r5                     ; 080F7F34
add   r1,0x35                   ; 080F7F36
ldrb  r0,[r1]                   ; 080F7F38
add   r0,0x1                    ; 080F7F3A
strb  r0,[r1]                   ; 080F7F3C
mov   r0,r5                     ; 080F7F3E
mov   r1,0x2                    ; 080F7F40
bl    Sub080F683C               ; 080F7F42
mov   r0,0x10                   ; 080F7F46
str   r0,[r5,0x14]              ; 080F7F48
sub   r0,0xA0                   ; 080F7F4A
str   r0,[r5,0x1C]              ; 080F7F4C
strh  r4,[r5,0x30]              ; 080F7F4E
add   r0,0x25                   ; 080F7F50
str   r0,[r5,0xC]               ; 080F7F52
str   r4,[r5,0x18]              ; 080F7F54
b     @@Code080F7FA6            ; 080F7F56
@@Code080F7F58:
ldr   r0,=0xFFFFFE40            ; 080F7F58
str   r0,[r5,0xC]               ; 080F7F5A
add   r0,r1,0x1                 ; 080F7F5C
strh  r0,[r5,0x30]              ; 080F7F5E
b     @@Code080F7FA6            ; 080F7F60
.pool                           ; 080F7F62

@@Code080F7F68:
mov   r0,r5                     ; 080F7F68
add   r0,0x36                   ; 080F7F6A
ldrb  r0,[r0]                   ; 080F7F6C
cmp   r0,0x0                    ; 080F7F6E
beq   @@Code080F7FA0            ; 080F7F70
mov   r1,0x0                    ; 080F7F72
mov   r0,0x14                   ; 080F7F74
strh  r0,[r5,0x2C]              ; 080F7F76
mov   r0,r5                     ; 080F7F78
add   r0,0x3B                   ; 080F7F7A
strb  r1,[r0]                   ; 080F7F7C
ldr   r1,=Data08197734          ; 080F7F7E
ldr   r0,=0x03007244            ; 080F7F80
ldr   r0,[r0]                   ; 080F7F82
ldr   r2,=0x0249                ; 080F7F84
add   r0,r0,r2                  ; 080F7F86
ldrb  r0,[r0]                   ; 080F7F88
add   r0,r0,r1                  ; 080F7F8A
ldrb  r0,[r0]                   ; 080F7F8C
strh  r0,[r5,0x28]              ; 080F7F8E
b     @@Code080F7FA6            ; 080F7F90
.pool                           ; 080F7F92

@@Code080F7FA0:
mov   r0,r5                     ; 080F7FA0
bl    Sub080F6960               ; 080F7FA2
@@Code080F7FA6:
pop   {r4-r5}                   ; 080F7FA6
pop   {r0}                      ; 080F7FA8
bx    r0                        ; 080F7FAA

Sub080F7FAC:
push  {r4-r5,lr}                ; 080F7FAC
mov   r5,r0                     ; 080F7FAE
bl    Sub080F68EC               ; 080F7FB0
mov   r0,r5                     ; 080F7FB4
bl    Sub080F6824               ; 080F7FB6
mov   r0,r5                     ; 080F7FBA
add   r0,0x3A                   ; 080F7FBC
ldrb  r0,[r0]                   ; 080F7FBE
cmp   r0,0x2                    ; 080F7FC0
bne   @@Code080F7FE2            ; 080F7FC2
mov   r0,r5                     ; 080F7FC4
add   r0,0x3B                   ; 080F7FC6
ldrb  r0,[r0]                   ; 080F7FC8
cmp   r0,0x5                    ; 080F7FCA
beq   @@Code080F7FD2            ; 080F7FCC
cmp   r0,0x9                    ; 080F7FCE
bne   @@Code080F7FE2            ; 080F7FD0
@@Code080F7FD2:
mov   r0,r5                     ; 080F7FD2
mov   r1,0x1                    ; 080F7FD4
bl    Sub080F683C               ; 080F7FD6
mov   r0,0x10                   ; 080F7FDA
str   r0,[r5,0x14]              ; 080F7FDC
ldr   r0,=0xFFFFFE50            ; 080F7FDE
str   r0,[r5,0x1C]              ; 080F7FE0
@@Code080F7FE2:
ldr   r0,=Data08197628          ; 080F7FE2
ldr   r0,[r0,0x14]              ; 080F7FE4
mov   r1,0x80                   ; 080F7FE6
lsl   r1,r1,0x5                 ; 080F7FE8
add   r0,r0,r1                  ; 080F7FEA
ldr   r1,[r5]                   ; 080F7FEC
cmp   r1,r0                     ; 080F7FEE
bge   @@Code080F8010            ; 080F7FF0
mov   r4,0x0                    ; 080F7FF2
str   r4,[r5,0xC]               ; 080F7FF4
mov   r0,0x40                   ; 080F7FF6
str   r0,[r5,0x18]              ; 080F7FF8
mov   r1,r5                     ; 080F7FFA
add   r1,0x35                   ; 080F7FFC
ldrb  r0,[r1]                   ; 080F7FFE
add   r0,0x1                    ; 080F8000
strb  r0,[r1]                   ; 080F8002
mov   r0,r5                     ; 080F8004
mov   r1,0x10                   ; 080F8006
bl    Sub080F683C               ; 080F8008
str   r4,[r5,0x8]               ; 080F800C
str   r4,[r5,0x14]              ; 080F800E
@@Code080F8010:
pop   {r4-r5}                   ; 080F8010
pop   {r0}                      ; 080F8012
bx    r0                        ; 080F8014
.pool                           ; 080F8016

Sub080F8020:
push  {r4-r7,lr}                ; 080F8020
mov   r5,r0                     ; 080F8022
bl    Sub080F68EC               ; 080F8024
lsl   r0,r0,0x18                ; 080F8028
cmp   r0,0x0                    ; 080F802A
bne   @@Code080F8064            ; 080F802C
ldrh  r0,[r5,0x2A]              ; 080F802E
cmp   r0,0x8                    ; 080F8030
bne   @@Code080F80D2            ; 080F8032
mov   r0,r5                     ; 080F8034
add   r0,0x3B                   ; 080F8036
ldrb  r0,[r0]                   ; 080F8038
cmp   r0,0x2                    ; 080F803A
bne   @@Code080F80D2            ; 080F803C
ldr   r0,=0x03007244            ; 080F803E
ldr   r0,[r0]                   ; 080F8040
mov   r1,0x96                   ; 080F8042
lsl   r1,r1,0x1                 ; 080F8044
add   r5,r0,r1                  ; 080F8046
ldr   r2,=0x0163                ; 080F8048
add   r1,r0,r2                  ; 080F804A
mov   r0,0x1                    ; 080F804C
strb  r0,[r1]                   ; 080F804E
mov   r0,r5                     ; 080F8050
mov   r1,0x5                    ; 080F8052
bl    Sub080F683C               ; 080F8054
b     @@Code080F80D2            ; 080F8058
.pool                           ; 080F805A

@@Code080F8064:
mov   r4,0x0                    ; 080F8064
str   r4,[r5,0xC]               ; 080F8066
mov   r0,0x40                   ; 080F8068
str   r0,[r5,0x18]              ; 080F806A
mov   r1,r5                     ; 080F806C
add   r1,0x37                   ; 080F806E
mov   r0,0x1                    ; 080F8070
strb  r0,[r1]                   ; 080F8072
sub   r1,0x2                    ; 080F8074
ldrb  r0,[r1]                   ; 080F8076
add   r0,0x1                    ; 080F8078
strb  r0,[r1]                   ; 080F807A
mov   r0,r5                     ; 080F807C
mov   r1,0x9                    ; 080F807E
bl    Sub080F683C               ; 080F8080
ldr   r0,=Data0819772C          ; 080F8084
ldrb  r0,[r0,0x2]               ; 080F8086
strh  r0,[r5,0x2C]              ; 080F8088
str   r4,[r5,0x8]               ; 080F808A
str   r4,[r5,0x14]              ; 080F808C
mov   r6,0x0                    ; 080F808E
ldr   r0,=0x03007244            ; 080F8090
ldr   r5,[r0]                   ; 080F8092
mov   r0,0xF0                   ; 080F8094
lsl   r0,r0,0x1                 ; 080F8096
add   r7,r5,r0                  ; 080F8098
mov   r4,r5                     ; 080F809A
add   r4,0x2C                   ; 080F809C
@@Code080F809E:
cmp   r6,0x4                    ; 080F809E
beq   @@Code080F80C4            ; 080F80A0
cmp   r6,0x2                    ; 080F80A2
beq   @@Code080F80C4            ; 080F80A4
ldr   r0,=Data08197724          ; 080F80A6
add   r0,r6,r0                  ; 080F80A8
ldrb  r1,[r0]                   ; 080F80AA
mov   r0,r5                     ; 080F80AC
bl    Sub080F683C               ; 080F80AE
ldr   r0,=Data0819772C          ; 080F80B2
add   r0,r6,r0                  ; 080F80B4
ldrb  r0,[r0]                   ; 080F80B6
strh  r0,[r4]                   ; 080F80B8
mov   r0,0x1                    ; 080F80BA
strb  r0,[r4,0xB]               ; 080F80BC
ldrb  r0,[r4,0x9]               ; 080F80BE
add   r0,0x1                    ; 080F80C0
strb  r0,[r4,0x9]               ; 080F80C2
@@Code080F80C4:
add   r0,r6,0x1                 ; 080F80C4
lsl   r0,r0,0x18                ; 080F80C6
lsr   r6,r0,0x18                ; 080F80C8
add   r4,0x3C                   ; 080F80CA
add   r5,0x3C                   ; 080F80CC
cmp   r5,r7                     ; 080F80CE
blo   @@Code080F809E            ; 080F80D0
@@Code080F80D2:
pop   {r4-r7}                   ; 080F80D2
pop   {r0}                      ; 080F80D4
bx    r0                        ; 080F80D6
.pool                           ; 080F80D8

Sub080F80E4:
push  {r4-r7,lr}                ; 080F80E4
mov   r4,r0                     ; 080F80E6
ldr   r2,=0x03007244            ; 080F80E8
ldr   r0,[r2]                   ; 080F80EA
add   r0,0xF0                   ; 080F80EC
ldr   r1,[r4]                   ; 080F80EE
ldr   r0,[r0]                   ; 080F80F0
sub   r3,r1,r0                  ; 080F80F2
mov   r6,r2                     ; 080F80F4
cmp   r3,0x0                    ; 080F80F6
ble   @@Code080F8108            ; 080F80F8
mov   r1,r4                     ; 080F80FA
add   r1,0x37                   ; 080F80FC
mov   r0,0x0                    ; 080F80FE
b     @@Code080F810E            ; 080F8100
.pool                           ; 080F8102

@@Code080F8108:
mov   r1,r4                     ; 080F8108
add   r1,0x37                   ; 080F810A
mov   r0,0x1                    ; 080F810C
@@Code080F810E:
strb  r0,[r1]                   ; 080F810E
mov   r5,r1                     ; 080F8110
ldr   r1,=Data0819774C          ; 080F8112
ldr   r0,[r6]                   ; 080F8114
ldr   r7,=0x0249                ; 080F8116
add   r0,r0,r7                  ; 080F8118
ldrb  r0,[r0]                   ; 080F811A
lsl   r0,r0,0x2                 ; 080F811C
add   r0,r0,r1                  ; 080F811E
ldr   r0,[r0]                   ; 080F8120
cmp   r3,r0                     ; 080F8122
blt   @@Code080F8198            ; 080F8124
mov   r0,r4                     ; 080F8126
add   r0,0x36                   ; 080F8128
ldrb  r0,[r0]                   ; 080F812A
cmp   r0,0x0                    ; 080F812C
beq   @@Code080F8198            ; 080F812E
mov   r1,r4                     ; 080F8130
add   r1,0x35                   ; 080F8132
ldrb  r0,[r1]                   ; 080F8134
add   r0,0x1                    ; 080F8136
strb  r0,[r1]                   ; 080F8138
mov   r0,r4                     ; 080F813A
mov   r1,0x2                    ; 080F813C
bl    Sub080F683C               ; 080F813E
ldr   r0,[r6]                   ; 080F8142
add   r0,r0,r7                  ; 080F8144
ldrb  r0,[r0]                   ; 080F8146
cmp   r0,0x3                    ; 080F8148
beq   @@Code080F8150            ; 080F814A
cmp   r0,0x6                    ; 080F814C
bne   @@Code080F815C            ; 080F814E
@@Code080F8150:
mov   r0,0x1                    ; 080F8150
b     @@Code080F815E            ; 080F8152
.pool                           ; 080F8154

@@Code080F815C:
mov   r0,0x0                    ; 080F815C
@@Code080F815E:
strb  r0,[r5]                   ; 080F815E
mov   r0,0x10                   ; 080F8160
str   r0,[r4,0x14]              ; 080F8162
sub   r0,0xA0                   ; 080F8164
str   r0,[r4,0x1C]              ; 080F8166
mov   r0,0x0                    ; 080F8168
str   r0,[r4,0x18]              ; 080F816A
ldr   r1,=Data0819776C          ; 080F816C
ldr   r0,=0x03007244            ; 080F816E
ldr   r0,[r0]                   ; 080F8170
ldr   r2,=0x0249                ; 080F8172
add   r0,r0,r2                  ; 080F8174
ldrb  r0,[r0]                   ; 080F8176
add   r0,r0,r1                  ; 080F8178
ldrb  r0,[r0]                   ; 080F817A
lsl   r0,r0,0x18                ; 080F817C
asr   r0,r0,0x18                ; 080F817E
str   r0,[r4,0xC]               ; 080F8180
mov   r0,r4                     ; 080F8182
bl    Sub080F6824               ; 080F8184
b     @@Code080F81E6            ; 080F8188
.pool                           ; 080F818A

@@Code080F8198:
ldrh  r0,[r4,0x2C]              ; 080F8198
cmp   r0,0x0                    ; 080F819A
beq   @@Code080F81B0            ; 080F819C
cmp   r0,0x1                    ; 080F819E
bne   @@Code080F81E6            ; 080F81A0
ldr   r0,=0xFFFFFC00            ; 080F81A2
str   r0,[r4,0x10]              ; 080F81A4
str   r0,[r4,0xC]               ; 080F81A6
b     @@Code080F81E6            ; 080F81A8
.pool                           ; 080F81AA

@@Code080F81B0:
mov   r0,r4                     ; 080F81B0
add   r0,0x36                   ; 080F81B2
ldrb  r0,[r0]                   ; 080F81B4
cmp   r0,0x0                    ; 080F81B6
beq   @@Code080F81E0            ; 080F81B8
mov   r1,0x0                    ; 080F81BA
mov   r0,0x14                   ; 080F81BC
strh  r0,[r4,0x2C]              ; 080F81BE
mov   r0,r4                     ; 080F81C0
add   r0,0x3B                   ; 080F81C2
strb  r1,[r0]                   ; 080F81C4
ldr   r1,=Data08197734          ; 080F81C6
ldr   r0,[r6]                   ; 080F81C8
ldr   r2,=0x0249                ; 080F81CA
add   r0,r0,r2                  ; 080F81CC
ldrb  r0,[r0]                   ; 080F81CE
add   r0,r0,r1                  ; 080F81D0
ldrb  r0,[r0]                   ; 080F81D2
strh  r0,[r4,0x28]              ; 080F81D4
b     @@Code080F81E6            ; 080F81D6
.pool                           ; 080F81D8

@@Code080F81E0:
mov   r0,r4                     ; 080F81E0
bl    Sub080F6960               ; 080F81E2
@@Code080F81E6:
pop   {r4-r7}                   ; 080F81E6
pop   {r0}                      ; 080F81E8
bx    r0                        ; 080F81EA

Sub080F81EC:
push  {r4-r5,lr}                ; 080F81EC
mov   r5,r0                     ; 080F81EE
bl    Sub080F68EC               ; 080F81F0
mov   r0,r5                     ; 080F81F4
bl    Sub080F6824               ; 080F81F6
ldrh  r0,[r5,0x30]              ; 080F81FA
cmp   r0,0x0                    ; 080F81FC
bne   @@Code080F822C            ; 080F81FE
mov   r0,r5                     ; 080F8200
add   r0,0x3A                   ; 080F8202
ldrb  r0,[r0]                   ; 080F8204
cmp   r0,0x2                    ; 080F8206
bne   @@Code080F82BE            ; 080F8208
mov   r0,r5                     ; 080F820A
add   r0,0x3B                   ; 080F820C
ldrb  r0,[r0]                   ; 080F820E
cmp   r0,0x5                    ; 080F8210
beq   @@Code080F8218            ; 080F8212
cmp   r0,0x9                    ; 080F8214
bne   @@Code080F82BE            ; 080F8216
@@Code080F8218:
mov   r0,r5                     ; 080F8218
mov   r1,0x1                    ; 080F821A
bl    Sub080F683C               ; 080F821C
mov   r0,0x10                   ; 080F8220
str   r0,[r5,0x14]              ; 080F8222
ldr   r0,=0xFFFFFE50            ; 080F8224
b     @@Code080F8258            ; 080F8226
.pool                           ; 080F8228

@@Code080F822C:
cmp   r0,0x1                    ; 080F822C
bne   @@Code080F8270            ; 080F822E
ldr   r1,=Data08197616          ; 080F8230
ldr   r0,=0x03007244            ; 080F8232
ldr   r0,[r0]                   ; 080F8234
ldr   r2,=0x0249                ; 080F8236
add   r0,r0,r2                  ; 080F8238
ldrb  r0,[r0]                   ; 080F823A
lsl   r0,r0,0x1                 ; 080F823C
add   r0,r0,r1                  ; 080F823E
ldrh  r0,[r0]                   ; 080F8240
mov   r3,0x80                   ; 080F8242
lsl   r3,r3,0x5                 ; 080F8244
add   r0,r0,r3                  ; 080F8246
ldr   r1,[r5]                   ; 080F8248
cmp   r1,r0                     ; 080F824A
bge   @@Code080F82BE            ; 080F824C
mov   r0,r5                     ; 080F824E
mov   r1,0x2                    ; 080F8250
bl    Sub080F683C               ; 080F8252
mov   r0,0x10                   ; 080F8256
@@Code080F8258:
str   r0,[r5,0x1C]              ; 080F8258
ldrh  r0,[r5,0x30]              ; 080F825A
add   r0,0x1                    ; 080F825C
strh  r0,[r5,0x30]              ; 080F825E
b     @@Code080F82BE            ; 080F8260
.pool                           ; 080F8262

@@Code080F8270:
ldr   r0,[r5,0x8]               ; 080F8270
mov   r1,0x48                   ; 080F8272
neg   r1,r1                     ; 080F8274
cmp   r0,r1                     ; 080F8276
blt   @@Code080F827C            ; 080F8278
str   r1,[r5,0x8]               ; 080F827A
@@Code080F827C:
ldr   r1,=Data08197616          ; 080F827C
ldr   r0,=0x03007244            ; 080F827E
ldr   r0,[r0]                   ; 080F8280
ldr   r3,=0x0249                ; 080F8282
add   r2,r0,r3                  ; 080F8284
ldrb  r0,[r2]                   ; 080F8286
lsl   r0,r0,0x1                 ; 080F8288
add   r0,r0,r1                  ; 080F828A
ldr   r1,[r5]                   ; 080F828C
ldrh  r0,[r0]                   ; 080F828E
cmp   r1,r0                     ; 080F8290
bge   @@Code080F82BE            ; 080F8292
mov   r0,0x40                   ; 080F8294
str   r0,[r5,0x18]              ; 080F8296
mov   r4,0x0                    ; 080F8298
str   r4,[r5,0xC]               ; 080F829A
mov   r1,r5                     ; 080F829C
add   r1,0x35                   ; 080F829E
ldrb  r0,[r1]                   ; 080F82A0
add   r0,0x1                    ; 080F82A2
strb  r0,[r1]                   ; 080F82A4
ldrh  r0,[r5,0x32]              ; 080F82A6
add   r0,0x1                    ; 080F82A8
strh  r0,[r5,0x32]              ; 080F82AA
ldr   r1,=Data0819773C          ; 080F82AC
ldrb  r0,[r2]                   ; 080F82AE
add   r0,r0,r1                  ; 080F82B0
ldrb  r1,[r0]                   ; 080F82B2
mov   r0,r5                     ; 080F82B4
bl    Sub080F683C               ; 080F82B6
str   r4,[r5,0x8]               ; 080F82BA
str   r4,[r5,0x14]              ; 080F82BC
@@Code080F82BE:
pop   {r4-r5}                   ; 080F82BE
pop   {r0}                      ; 080F82C0
bx    r0                        ; 080F82C2
.pool                           ; 080F82C4

Sub080F82D4:
push  {r4-r5,lr}                ; 080F82D4
mov   r5,r0                     ; 080F82D6
bl    Sub080F68EC               ; 080F82D8
mov   r0,r5                     ; 080F82DC
bl    Sub080F6824               ; 080F82DE
ldrh  r2,[r5,0x30]              ; 080F82E2
mov   r0,r2                     ; 080F82E4
cmp   r0,0x0                    ; 080F82E6
bne   @@Code080F834E            ; 080F82E8
ldr   r1,=Data08197616          ; 080F82EA
ldr   r0,=0x03007244            ; 080F82EC
ldr   r0,[r0]                   ; 080F82EE
ldr   r3,=0x0249                ; 080F82F0
add   r0,r0,r3                  ; 080F82F2
ldrb  r0,[r0]                   ; 080F82F4
lsl   r0,r0,0x1                 ; 080F82F6
add   r0,r0,r1                  ; 080F82F8
ldrh  r0,[r0]                   ; 080F82FA
ldr   r1,=0xFFFFF000            ; 080F82FC
add   r0,r0,r1                  ; 080F82FE
ldr   r1,[r5]                   ; 080F8300
cmp   r1,r0                     ; 080F8302
blt   @@Code080F8324            ; 080F8304
mov   r0,0xD8                   ; 080F8306
lsl   r0,r0,0x1                 ; 080F8308
str   r0,[r5,0x1C]              ; 080F830A
add   r0,r2,0x1                 ; 080F830C
strh  r0,[r5,0x30]              ; 080F830E
b     @@Code080F83E0            ; 080F8310
.pool                           ; 080F8312

@@Code080F8324:
mov   r0,r5                     ; 080F8324
add   r0,0x3A                   ; 080F8326
ldrb  r0,[r0]                   ; 080F8328
cmp   r0,0x2                    ; 080F832A
bne   @@Code080F83E0            ; 080F832C
mov   r0,r5                     ; 080F832E
add   r0,0x3B                   ; 080F8330
ldrb  r0,[r0]                   ; 080F8332
cmp   r0,0x5                    ; 080F8334
beq   @@Code080F833C            ; 080F8336
cmp   r0,0x9                    ; 080F8338
bne   @@Code080F83E0            ; 080F833A
@@Code080F833C:
mov   r0,r5                     ; 080F833C
mov   r1,0x1                    ; 080F833E
bl    Sub080F683C               ; 080F8340
mov   r0,0x10                   ; 080F8344
str   r0,[r5,0x14]              ; 080F8346
mov   r0,0xD8                   ; 080F8348
lsl   r0,r0,0x1                 ; 080F834A
b     @@Code080F8378            ; 080F834C
@@Code080F834E:
cmp   r0,0x1                    ; 080F834E
bne   @@Code080F8394            ; 080F8350
ldr   r1,=Data08197616          ; 080F8352
ldr   r0,=0x03007244            ; 080F8354
ldr   r0,[r0]                   ; 080F8356
ldr   r2,=0x0249                ; 080F8358
add   r0,r0,r2                  ; 080F835A
ldrb  r0,[r0]                   ; 080F835C
lsl   r0,r0,0x1                 ; 080F835E
add   r0,r0,r1                  ; 080F8360
ldrh  r0,[r0]                   ; 080F8362
ldr   r3,=0xFFFFF000            ; 080F8364
add   r0,r0,r3                  ; 080F8366
ldr   r1,[r5]                   ; 080F8368
cmp   r1,r0                     ; 080F836A
blt   @@Code080F83E0            ; 080F836C
mov   r0,r5                     ; 080F836E
mov   r1,0x2                    ; 080F8370
bl    Sub080F683C               ; 080F8372
mov   r0,0x10                   ; 080F8376
@@Code080F8378:
str   r0,[r5,0x1C]              ; 080F8378
ldrh  r0,[r5,0x30]              ; 080F837A
add   r0,0x1                    ; 080F837C
strh  r0,[r5,0x30]              ; 080F837E
b     @@Code080F83E0            ; 080F8380
.pool                           ; 080F8382

@@Code080F8394:
ldr   r0,[r5,0x8]               ; 080F8394
cmp   r0,0x47                   ; 080F8396
bgt   @@Code080F839E            ; 080F8398
mov   r0,0x48                   ; 080F839A
str   r0,[r5,0x8]               ; 080F839C
@@Code080F839E:
ldr   r1,=Data08197616          ; 080F839E
ldr   r0,=0x03007244            ; 080F83A0
ldr   r0,[r0]                   ; 080F83A2
ldr   r3,=0x0249                ; 080F83A4
add   r2,r0,r3                  ; 080F83A6
ldrb  r0,[r2]                   ; 080F83A8
lsl   r0,r0,0x1                 ; 080F83AA
add   r0,r0,r1                  ; 080F83AC
ldr   r1,[r5]                   ; 080F83AE
ldrh  r0,[r0]                   ; 080F83B0
cmp   r1,r0                     ; 080F83B2
blt   @@Code080F83E0            ; 080F83B4
mov   r0,0x40                   ; 080F83B6
str   r0,[r5,0x18]              ; 080F83B8
mov   r4,0x0                    ; 080F83BA
str   r4,[r5,0xC]               ; 080F83BC
mov   r1,r5                     ; 080F83BE
add   r1,0x35                   ; 080F83C0
ldrb  r0,[r1]                   ; 080F83C2
add   r0,0x1                    ; 080F83C4
strb  r0,[r1]                   ; 080F83C6
ldrh  r0,[r5,0x32]              ; 080F83C8
add   r0,0x1                    ; 080F83CA
strh  r0,[r5,0x32]              ; 080F83CC
ldr   r1,=Data0819773C          ; 080F83CE
ldrb  r0,[r2]                   ; 080F83D0
add   r0,r0,r1                  ; 080F83D2
ldrb  r1,[r0]                   ; 080F83D4
mov   r0,r5                     ; 080F83D6
bl    Sub080F683C               ; 080F83D8
str   r4,[r5,0x8]               ; 080F83DC
str   r4,[r5,0x14]              ; 080F83DE
@@Code080F83E0:
pop   {r4-r5}                   ; 080F83E0
pop   {r0}                      ; 080F83E2
bx    r0                        ; 080F83E4
.pool                           ; 080F83E6

Sub080F83F8:
push  {r4,lr}                   ; 080F83F8
mov   r4,r0                     ; 080F83FA
ldr   r0,=0x03007244            ; 080F83FC
ldr   r0,[r0]                   ; 080F83FE
add   r0,0xF0                   ; 080F8400
ldr   r1,[r4]                   ; 080F8402
ldr   r0,[r0]                   ; 080F8404
sub   r1,r1,r0                  ; 080F8406
cmp   r1,0x0                    ; 080F8408
ble   @@Code080F8418            ; 080F840A
mov   r1,r4                     ; 080F840C
add   r1,0x37                   ; 080F840E
mov   r0,0x0                    ; 080F8410
b     @@Code080F841E            ; 080F8412
.pool                           ; 080F8414

@@Code080F8418:
mov   r1,r4                     ; 080F8418
add   r1,0x37                   ; 080F841A
mov   r0,0x1                    ; 080F841C
@@Code080F841E:
strb  r0,[r1]                   ; 080F841E
mov   r0,r4                     ; 080F8420
bl    Sub080F68EC               ; 080F8422
lsl   r0,r0,0x18                ; 080F8426
cmp   r0,0x0                    ; 080F8428
beq   @@Code080F8486            ; 080F842A
bl    Sub08035648               ; 080F842C
ldr   r0,=0x03007240            ; 080F8430  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F8432
ldr   r1,=0x29CC                ; 080F8434
add   r0,r0,r1                  ; 080F8436
ldrh  r1,[r0]                   ; 080F8438
mov   r0,0x3                    ; 080F843A
and   r0,r1                     ; 080F843C
cmp   r0,0x0                    ; 080F843E
beq   @@Code080F8470            ; 080F8440
ldr   r1,=Data0819773C          ; 080F8442
ldr   r0,=0x03007244            ; 080F8444
ldr   r0,[r0]                   ; 080F8446
ldr   r2,=0x0249                ; 080F8448
add   r0,r0,r2                  ; 080F844A
ldrb  r0,[r0]                   ; 080F844C
add   r0,r0,r1                  ; 080F844E
ldrb  r1,[r0]                   ; 080F8450
mov   r0,r4                     ; 080F8452
bl    Sub080F683C               ; 080F8454
b     @@Code080F8486            ; 080F8458
.pool                           ; 080F845A

@@Code080F8470:
ldr   r1,=Data08197744          ; 080F8470
ldr   r0,=0x03007244            ; 080F8472
ldr   r0,[r0]                   ; 080F8474
ldr   r2,=0x0249                ; 080F8476
add   r0,r0,r2                  ; 080F8478
ldrb  r0,[r0]                   ; 080F847A
add   r0,r0,r1                  ; 080F847C
ldrb  r1,[r0]                   ; 080F847E
mov   r0,r4                     ; 080F8480
bl    Sub080F683C               ; 080F8482
@@Code080F8486:
pop   {r4}                      ; 080F8486
pop   {r0}                      ; 080F8488
bx    r0                        ; 080F848A
.pool                           ; 080F848C

Sub080F8498:
push  {lr}                      ; 080F8498
ldr   r2,=CodePtrs08197774      ; 080F849A
mov   r1,r0                     ; 080F849C
add   r1,0x35                   ; 080F849E
ldrb  r1,[r1]                   ; 080F84A0
lsl   r1,r1,0x2                 ; 080F84A2
add   r1,r1,r2                  ; 080F84A4
ldr   r1,[r1]                   ; 080F84A6
bl    Sub_bx_r1                 ; 080F84A8
pop   {r0}                      ; 080F84AC
bx    r0                        ; 080F84AE
.pool                           ; 080F84B0

Return080F84B4:
bx    lr                        ; 080F84B4
.pool                           ; 080F84B6

Sub080F84B8:
push  {r4-r6,lr}                ; 080F84B8
add   sp,-0x8                   ; 080F84BA
mov   r5,r0                     ; 080F84BC
bl    Sub080F68EC               ; 080F84BE
ldr   r0,[r5]                   ; 080F84C2
lsl   r0,r0,0x8                 ; 080F84C4
lsr   r6,r0,0x10                ; 080F84C6
mov   r0,0x84                   ; 080F84C8
lsl   r0,r0,0x2                 ; 080F84CA
cmp   r6,r0                     ; 080F84CC
bne   @@Code080F8540            ; 080F84CE
ldr   r0,=0x03007244            ; 080F84D0
ldr   r4,[r0]                   ; 080F84D2
mov   r1,0x80                   ; 080F84D4
lsl   r1,r1,0x2                 ; 080F84D6
add   r0,r4,r1                  ; 080F84D8
mov   r2,0x0                    ; 080F84DA
str   r2,[r0]                   ; 080F84DC
mov   r3,0x81                   ; 080F84DE
lsl   r3,r3,0x2                 ; 080F84E0
add   r1,r4,r3                  ; 080F84E2
mov   r0,0x60                   ; 080F84E4
neg   r0,r0                     ; 080F84E6
str   r0,[r1]                   ; 080F84E8
mov   r0,0x82                   ; 080F84EA
lsl   r0,r0,0x2                 ; 080F84EC
add   r1,r4,r0                  ; 080F84EE
mov   r0,0x90                   ; 080F84F0
neg   r0,r0                     ; 080F84F2
str   r0,[r1]                   ; 080F84F4
mov   r1,0x83                   ; 080F84F6
lsl   r1,r1,0x2                 ; 080F84F8
add   r0,r4,r1                  ; 080F84FA
mov   r3,0x48                   ; 080F84FC
neg   r3,r3                     ; 080F84FE
str   r3,[r0]                   ; 080F8500
add   r0,r4,r6                  ; 080F8502
str   r2,[r0]                   ; 080F8504
add   r1,0x8                    ; 080F8506
add   r0,r4,r1                  ; 080F8508
str   r2,[r0]                   ; 080F850A
add   r1,0x4                    ; 080F850C
add   r0,r4,r1                  ; 080F850E
str   r2,[r0]                   ; 080F8510
add   r1,0x4                    ; 080F8512
add   r0,r4,r1                  ; 080F8514
str   r2,[r0]                   ; 080F8516
mov   r2,0x8B                   ; 080F8518
lsl   r2,r2,0x2                 ; 080F851A
add   r0,r4,r2                  ; 080F851C
str   r3,[r0]                   ; 080F851E
mov   r0,0x8C                   ; 080F8520
lsl   r0,r0,0x2                 ; 080F8522
add   r1,r4,r0                  ; 080F8524
ldr   r0,=0xFFFFFEE0            ; 080F8526
str   r0,[r1]                   ; 080F8528
add   r2,0x8                    ; 080F852A
add   r1,r4,r2                  ; 080F852C
add   r0,0x30                   ; 080F852E
str   r0,[r1]                   ; 080F8530
str   r3,[r5,0x1C]              ; 080F8532
str   r3,[r5,0x8]               ; 080F8534
b     @@Code080F85BA            ; 080F8536
.pool                           ; 080F8538

@@Code080F8540:
cmp   r6,0x51                   ; 080F8540
bne   @@Code080F856E            ; 080F8542
mov   r0,r5                     ; 080F8544
mov   r1,0x0                    ; 080F8546
bl    Sub080F683C               ; 080F8548
mov   r0,0x0                    ; 080F854C
str   r0,[r5,0x14]              ; 080F854E
str   r0,[r5,0x8]               ; 080F8550
mov   r0,0xA2                   ; 080F8552
lsl   r0,r0,0x7                 ; 080F8554
str   r0,[r5]                   ; 080F8556
mov   r0,0x42                   ; 080F8558
strh  r0,[r5,0x2C]              ; 080F855A
mov   r1,r5                     ; 080F855C
add   r1,0x35                   ; 080F855E
ldrb  r0,[r1]                   ; 080F8560
add   r0,0x1                    ; 080F8562
strb  r0,[r1]                   ; 080F8564
ldrh  r0,[r5,0x32]              ; 080F8566
add   r0,0x1                    ; 080F8568
strh  r0,[r5,0x32]              ; 080F856A
b     @@Code080F85BA            ; 080F856C
@@Code080F856E:
ldr   r5,=0x03007244            ; 080F856E
ldr   r2,[r5]                   ; 080F8570
mov   r3,0x8A                   ; 080F8572
lsl   r3,r3,0x2                 ; 080F8574
add   r0,r2,r3                  ; 080F8576
ldr   r1,[r0]                   ; 080F8578
mov   r0,0x80                   ; 080F857A
lsl   r0,r0,0x6                 ; 080F857C
cmp   r1,r0                     ; 080F857E
bgt   @@Code080F85BA            ; 080F8580
mov   r4,0x0                    ; 080F8582
str   r4,[sp]                   ; 080F8584
mov   r0,0x80                   ; 080F8586
lsl   r0,r0,0x2                 ; 080F8588
add   r1,r2,r0                  ; 080F858A
ldr   r2,=0x05000004            ; 080F858C
mov   r0,sp                     ; 080F858E
bl    swi_MemoryCopy4or2        ; 080F8590  Memory copy/fill, 4- or 2-byte blocks
str   r4,[sp,0x4]               ; 080F8594
add   r0,sp,0x4                 ; 080F8596
ldr   r1,[r5]                   ; 080F8598
mov   r2,0x8B                   ; 080F859A
lsl   r2,r2,0x2                 ; 080F859C
add   r1,r1,r2                  ; 080F859E
ldr   r2,=0x05000003            ; 080F85A0
bl    swi_MemoryCopy4or2        ; 080F85A2  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,[r5]                   ; 080F85A6
mov   r0,r2                     ; 080F85A8
add   r0,0xF8                   ; 080F85AA
mov   r1,0x90                   ; 080F85AC
neg   r1,r1                     ; 080F85AE
str   r1,[r0]                   ; 080F85B0
mov   r3,0x86                   ; 080F85B2
lsl   r3,r3,0x1                 ; 080F85B4
add   r0,r2,r3                  ; 080F85B6
str   r1,[r0]                   ; 080F85B8
@@Code080F85BA:
add   sp,0x8                    ; 080F85BA
pop   {r4-r6}                   ; 080F85BC
pop   {r0}                      ; 080F85BE
bx    r0                        ; 080F85C0
.pool                           ; 080F85C2

Sub080F85D0:
push  {r4-r7,lr}                ; 080F85D0
mov   r1,r0                     ; 080F85D2
ldrh  r0,[r1,0x2C]              ; 080F85D4
cmp   r0,0x0                    ; 080F85D6
bne   @@Code080F8654            ; 080F85D8
mov   r6,0x0                    ; 080F85DA
ldr   r0,=0x03007244            ; 080F85DC
ldr   r4,[r0]                   ; 080F85DE
mov   r2,0xF0                   ; 080F85E0
lsl   r2,r2,0x1                 ; 080F85E2
add   r7,r4,r2                  ; 080F85E4
mov   r2,r0                     ; 080F85E6
@@Code080F85E8:
ldrh  r0,[r4,0x32]              ; 080F85E8
add   r0,r0,r6                  ; 080F85EA
lsl   r0,r0,0x18                ; 080F85EC
lsr   r6,r0,0x18                ; 080F85EE
add   r4,0x3C                   ; 080F85F0
cmp   r4,r7                     ; 080F85F2
blo   @@Code080F85E8            ; 080F85F4
cmp   r6,0x8                    ; 080F85F6
bne   @@Code080F8654            ; 080F85F8
ldr   r2,[r2]                   ; 080F85FA
ldr   r0,=0x023A                ; 080F85FC
add   r1,r2,r0                  ; 080F85FE
mov   r0,0xF0                   ; 080F8600
strh  r0,[r1]                   ; 080F8602
mov   r4,r2                     ; 080F8604
mov   r2,0xF0                   ; 080F8606
lsl   r2,r2,0x1                 ; 080F8608
add   r7,r4,r2                  ; 080F860A
mov   r6,0x0                    ; 080F860C
mov   r5,r4                     ; 080F860E
add   r5,0x2C                   ; 080F8610
@@Code080F8612:
ldr   r0,=Data0819779C          ; 080F8612
add   r0,r6,r0                  ; 080F8614
ldrb  r1,[r0]                   ; 080F8616
mov   r0,r4                     ; 080F8618
bl    Sub080F683C               ; 080F861A
ldrb  r0,[r5,0x9]               ; 080F861E
add   r0,0x1                    ; 080F8620
strb  r0,[r5,0x9]               ; 080F8622
ldr   r0,=Data08197794          ; 080F8624
add   r0,r6,r0                  ; 080F8626
ldrb  r0,[r0]                   ; 080F8628
strh  r0,[r5]                   ; 080F862A
add   r5,0x3C                   ; 080F862C
add   r4,0x3C                   ; 080F862E
add   r0,r6,0x1                 ; 080F8630
lsl   r0,r0,0x18                ; 080F8632
lsr   r6,r0,0x18                ; 080F8634
cmp   r4,r7                     ; 080F8636
blo   @@Code080F8612            ; 080F8638
mov   r0,0x1                    ; 080F863A
bl    Sub080F6F30               ; 080F863C
b     @@Code080F865A            ; 080F8640
.pool                           ; 080F8642

@@Code080F8654:
mov   r0,r1                     ; 080F8654
bl    Sub080F68EC               ; 080F8656
@@Code080F865A:
pop   {r4-r7}                   ; 080F865A
pop   {r0}                      ; 080F865C
bx    r0                        ; 080F865E

Sub080F8660:
push  {lr}                      ; 080F8660
mov   r2,r0                     ; 080F8662
ldrh  r0,[r2,0x2C]              ; 080F8664
cmp   r0,0x0                    ; 080F8666
beq   @@Code080F8690            ; 080F8668
cmp   r0,0x1                    ; 080F866A
bne   @@Code080F86CE            ; 080F866C
ldr   r0,=0xFFFFFC00            ; 080F866E
str   r0,[r2,0x10]              ; 080F8670
str   r0,[r2,0xC]               ; 080F8672
ldr   r0,=0x03007244            ; 080F8674
ldr   r0,[r0]                   ; 080F8676
ldr   r1,=0x0249                ; 080F8678
add   r0,r0,r1                  ; 080F867A
ldrb  r0,[r0]                   ; 080F867C
bl    Sub080F6870               ; 080F867E
b     @@Code080F86CE            ; 080F8682
.pool                           ; 080F8684

@@Code080F8690:
mov   r0,r2                     ; 080F8690
add   r0,0x36                   ; 080F8692
ldrb  r0,[r0]                   ; 080F8694
cmp   r0,0x0                    ; 080F8696
beq   @@Code080F86C8            ; 080F8698
mov   r1,0x0                    ; 080F869A
mov   r0,0x14                   ; 080F869C
strh  r0,[r2,0x2C]              ; 080F869E
mov   r0,r2                     ; 080F86A0
add   r0,0x3B                   ; 080F86A2
strb  r1,[r0]                   ; 080F86A4
ldr   r1,=Data08197734          ; 080F86A6
ldr   r0,=0x03007244            ; 080F86A8
ldr   r0,[r0]                   ; 080F86AA
ldr   r3,=0x0249                ; 080F86AC
add   r0,r0,r3                  ; 080F86AE
ldrb  r0,[r0]                   ; 080F86B0
add   r0,r0,r1                  ; 080F86B2
ldrb  r0,[r0]                   ; 080F86B4
strh  r0,[r2,0x28]              ; 080F86B6
b     @@Code080F86CE            ; 080F86B8
.pool                           ; 080F86BA

@@Code080F86C8:
mov   r0,r2                     ; 080F86C8
bl    Sub080F6960               ; 080F86CA
@@Code080F86CE:
pop   {r0}                      ; 080F86CE
bx    r0                        ; 080F86D0
.pool                           ; 080F86D2

Sub080F86D4:
push  {lr}                      ; 080F86D4
ldr   r2,=CodePtrs081977A4      ; 080F86D6
mov   r1,r0                     ; 080F86D8
add   r1,0x35                   ; 080F86DA
ldrb  r1,[r1]                   ; 080F86DC
lsl   r1,r1,0x2                 ; 080F86DE
add   r1,r1,r2                  ; 080F86E0
ldr   r1,[r1]                   ; 080F86E2
bl    Sub_bx_r1                 ; 080F86E4
pop   {r0}                      ; 080F86E8
bx    r0                        ; 080F86EA
.pool                           ; 080F86EC

Sub080F86F0:
push  {lr}                      ; 080F86F0
bl    Sub080F68EC               ; 080F86F2
pop   {r0}                      ; 080F86F6
bx    r0                        ; 080F86F8
.pool                           ; 080F86FA

Sub080F86FC:
push  {lr}                      ; 080F86FC
ldr   r2,=CodePtrs081977B4      ; 080F86FE
mov   r1,r0                     ; 080F8700
add   r1,0x35                   ; 080F8702
ldrb  r1,[r1]                   ; 080F8704
lsl   r1,r1,0x2                 ; 080F8706
add   r1,r1,r2                  ; 080F8708
ldr   r1,[r1]                   ; 080F870A
bl    Sub_bx_r1                 ; 080F870C
pop   {r0}                      ; 080F8710
bx    r0                        ; 080F8712
.pool                           ; 080F8714

Sub080F8718:
push  {lr}                      ; 080F8718
ldr   r2,=CodePtrs081977B4      ; 080F871A
mov   r1,r0                     ; 080F871C
add   r1,0x35                   ; 080F871E
ldrb  r1,[r1]                   ; 080F8720
lsl   r1,r1,0x2                 ; 080F8722
add   r1,r1,r2                  ; 080F8724
ldr   r1,[r1]                   ; 080F8726
bl    Sub_bx_r1                 ; 080F8728
pop   {r0}                      ; 080F872C
bx    r0                        ; 080F872E
.pool                           ; 080F8730

Sub080F8734:
push  {lr}                      ; 080F8734
ldr   r2,=CodePtrs081977B4      ; 080F8736
mov   r1,r0                     ; 080F8738
add   r1,0x35                   ; 080F873A
ldrb  r1,[r1]                   ; 080F873C
lsl   r1,r1,0x2                 ; 080F873E
add   r1,r1,r2                  ; 080F8740
ldr   r1,[r1]                   ; 080F8742
bl    Sub_bx_r1                 ; 080F8744
pop   {r0}                      ; 080F8748
bx    r0                        ; 080F874A
.pool                           ; 080F874C

Sub080F8750:
push  {lr}                      ; 080F8750
ldr   r2,=CodePtrs081977B4      ; 080F8752
mov   r1,r0                     ; 080F8754
add   r1,0x35                   ; 080F8756
ldrb  r1,[r1]                   ; 080F8758
lsl   r1,r1,0x2                 ; 080F875A
add   r1,r1,r2                  ; 080F875C
ldr   r1,[r1]                   ; 080F875E
bl    Sub_bx_r1                 ; 080F8760
pop   {r0}                      ; 080F8764
bx    r0                        ; 080F8766
.pool                           ; 080F8768

Sub080F876C:
push  {lr}                      ; 080F876C
ldr   r2,=CodePtrs081977C8      ; 080F876E
mov   r1,r0                     ; 080F8770
add   r1,0x35                   ; 080F8772
ldrb  r1,[r1]                   ; 080F8774
lsl   r1,r1,0x2                 ; 080F8776
add   r1,r1,r2                  ; 080F8778
ldr   r1,[r1]                   ; 080F877A
bl    Sub_bx_r1                 ; 080F877C
pop   {r0}                      ; 080F8780
bx    r0                        ; 080F8782
.pool                           ; 080F8784

Sub080F8788:
push  {lr}                      ; 080F8788
ldr   r2,=CodePtrs081977C8      ; 080F878A
mov   r1,r0                     ; 080F878C
add   r1,0x35                   ; 080F878E
ldrb  r1,[r1]                   ; 080F8790
lsl   r1,r1,0x2                 ; 080F8792
add   r1,r1,r2                  ; 080F8794
ldr   r1,[r1]                   ; 080F8796
bl    Sub_bx_r1                 ; 080F8798
pop   {r0}                      ; 080F879C
bx    r0                        ; 080F879E
.pool                           ; 080F87A0

Sub080F87A4:
push  {r4-r7,lr}                ; 080F87A4
ldr   r0,=0x03007244            ; 080F87A6
ldr   r4,[r0]                   ; 080F87A8
mov   r0,0xF0                   ; 080F87AA
lsl   r0,r0,0x1                 ; 080F87AC
add   r6,r4,r0                  ; 080F87AE
mov   r5,0x0                    ; 080F87B0
ldr   r7,=CodePtrs081977DC      ; 080F87B2
@@Code080F87B4:
ldr   r0,=0x03007244            ; 080F87B4
ldr   r0,[r0]                   ; 080F87B6
ldr   r1,=0x0249                ; 080F87B8
add   r0,r0,r1                  ; 080F87BA
strb  r5,[r0]                   ; 080F87BC
ldmia r7!,{r1}                  ; 080F87BE
mov   r0,r4                     ; 080F87C0
bl    Sub_bx_r1                 ; 080F87C2
mov   r0,r4                     ; 080F87C6
bl    Sub080F6A14               ; 080F87C8
mov   r0,r4                     ; 080F87CC
bl    Sub080F6A7C               ; 080F87CE
mov   r0,r4                     ; 080F87D2
bl    Sub080F69F4               ; 080F87D4
add   r5,0x1                    ; 080F87D8
add   r4,0x3C                   ; 080F87DA
cmp   r4,r6                     ; 080F87DC
blo   @@Code080F87B4            ; 080F87DE
ldr   r1,=CodePtrs0819771C      ; 080F87E0
ldr   r0,=0x03002200            ; 080F87E2
ldr   r2,=0x48B2                ; 080F87E4
add   r0,r0,r2                  ; 080F87E6
ldrh  r0,[r0]                   ; 080F87E8
lsl   r0,r0,0x2                 ; 080F87EA
add   r0,r0,r1                  ; 080F87EC
ldr   r0,[r0]                   ; 080F87EE
bl    Sub_bx_r0                 ; 080F87F0
pop   {r4-r7}                   ; 080F87F4
pop   {r0}                      ; 080F87F6
bx    r0                        ; 080F87F8
.pool                           ; 080F87FA

Sub080F8814:
push  {r4-r7,lr}                ; 080F8814
mov   r3,0x0                    ; 080F8816
ldr   r4,=0x03007244            ; 080F8818
mov   r7,r4                     ; 080F881A
ldr   r5,=0x0241                ; 080F881C
ldr   r6,=Data081975E0          ; 080F881E
@@Code080F8820:
ldr   r0,[r4]                   ; 080F8820
add   r0,r0,r5                  ; 080F8822
add   r1,r0,r3                  ; 080F8824
ldrb  r2,[r1]                   ; 080F8826
mov   r0,0x0                    ; 080F8828
ldsb  r0,[r1,r0]                ; 080F882A
cmp   r0,0x0                    ; 080F882C
blt   @@Code080F8872            ; 080F882E
add   r0,r2,0x1                 ; 080F8830
mov   r2,0x0                    ; 080F8832
strb  r0,[r1]                   ; 080F8834
ldr   r0,[r7]                   ; 080F8836
ldr   r1,=0x0241                ; 080F8838
add   r0,r0,r1                  ; 080F883A
add   r1,r0,r3                  ; 080F883C
ldrb  r0,[r1]                   ; 080F883E
cmp   r0,0xA                    ; 080F8840
bne   @@Code080F8846            ; 080F8842
strb  r2,[r1]                   ; 080F8844
@@Code080F8846:
lsl   r1,r3,0x2                 ; 080F8846
ldr   r0,=0x0600A24C            ; 080F8848
add   r2,r1,r0                  ; 080F884A
ldr   r0,[r4]                   ; 080F884C
add   r0,r0,r5                  ; 080F884E
add   r0,r0,r3                  ; 080F8850
ldrb  r0,[r0]                   ; 080F8852
lsl   r0,r0,0x1                 ; 080F8854
add   r0,r0,r6                  ; 080F8856
ldrh  r0,[r0]                   ; 080F8858
strh  r0,[r2]                   ; 080F885A
ldr   r0,=0x0600A28C            ; 080F885C
add   r1,r1,r0                  ; 080F885E
ldr   r0,[r4]                   ; 080F8860
add   r0,r0,r5                  ; 080F8862
add   r0,r0,r3                  ; 080F8864
ldrb  r0,[r0]                   ; 080F8866
lsl   r0,r0,0x1                 ; 080F8868
add   r0,r0,r6                  ; 080F886A
ldrh  r0,[r0]                   ; 080F886C
add   r0,0x10                   ; 080F886E
strh  r0,[r1]                   ; 080F8870
@@Code080F8872:
add   r3,0x1                    ; 080F8872
cmp   r3,0x3                    ; 080F8874
ble   @@Code080F8820            ; 080F8876
pop   {r4-r7}                   ; 080F8878
pop   {r0}                      ; 080F887A
bx    r0                        ; 080F887C
.pool                           ; 080F887E

Sub080F8894:
push  {r4-r6,lr}                ; 080F8894
add   sp,-0x4                   ; 080F8896
ldr   r3,=0x03007244            ; 080F8898
ldr   r0,[r3]                   ; 080F889A
ldr   r2,=0x023F                ; 080F889C
add   r1,r0,r2                  ; 080F889E
ldrb  r0,[r1]                   ; 080F88A0
mov   r4,r0                     ; 080F88A2
cmp   r4,0x0                    ; 080F88A4
beq   @@Code080F88B8            ; 080F88A6
sub   r0,0x1                    ; 080F88A8
strb  r0,[r1]                   ; 080F88AA
b     @@Code080F88EC            ; 080F88AC
.pool                           ; 080F88AE

@@Code080F88B8:
mov   r0,0x6                    ; 080F88B8
strb  r0,[r1]                   ; 080F88BA
ldr   r1,[r3]                   ; 080F88BC
ldr   r2,=0x023E                ; 080F88BE
add   r1,r1,r2                  ; 080F88C0
ldrb  r0,[r1]                   ; 080F88C2
add   r0,0x1                    ; 080F88C4
strb  r0,[r1]                   ; 080F88C6
ldr   r0,[r3]                   ; 080F88C8
add   r1,r0,r2                  ; 080F88CA
ldrb  r0,[r1]                   ; 080F88CC
cmp   r0,0x3                    ; 080F88CE
bne   @@Code080F88D4            ; 080F88D0
strb  r4,[r1]                   ; 080F88D2
@@Code080F88D4:
ldr   r1,=Data081975D4          ; 080F88D4
ldr   r0,[r3]                   ; 080F88D6
add   r0,r0,r2                  ; 080F88D8
ldrb  r0,[r0]                   ; 080F88DA
lsl   r0,r0,0x2                 ; 080F88DC
add   r0,r0,r1                  ; 080F88DE
ldr   r0,[r0]                   ; 080F88E0
ldr   r1,=0x06009800            ; 080F88E2
mov   r2,0x80                   ; 080F88E4
lsl   r2,r2,0x2                 ; 080F88E6
bl    swi_MemoryCopy32          ; 080F88E8  Memory copy/fill, 32-byte blocks
@@Code080F88EC:
ldr   r4,=0x03002200            ; 080F88EC
ldr   r6,=0x48B4                ; 080F88EE
add   r1,r4,r6                  ; 080F88F0
ldrh  r0,[r1]                   ; 080F88F2
mov   r3,r0                     ; 080F88F4
cmp   r3,0x0                    ; 080F88F6
beq   @@Code080F8914            ; 080F88F8
sub   r0,0x1                    ; 080F88FA
strh  r0,[r1]                   ; 080F88FC
b     @@Code080F899A            ; 080F88FE
.pool                           ; 080F8900

@@Code080F8914:
ldr   r5,=0x03007244            ; 080F8914
ldr   r0,[r5]                   ; 080F8916
mov   r6,0x8F                   ; 080F8918
lsl   r6,r6,0x2                 ; 080F891A
add   r2,r0,r6                  ; 080F891C
ldrb  r0,[r2]                   ; 080F891E
cmp   r0,0xF                    ; 080F8920
bhi   @@Code080F8934            ; 080F8922
add   r0,0x1                    ; 080F8924
strb  r0,[r2]                   ; 080F8926
mov   r0,0x8                    ; 080F8928
strh  r0,[r1]                   ; 080F892A
b     @@Code080F897E            ; 080F892C
.pool                           ; 080F892E

@@Code080F8934:
ldr   r1,=0x48B2                ; 080F8934
add   r0,r4,r1                  ; 080F8936
strh  r3,[r0]                   ; 080F8938
ldr   r2,=0x48B0                ; 080F893A
add   r1,r4,r2                  ; 080F893C
ldrh  r0,[r1]                   ; 080F893E
add   r0,0x1                    ; 080F8940
strh  r0,[r1]                   ; 080F8942
ldr   r0,=0x801B801B            ; 080F8944
str   r0,[sp]                   ; 080F8946
ldr   r1,=0x0600A000            ; 080F8948
ldr   r2,=0x05000400            ; 080F894A
mov   r0,sp                     ; 080F894C
bl    swi_MemoryCopy4or2        ; 080F894E  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,[r5]                   ; 080F8952
mov   r0,r2                     ; 080F8954
add   r0,0xF0                   ; 080F8956
ldr   r6,=0x0129                ; 080F8958
add   r3,r2,r6                  ; 080F895A
mov   r1,0x3                    ; 080F895C
strb  r1,[r3]                   ; 080F895E
ldr   r1,=0x0125                ; 080F8960
add   r2,r2,r1                  ; 080F8962
mov   r1,0x1                    ; 080F8964
strb  r1,[r2]                   ; 080F8966
sub   r1,0x91                   ; 080F8968
str   r1,[r0,0x1C]              ; 080F896A
str   r1,[r0,0x8]               ; 080F896C
mov   r1,0x2                    ; 080F896E
bl    Sub080F683C               ; 080F8970
mov   r0,0x27                   ; 080F8974  27: 100% cutscene part 2
bl    Sub0812C3B4               ; 080F8976  Change music (YI)
bl    Sub080F6ED0               ; 080F897A
@@Code080F897E:
ldr   r3,=0x03002200            ; 080F897E
ldr   r0,=0x03007244            ; 080F8980
ldr   r0,[r0]                   ; 080F8982
mov   r2,0x8F                   ; 080F8984
lsl   r2,r2,0x2                 ; 080F8986
add   r0,r0,r2                  ; 080F8988
ldrb  r2,[r0]                   ; 080F898A
lsl   r1,r2,0x8                 ; 080F898C
mov   r0,0x10                   ; 080F898E
sub   r0,r0,r2                  ; 080F8990
orr   r1,r0                     ; 080F8992
ldr   r6,=0x488A                ; 080F8994
add   r3,r3,r6                  ; 080F8996
strh  r1,[r3]                   ; 080F8998
@@Code080F899A:
add   sp,0x4                    ; 080F899A
pop   {r4-r6}                   ; 080F899C
pop   {r0}                      ; 080F899E
bx    r0                        ; 080F89A0
.pool                           ; 080F89A2

Sub080F89CC:
push  {r4-r5,lr}                ; 080F89CC
ldr   r4,=0x03002200            ; 080F89CE
ldr   r0,=0x48B4                ; 080F89D0
add   r5,r4,r0                  ; 080F89D2
ldrh  r0,[r5]                   ; 080F89D4
cmp   r0,0x0                    ; 080F89D6
beq   @@Code080F8A10            ; 080F89D8
cmp   r0,0x1                    ; 080F89DA
bne   @@Code080F89F8            ; 080F89DC
ldr   r0,=0x03007244            ; 080F89DE
ldr   r0,[r0]                   ; 080F89E0
add   r0,0xF0                   ; 080F89E2
mov   r1,0xF                    ; 080F89E4
bl    Sub080F683C               ; 080F89E6
ldr   r0,=0x4058                ; 080F89EA
add   r1,r4,r0                  ; 080F89EC
mov   r0,0xC0                   ; 080F89EE
strh  r0,[r1]                   ; 080F89F0
mov   r0,0x29                   ; 080F89F2
bl    PlayYISound               ; 080F89F4
@@Code080F89F8:
ldrh  r0,[r5]                   ; 080F89F8
sub   r0,0x1                    ; 080F89FA
strh  r0,[r5]                   ; 080F89FC
b     @@Code080F8AA0            ; 080F89FE
.pool                           ; 080F8A00

@@Code080F8A10:
ldr   r1,=0x4901                ; 080F8A10
add   r0,r4,r1                  ; 080F8A12
ldrb  r0,[r0]                   ; 080F8A14
mov   r2,0x7                    ; 080F8A16
and   r2,r0                     ; 080F8A18
cmp   r2,0x0                    ; 080F8A1A
bne   @@Code080F8A50            ; 080F8A1C
ldr   r4,=0x03007244            ; 080F8A1E
ldr   r1,[r4]                   ; 080F8A20
ldr   r3,=0x023E                ; 080F8A22
add   r1,r1,r3                  ; 080F8A24
ldrb  r0,[r1]                   ; 080F8A26
add   r0,0x1                    ; 080F8A28
strb  r0,[r1]                   ; 080F8A2A
ldr   r0,[r4]                   ; 080F8A2C
add   r1,r0,r3                  ; 080F8A2E
ldrb  r0,[r1]                   ; 080F8A30
cmp   r0,0x3                    ; 080F8A32
bne   @@Code080F8A38            ; 080F8A34
strb  r2,[r1]                   ; 080F8A36
@@Code080F8A38:
ldr   r1,=Data081975D4          ; 080F8A38
ldr   r0,[r4]                   ; 080F8A3A
add   r0,r0,r3                  ; 080F8A3C
ldrb  r0,[r0]                   ; 080F8A3E
lsl   r0,r0,0x2                 ; 080F8A40
add   r0,r0,r1                  ; 080F8A42
ldr   r0,[r0]                   ; 080F8A44
ldr   r1,=0x06009800            ; 080F8A46
mov   r2,0x80                   ; 080F8A48
lsl   r2,r2,0x2                 ; 080F8A4A
bl    swi_MemoryCopy32          ; 080F8A4C  Memory copy/fill, 32-byte blocks
@@Code080F8A50:
ldr   r3,=0x03007244            ; 080F8A50
ldr   r2,[r3]                   ; 080F8A52
ldr   r0,=0x023A                ; 080F8A54
add   r1,r2,r0                  ; 080F8A56
ldrh  r0,[r1]                   ; 080F8A58
cmp   r0,0x0                    ; 080F8A5A
beq   @@Code080F8A7C            ; 080F8A5C
sub   r0,0x1                    ; 080F8A5E
strh  r0,[r1]                   ; 080F8A60
b     @@Code080F8AA0            ; 080F8A62
.pool                           ; 080F8A64

@@Code080F8A7C:
ldr   r1,=0x03002200            ; 080F8A7C
ldr   r0,=0x48B2                ; 080F8A7E
add   r1,r1,r0                  ; 080F8A80
ldrh  r0,[r1]                   ; 080F8A82
add   r0,0x1                    ; 080F8A84
strh  r0,[r1]                   ; 080F8A86
ldr   r0,=0x023F                ; 080F8A88
add   r1,r2,r0                  ; 080F8A8A
mov   r0,0x6                    ; 080F8A8C
strb  r0,[r1]                   ; 080F8A8E
ldr   r0,[r3]                   ; 080F8A90
add   r0,0xF0                   ; 080F8A92
mov   r1,0x0                    ; 080F8A94
bl    Sub080F683C               ; 080F8A96
mov   r0,0x80                   ; 080F8A9A
bl    Sub0812C458               ; 080F8A9C
@@Code080F8AA0:
pop   {r4-r5}                   ; 080F8AA0
pop   {r0}                      ; 080F8AA2
bx    r0                        ; 080F8AA4
.pool                           ; 080F8AA6

Sub080F8AB4:
push  {r4-r7,lr}                ; 080F8AB4
ldr   r0,=0x03002200            ; 080F8AB6
ldr   r1,=0x48B4                ; 080F8AB8
add   r7,r0,r1                  ; 080F8ABA
ldrh  r2,[r7]                   ; 080F8ABC
mov   r5,r0                     ; 080F8ABE
cmp   r2,0x0                    ; 080F8AC0
beq   @@Code080F8AD4            ; 080F8AC2
sub   r0,r2,0x1                 ; 080F8AC4
strh  r0,[r7]                   ; 080F8AC6
b     @@Code080F8D7A            ; 080F8AC8
.pool                           ; 080F8ACA

@@Code080F8AD4:
ldr   r2,=0x488E                ; 080F8AD4
add   r4,r5,r2                  ; 080F8AD6
mov   r1,0x80                   ; 080F8AD8
lsl   r1,r1,0x1                 ; 080F8ADA
mov   r0,r1                     ; 080F8ADC
ldrh  r2,[r4]                   ; 080F8ADE
add   r0,r0,r2                  ; 080F8AE0
strh  r0,[r4]                   ; 080F8AE2
lsl   r1,r0,0x10                ; 080F8AE4
lsr   r3,r1,0x18                ; 080F8AE6
lsl   r0,r0,0x18                ; 080F8AE8
lsr   r0,r0,0x18                ; 080F8AEA
ldr   r6,=0x03007244            ; 080F8AEC
cmp   r3,r0                     ; 080F8AEE
bne   @@Code080F8BE0            ; 080F8AF0
ldr   r0,[r6]                   ; 080F8AF2
ldr   r2,=0x023D                ; 080F8AF4
add   r1,r0,r2                  ; 080F8AF6
ldrb  r0,[r1]                   ; 080F8AF8
cmp   r0,0x4                    ; 080F8AFA
bne   @@Code080F8B9C            ; 080F8AFC
ldr   r0,=0x48B2                ; 080F8AFE
add   r1,r5,r0                  ; 080F8B00
ldrh  r0,[r1]                   ; 080F8B02
add   r0,0x1                    ; 080F8B04
strh  r0,[r1]                   ; 080F8B06
mov   r1,0xF0                   ; 080F8B08
strh  r1,[r4]                   ; 080F8B0A
ldr   r2,=0x4892                ; 080F8B0C
add   r0,r5,r2                  ; 080F8B0E
strh  r1,[r0]                   ; 080F8B10
ldr   r4,=0x4890                ; 080F8B12
add   r0,r5,r4                  ; 080F8B14
mov   r1,0xA0                   ; 080F8B16
strh  r1,[r0]                   ; 080F8B18
add   r2,0x2                    ; 080F8B1A
add   r0,r5,r2                  ; 080F8B1C
strh  r1,[r0]                   ; 080F8B1E
ldr   r4,=0x4A03                ; 080F8B20
add   r0,r5,r4                  ; 080F8B22
mov   r1,0x3F                   ; 080F8B24
strb  r1,[r0]                   ; 080F8B26
ldr   r2,=0x4A04                ; 080F8B28
add   r0,r5,r2                  ; 080F8B2A
strb  r1,[r0]                   ; 080F8B2C
ldr   r4,=0x48CC                ; 080F8B2E
add   r1,r5,r4                  ; 080F8B30
mov   r0,0x1F                   ; 080F8B32
strh  r0,[r1]                   ; 080F8B34
ldr   r0,=0x4888                ; 080F8B36
add   r1,r5,r0                  ; 080F8B38
ldr   r0,=0x3E41                ; 080F8B3A
strh  r0,[r1]                   ; 080F8B3C
ldr   r0,[r6]                   ; 080F8B3E
mov   r1,0x8F                   ; 080F8B40
lsl   r1,r1,0x2                 ; 080F8B42
add   r0,r0,r1                  ; 080F8B44
ldrb  r2,[r0]                   ; 080F8B46
lsl   r1,r2,0x8                 ; 080F8B48
mov   r0,0x10                   ; 080F8B4A
sub   r0,r0,r2                  ; 080F8B4C
orr   r1,r0                     ; 080F8B4E
ldr   r2,=0x488A                ; 080F8B50
add   r0,r5,r2                  ; 080F8B52
strh  r1,[r0]                   ; 080F8B54
mov   r0,0x20                   ; 080F8B56
strh  r0,[r7]                   ; 080F8B58
ldr   r0,[r6]                   ; 080F8B5A
ldr   r4,=0x023A                ; 080F8B5C
add   r0,r0,r4                  ; 080F8B5E
mov   r1,0x78                   ; 080F8B60
strh  r1,[r0]                   ; 080F8B62
b     @@Code080F8D7A            ; 080F8B64
.pool                           ; 080F8B66

@@Code080F8B9C:
ldr   r2,=Data08197804          ; 080F8B9C
ldrb  r0,[r1]                   ; 080F8B9E
lsl   r0,r0,0x1                 ; 080F8BA0
add   r0,r0,r2                  ; 080F8BA2
ldrh  r1,[r0]                   ; 080F8BA4
ldr   r7,=0x4890                ; 080F8BA6
add   r0,r5,r7                  ; 080F8BA8
strh  r1,[r0]                   ; 080F8BAA
ldr   r0,[r6]                   ; 080F8BAC
ldr   r1,=0x023D                ; 080F8BAE
add   r0,r0,r1                  ; 080F8BB0
ldrb  r0,[r0]                   ; 080F8BB2
add   r0,0x4                    ; 080F8BB4
lsl   r0,r0,0x1                 ; 080F8BB6
add   r0,r0,r2                  ; 080F8BB8
ldrh  r1,[r0]                   ; 080F8BBA
ldr   r2,=0x4894                ; 080F8BBC
add   r0,r5,r2                  ; 080F8BBE
strh  r1,[r0]                   ; 080F8BC0
ldr   r1,=Data081977FC          ; 080F8BC2
ldr   r0,[r6]                   ; 080F8BC4
ldr   r7,=0x023D                ; 080F8BC6
add   r0,r0,r7                  ; 080F8BC8
ldrb  r0,[r0]                   ; 080F8BCA
lsl   r0,r0,0x1                 ; 080F8BCC
add   r0,r0,r1                  ; 080F8BCE
ldrh  r0,[r0]                   ; 080F8BD0
strh  r0,[r4]                   ; 080F8BD2
ldr   r1,[r6]                   ; 080F8BD4
mov   r0,r7                     ; 080F8BD6
add   r1,r1,r0                  ; 080F8BD8
ldrb  r0,[r1]                   ; 080F8BDA
add   r0,0x1                    ; 080F8BDC
strb  r0,[r1]                   ; 080F8BDE
@@Code080F8BE0:
mov   r2,r6                     ; 080F8BE0
ldr   r1,[r2]                   ; 080F8BE2
ldr   r4,=0x023D                ; 080F8BE4
add   r0,r1,r4                  ; 080F8BE6
ldrb  r0,[r0]                   ; 080F8BE8
cmp   r0,0x2                    ; 080F8BEA
beq   @@Code080F8BF0            ; 080F8BEC
b     @@Code080F8D76            ; 080F8BEE
@@Code080F8BF0:
cmp   r3,0x74                   ; 080F8BF0
bne   @@Code080F8C64            ; 080F8BF2
ldr   r7,=0x0241                ; 080F8BF4
add   r1,r1,r7                  ; 080F8BF6
mov   r0,0xFF                   ; 080F8BF8
strb  r0,[r1]                   ; 080F8BFA
ldr   r0,[r2]                   ; 080F8BFC
ldr   r1,=0x0245                ; 080F8BFE
add   r0,r0,r1                  ; 080F8C00
ldrb  r4,[r0]                   ; 080F8C02
cmp   r4,0x0                    ; 080F8C04
bne   @@Code080F8C38            ; 080F8C06
ldr   r0,=0x0600A24C            ; 080F8C08
ldr   r2,=0x80A8                ; 080F8C0A
mov   r1,r2                     ; 080F8C0C
strh  r1,[r0]                   ; 080F8C0E
add   r0,0x40                   ; 080F8C10
b     @@Code080F8D74            ; 080F8C12
.pool                           ; 080F8C14

@@Code080F8C38:
ldr   r2,=0x0600A24C            ; 080F8C38
ldr   r1,=Data081975E0          ; 080F8C3A
lsl   r0,r4,0x1                 ; 080F8C3C
add   r0,r0,r1                  ; 080F8C3E
ldrh  r0,[r0]                   ; 080F8C40
strh  r0,[r2]                   ; 080F8C42
ldr   r1,=0x0600A28C            ; 080F8C44
add   r0,0x10                   ; 080F8C46
strh  r0,[r1]                   ; 080F8C48
add   r1,0x2                    ; 080F8C4A
ldr   r4,=0x800B                ; 080F8C4C
mov   r0,r4                     ; 080F8C4E
strh  r0,[r1]                   ; 080F8C50
b     @@Code080F8D76            ; 080F8C52
.pool                           ; 080F8C54

@@Code080F8C64:
cmp   r3,0x84                   ; 080F8C64
bne   @@Code080F8CC0            ; 080F8C66
ldr   r7,=0x0242                ; 080F8C68
add   r1,r1,r7                  ; 080F8C6A
mov   r0,0xFF                   ; 080F8C6C
strb  r0,[r1]                   ; 080F8C6E
ldr   r0,[r2]                   ; 080F8C70
ldr   r1,=0x0246                ; 080F8C72
add   r0,r0,r1                  ; 080F8C74
ldrb  r4,[r0]                   ; 080F8C76
ldr   r2,=0x414C                ; 080F8C78
add   r0,r5,r2                  ; 080F8C7A
ldrh  r0,[r0]                   ; 080F8C7C
add   r0,0x1                    ; 080F8C7E
cmp   r0,0x63                   ; 080F8C80
bgt   @@Code080F8CA4            ; 080F8C82
ldr   r0,=0x0600A250            ; 080F8C84
ldr   r4,=0x80A8                ; 080F8C86
mov   r1,r4                     ; 080F8C88
strh  r1,[r0]                   ; 080F8C8A
add   r0,0x40                   ; 080F8C8C
b     @@Code080F8D74            ; 080F8C8E
.pool                           ; 080F8C90

@@Code080F8CA4:
ldr   r2,=0x0600A250            ; 080F8CA4
ldr   r1,=Data081975E0          ; 080F8CA6
lsl   r0,r4,0x1                 ; 080F8CA8
add   r0,r0,r1                  ; 080F8CAA
ldrh  r0,[r0]                   ; 080F8CAC
strh  r0,[r2]                   ; 080F8CAE
ldr   r1,=0x0600A290            ; 080F8CB0
b     @@Code080F8D0E            ; 080F8CB2
.pool                           ; 080F8CB4

@@Code080F8CC0:
cmp   r3,0x94                   ; 080F8CC0
bne   @@Code080F8D20            ; 080F8CC2
ldr   r7,=0x0243                ; 080F8CC4
add   r1,r1,r7                  ; 080F8CC6
mov   r0,0xFF                   ; 080F8CC8
strb  r0,[r1]                   ; 080F8CCA
ldr   r0,[r2]                   ; 080F8CCC
ldr   r1,=0x0247                ; 080F8CCE
add   r0,r0,r1                  ; 080F8CD0
ldrb  r4,[r0]                   ; 080F8CD2
ldr   r2,=0x414C                ; 080F8CD4
add   r0,r5,r2                  ; 080F8CD6
ldrh  r0,[r0]                   ; 080F8CD8
add   r0,0x1                    ; 080F8CDA
cmp   r0,0x9                    ; 080F8CDC
bgt   @@Code080F8D00            ; 080F8CDE
ldr   r0,=0x0600A254            ; 080F8CE0
ldr   r4,=0x80A8                ; 080F8CE2
mov   r1,r4                     ; 080F8CE4
strh  r1,[r0]                   ; 080F8CE6
add   r0,0x40                   ; 080F8CE8
b     @@Code080F8D74            ; 080F8CEA
.pool                           ; 080F8CEC

@@Code080F8D00:
ldr   r2,=0x0600A254            ; 080F8D00
ldr   r1,=Data081975E0          ; 080F8D02
lsl   r0,r4,0x1                 ; 080F8D04
add   r0,r0,r1                  ; 080F8D06
ldrh  r0,[r0]                   ; 080F8D08
strh  r0,[r2]                   ; 080F8D0A
ldr   r1,=0x0600A294            ; 080F8D0C
@@Code080F8D0E:
add   r0,0x10                   ; 080F8D0E
strh  r0,[r1]                   ; 080F8D10
b     @@Code080F8D76            ; 080F8D12
.pool                           ; 080F8D14

@@Code080F8D20:
cmp   r3,0xA4                   ; 080F8D20
bne   @@Code080F8D76            ; 080F8D22
mov   r7,0x91                   ; 080F8D24
lsl   r7,r7,0x2                 ; 080F8D26
add   r1,r1,r7                  ; 080F8D28
mov   r0,0xFF                   ; 080F8D2A
strb  r0,[r1]                   ; 080F8D2C
ldr   r2,[r6]                   ; 080F8D2E
mov   r1,0x92                   ; 080F8D30
lsl   r1,r1,0x2                 ; 080F8D32
add   r0,r2,r1                  ; 080F8D34
ldrb  r4,[r0]                   ; 080F8D36
ldr   r3,=0x0600A258            ; 080F8D38
ldr   r1,=Data081975E0          ; 080F8D3A
lsl   r0,r4,0x1                 ; 080F8D3C
add   r0,r0,r1                  ; 080F8D3E
ldrh  r0,[r0]                   ; 080F8D40
strh  r0,[r3]                   ; 080F8D42
ldr   r1,=0x0600A298            ; 080F8D44
add   r0,0x10                   ; 080F8D46
strh  r0,[r1]                   ; 080F8D48
add   r7,0x3                    ; 080F8D4A
add   r2,r2,r7                  ; 080F8D4C
ldrb  r0,[r2]                   ; 080F8D4E
cmp   r0,0x1                    ; 080F8D50
bne   @@Code080F8D56            ; 080F8D52
mov   r4,0x0                    ; 080F8D54
@@Code080F8D56:
ldr   r2,=0x0600A25C            ; 080F8D56
ldr   r1,=Data08197814          ; 080F8D58
lsl   r0,r4,0x1                 ; 080F8D5A
add   r0,r0,r1                  ; 080F8D5C
ldrh  r1,[r0]                   ; 080F8D5E
strh  r1,[r2]                   ; 080F8D60
add   r2,0x40                   ; 080F8D62
mov   r0,r1                     ; 080F8D64
add   r0,0x10                   ; 080F8D66
strh  r0,[r2]                   ; 080F8D68
sub   r2,0x3E                   ; 080F8D6A
add   r0,r1,0x1                 ; 080F8D6C
strh  r0,[r2]                   ; 080F8D6E
ldr   r0,=0x0600A29E            ; 080F8D70
add   r1,0x11                   ; 080F8D72
@@Code080F8D74:
strh  r1,[r0]                   ; 080F8D74
@@Code080F8D76:
bl    Sub080F8814               ; 080F8D76
@@Code080F8D7A:
pop   {r4-r7}                   ; 080F8D7A
pop   {r0}                      ; 080F8D7C
bx    r0                        ; 080F8D7E
.pool                           ; 080F8D80

Sub080F8D98:
push  {r4-r6,lr}                ; 080F8D98
ldr   r4,=0x03002200            ; 080F8D9A
ldr   r0,=0x48B4                ; 080F8D9C
add   r6,r4,r0                  ; 080F8D9E
ldrh  r0,[r6]                   ; 080F8DA0
cmp   r0,0x0                    ; 080F8DA2
beq   @@Code080F8DB4            ; 080F8DA4
sub   r0,0x1                    ; 080F8DA6
b     @@Code080F8E50            ; 080F8DA8
.pool                           ; 080F8DAA

@@Code080F8DB4:
ldr   r1,=0x488C                ; 080F8DB4
add   r5,r4,r1                  ; 080F8DB6
ldrh  r0,[r5]                   ; 080F8DB8
sub   r0,0x1                    ; 080F8DBA
strh  r0,[r5]                   ; 080F8DBC
mov   r1,0x6                    ; 080F8DBE
strh  r1,[r6]                   ; 080F8DC0
lsl   r0,r0,0x10                ; 080F8DC2
lsr   r3,r0,0x10                ; 080F8DC4
cmp   r3,0x0                    ; 080F8DC6
bne   @@Code080F8E52            ; 080F8DC8
ldr   r2,=0x48B2                ; 080F8DCA
add   r1,r4,r2                  ; 080F8DCC
ldrh  r0,[r1]                   ; 080F8DCE
add   r0,0x1                    ; 080F8DD0
strh  r0,[r1]                   ; 080F8DD2
ldr   r2,=0x04000050            ; 080F8DD4
ldr   r0,=0x4888                ; 080F8DD6
add   r1,r4,r0                  ; 080F8DD8
mov   r0,0xEF                   ; 080F8DDA
strh  r0,[r1]                   ; 080F8DDC
strh  r0,[r2]                   ; 080F8DDE
ldr   r1,=0x04000054            ; 080F8DE0
mov   r0,0x10                   ; 080F8DE2
strh  r0,[r5]                   ; 080F8DE4
strh  r0,[r1]                   ; 080F8DE6
sub   r1,0x2                    ; 080F8DE8
ldr   r2,=0x488A                ; 080F8DEA
add   r0,r4,r2                  ; 080F8DEC
strh  r3,[r0]                   ; 080F8DEE
strh  r3,[r1]                   ; 080F8DF0
ldr   r2,=0x04000040            ; 080F8DF2
ldr   r3,=0x488E                ; 080F8DF4
add   r1,r4,r3                  ; 080F8DF6
ldr   r0,=0x28C8                ; 080F8DF8
strh  r0,[r1]                   ; 080F8DFA
strh  r0,[r2]                   ; 080F8DFC
add   r2,0x4                    ; 080F8DFE
ldr   r0,=0x4890                ; 080F8E00
add   r1,r4,r0                  ; 080F8E02
ldr   r0,=0x1888                ; 080F8E04
strh  r0,[r1]                   ; 080F8E06
strh  r0,[r2]                   ; 080F8E08
sub   r2,0x2                    ; 080F8E0A
add   r3,0x4                    ; 080F8E0C
add   r1,r4,r3                  ; 080F8E0E
ldr   r0,=0x20D0                ; 080F8E10
strh  r0,[r1]                   ; 080F8E12
strh  r0,[r2]                   ; 080F8E14
add   r2,0x4                    ; 080F8E16
ldr   r0,=0x4894                ; 080F8E18
add   r1,r4,r0                  ; 080F8E1A
ldr   r0,=0x2888                ; 080F8E1C
strh  r0,[r1]                   ; 080F8E1E
strh  r0,[r2]                   ; 080F8E20
add   r2,0x2                    ; 080F8E22
ldr   r1,=0x4A03                ; 080F8E24
add   r0,r4,r1                  ; 080F8E26
mov   r1,0x3F                   ; 080F8E28
strb  r1,[r0]                   ; 080F8E2A
strb  r1,[r2]                   ; 080F8E2C
add   r2,0x1                    ; 080F8E2E
ldr   r3,=0x4A04                ; 080F8E30
add   r0,r4,r3                  ; 080F8E32
strb  r1,[r0]                   ; 080F8E34
strb  r1,[r2]                   ; 080F8E36
ldr   r3,=0x0400004A            ; 080F8E38
ldr   r0,=0x48CC                ; 080F8E3A
add   r1,r4,r0                  ; 080F8E3C
mov   r2,0x1F                   ; 080F8E3E
mov   r0,0x1F                   ; 080F8E40
strh  r0,[r1]                   ; 080F8E42
strb  r2,[r3]                   ; 080F8E44
ldr   r0,=Data08216FC4          ; 080F8E46
ldr   r1,=0x0600A000            ; 080F8E48
bl    swi_LZ77_VRAM             ; 080F8E4A  LZ77 decompress (VRAM)
mov   r0,0x20                   ; 080F8E4E
@@Code080F8E50:
strh  r0,[r6]                   ; 080F8E50
@@Code080F8E52:
pop   {r4-r6}                   ; 080F8E52
pop   {r0}                      ; 080F8E54
bx    r0                        ; 080F8E56
.pool                           ; 080F8E58

Sub080F8EA8:
push  {r4-r6,lr}                ; 080F8EA8
mov   r6,0x0                    ; 080F8EAA
ldr   r0,=0x03007244            ; 080F8EAC
ldr   r0,[r0]                   ; 080F8EAE
mov   r4,r0                     ; 080F8EB0
add   r4,0xF0                   ; 080F8EB2
mov   r1,0x93                   ; 080F8EB4
lsl   r1,r1,0x1                 ; 080F8EB6
add   r5,r0,r1                  ; 080F8EB8
ldrb  r0,[r5]                   ; 080F8EBA
cmp   r0,0x0                    ; 080F8EBC
beq   @@Code080F8EEC            ; 080F8EBE
mov   r0,r4                     ; 080F8EC0
bl    Sub080F6A14               ; 080F8EC2
ldr   r0,[r4,0x8]               ; 080F8EC6
cmp   r0,0x0                    ; 080F8EC8
bge   @@Code080F8EDE            ; 080F8ECA
add   r0,0xE                    ; 080F8ECC
str   r0,[r4,0x8]               ; 080F8ECE
cmp   r0,0x0                    ; 080F8ED0
blt   @@Code080F8EDE            ; 080F8ED2
str   r6,[r4,0x8]               ; 080F8ED4
mov   r0,r4                     ; 080F8ED6
mov   r1,0x0                    ; 080F8ED8
bl    Sub080F683C               ; 080F8EDA
@@Code080F8EDE:
mov   r0,r4                     ; 080F8EDE
bl    Sub080F68EC               ; 080F8EE0
b     @@Code080F8F1E            ; 080F8EE4
.pool                           ; 080F8EE6

@@Code080F8EEC:
mov   r0,r4                     ; 080F8EEC
bl    Sub080F6A14               ; 080F8EEE
mov   r0,r4                     ; 080F8EF2
bl    Sub080F6960               ; 080F8EF4
mov   r6,0x1                    ; 080F8EF8
ldrb  r0,[r5]                   ; 080F8EFA
cmp   r0,0x0                    ; 080F8EFC
beq   @@Code080F8F1E            ; 080F8EFE
mov   r0,r4                     ; 080F8F00
mov   r1,0x2                    ; 080F8F02
bl    Sub080F683C               ; 080F8F04
mov   r6,0x0                    ; 080F8F08
ldr   r0,=0x03002200            ; 080F8F0A
ldr   r1,=0x48B4                ; 080F8F0C
add   r0,r0,r1                  ; 080F8F0E
mov   r1,0x6                    ; 080F8F10
strh  r1,[r0]                   ; 080F8F12
mov   r0,0x26                   ; 080F8F14  26: 100% cutscene part 1
bl    Sub0812C3B4               ; 080F8F16  Change music (YI)
bl    Sub080F6E70               ; 080F8F1A
@@Code080F8F1E:
mov   r0,r4                     ; 080F8F1E
bl    Sub080F69F4               ; 080F8F20
mov   r0,r4                     ; 080F8F24
bl    Sub080F6A7C               ; 080F8F26
mov   r0,r6                     ; 080F8F2A
pop   {r4-r6}                   ; 080F8F2C
pop   {r1}                      ; 080F8F2E
bx    r1                        ; 080F8F30
.pool                           ; 080F8F32

Sub080F8F3C:
push  {lr}                      ; 080F8F3C
bl    Sub080F8EA8               ; 080F8F3E
lsl   r0,r0,0x18                ; 080F8F42
cmp   r0,0x0                    ; 080F8F44
bne   @@Code080F8F5C            ; 080F8F46
ldr   r1,=CodePtrs08197828      ; 080F8F48
ldr   r0,=0x03002200            ; 080F8F4A
ldr   r2,=0x48B2                ; 080F8F4C
add   r0,r0,r2                  ; 080F8F4E
ldrh  r0,[r0]                   ; 080F8F50
lsl   r0,r0,0x2                 ; 080F8F52
add   r0,r0,r1                  ; 080F8F54
ldr   r0,[r0]                   ; 080F8F56
bl    Sub_bx_r0                 ; 080F8F58
@@Code080F8F5C:
pop   {r0}                      ; 080F8F5C
bx    r0                        ; 080F8F5E
.pool                           ; 080F8F60

Cutscene100Main:
; Game state 4A: 100% cutscene
push  {lr}                      ; 080F8F6C
bl    Sub080F67D4               ; 080F8F6E
bl    Sub08002338               ; 080F8F72
ldr   r1,=0x03002200            ; 080F8F76
ldr   r0,=0x47D0                ; 080F8F78
add   r2,r1,r0                  ; 080F8F7A
mov   r0,0x0                    ; 080F8F7C
strh  r0,[r2]                   ; 080F8F7E
ldr   r2,=CodePtrs08197838      ; 080F8F80
ldr   r0,=0x48B0                ; 080F8F82
add   r1,r1,r0                  ; 080F8F84
ldrh  r0,[r1]                   ; 080F8F86
lsl   r0,r0,0x2                 ; 080F8F88
add   r0,r0,r2                  ; 080F8F8A
ldr   r0,[r0]                   ; 080F8F8C
bl    Sub_bx_r0                 ; 080F8F8E
pop   {r0}                      ; 080F8F92
bx    r0                        ; 080F8F94
.pool                           ; 080F8F96
