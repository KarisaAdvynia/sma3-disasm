Sub080E97E8:
push  {r4-r7,lr}                ; 080E97E8
mov   r7,r10                    ; 080E97EA
mov   r6,r9                     ; 080E97EC
mov   r5,r8                     ; 080E97EE
push  {r5-r7}                   ; 080E97F0
add   sp,-0x8                   ; 080E97F2
mov   r4,r0                     ; 080E97F4
mov   r5,r4                     ; 080E97F6
add   r5,0x5C                   ; 080E97F8
ldrh  r0,[r5]                   ; 080E97FA
cmp   r0,0x1                    ; 080E97FC
bhi   @@Code080E9802            ; 080E97FE
b     @@Code080E99A2            ; 080E9800
@@Code080E9802:
ldr   r2,=0x03002200            ; 080E9802
ldr   r1,=0x47E8                ; 080E9804
add   r0,r2,r1                  ; 080E9806
ldrh  r3,[r0]                   ; 080E9808
mov   r1,0x7                    ; 080E980A
mov   r0,r1                     ; 080E980C
and   r0,r3                     ; 080E980E
neg   r0,r0                     ; 080E9810
lsl   r0,r0,0x10                ; 080E9812
mov   r3,0xF0                   ; 080E9814
lsl   r3,r3,0xF                 ; 080E9816
add   r0,r0,r3                  ; 080E9818
lsr   r0,r0,0x10                ; 080E981A
str   r0,[sp,0x4]               ; 080E981C
ldr   r0,=0x47F0                ; 080E981E
add   r2,r2,r0                  ; 080E9820
ldrh  r0,[r2]                   ; 080E9822
and   r1,r0                     ; 080E9824
neg   r1,r1                     ; 080E9826
lsl   r1,r1,0x10                ; 080E9828
mov   r2,0x80                   ; 080E982A
lsl   r2,r2,0xF                 ; 080E982C
add   r1,r1,r2                  ; 080E982E
lsr   r1,r1,0x10                ; 080E9830
str   r1,[sp]                   ; 080E9832
ldrh  r2,[r5]                   ; 080E9834
cmp   r2,0x3                    ; 080E9836
beq   @@Code080E983E            ; 080E9838
cmp   r2,0xD                    ; 080E983A
bne   @@Code080E985C            ; 080E983C
@@Code080E983E:
mov   r0,r4                     ; 080E983E
add   r0,0x66                   ; 080E9840
ldrh  r0,[r0]                   ; 080E9842
lsr   r2,r0,0x4                 ; 080E9844
cmp   r2,0xE                    ; 080E9846
bls   @@Code080E986C            ; 080E9848
mov   r2,0xF                    ; 080E984A
b     @@Code080E986C            ; 080E984C
.pool                           ; 080E984E

@@Code080E985C:
mov   r0,r4                     ; 080E985C
add   r0,0x66                   ; 080E985E
ldrh  r0,[r0]                   ; 080E9860
lsr   r2,r0,0x4                 ; 080E9862
add   r2,0x10                   ; 080E9864
cmp   r2,0x1D                   ; 080E9866
bls   @@Code080E986C            ; 080E9868
mov   r2,0x1E                   ; 080E986A
@@Code080E986C:
ldr   r1,=DataPtrs081954DC      ; 080E986C
lsl   r0,r2,0x2                 ; 080E986E
add   r0,r0,r1                  ; 080E9870
ldr   r4,[r0]                   ; 080E9872
ldr   r5,=0x03005A08            ; 080E9874
cmp   r2,0x1D                   ; 080E9876
bhi   @@Code080E987C            ; 080E9878
sub   r5,0x8                    ; 080E987A
@@Code080E987C:
ldrh  r0,[r4,0x6]               ; 080E987C
ldr   r3,=0xFFFF                ; 080E987E
cmp   r0,r3                     ; 080E9880
bne   @@Code080E9886            ; 080E9882
b     @@Code080E99A2            ; 080E9884
@@Code080E9886:
mov   r7,0x3                    ; 080E9886
mov   r0,0xD                    ; 080E9888
neg   r0,r0                     ; 080E988A
mov   r10,r0                    ; 080E988C
mov   r6,0x1                    ; 080E988E
mov   r1,0x11                   ; 080E9890
neg   r1,r1                     ; 080E9892
mov   r9,r1                     ; 080E9894
mov   r2,0x21                   ; 080E9896
neg   r2,r2                     ; 080E9898
mov   r8,r2                     ; 080E989A
mov   r3,0x3F                   ; 080E989C
mov   r12,r3                    ; 080E989E
@@Code080E98A0:
ldrb  r0,[r4]                   ; 080E98A0
ldr   r1,[sp]                   ; 080E98A2
add   r0,r0,r1                  ; 080E98A4
strb  r0,[r5]                   ; 080E98A6
ldrb  r0,[r4,0x1]               ; 080E98A8
lsl   r0,r0,0x1E                ; 080E98AA
lsr   r0,r0,0x1E                ; 080E98AC
and   r0,r7                     ; 080E98AE
ldrb  r2,[r5,0x1]               ; 080E98B0
mov   r1,0x4                    ; 080E98B2
neg   r1,r1                     ; 080E98B4
and   r1,r2                     ; 080E98B6
orr   r1,r0                     ; 080E98B8
strb  r1,[r5,0x1]               ; 080E98BA
ldrb  r0,[r4,0x1]               ; 080E98BC
lsl   r0,r0,0x1C                ; 080E98BE
lsr   r0,r0,0x1E                ; 080E98C0
and   r0,r7                     ; 080E98C2
lsl   r0,r0,0x2                 ; 080E98C4
mov   r2,r10                    ; 080E98C6
and   r2,r1                     ; 080E98C8
orr   r2,r0                     ; 080E98CA
strb  r2,[r5,0x1]               ; 080E98CC
ldrb  r0,[r4,0x1]               ; 080E98CE
lsl   r0,r0,0x1B                ; 080E98D0
lsr   r0,r0,0x1F                ; 080E98D2
and   r0,r6                     ; 080E98D4
lsl   r0,r0,0x4                 ; 080E98D6
mov   r3,r9                     ; 080E98D8
and   r3,r2                     ; 080E98DA
orr   r3,r0                     ; 080E98DC
strb  r3,[r5,0x1]               ; 080E98DE
ldrb  r0,[r4,0x1]               ; 080E98E0
lsl   r0,r0,0x1A                ; 080E98E2
lsr   r0,r0,0x1F                ; 080E98E4
and   r0,r6                     ; 080E98E6
lsl   r0,r0,0x5                 ; 080E98E8
mov   r1,r8                     ; 080E98EA
and   r1,r3                     ; 080E98EC
orr   r1,r0                     ; 080E98EE
strb  r1,[r5,0x1]               ; 080E98F0
ldrb  r0,[r4,0x1]               ; 080E98F2
lsr   r0,r0,0x6                 ; 080E98F4
lsl   r0,r0,0x6                 ; 080E98F6
mov   r2,r12                    ; 080E98F8
and   r1,r2                     ; 080E98FA
orr   r1,r0                     ; 080E98FC
strb  r1,[r5,0x1]               ; 080E98FE
ldrh  r1,[r4,0x2]               ; 080E9900
lsl   r1,r1,0x17                ; 080E9902
lsr   r1,r1,0x17                ; 080E9904
ldr   r3,[sp,0x4]               ; 080E9906
add   r1,r1,r3                  ; 080E9908
ldr   r2,=0x01FF                ; 080E990A
mov   r0,r2                     ; 080E990C
and   r1,r0                     ; 080E990E
ldrh  r2,[r5,0x2]               ; 080E9910
ldr   r0,=0xFFFFFE00            ; 080E9912
and   r0,r2                     ; 080E9914
orr   r0,r1                     ; 080E9916
strh  r0,[r5,0x2]               ; 080E9918
ldrb  r1,[r4,0x3]               ; 080E991A
mov   r0,0xE                    ; 080E991C
and   r0,r1                     ; 080E991E
ldrb  r2,[r5,0x3]               ; 080E9920
mov   r1,0xF                    ; 080E9922
neg   r1,r1                     ; 080E9924
and   r1,r2                     ; 080E9926
orr   r1,r0                     ; 080E9928
strb  r1,[r5,0x3]               ; 080E992A
ldrb  r0,[r4,0x3]               ; 080E992C
lsl   r0,r0,0x1B                ; 080E992E
lsr   r0,r0,0x1F                ; 080E9930
and   r0,r6                     ; 080E9932
lsl   r0,r0,0x4                 ; 080E9934
mov   r2,r9                     ; 080E9936
and   r2,r1                     ; 080E9938
orr   r2,r0                     ; 080E993A
strb  r2,[r5,0x3]               ; 080E993C
ldrb  r0,[r4,0x3]               ; 080E993E
lsl   r0,r0,0x1A                ; 080E9940
lsr   r0,r0,0x1F                ; 080E9942
and   r0,r6                     ; 080E9944
lsl   r0,r0,0x5                 ; 080E9946
mov   r1,r8                     ; 080E9948
and   r1,r2                     ; 080E994A
orr   r1,r0                     ; 080E994C
strb  r1,[r5,0x3]               ; 080E994E
ldrb  r0,[r4,0x3]               ; 080E9950
lsr   r0,r0,0x6                 ; 080E9952
lsl   r0,r0,0x6                 ; 080E9954
mov   r3,r12                    ; 080E9956
and   r1,r3                     ; 080E9958
orr   r1,r0                     ; 080E995A
strb  r1,[r5,0x3]               ; 080E995C
ldrh  r1,[r4,0x4]               ; 080E995E
lsl   r1,r1,0x16                ; 080E9960
lsr   r1,r1,0x16                ; 080E9962
ldrh  r2,[r5,0x4]               ; 080E9964
ldr   r0,=0xFFFFFC00            ; 080E9966
and   r0,r2                     ; 080E9968
orr   r0,r1                     ; 080E996A
strh  r0,[r5,0x4]               ; 080E996C
ldrb  r0,[r4,0x5]               ; 080E996E
lsr   r0,r0,0x4                 ; 080E9970
lsl   r0,r0,0x4                 ; 080E9972
ldrb  r2,[r5,0x5]               ; 080E9974
mov   r1,0xF                    ; 080E9976
and   r1,r2                     ; 080E9978
orr   r1,r0                     ; 080E997A
strb  r1,[r5,0x5]               ; 080E997C
ldrh  r0,[r4,0x6]               ; 080E997E
strh  r0,[r5,0x6]               ; 080E9980
ldrb  r0,[r4,0x5]               ; 080E9982
lsl   r0,r0,0x1C                ; 080E9984
lsr   r0,r0,0x1E                ; 080E9986
and   r0,r7                     ; 080E9988
lsl   r0,r0,0x2                 ; 080E998A
mov   r2,r10                    ; 080E998C
and   r1,r2                     ; 080E998E
orr   r1,r0                     ; 080E9990
strb  r1,[r5,0x5]               ; 080E9992
add   r5,0x8                    ; 080E9994
add   r4,0x8                    ; 080E9996
ldrh  r0,[r4,0x6]               ; 080E9998
ldr   r3,=0xFFFF                ; 080E999A
cmp   r0,r3                     ; 080E999C
beq   @@Code080E99A2            ; 080E999E
b     @@Code080E98A0            ; 080E99A0
@@Code080E99A2:
add   sp,0x8                    ; 080E99A2
pop   {r3-r5}                   ; 080E99A4
mov   r8,r3                     ; 080E99A6
mov   r9,r4                     ; 080E99A8
mov   r10,r5                    ; 080E99AA
pop   {r4-r7}                   ; 080E99AC
pop   {r0}                      ; 080E99AE
bx    r0                        ; 080E99B0
.pool                           ; 080E99B2

Sub080E99CC:
push  {r4-r7,lr}                ; 080E99CC
lsl   r0,r0,0x10                ; 080E99CE
ldr   r5,=0x03002200            ; 080E99D0
ldr   r2,=0x47FA                ; 080E99D2
add   r1,r5,r2                  ; 080E99D4
mov   r2,0x0                    ; 080E99D6
strh  r2,[r1]                   ; 080E99D8
ldr   r3,=0x47F8                ; 080E99DA
add   r1,r5,r3                  ; 080E99DC
strh  r2,[r1]                   ; 080E99DE
ldr   r4,=0x47F6                ; 080E99E0
add   r1,r5,r4                  ; 080E99E2
strh  r2,[r1]                   ; 080E99E4
ldr   r2,=0x47E8                ; 080E99E6
add   r1,r5,r2                  ; 080E99E8
ldrh  r1,[r1]                   ; 080E99EA
mov   r2,0x7                    ; 080E99EC
mov   r4,r2                     ; 080E99EE
and   r4,r1                     ; 080E99F0
neg   r4,r4                     ; 080E99F2
add   r4,0x78                   ; 080E99F4
lsl   r3,r4,0x10                ; 080E99F6
ldr   r4,=0x47F0                ; 080E99F8
add   r1,r5,r4                  ; 080E99FA
ldrh  r1,[r1]                   ; 080E99FC
mov   r4,r2                     ; 080E99FE
and   r4,r1                     ; 080E9A00
neg   r4,r4                     ; 080E9A02
add   r4,0x40                   ; 080E9A04
lsl   r1,r4,0x10                ; 080E9A06
lsr   r6,r3,0x10                ; 080E9A08
orr   r6,r1                     ; 080E9A0A
ldr   r2,=0x47FC                ; 080E9A0C
add   r1,r5,r2                  ; 080E9A0E
ldrh  r4,[r1]                   ; 080E9A10
cmp   r0,0x0                    ; 080E9A12
beq   @@Code080E9A58            ; 080E9A14
ldr   r3,=0x4010                ; 080E9A16
add   r0,r5,r3                  ; 080E9A18
bl    Sub0810B3D8               ; 080E9A1A
ldr   r1,=0x03007240            ; 080E9A1E  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]                   ; 080E9A20
ldr   r2,=0x26E0                ; 080E9A22
add   r1,r1,r2                  ; 080E9A24
mov   r2,r6                     ; 080E9A26
mov   r3,r4                     ; 080E9A28
bl    Sub080FC668               ; 080E9A2A
b     @@Code080E9AD2            ; 080E9A2E
.pool                           ; 080E9A30

@@Code080E9A58:
ldr   r7,=0x03007240            ; 080E9A58  Normal gameplay IWRAM (0300220C)
ldr   r1,[r7]                   ; 080E9A5A
ldr   r3,=0x26E0                ; 080E9A5C
add   r1,r1,r3                  ; 080E9A5E
mov   r0,0x0                    ; 080E9A60
mov   r2,r6                     ; 080E9A62
mov   r3,r4                     ; 080E9A64
bl    Sub080FC7A0               ; 080E9A66
ldr   r4,=0x4905                ; 080E9A6A
add   r0,r5,r4                  ; 080E9A6C
ldrb  r0,[r0]                   ; 080E9A6E
cmp   r0,0xD                    ; 080E9A70
bne   @@Code080E9A90            ; 080E9A72
ldr   r0,=0x4A04                ; 080E9A74
add   r1,r5,r0                  ; 080E9A76
mov   r0,0x10                   ; 080E9A78
strb  r0,[r1]                   ; 080E9A7A
b     @@Code080E9AD2            ; 080E9A7C
.pool                           ; 080E9A7E

@@Code080E9A90:
ldr   r2,=0x4A04                ; 080E9A90
add   r1,r5,r2                  ; 080E9A92
mov   r0,0x20                   ; 080E9A94
strb  r0,[r1]                   ; 080E9A96
ldr   r0,[r7]                   ; 080E9A98
ldr   r3,=0x299A                ; 080E9A9A
add   r0,r0,r3                  ; 080E9A9C
ldrh  r0,[r0]                   ; 080E9A9E
cmp   r0,0xC                    ; 080E9AA0
bne   @@Code080E9AB8            ; 080E9AA2
ldr   r4,=0x48CC                ; 080E9AA4
add   r1,r5,r4                  ; 080E9AA6
mov   r0,0x17                   ; 080E9AA8
b     @@Code080E9ABE            ; 080E9AAA
.pool                           ; 080E9AAC

@@Code080E9AB8:
ldr   r0,=0x48CC                ; 080E9AB8
add   r1,r5,r0                  ; 080E9ABA
mov   r0,0x1F                   ; 080E9ABC
@@Code080E9ABE:
strh  r0,[r1]                   ; 080E9ABE
ldr   r1,=0x03002200            ; 080E9AC0
ldr   r3,=0x4888                ; 080E9AC2
add   r2,r1,r3                  ; 080E9AC4
mov   r0,0xE0                   ; 080E9AC6
strh  r0,[r2]                   ; 080E9AC8
ldr   r4,=0x488C                ; 080E9ACA
add   r1,r1,r4                  ; 080E9ACC
mov   r0,0x10                   ; 080E9ACE
strh  r0,[r1]                   ; 080E9AD0
@@Code080E9AD2:
pop   {r4-r7}                   ; 080E9AD2
pop   {r0}                      ; 080E9AD4
bx    r0                        ; 080E9AD6
.pool                           ; 080E9AD8

Sub080E9AE8:
push  {r4-r6,lr}                ; 080E9AE8
mov   r4,r0                     ; 080E9AEA
lsl   r1,r1,0x10                ; 080E9AEC
lsr   r5,r1,0x10                ; 080E9AEE
bl    Sub080E9118               ; 080E9AF0
mov   r1,r4                     ; 080E9AF4
add   r1,0x5C                   ; 080E9AF6
ldrh  r0,[r1]                   ; 080E9AF8
cmp   r0,0xF                    ; 080E9AFA
bne   @@Code080E9BA2            ; 080E9AFC
mov   r0,0x0                    ; 080E9AFE
strh  r0,[r1]                   ; 080E9B00
cmp   r5,0x0                    ; 080E9B02
beq   @@Code080E9B2C            ; 080E9B04
mov   r2,0x0                    ; 080E9B06
ldr   r4,=0x0FFF                ; 080E9B08
ldr   r3,=0x02013400            ; 080E9B0A
ldr   r1,=0x0600D000            ; 080E9B0C
@@Code080E9B0E:
ldrh  r0,[r3]                   ; 080E9B0E
strh  r0,[r1]                   ; 080E9B10
add   r3,0x2                    ; 080E9B12
add   r1,0x2                    ; 080E9B14
add   r2,0x1                    ; 080E9B16
cmp   r2,r4                     ; 080E9B18
bls   @@Code080E9B0E            ; 080E9B1A
b     @@Code080E9C0E            ; 080E9B1C
.pool                           ; 080E9B1E

@@Code080E9B2C:
ldr   r2,=0x03002200            ; 080E9B2C
mov   r0,r4                     ; 080E9B2E
add   r0,0x6A                   ; 080E9B30
ldrh  r1,[r0]                   ; 080E9B32
ldr   r3,=0x4888                ; 080E9B34
add   r0,r2,r3                  ; 080E9B36
strh  r1,[r0]                   ; 080E9B38
mov   r0,r4                     ; 080E9B3A
add   r0,0x6C                   ; 080E9B3C
ldrh  r1,[r0]                   ; 080E9B3E
add   r3,0x4                    ; 080E9B40
add   r0,r2,r3                  ; 080E9B42
strh  r1,[r0]                   ; 080E9B44
ldr   r1,=0x4890                ; 080E9B46
add   r0,r2,r1                  ; 080E9B48
strh  r5,[r0]                   ; 080E9B4A
ldr   r3,=0x4A03                ; 080E9B4C
add   r0,r2,r3                  ; 080E9B4E
mov   r1,0x3F                   ; 080E9B50
strb  r1,[r0]                   ; 080E9B52
ldr   r3,=0x48CC                ; 080E9B54
add   r0,r2,r3                  ; 080E9B56
strh  r1,[r0]                   ; 080E9B58
ldr   r1,=0x03006D80            ; 080E9B5A
mov   r3,0xD4                   ; 080E9B5C
lsl   r3,r3,0x1                 ; 080E9B5E
add   r0,r1,r3                  ; 080E9B60
strh  r5,[r0]                   ; 080E9B62
ldr   r0,=0x4852                ; 080E9B64
add   r2,r2,r0                  ; 080E9B66
ldrh  r0,[r2]                   ; 080E9B68
cmp   r0,0x0                    ; 080E9B6A
beq   @@Code080E9B98            ; 080E9B6C
strh  r5,[r2]                   ; 080E9B6E
mov   r2,0xD3                   ; 080E9B70
lsl   r2,r2,0x1                 ; 080E9B72
add   r0,r1,r2                  ; 080E9B74
strh  r5,[r0]                   ; 080E9B76
b     @@Code080E9C0E            ; 080E9B78
.pool                           ; 080E9B7A

@@Code080E9B98:
mov   r3,0xD3                   ; 080E9B98
lsl   r3,r3,0x1                 ; 080E9B9A
add   r0,r1,r3                  ; 080E9B9C
strh  r5,[r0]                   ; 080E9B9E
b     @@Code080E9C0E            ; 080E9BA0
@@Code080E9BA2:
cmp   r0,0xD                    ; 080E9BA2
bne   @@Code080E9BE0            ; 080E9BA4
mov   r1,r4                     ; 080E9BA6
add   r1,0x66                   ; 080E9BA8
mov   r0,0x80                   ; 080E9BAA
lsl   r0,r0,0x1                 ; 080E9BAC
strh  r0,[r1]                   ; 080E9BAE
cmp   r5,0x0                    ; 080E9BB0
bne   @@Code080E9BCA            ; 080E9BB2
mov   r2,0x0                    ; 080E9BB4
ldr   r4,=0x0FFF                ; 080E9BB6
ldr   r3,=0x02013400            ; 080E9BB8
ldr   r1,=0x0600D000            ; 080E9BBA
@@Code080E9BBC:
ldrh  r0,[r3]                   ; 080E9BBC
strh  r0,[r1]                   ; 080E9BBE
add   r3,0x2                    ; 080E9BC0
add   r1,0x2                    ; 080E9BC2
add   r2,0x1                    ; 080E9BC4
cmp   r2,r4                     ; 080E9BC6
bls   @@Code080E9BBC            ; 080E9BC8
@@Code080E9BCA:
mov   r0,r5                     ; 080E9BCA
bl    Sub080E99CC               ; 080E9BCC
b     @@Code080E9C0E            ; 080E9BD0
.pool                           ; 080E9BD2

@@Code080E9BE0:
cmp   r0,0x5                    ; 080E9BE0
bne   @@Code080E9C08            ; 080E9BE2
mov   r1,r4                     ; 080E9BE4
add   r1,0x66                   ; 080E9BE6
mov   r0,0x0                    ; 080E9BE8
strh  r0,[r1]                   ; 080E9BEA
mov   r2,0x0                    ; 080E9BEC
ldr   r6,=0x0FFF                ; 080E9BEE
add   r1,0x8                    ; 080E9BF0
ldr   r4,=0x0600D000            ; 080E9BF2
ldr   r3,=0x02013400            ; 080E9BF4
@@Code080E9BF6:
ldrh  r0,[r4]                   ; 080E9BF6
strh  r0,[r3]                   ; 080E9BF8
add   r4,0x2                    ; 080E9BFA
add   r3,0x2                    ; 080E9BFC
add   r2,0x1                    ; 080E9BFE
cmp   r2,r6                     ; 080E9C00
bls   @@Code080E9BF6            ; 080E9C02
mov   r0,0x1                    ; 080E9C04
strb  r0,[r1]                   ; 080E9C06
@@Code080E9C08:
mov   r0,r5                     ; 080E9C08
bl    Sub080E99CC               ; 080E9C0A
@@Code080E9C0E:
pop   {r4-r6}                   ; 080E9C0E
pop   {r0}                      ; 080E9C10
bx    r0                        ; 080E9C12
.pool                           ; 080E9C14

Sub080E9C20:
push  {r4,lr}                   ; 080E9C20
mov   r3,r0                     ; 080E9C22
lsl   r1,r1,0x10                ; 080E9C24
lsr   r2,r1,0x10                ; 080E9C26
add   r0,0x5C                   ; 080E9C28
ldrh  r0,[r0]                   ; 080E9C2A
cmp   r0,0xD                    ; 080E9C2C
bne   @@Code080E9C5C            ; 080E9C2E
cmp   r2,0x0                    ; 080E9C30
beq   @@Code080E9C5C            ; 080E9C32
mov   r0,r3                     ; 080E9C34
add   r0,0x66                   ; 080E9C36
ldrh  r0,[r0]                   ; 080E9C38
ldr   r1,=0x03002200            ; 080E9C3A
ldr   r4,=0x47FC                ; 080E9C3C
add   r1,r1,r4                  ; 080E9C3E
strh  r0,[r1]                   ; 080E9C40
mov   r1,r3                     ; 080E9C42
add   r1,0x68                   ; 080E9C44
strh  r0,[r1]                   ; 080E9C46
mov   r0,r3                     ; 080E9C48
mov   r1,r2                     ; 080E9C4A
bl    Sub080E9AE8               ; 080E9C4C
b     @@Code080E9C64            ; 080E9C50
.pool                           ; 080E9C52

@@Code080E9C5C:
mov   r0,r3                     ; 080E9C5C
mov   r1,0x1                    ; 080E9C5E
bl    Sub080E9CAC               ; 080E9C60
@@Code080E9C64:
pop   {r4}                      ; 080E9C64
pop   {r0}                      ; 080E9C66
bx    r0                        ; 080E9C68
.pool                           ; 080E9C6A

Sub080E9C6C:
push  {r4,lr}                   ; 080E9C6C
mov   r4,r0                     ; 080E9C6E
bl    Sub080E92E4               ; 080E9C70
ldrh  r0,[r4,0xA]               ; 080E9C74
cmp   r0,0x1                    ; 080E9C76
bls   @@Code080E9C88            ; 080E9C78
mov   r0,0x30                   ; 080E9C7A
mov   r1,0x0                    ; 080E9C7C
bl    PlayYISound               ; 080E9C7E
mov   r0,r4                     ; 080E9C82
bl    Sub080E9118               ; 080E9C84
@@Code080E9C88:
pop   {r4}                      ; 080E9C88
pop   {r0}                      ; 080E9C8A
bx    r0                        ; 080E9C8C
.pool                           ; 080E9C8E

Sub080E9C90:
push  {r4,lr}                   ; 080E9C90
mov   r4,r0                     ; 080E9C92
mov   r0,0x0                    ; 080E9C94
strh  r0,[r4,0xA]               ; 080E9C96
mov   r0,r4                     ; 080E9C98
bl    Sub080E92E4               ; 080E9C9A
mov   r0,r4                     ; 080E9C9E
bl    Sub080E9118               ; 080E9CA0
pop   {r4}                      ; 080E9CA4
pop   {r0}                      ; 080E9CA6
bx    r0                        ; 080E9CA8
.pool                           ; 080E9CAA

Sub080E9CAC:
push  {r4-r6,lr}                ; 080E9CAC
mov   r12,r0                    ; 080E9CAE
lsl   r1,r1,0x10                ; 080E9CB0
lsr   r5,r1,0x10                ; 080E9CB2
lsl   r2,r2,0x10                ; 080E9CB4
lsr   r6,r2,0x10                ; 080E9CB6
mov   r2,r12                    ; 080E9CB8
add   r2,0x66                   ; 080E9CBA
ldr   r0,=Data08195A14          ; 080E9CBC
lsl   r1,r5,0x1                 ; 080E9CBE
add   r0,r1,r0                  ; 080E9CC0
ldrh  r0,[r0]                   ; 080E9CC2
ldrh  r3,[r2]                   ; 080E9CC4
add   r0,r0,r3                  ; 080E9CC6
lsl   r0,r0,0x10                ; 080E9CC8
lsr   r3,r0,0x10                ; 080E9CCA
ldr   r4,=0xFFFF0000            ; 080E9CCC
add   r0,r0,r4                  ; 080E9CCE
lsr   r0,r0,0x10                ; 080E9CD0
ldr   r4,=Data08195A10          ; 080E9CD2
cmp   r0,0xFE                   ; 080E9CD4
bls   @@Code080E9CDC            ; 080E9CD6
add   r0,r1,r4                  ; 080E9CD8
ldrh  r3,[r0]                   ; 080E9CDA
@@Code080E9CDC:
strh  r3,[r2]                   ; 080E9CDC
ldr   r0,=0x03002200            ; 080E9CDE
ldr   r1,=0x47FC                ; 080E9CE0
add   r0,r0,r1                  ; 080E9CE2
strh  r3,[r0]                   ; 080E9CE4
mov   r0,r12                    ; 080E9CE6
add   r0,0x5C                   ; 080E9CE8
ldrh  r0,[r0]                   ; 080E9CEA
cmp   r0,0x3                    ; 080E9CEC
beq   @@Code080E9CF4            ; 080E9CEE
cmp   r0,0xD                    ; 080E9CF0
bne   @@Code080E9CFA            ; 080E9CF2
@@Code080E9CF4:
mov   r0,r12                    ; 080E9CF4
add   r0,0x68                   ; 080E9CF6
strh  r3,[r0]                   ; 080E9CF8
@@Code080E9CFA:
lsl   r0,r5,0x1                 ; 080E9CFA
add   r0,r0,r4                  ; 080E9CFC
ldrh  r0,[r0]                   ; 080E9CFE
cmp   r3,r0                     ; 080E9D00
bne   @@Code080E9D24            ; 080E9D02
mov   r0,r12                    ; 080E9D04
mov   r1,r6                     ; 080E9D06
bl    Sub080E9AE8               ; 080E9D08
b     @@Code080E9D2A            ; 080E9D0C
.pool                           ; 080E9D0E

@@Code080E9D24:
mov   r0,r6                     ; 080E9D24
bl    Sub080E99CC               ; 080E9D26
@@Code080E9D2A:
pop   {r4-r6}                   ; 080E9D2A
pop   {r0}                      ; 080E9D2C
bx    r0                        ; 080E9D2E

Sub080E9D30:
push  {r4,lr}                   ; 080E9D30
mov   r3,r0                     ; 080E9D32
lsl   r1,r1,0x10                ; 080E9D34
lsr   r2,r1,0x10                ; 080E9D36
add   r0,0x5C                   ; 080E9D38
ldrh  r0,[r0]                   ; 080E9D3A
cmp   r0,0x3                    ; 080E9D3C
bne   @@Code080E9D64            ; 080E9D3E
cmp   r2,0x0                    ; 080E9D40
beq   @@Code080E9D64            ; 080E9D42
ldr   r0,=0x03002200            ; 080E9D44
mov   r1,r3                     ; 080E9D46
add   r1,0x66                   ; 080E9D48
ldrh  r1,[r1]                   ; 080E9D4A
ldr   r4,=0x47FC                ; 080E9D4C
add   r0,r0,r4                  ; 080E9D4E
strh  r1,[r0]                   ; 080E9D50
mov   r0,r3                     ; 080E9D52
mov   r1,r2                     ; 080E9D54
bl    Sub080E9AE8               ; 080E9D56
b     @@Code080E9D6C            ; 080E9D5A
.pool                           ; 080E9D5C

@@Code080E9D64:
mov   r0,r3                     ; 080E9D64
mov   r1,0x0                    ; 080E9D66
bl    Sub080E9CAC               ; 080E9D68
@@Code080E9D6C:
pop   {r4}                      ; 080E9D6C
pop   {r0}                      ; 080E9D6E
bx    r0                        ; 080E9D70
.pool                           ; 080E9D72

Sub080E9D74:
push  {r4,lr}                   ; 080E9D74
mov   r4,r0                     ; 080E9D76
mov   r0,0x4B                   ; 080E9D78
mov   r1,0x0                    ; 080E9D7A
bl    PlayYISound               ; 080E9D7C
mov   r0,r4                     ; 080E9D80
add   r0,0x66                   ; 080E9D82
mov   r2,0x0                    ; 080E9D84
mov   r1,0x0                    ; 080E9D86
strh  r1,[r0]                   ; 080E9D88
add   r0,0x2                    ; 080E9D8A
strh  r1,[r0]                   ; 080E9D8C
add   r0,0x6                    ; 080E9D8E
strb  r2,[r0]                   ; 080E9D90
ldr   r1,=0x03002200            ; 080E9D92
ldr   r2,=0x4888                ; 080E9D94
add   r0,r1,r2                  ; 080E9D96
ldrh  r0,[r0]                   ; 080E9D98
mov   r2,r4                     ; 080E9D9A
add   r2,0x6A                   ; 080E9D9C
strh  r0,[r2]                   ; 080E9D9E
ldr   r0,=0x488C                ; 080E9DA0
add   r1,r1,r0                  ; 080E9DA2
ldrh  r1,[r1]                   ; 080E9DA4
mov   r0,r4                     ; 080E9DA6
add   r0,0x6C                   ; 080E9DA8
strh  r1,[r0]                   ; 080E9DAA
mov   r0,r4                     ; 080E9DAC
bl    Sub080E9118               ; 080E9DAE
bl    Sub080E962C               ; 080E9DB2
pop   {r4}                      ; 080E9DB6
pop   {r0}                      ; 080E9DB8
bx    r0                        ; 080E9DBA
.pool                           ; 080E9DBC

Sub080E9DC8:
push  {r4-r7,lr}                ; 080E9DC8
lsl   r0,r0,0x10                ; 080E9DCA
lsr   r6,r0,0x10                ; 080E9DCC
ldr   r0,=0x03007240            ; 080E9DCE  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080E9DD0
mov   r0,0xE0                   ; 080E9DD2
lsl   r0,r0,0x1                 ; 080E9DD4
add   r7,r1,r0                  ; 080E9DD6
mov   r2,0x87                   ; 080E9DD8
lsl   r2,r2,0x2                 ; 080E9DDA
add   r0,r1,r2                  ; 080E9DDC
ldrh  r5,[r0]                   ; 080E9DDE
cmp   r5,0x0                    ; 080E9DE0
beq   @@Code080E9EA6            ; 080E9DE2
cmp   r5,0x1                    ; 080E9DE4
bls   @@Code080E9DFA            ; 080E9DE6
ldr   r0,=0x022E                ; 080E9DE8
add   r4,r1,r0                  ; 080E9DEA
ldrb  r0,[r4]                   ; 080E9DEC
cmp   r0,0x0                    ; 080E9DEE
beq   @@Code080E9DFA            ; 080E9DF0
bl    Sub080E9498               ; 080E9DF2
mov   r0,0x0                    ; 080E9DF6
strb  r0,[r4]                   ; 080E9DF8
@@Code080E9DFA:
cmp   r6,0x0                    ; 080E9DFA
bne   @@Code080E9E68            ; 080E9DFC
lsr   r2,r5,0x1                 ; 080E9DFE
ldr   r0,=Data08195A34          ; 080E9E00
lsl   r1,r2,0x1                 ; 080E9E02
add   r1,r1,r0                  ; 080E9E04
ldrh  r0,[r1]                   ; 080E9E06
ldr   r3,=0x03002200            ; 080E9E08
cmp   r0,0x0                    ; 080E9E0A
bne   @@Code080E9E14            ; 080E9E0C
ldr   r1,=0x4890                ; 080E9E0E
add   r0,r3,r1                  ; 080E9E10
strh  r6,[r0]                   ; 080E9E12
@@Code080E9E14:
ldr   r1,=0x4905                ; 080E9E14
add   r0,r3,r1                  ; 080E9E16
ldrb  r0,[r0]                   ; 080E9E18
cmp   r0,0xD                    ; 080E9E1A
beq   @@Code080E9E4C            ; 080E9E1C
ldr   r0,=Data08195A50          ; 080E9E1E
add   r0,r2,r0                  ; 080E9E20
ldrb  r1,[r0]                   ; 080E9E22
ldr   r2,=0x4A03                ; 080E9E24
add   r0,r3,r2                  ; 080E9E26
strb  r1,[r0]                   ; 080E9E28
b     @@Code080E9E54            ; 080E9E2A
.pool                           ; 080E9E2C

@@Code080E9E4C:
ldr   r0,=0x4A03                ; 080E9E4C
add   r1,r3,r0                  ; 080E9E4E
mov   r0,0x10                   ; 080E9E50
strb  r0,[r1]                   ; 080E9E52
@@Code080E9E54:
ldr   r0,=0x03006D80            ; 080E9E54
mov   r1,0xD3                   ; 080E9E56
lsl   r1,r1,0x1                 ; 080E9E58
add   r2,r0,r1                  ; 080E9E5A
mov   r1,0x1                    ; 080E9E5C
strh  r1,[r2]                   ; 080E9E5E
mov   r2,0xD4                   ; 080E9E60
lsl   r2,r2,0x1                 ; 080E9E62
add   r0,r0,r2                  ; 080E9E64
strh  r1,[r0]                   ; 080E9E66
@@Code080E9E68:
ldr   r1,=CodePtrs08195A18      ; 080E9E68
sub   r0,r5,0x1                 ; 080E9E6A
asr   r0,r0,0x1                 ; 080E9E6C
lsl   r0,r0,0x2                 ; 080E9E6E
add   r0,r0,r1                  ; 080E9E70
ldr   r2,[r0]                   ; 080E9E72
mov   r0,r7                     ; 080E9E74
mov   r1,r6                     ; 080E9E76
bl    Sub_bx_r2                 ; 080E9E78  bx r2
ldr   r4,=0x03002200            ; 080E9E7C
ldr   r1,=0x4905                ; 080E9E7E
add   r0,r4,r1                  ; 080E9E80
ldrb  r0,[r0]                   ; 080E9E82
cmp   r0,0xD                    ; 080E9E84
bne   @@Code080E9E8E            ; 080E9E86
mov   r0,r7                     ; 080E9E88
bl    Sub080E97E8               ; 080E9E8A
@@Code080E9E8E:
cmp   r6,0x0                    ; 080E9E8E
bne   @@Code080E9EA6            ; 080E9E90
lsr   r2,r5,0x1                 ; 080E9E92
ldr   r1,=Data08195A42          ; 080E9E94
lsl   r0,r2,0x1                 ; 080E9E96
add   r0,r0,r1                  ; 080E9E98
ldrh  r1,[r0]                   ; 080E9E9A
cmp   r1,0x0                    ; 080E9E9C
bne   @@Code080E9EA6            ; 080E9E9E
ldr   r2,=0x4894                ; 080E9EA0
add   r0,r4,r2                  ; 080E9EA2
strh  r1,[r0]                   ; 080E9EA4
@@Code080E9EA6:
pop   {r4-r7}                   ; 080E9EA6
pop   {r0}                      ; 080E9EA8
bx    r0                        ; 080E9EAA
.pool                           ; 080E9EAC

Sub080E9EC8:
ldr   r0,=0x03007240            ; 080E9EC8  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080E9ECA
ldr   r0,=0x2988                ; 080E9ECC
add   r2,r1,r0                  ; 080E9ECE
mov   r0,0x4E                   ; 080E9ED0
strh  r0,[r2]                   ; 080E9ED2
mov   r2,0xA6                   ; 080E9ED4
lsl   r2,r2,0x6                 ; 080E9ED6
add   r0,r1,r2                  ; 080E9ED8
mov   r2,0xFF                   ; 080E9EDA
strh  r2,[r0]                   ; 080E9EDC
ldr   r3,=0x2982                ; 080E9EDE
add   r0,r1,r3                  ; 080E9EE0
strh  r2,[r0]                   ; 080E9EE2
add   r3,0x2                    ; 080E9EE4
add   r0,r1,r3                  ; 080E9EE6
strh  r2,[r0]                   ; 080E9EE8
add   r3,0x2                    ; 080E9EEA
add   r0,r1,r3                  ; 080E9EEC
strh  r2,[r0]                   ; 080E9EEE
ldr   r0,=0x298A                ; 080E9EF0
add   r1,r1,r0                  ; 080E9EF2
strh  r2,[r1]                   ; 080E9EF4
bx    lr                        ; 080E9EF6
.pool                           ; 080E9EF8

Sub080E9F08:
push  {r4-r7,lr}                ; 080E9F08
mov   r4,r0                     ; 080E9F0A
ldrh  r1,[r4,0x10]              ; 080E9F0C
ldr   r0,=Data08195A58          ; 080E9F0E
lsl   r1,r1,0x1                 ; 080E9F10
add   r1,r1,r0                  ; 080E9F12
ldrh  r5,[r1]                   ; 080E9F14
ldr   r0,=0x02011000            ; 080E9F16
ldrh  r2,[r0]                   ; 080E9F18
mov   r3,0x0                    ; 080E9F1A
ldr   r0,=Data08195A62          ; 080E9F1C
mov   r12,r0                    ; 080E9F1E
ldr   r6,=0xFFFF                ; 080E9F20
@@Code080E9F22:
add   r0,r5,r3                  ; 080E9F22
lsl   r0,r0,0x1                 ; 080E9F24
add   r0,r12                    ; 080E9F26
ldrh  r1,[r0]                   ; 080E9F28
cmp   r3,0x0                    ; 080E9F2A
beq   @@Code080E9F32            ; 080E9F2C
cmp   r3,0xE                    ; 080E9F2E
bne   @@Code080E9F78            ; 080E9F30
@@Code080E9F32:
ldr   r0,=0x03007240            ; 080E9F32  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E9F34
ldr   r7,=0x29C2                ; 080E9F36
add   r0,r0,r7                  ; 080E9F38
ldrh  r0,[r0]                   ; 080E9F3A
cmp   r0,0x5                    ; 080E9F3C
bhi   @@Code080E9F60            ; 080E9F3E
mov   r0,r1                     ; 080E9F40
sub   r0,0x44                   ; 080E9F42
b     @@Code080E9F74            ; 080E9F44
.pool                           ; 080E9F46

@@Code080E9F60:
cmp   r0,0x8                    ; 080E9F60
beq   @@Code080E9F72            ; 080E9F62
cmp   r0,0xA                    ; 080E9F64
beq   @@Code080E9F78            ; 080E9F66
cmp   r0,0xC                    ; 080E9F68
beq   @@Code080E9F78            ; 080E9F6A
ldrh  r0,[r4,0x10]              ; 080E9F6C
cmp   r0,0x0                    ; 080E9F6E
beq   @@Code080E9F78            ; 080E9F70
@@Code080E9F72:
sub   r0,r1,0x2                 ; 080E9F72
@@Code080E9F74:
lsl   r0,r0,0x10                ; 080E9F74
lsr   r1,r0,0x10                ; 080E9F76
@@Code080E9F78:
lsl   r0,r2,0x1                 ; 080E9F78
ldr   r7,=0x02011002            ; 080E9F7A
add   r0,r0,r7                  ; 080E9F7C
strh  r1,[r0]                   ; 080E9F7E
add   r0,r3,0x1                 ; 080E9F80
lsl   r0,r0,0x10                ; 080E9F82
lsr   r3,r0,0x10                ; 080E9F84
add   r0,r2,0x1                 ; 080E9F86
lsl   r0,r0,0x10                ; 080E9F88
lsr   r2,r0,0x10                ; 080E9F8A
cmp   r1,r6                     ; 080E9F8C
bne   @@Code080E9F22            ; 080E9F8E
sub   r1,r2,0x1                 ; 080E9F90
ldr   r0,=0x02011000            ; 080E9F92
strh  r1,[r0]                   ; 080E9F94
pop   {r4-r7}                   ; 080E9F96
pop   {r0}                      ; 080E9F98
bx    r0                        ; 080E9F9A
.pool                           ; 080E9F9C

Sub080E9FA4:
push  {r4-r7,lr}                ; 080E9FA4
mov   r7,r10                    ; 080E9FA6
mov   r6,r9                     ; 080E9FA8
mov   r5,r8                     ; 080E9FAA
push  {r5-r7}                   ; 080E9FAC
mov   r7,r0                     ; 080E9FAE
lsl   r1,r1,0x10                ; 080E9FB0
lsr   r5,r1,0x11                ; 080E9FB2
ldr   r3,=0x030021B0            ; 080E9FB4
ldr   r2,=0x03002200            ; 080E9FB6
ldr   r0,=0x47D0                ; 080E9FB8
add   r4,r2,r0                  ; 080E9FBA
ldrh  r0,[r4]                   ; 080E9FBC
lsr   r0,r0,0x2                 ; 080E9FBE
lsl   r0,r0,0x3                 ; 080E9FC0
mov   r6,0xE0                   ; 080E9FC2
lsl   r6,r6,0x6                 ; 080E9FC4
add   r1,r2,r6                  ; 080E9FC6
add   r0,r0,r1                  ; 080E9FC8
str   r0,[r3]                   ; 080E9FCA
mov   r0,0x0                    ; 080E9FCC
mov   r12,r0                    ; 080E9FCE
mov   r6,r3                     ; 080E9FD0
mov   r9,r4                     ; 080E9FD2
ldr   r1,=0x03FF                ; 080E9FD4
mov   r10,r1                    ; 080E9FD6
mov   r2,0x3F                   ; 080E9FD8
mov   r8,r2                     ; 080E9FDA
@@Code080E9FDC:
ldr   r3,[r6]                   ; 080E9FDC
lsr   r0,r5,0x1                 ; 080E9FDE
lsl   r0,r0,0x1                 ; 080E9FE0
ldr   r1,=Data08195BA2          ; 080E9FE2
add   r0,r0,r1                  ; 080E9FE4
mov   r2,0x0                    ; 080E9FE6
ldsh  r1,[r0,r2]                ; 080E9FE8
ldr   r0,[r7]                   ; 080E9FEA
asr   r0,r0,0x8                 ; 080E9FEC
add   r1,r1,r0                  ; 080E9FEE
ldr   r2,=0x01FF                ; 080E9FF0
mov   r0,r2                     ; 080E9FF2
and   r1,r0                     ; 080E9FF4
ldrh  r2,[r3,0x2]               ; 080E9FF6
ldr   r0,=0xFFFFFE00            ; 080E9FF8
and   r0,r2                     ; 080E9FFA
orr   r0,r1                     ; 080E9FFC
strh  r0,[r3,0x2]               ; 080E9FFE
ldr   r0,[r7,0x4]               ; 080EA000
asr   r0,r0,0x8                 ; 080EA002
sub   r0,0x20                   ; 080EA004
ldr   r2,=0x030069DC            ; 080EA006
ldrb  r1,[r2]                   ; 080EA008
sub   r0,r0,r1                  ; 080EA00A
strb  r0,[r3]                   ; 080EA00C
lsl   r0,r5,0x1                 ; 080EA00E
ldr   r1,=Data08195BD2          ; 080EA010
add   r0,r0,r1                  ; 080EA012
ldrh  r3,[r0]                   ; 080EA014
ldr   r4,[r6]                   ; 080EA016
mov   r1,r3                     ; 080EA018
mov   r2,r10                    ; 080EA01A
and   r1,r2                     ; 080EA01C
ldrh  r2,[r4,0x4]               ; 080EA01E
ldr   r0,=0xFFFFFC00            ; 080EA020
and   r0,r2                     ; 080EA022
orr   r0,r1                     ; 080EA024
strh  r0,[r4,0x4]               ; 080EA026
lsr   r3,r3,0xC                 ; 080EA028
lsl   r3,r3,0x4                 ; 080EA02A
ldrb  r1,[r4,0x5]               ; 080EA02C
mov   r0,0xF                    ; 080EA02E
and   r0,r1                     ; 080EA030
orr   r0,r3                     ; 080EA032
strb  r0,[r4,0x5]               ; 080EA034
ldr   r2,[r6]                   ; 080EA036
ldrb  r1,[r2,0x3]               ; 080EA038
mov   r0,r8                     ; 080EA03A
and   r0,r1                     ; 080EA03C
strb  r0,[r2,0x3]               ; 080EA03E
ldr   r2,[r6]                   ; 080EA040
ldrb  r1,[r2,0x1]               ; 080EA042
mov   r0,r8                     ; 080EA044
and   r0,r1                     ; 080EA046
strb  r0,[r2,0x1]               ; 080EA048
add   r0,r5,0x1                 ; 080EA04A
lsl   r0,r0,0x10                ; 080EA04C
lsr   r5,r0,0x10                ; 080EA04E
mov   r1,r9                     ; 080EA050
ldrh  r0,[r1]                   ; 080EA052
add   r0,0x4                    ; 080EA054
strh  r0,[r1]                   ; 080EA056
ldr   r0,[r6]                   ; 080EA058
add   r0,0x8                    ; 080EA05A
str   r0,[r6]                   ; 080EA05C
mov   r0,r12                    ; 080EA05E
add   r0,0x1                    ; 080EA060
lsl   r0,r0,0x10                ; 080EA062
lsr   r0,r0,0x10                ; 080EA064
mov   r12,r0                    ; 080EA066
cmp   r0,0x3                    ; 080EA068
bls   @@Code080E9FDC            ; 080EA06A
pop   {r3-r5}                   ; 080EA06C
mov   r8,r3                     ; 080EA06E
mov   r9,r4                     ; 080EA070
mov   r10,r5                    ; 080EA072
pop   {r4-r7}                   ; 080EA074
pop   {r0}                      ; 080EA076
bx    r0                        ; 080EA078
.pool                           ; 080EA07A

Sub080EA0A4:
push  {lr}                      ; 080EA0A4
mov   r1,r0                     ; 080EA0A6
mov   r2,r1                     ; 080EA0A8
add   r2,0x78                   ; 080EA0AA
ldrh  r0,[r2]                   ; 080EA0AC
mov   r3,r0                     ; 080EA0AE
cmp   r3,0x0                    ; 080EA0B0
beq   @@Code080EA0BC            ; 080EA0B2
sub   r0,0x1                    ; 080EA0B4
strh  r0,[r2]                   ; 080EA0B6
add   r1,0x88                   ; 080EA0B8
b     @@Code080EA0D0            ; 080EA0BA
@@Code080EA0BC:
add   r1,0x88                   ; 080EA0BC
ldrh  r0,[r1]                   ; 080EA0BE
add   r0,0x1                    ; 080EA0C0
strh  r0,[r1]                   ; 080EA0C2
mov   r0,0x3                    ; 080EA0C4
strh  r0,[r2]                   ; 080EA0C6
ldrh  r0,[r1]                   ; 080EA0C8
cmp   r0,0x6                    ; 080EA0CA
bne   @@Code080EA0D0            ; 080EA0CC
strh  r3,[r1]                   ; 080EA0CE
@@Code080EA0D0:
ldrh  r1,[r1]                   ; 080EA0D0
lsl   r1,r1,0x13                ; 080EA0D2
lsr   r1,r1,0x10                ; 080EA0D4
ldr   r0,=0x03007240            ; 080EA0D6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EA0D8
ldr   r2,=0x0514                ; 080EA0DA
add   r0,r0,r2                  ; 080EA0DC
bl    Sub080E9FA4               ; 080EA0DE
pop   {r0}                      ; 080EA0E2
bx    r0                        ; 080EA0E4
.pool                           ; 080EA0E6

Return080EA0F0:
bx    lr                        ; 080EA0F0
.pool                           ; 080EA0F2

Return080EA0F4:
bx    lr                        ; 080EA0F4
.pool                           ; 080EA0F6

Return080EA0F8:
bx    lr                        ; 080EA0F8
.pool                           ; 080EA0FA

Return080EA0FC:
bx    lr                        ; 080EA0FC
.pool                           ; 080EA0FE

Sub080EA100:
push  {r4-r7,lr}                ; 080EA100
mov   r7,r8                     ; 080EA102
push  {r7}                      ; 080EA104
ldr   r7,=0x03007240            ; 080EA106  Normal gameplay IWRAM (0300220C)
ldr   r4,[r7]                   ; 080EA108
ldr   r5,=0x03002200            ; 080EA10A
ldr   r0,=0x48A6                ; 080EA10C
add   r2,r5,r0                  ; 080EA10E
ldrh  r1,[r2]                   ; 080EA110
mov   r0,0x7F                   ; 080EA112
and   r0,r1                     ; 080EA114
strh  r0,[r2]                   ; 080EA116
ldr   r1,=0x48EF                ; 080EA118
add   r6,r5,r1                  ; 080EA11A
ldrb  r2,[r6]                   ; 080EA11C
cmp   r2,0xFF                   ; 080EA11E
bne   @@Code080EA144            ; 080EA120
ldr   r2,=0x4905                ; 080EA122
add   r1,r5,r2                  ; 080EA124
mov   r0,0x33                   ; 080EA126
strb  r0,[r1]                   ; 080EA128
bl    Sub0802E020               ; 080EA12A
b     @@Code080EA1CA            ; 080EA12E
.pool                           ; 080EA130

@@Code080EA144:
ldr   r1,=0x48F1                ; 080EA144
add   r0,r5,r1                  ; 080EA146
ldrb  r2,[r0]                   ; 080EA148
ldr   r0,=0x0201B1C2            ; 080EA14A
strh  r2,[r0]                   ; 080EA14C
ldr   r2,=0x4852                ; 080EA14E
add   r0,r5,r2                  ; 080EA150
mov   r1,0x1                    ; 080EA152
mov   r8,r1                     ; 080EA154
mov   r2,r8                     ; 080EA156
strh  r2,[r0]                   ; 080EA158
ldr   r0,=0x4905                ; 080EA15A
add   r1,r5,r0                  ; 080EA15C
mov   r0,0xA                    ; 080EA15E
strb  r0,[r1]                   ; 080EA160
bl    Sub0802D9AC               ; 080EA162
ldr   r0,[r7]                   ; 080EA166
ldr   r1,=0x2708                ; 080EA168
add   r0,r0,r1                  ; 080EA16A
mov   r1,0x0                    ; 080EA16C
strh  r1,[r0,0x28]              ; 080EA16E
ldrb  r2,[r6]                   ; 080EA170
ldr   r1,=0x48F0                ; 080EA172
add   r0,r5,r1                  ; 080EA174
ldrb  r0,[r0]                   ; 080EA176
lsl   r0,r0,0x8                 ; 080EA178
orr   r2,r0                     ; 080EA17A
ldr   r0,=0x0201B1C0            ; 080EA17C
strh  r2,[r0]                   ; 080EA17E
ldr   r2,=0x48F4                ; 080EA180
add   r0,r5,r2                  ; 080EA182
ldrb  r2,[r0]                   ; 080EA184
add   r1,0x5                    ; 080EA186
add   r0,r5,r1                  ; 080EA188
ldrb  r0,[r0]                   ; 080EA18A
lsl   r0,r0,0x8                 ; 080EA18C
ldr   r1,=0x0201B1C4            ; 080EA18E
orr   r2,r0                     ; 080EA190
strh  r2,[r1]                   ; 080EA192
mov   r0,0xE0                   ; 080EA194
lsl   r0,r0,0x1                 ; 080EA196
strh  r0,[r4,0x3E]              ; 080EA198
ldr   r2,=0x48F3                ; 080EA19A
add   r0,r5,r2                  ; 080EA19C
ldrb  r0,[r0]                   ; 080EA19E
lsl   r2,r0,0x8                 ; 080EA1A0
ldr   r1,=0x48F2                ; 080EA1A2
add   r0,r5,r1                  ; 080EA1A4
ldrb  r0,[r0]                   ; 080EA1A6
orr   r2,r0                     ; 080EA1A8
sub   r1,0x24                   ; 080EA1AA
add   r0,r5,r1                  ; 080EA1AC
strh  r2,[r0]                   ; 080EA1AE
ldr   r1,=Data081A8D2E          ; 080EA1B0
ldr   r2,=0x4088                ; 080EA1B2
add   r0,r5,r2                  ; 080EA1B4
ldrh  r0,[r0]                   ; 080EA1B6
add   r0,r0,r1                  ; 080EA1B8
ldrb  r1,[r0]                   ; 080EA1BA
ldr   r2,=0x4896                ; 080EA1BC
add   r0,r5,r2                  ; 080EA1BE
strh  r1,[r0]                   ; 080EA1C0
ldr   r1,=0x48E6                ; 080EA1C2
add   r0,r5,r1                  ; 080EA1C4
mov   r2,r8                     ; 080EA1C6
strh  r2,[r0]                   ; 080EA1C8
@@Code080EA1CA:
pop   {r3}                      ; 080EA1CA
mov   r8,r3                     ; 080EA1CC
pop   {r4-r7}                   ; 080EA1CE
pop   {r0}                      ; 080EA1D0
bx    r0                        ; 080EA1D2
.pool                           ; 080EA1D4

Sub080EA210:
push  {r4-r6,lr}                ; 080EA210
mov   r5,r0                     ; 080EA212
ldr   r4,=0x03002200            ; 080EA214
ldr   r0,=0x47EE                ; 080EA216
add   r1,r4,r0                  ; 080EA218
ldrh  r0,[r1]                   ; 080EA21A
sub   r0,0x1                    ; 080EA21C
strh  r0,[r1]                   ; 080EA21E
ldr   r6,=0x47E6                ; 080EA220
add   r1,r4,r6                  ; 080EA222
ldrh  r0,[r1]                   ; 080EA224
add   r0,0x1                    ; 080EA226
strh  r0,[r1]                   ; 080EA228
ldr   r0,=0x488C                ; 080EA22A
add   r3,r4,r0                  ; 080EA22C
ldrh  r0,[r3]                   ; 080EA22E
add   r0,0x1                    ; 080EA230
strh  r0,[r3]                   ; 080EA232
ldr   r1,=0x03006D80            ; 080EA234
mov   r6,0xD3                   ; 080EA236
lsl   r6,r6,0x1                 ; 080EA238
add   r2,r1,r6                  ; 080EA23A
mov   r1,0x1                    ; 080EA23C
strh  r1,[r2]                   ; 080EA23E
lsl   r0,r0,0x10                ; 080EA240
lsr   r0,r0,0x10                ; 080EA242
cmp   r0,0x1E                   ; 080EA244
bls   @@Code080EA27A            ; 080EA246
mov   r0,0x1F                   ; 080EA248
strh  r0,[r3]                   ; 080EA24A
bl    Sub0812C2A0               ; 080EA24C
lsl   r0,r0,0x18                ; 080EA250
lsr   r0,r0,0x18                ; 080EA252
cmp   r0,0x1                    ; 080EA254
beq   @@Code080EA27A            ; 080EA256
ldr   r1,=0x48EF                ; 080EA258
add   r0,r4,r1                  ; 080EA25A
ldrb  r0,[r0]                   ; 080EA25C
cmp   r0,0xFF                   ; 080EA25E
bne   @@Code080EA276            ; 080EA260
ldrh  r0,[r5,0x10]              ; 080EA262
cmp   r0,0x0                    ; 080EA264
bne   @@Code080EA276            ; 080EA266
bl    Sub080FAA64               ; 080EA268
ldr   r6,=0x4B64                ; 080EA26C
add   r0,r4,r6                  ; 080EA26E
ldrb  r0,[r0]                   ; 080EA270
cmp   r0,0x3                    ; 080EA272
beq   @@Code080EA27A            ; 080EA274
@@Code080EA276:
bl    Sub080EA100               ; 080EA276
@@Code080EA27A:
pop   {r4-r6}                   ; 080EA27A
pop   {r0}                      ; 080EA27C
bx    r0                        ; 080EA27E
.pool                           ; 080EA280

Sub080EA29C:
push  {lr}                      ; 080EA29C
mov   r1,r0                     ; 080EA29E
ldrh  r0,[r1,0x26]              ; 080EA2A0
cmp   r0,0x0                    ; 080EA2A2
beq   @@Code080EA2AA            ; 080EA2A4
sub   r0,0x1                    ; 080EA2A6
strh  r0,[r1,0x26]              ; 080EA2A8
@@Code080EA2AA:
pop   {r0}                      ; 080EA2AA
bx    r0                        ; 080EA2AC
.pool                           ; 080EA2AE

Sub080EA2B0:
push  {r4-r6,lr}                ; 080EA2B0
mov   r4,r0                     ; 080EA2B2
ldr   r6,=0x03002200            ; 080EA2B4
ldr   r0,=0x47EE                ; 080EA2B6
add   r1,r6,r0                  ; 080EA2B8
ldrh  r0,[r1]                   ; 080EA2BA
sub   r0,0x1                    ; 080EA2BC
strh  r0,[r1]                   ; 080EA2BE
ldr   r0,=0x47E6                ; 080EA2C0
add   r1,r6,r0                  ; 080EA2C2
ldrh  r0,[r1]                   ; 080EA2C4
add   r0,0x1                    ; 080EA2C6
strh  r0,[r1]                   ; 080EA2C8
ldrh  r0,[r4,0x10]              ; 080EA2CA
cmp   r0,0x0                    ; 080EA2CC
bne   @@Code080EA33C            ; 080EA2CE
bl    Sub0812C470               ; 080EA2D0
lsl   r0,r0,0x10                ; 080EA2D4
asr   r0,r0,0x10                ; 080EA2D6
mov   r1,0x1                    ; 080EA2D8
neg   r1,r1                     ; 080EA2DA
cmp   r0,r1                     ; 080EA2DC
bne   @@Code080EA2E6            ; 080EA2DE
mov   r0,0x21                   ; 080EA2E0  21: Course clear
bl    Sub0812C3B4               ; 080EA2E2  Change music (YI)
@@Code080EA2E6:
ldrh  r0,[r4,0x24]              ; 080EA2E6
cmp   r0,0x0                    ; 080EA2E8
bne   @@Code080EA300            ; 080EA2EA
mov   r0,r4                     ; 080EA2EC
bl    Sub080EA29C               ; 080EA2EE
b     @@Code080EA372            ; 080EA2F2
.pool                           ; 080EA2F4

@@Code080EA300:
mov   r0,0x1                    ; 080EA300
strh  r0,[r4,0x1E]              ; 080EA302
ldrh  r0,[r4,0xE]               ; 080EA304
sub   r0,0x1                    ; 080EA306
strh  r0,[r4,0xE]               ; 080EA308
lsl   r0,r0,0x10                ; 080EA30A
lsr   r5,r0,0x10                ; 080EA30C
cmp   r5,0x0                    ; 080EA30E
bne   @@Code080EA372            ; 080EA310
mov   r0,0x10                   ; 080EA312
bl    Sub0812C458               ; 080EA314
bl    Sub0812C28C               ; 080EA318
ldr   r1,=0x488C                ; 080EA31C
add   r0,r6,r1                  ; 080EA31E
strh  r5,[r0]                   ; 080EA320
ldr   r0,=0x4888                ; 080EA322
add   r1,r6,r0                  ; 080EA324
mov   r0,0xFF                   ; 080EA326
strh  r0,[r1]                   ; 080EA328
ldrh  r0,[r4,0xC]               ; 080EA32A
add   r0,0x1                    ; 080EA32C
strh  r0,[r4,0xC]               ; 080EA32E
b     @@Code080EA372            ; 080EA330
.pool                           ; 080EA332

@@Code080EA33C:
mov   r0,0x1                    ; 080EA33C
strh  r0,[r4,0x1E]              ; 080EA33E
ldrh  r0,[r4,0xE]               ; 080EA340
sub   r0,0x1                    ; 080EA342
strh  r0,[r4,0xE]               ; 080EA344
lsl   r0,r0,0x10                ; 080EA346
lsr   r5,r0,0x10                ; 080EA348
cmp   r5,0x0                    ; 080EA34A
bne   @@Code080EA36C            ; 080EA34C
mov   r0,0x10                   ; 080EA34E
bl    Sub0812C458               ; 080EA350
bl    Sub0812C28C               ; 080EA354
ldr   r1,=0x488C                ; 080EA358
add   r0,r6,r1                  ; 080EA35A
strh  r5,[r0]                   ; 080EA35C
ldr   r0,=0x4888                ; 080EA35E
add   r1,r6,r0                  ; 080EA360
mov   r0,0xFF                   ; 080EA362
strh  r0,[r1]                   ; 080EA364
ldrh  r0,[r4,0xC]               ; 080EA366
add   r0,0x1                    ; 080EA368
strh  r0,[r4,0xC]               ; 080EA36A
@@Code080EA36C:
mov   r0,r4                     ; 080EA36C
bl    Sub080EA29C               ; 080EA36E
@@Code080EA372:
pop   {r4-r6}                   ; 080EA372
pop   {r0}                      ; 080EA374
bx    r0                        ; 080EA376
.pool                           ; 080EA378

Sub080EA380:
push  {r4-r7,lr}                ; 080EA380
mov   r7,r9                     ; 080EA382
mov   r6,r8                     ; 080EA384
push  {r6-r7}                   ; 080EA386
mov   r6,r0                     ; 080EA388
ldrh  r3,[r6,0xA]               ; 080EA38A
mov   r0,r3                     ; 080EA38C
add   r0,0x8                    ; 080EA38E
lsl   r0,r0,0x10                ; 080EA390
lsr   r3,r0,0x10                ; 080EA392
strh  r3,[r6,0xA]               ; 080EA394
ldr   r2,=0x03002200            ; 080EA396
ldr   r1,=0x47E6                ; 080EA398
add   r0,r2,r1                  ; 080EA39A
ldrh  r1,[r0]                   ; 080EA39C
add   r0,r3,r1                  ; 080EA39E
lsl   r0,r0,0x10                ; 080EA3A0
lsr   r4,r0,0x10                ; 080EA3A2
sub   r1,r1,r3                  ; 080EA3A4
lsl   r1,r1,0x10                ; 080EA3A6
lsr   r5,r1,0x10                ; 080EA3A8
ldr   r7,=0x4901                ; 080EA3AA
add   r0,r2,r7                  ; 080EA3AC
ldrb  r1,[r0]                   ; 080EA3AE
mov   r0,0x1                    ; 080EA3B0
and   r0,r1                     ; 080EA3B2
ldr   r1,=0x02027D10            ; 080EA3B4
mov   r9,r1                     ; 080EA3B6
mov   r12,r2                    ; 080EA3B8
cmp   r0,0x0                    ; 080EA3BA
beq   @@Code080EA3C2            ; 080EA3BC
ldr   r7,=0x02027F94            ; 080EA3BE
mov   r9,r7                     ; 080EA3C0
@@Code080EA3C2:
mov   r2,0x0                    ; 080EA3C2
mov   r0,0x80                   ; 080EA3C4
lsl   r0,r0,0x1                 ; 080EA3C6
mov   r8,r0                     ; 080EA3C8
@@Code080EA3CA:
lsl   r0,r2,0x1                 ; 080EA3CA
mov   r7,r9                     ; 080EA3CC
add   r1,r0,r7                  ; 080EA3CE
strh  r4,[r1]                   ; 080EA3D0
mov   r0,r1                     ; 080EA3D2
add   r0,0x40                   ; 080EA3D4
strh  r5,[r0]                   ; 080EA3D6
add   r0,0x40                   ; 080EA3D8
strh  r4,[r0]                   ; 080EA3DA
add   r0,0x40                   ; 080EA3DC
strh  r5,[r0]                   ; 080EA3DE
mov   r7,r8                     ; 080EA3E0
add   r0,r1,r7                  ; 080EA3E2
strh  r4,[r0]                   ; 080EA3E4
add   r0,r2,0x1                 ; 080EA3E6
lsl   r0,r0,0x10                ; 080EA3E8
lsr   r2,r0,0x10                ; 080EA3EA
cmp   r2,0x1F                   ; 080EA3EC
bls   @@Code080EA3CA            ; 080EA3EE
cmp   r3,0xFF                   ; 080EA3F0
bls   @@Code080EA458            ; 080EA3F2
ldr   r2,=0x47CC                ; 080EA3F4
add   r2,r12                    ; 080EA3F6
ldrh  r1,[r2]                   ; 080EA3F8
ldr   r0,=0x20FF                ; 080EA3FA
and   r0,r1                     ; 080EA3FC
mov   r3,0xB8                   ; 080EA3FE
lsl   r3,r3,0x5                 ; 080EA400
mov   r1,r3                     ; 080EA402
orr   r0,r1                     ; 080EA404
strh  r0,[r2]                   ; 080EA406
ldr   r1,=0x47C2                ; 080EA408
add   r1,r12                    ; 080EA40A
ldr   r0,=0x2001                ; 080EA40C
strh  r0,[r1]                   ; 080EA40E
ldr   r1,=0x47C4                ; 080EA410
add   r1,r12                    ; 080EA412
mov   r0,0x8                    ; 080EA414
strh  r0,[r1]                   ; 080EA416
ldrh  r0,[r6,0xC]               ; 080EA418
add   r0,0x1                    ; 080EA41A
strh  r0,[r6,0xC]               ; 080EA41C
ldrh  r3,[r6,0x10]              ; 080EA41E
cmp   r3,0x0                    ; 080EA420
bne   @@Code080EA450            ; 080EA422
mov   r3,0x80                   ; 080EA424
b     @@Code080EA452            ; 080EA426
.pool                           ; 080EA428

@@Code080EA450:
mov   r3,0xE0                   ; 080EA450
@@Code080EA452:
strh  r3,[r6,0xE]               ; 080EA452
mov   r0,0xFF                   ; 080EA454
strh  r0,[r6,0x26]              ; 080EA456
@@Code080EA458:
pop   {r3-r4}                   ; 080EA458
mov   r8,r3                     ; 080EA45A
mov   r9,r4                     ; 080EA45C
pop   {r4-r7}                   ; 080EA45E
pop   {r0}                      ; 080EA460
bx    r0                        ; 080EA462

Sub080EA464:
; subroutine: set background on Bandit minigame win/loss?
push  {r4,lr}                   ; 080EA464
add   sp,-0x4                   ; 080EA466
mov   r4,r0                     ; 080EA468
ldr   r0,=0x03002200            ; 080EA46A
ldr   r1,=0x48F6                ; 080EA46C
add   r0,r0,r1                  ; 080EA46E
mov   r1,0x1                    ; 080EA470
strb  r1,[r0]                   ; 080EA472
ldrh  r0,[r4,0x10]              ; 080EA474
cmp   r0,0x0                    ; 080EA476
beq   @@Code080EA48C            ; 080EA478
ldr   r0,=DataPtrs08195E48      ; 080EA47A
ldr   r0,[r0,0x8]               ; 080EA47C
b     @@Code080EA490            ; 080EA47E
.pool                           ; 080EA480

@@Code080EA48C:
ldr   r0,=DataPtrs08195E48      ; 080EA48C
ldr   r0,[r0,0x4]               ; 080EA48E
@@Code080EA490:
ldr   r1,=0x0600B800            ; 080EA490
bl    swi_LZ77_VRAM             ; 080EA492  LZ77 decompress (VRAM)
mov   r1,sp                     ; 080EA496
ldr   r2,=0x03002200            ; 080EA498
ldr   r3,=0x47E6                ; 080EA49A
add   r0,r2,r3                  ; 080EA49C
ldrh  r0,[r0]                   ; 080EA49E
strh  r0,[r1]                   ; 080EA4A0
ldr   r1,=0x040000D4            ; 080EA4A2
mov   r0,sp                     ; 080EA4A4
str   r0,[r1]                   ; 080EA4A6
ldr   r0,=0x02027D10            ; 080EA4A8
str   r0,[r1,0x4]               ; 080EA4AA
ldr   r0,=0x81000284            ; 080EA4AC
str   r0,[r1,0x8]               ; 080EA4AE
ldr   r0,[r1,0x8]               ; 080EA4B0
sub   r3,0x24                   ; 080EA4B2
add   r1,r2,r3                  ; 080EA4B4
ldr   r0,=0x2003                ; 080EA4B6
strh  r0,[r1]                   ; 080EA4B8
ldr   r0,=0x47C4                ; 080EA4BA
add   r2,r2,r0                  ; 080EA4BC
mov   r0,0x18                   ; 080EA4BE
strh  r0,[r2]                   ; 080EA4C0
ldr   r1,=0x030021C0            ; 080EA4C2
ldr   r0,=Sub080EACDC+1         ; 080EA4C4
str   r0,[r1,0x10]              ; 080EA4C6
ldrh  r0,[r4,0x10]              ; 080EA4C8
cmp   r0,0x0                    ; 080EA4CA
bne   @@Code080EA504            ; 080EA4CC
mov   r0,0x20                   ; 080EA4CE  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080EA4D0  Change music (YI)
b     @@Code080EA50A            ; 080EA4D4
.pool                           ; 080EA4D6

@@Code080EA504:
mov   r0,0x23                   ; 080EA504  23: Death (Yoshi died)
bl    Sub0812C3B4               ; 080EA506  Change music (YI)
@@Code080EA50A:
ldrh  r0,[r4,0xC]               ; 080EA50A
add   r0,0x1                    ; 080EA50C
strh  r0,[r4,0xC]               ; 080EA50E
ldrh  r0,[r4,0x20]              ; 080EA510
cmp   r0,0x0                    ; 080EA512
beq   @@Code080EA522            ; 080EA514
mov   r0,r4                     ; 080EA516
bl    Sub080EA550               ; 080EA518
ldr   r0,=0x02011002            ; 080EA51C
bl    Sub08002684               ; 080EA51E
@@Code080EA522:
mov   r0,r4                     ; 080EA522
bl    Sub080E9F08               ; 080EA524
add   sp,0x4                    ; 080EA528
pop   {r4}                      ; 080EA52A
pop   {r0}                      ; 080EA52C
bx    r0                        ; 080EA52E
.pool                           ; 080EA530

Sub080EA534:
push  {lr}                      ; 080EA534
ldrh  r1,[r0,0xC]               ; 080EA536
sub   r1,0x1                    ; 080EA538
lsl   r1,r1,0x10                ; 080EA53A
ldr   r2,=CodePtrs08195C08      ; 080EA53C
lsr   r1,r1,0xE                 ; 080EA53E
add   r1,r1,r2                  ; 080EA540
ldr   r1,[r1]                   ; 080EA542
bl    Sub_bx_r1                 ; 080EA544  bx r1
pop   {r0}                      ; 080EA548
bx    r0                        ; 080EA54A
.pool                           ; 080EA54C

Sub080EA550:
push  {r4-r6,lr}                ; 080EA550
add   r0,0x9C                   ; 080EA552
ldrh  r0,[r0]                   ; 080EA554
sub   r0,0x3                    ; 080EA556
lsl   r0,r0,0x10                ; 080EA558
ldr   r1,=0x02011000            ; 080EA55A
ldrh  r2,[r1]                   ; 080EA55C
mov   r3,0x0                    ; 080EA55E
ldr   r1,=DataPtrs08195DA0      ; 080EA560
lsr   r0,r0,0xE                 ; 080EA562
add   r0,r0,r1                  ; 080EA564
ldr   r4,[r0]                   ; 080EA566
ldr   r6,=0xFFFF                ; 080EA568
ldr   r5,=0x02011002            ; 080EA56A
@@Code080EA56C:
lsl   r0,r3,0x1                 ; 080EA56C
add   r0,r0,r4                  ; 080EA56E
ldrh  r1,[r0]                   ; 080EA570
lsl   r0,r2,0x1                 ; 080EA572
add   r0,r0,r5                  ; 080EA574
strh  r1,[r0]                   ; 080EA576
add   r0,r3,0x1                 ; 080EA578
lsl   r0,r0,0x10                ; 080EA57A
lsr   r3,r0,0x10                ; 080EA57C
add   r0,r2,0x1                 ; 080EA57E
lsl   r0,r0,0x10                ; 080EA580
lsr   r2,r0,0x10                ; 080EA582
cmp   r1,r6                     ; 080EA584
bne   @@Code080EA56C            ; 080EA586
sub   r1,r2,0x1                 ; 080EA588
ldr   r0,=0x02011000            ; 080EA58A
strh  r1,[r0]                   ; 080EA58C
pop   {r4-r6}                   ; 080EA58E
pop   {r0}                      ; 080EA590
bx    r0                        ; 080EA592
.pool                           ; 080EA594

Sub080EA5A4:
push  {lr}                      ; 080EA5A4
ldr   r0,=0x03002200            ; 080EA5A6
ldr   r1,=0x47FA                ; 080EA5A8
add   r0,r0,r1                  ; 080EA5AA
mov   r1,0x0                    ; 080EA5AC
strh  r1,[r0]                   ; 080EA5AE
mov   r0,0x0                    ; 080EA5B0
bl    Sub0804D5BC               ; 080EA5B2
pop   {r0}                      ; 080EA5B6
bx    r0                        ; 080EA5B8
.pool                           ; 080EA5BA

Return080EA5C4:
bx    lr                        ; 080EA5C4
.pool                           ; 080EA5C6

BanditMinigameMain:
; Game state 22: Bandit minigame
push  {r4-r6,lr}                ; 080EA5C8
ldr   r0,=0x03007240            ; 080EA5CA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EA5CC
mov   r1,0xE0                   ; 080EA5CE
lsl   r1,r1,0x1                 ; 080EA5D0
add   r4,r0,r1                  ; 080EA5D2
ldr   r1,=0x2708                ; 080EA5D4
add   r6,r0,r1                  ; 080EA5D6
mov   r1,0x0                    ; 080EA5D8
ldr   r3,=0x03006B63            ; 080EA5DA
mov   r2,0x0                    ; 080EA5DC
@@Code080EA5DE:
add   r0,r1,r3                  ; 080EA5DE
strb  r2,[r0]                   ; 080EA5E0
add   r0,r1,0x1                 ; 080EA5E2
lsl   r0,r0,0x10                ; 080EA5E4
lsr   r1,r0,0x10                ; 080EA5E6
cmp   r1,0x2                    ; 080EA5E8
bls   @@Code080EA5DE            ; 080EA5EA
mov   r5,r4                     ; 080EA5EC
add   r5,0x5C                   ; 080EA5EE
ldrh  r4,[r5]                   ; 080EA5F0
mov   r0,r6                     ; 080EA5F2
bl    Sub080EA850               ; 080EA5F4
cmp   r4,0x0                    ; 080EA5F8
beq   @@Code080EA60C            ; 080EA5FA
mov   r0,0x0                    ; 080EA5FC
bl    Sub080E9DC8               ; 080EA5FE
ldrh  r0,[r5]                   ; 080EA602
cmp   r0,0x0                    ; 080EA604
bne   @@Code080EA60C            ; 080EA606
bl    Return080EA5C4            ; 080EA608
@@Code080EA60C:
ldr   r0,=0x03007240            ; 080EA60C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EA60E
ldr   r1,=0x29C2                ; 080EA610
add   r0,r0,r1                  ; 080EA612
ldrh  r0,[r0]                   ; 080EA614
ldr   r1,=CodePtrs08195DAC      ; 080EA616
lsr   r0,r0,0x1                 ; 080EA618
lsl   r0,r0,0x2                 ; 080EA61A
add   r0,r0,r1                  ; 080EA61C
ldr   r1,[r0]                   ; 080EA61E
mov   r0,r6                     ; 080EA620
bl    Sub_bx_r1                 ; 080EA622  bx r1
pop   {r4-r6}                   ; 080EA626
pop   {r0}                      ; 080EA628
bx    r0                        ; 080EA62A
.pool                           ; 080EA62C

Sub080EA640:
push  {r4-r6,lr}                ; 080EA640
ldr   r6,=DataPtrs08240B28      ; 080EA642
ldr   r0,[r6]                   ; 080EA644
mov   r1,0xC0                   ; 080EA646
lsl   r1,r1,0x13                ; 080EA648
bl    swi_LZ77_VRAM             ; 080EA64A  LZ77 decompress (VRAM)
ldr   r6,=DataPtrs0824ACC8      ; 080EA64E
ldr   r0,[r6]                   ; 080EA650
ldr   r1,=0x06001000            ; 080EA652
bl    swi_LZ77_VRAM             ; 080EA654  LZ77 decompress (VRAM)
ldr   r6,=DataPtrs082272C0      ; 080EA658
ldmia r6!,{r0}                  ; 080EA65A
ldr   r1,=0x06002000            ; 080EA65C
bl    swi_LZ77_VRAM             ; 080EA65E  LZ77 decompress (VRAM)
ldr   r0,[r6]                   ; 080EA662
ldr   r1,=0x06003000            ; 080EA664
bl    swi_LZ77_VRAM             ; 080EA666  LZ77 decompress (VRAM)
ldr   r0,=0x03007240            ; 080EA66A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EA66C
ldr   r1,=0x29C2                ; 080EA66E
add   r0,r0,r1                  ; 080EA670
ldrh  r5,[r0]                   ; 080EA672
lsr   r5,r5,0x1                 ; 080EA674
ldr   r0,=Data08195DDC          ; 080EA676
lsl   r4,r5,0x2                 ; 080EA678
add   r0,r4,r0                  ; 080EA67A
ldr   r6,[r0]                   ; 080EA67C
ldr   r0,[r6]                   ; 080EA67E
ldr   r1,=0x06005000            ; 080EA680
bl    swi_LZ77_VRAM             ; 080EA682  LZ77 decompress (VRAM)
ldr   r0,=Data08195E0C          ; 080EA686
add   r4,r4,r0                  ; 080EA688
ldr   r6,[r4]                   ; 080EA68A
ldr   r0,[r6]                   ; 080EA68C
ldr   r1,=0x06006000            ; 080EA68E
bl    swi_LZ77_VRAM             ; 080EA690  LZ77 decompress (VRAM)
ldr   r6,=Data082741F8          ; 080EA694
ldr   r0,[r6]                   ; 080EA696
ldr   r1,=0x06007000            ; 080EA698
bl    swi_LZ77_VRAM             ; 080EA69A  LZ77 decompress (VRAM)
sub   r6,0x8                    ; 080EA69E
ldr   r0,[r6]                   ; 080EA6A0
ldr   r1,=0x06008000            ; 080EA6A2
bl    swi_LZ77_VRAM             ; 080EA6A4  LZ77 decompress (VRAM)
ldr   r0,=Data08195E3C          ; 080EA6A8
add   r5,r5,r0                  ; 080EA6AA
ldrb  r4,[r5]                   ; 080EA6AC
ldr   r0,=Data082272CC          ; 080EA6AE
ldr   r5,=0x0201FC00            ; 080EA6B0  decompressed graphics buffer
mov   r1,r5                     ; 080EA6B2
bl    swi_LZ77_WRAM             ; 080EA6B4  LZ77 decompress (WRAM)
lsl   r4,r4,0xB                 ; 080EA6B8
add   r4,r4,r5                  ; 080EA6BA
ldr   r1,=0x0600A000            ; 080EA6BC
mov   r2,0x80                   ; 080EA6BE
lsl   r2,r2,0x4                 ; 080EA6C0
mov   r0,r4                     ; 080EA6C2
bl    swi_MemoryCopy4or2        ; 080EA6C4  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=DataPtrs08195E48      ; 080EA6C8
ldr   r0,[r0]                   ; 080EA6CA
ldr   r1,=0x0600B000            ; 080EA6CC
bl    swi_LZ77_VRAM             ; 080EA6CE  LZ77 decompress (VRAM)
bl    Sub080E9EC8               ; 080EA6D2
ldr   r0,=Data082AF690          ; 080EA6D6  global sprite graphics
mov   r1,r5                     ; 080EA6D8
bl    swi_LZ77_WRAM             ; 080EA6DA  LZ77 decompress (WRAM)
ldr   r1,=0x06010000            ; 080EA6DE
mov   r2,0x80                   ; 080EA6E0
lsl   r2,r2,0x3                 ; 080EA6E2
mov   r0,r5                     ; 080EA6E4
bl    swi_MemoryCopy32          ; 080EA6E6  Memory copy/fill, 32-byte blocks
mov   r4,0x0                    ; 080EA6EA
@@Code080EA6EC:
lsl   r1,r4,0xA                 ; 080EA6EC
ldr   r2,=0x02021E00            ; 080EA6EE
add   r0,r1,r2                  ; 080EA6F0
ldr   r2,=0x06010200            ; 080EA6F2
add   r1,r1,r2                  ; 080EA6F4
mov   r2,0x80                   ; 080EA6F6
bl    swi_MemoryCopy32          ; 080EA6F8  Memory copy/fill, 32-byte blocks
add   r0,r4,0x1                 ; 080EA6FC
lsl   r0,r0,0x10                ; 080EA6FE
lsr   r4,r0,0x10                ; 080EA700
cmp   r4,0x7                    ; 080EA702
bls   @@Code080EA6EC            ; 080EA704
ldr   r6,=DataPtrs082BD2F8      ; 080EA706
ldmia r6!,{r0}                  ; 080EA708
ldr   r4,=0x0201FC00            ; 080EA70A  decompressed graphics buffer
mov   r1,r4                     ; 080EA70C
bl    swi_LZ77_WRAM             ; 080EA70E  LZ77 decompress (WRAM)
ldr   r1,=0x06012200            ; 080EA712
mov   r0,r4                     ; 080EA714
mov   r2,0x80                   ; 080EA716
bl    swi_MemoryCopy32          ; 080EA718  Memory copy/fill, 32-byte blocks
ldr   r5,=0x0201FE00            ; 080EA71C
ldr   r1,=0x06012600            ; 080EA71E
mov   r0,r5                     ; 080EA720
mov   r2,0x80                   ; 080EA722
bl    swi_MemoryCopy32          ; 080EA724  Memory copy/fill, 32-byte blocks
ldr   r0,[r6]                   ; 080EA728
mov   r1,r4                     ; 080EA72A
bl    swi_LZ77_WRAM             ; 080EA72C  LZ77 decompress (WRAM)
ldr   r1,=0x06012A00            ; 080EA730
mov   r0,r4                     ; 080EA732
mov   r2,0x80                   ; 080EA734
bl    swi_MemoryCopy32          ; 080EA736  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012E00            ; 080EA73A
mov   r0,r5                     ; 080EA73C
mov   r2,0x80                   ; 080EA73E
bl    swi_MemoryCopy32          ; 080EA740  Memory copy/fill, 32-byte blocks
pop   {r4-r6}                   ; 080EA744
pop   {r0}                      ; 080EA746
bx    r0                        ; 080EA748
.pool                           ; 080EA74A

Return080EA7C8:
bx    lr                        ; 080EA7C8
.pool                           ; 080EA7CA

Return080EA7CC:
bx    lr                        ; 080EA7CC
.pool                           ; 080EA7CE

Return080EA7D0:
bx    lr                        ; 080EA7D0
.pool                           ; 080EA7D2

Return080EA7D4:
bx    lr                        ; 080EA7D4
.pool                           ; 080EA7D6

Sub080EA7D8:
ldr   r0,=0x03007240            ; 080EA7D8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EA7DA
ldr   r1,=0x2990                ; 080EA7DC
add   r2,r0,r1                  ; 080EA7DE
mov   r1,0x0                    ; 080EA7E0
strh  r1,[r2]                   ; 080EA7E2
ldr   r3,=0x2992                ; 080EA7E4
add   r2,r0,r3                  ; 080EA7E6
strh  r1,[r2]                   ; 080EA7E8
add   r3,0x2                    ; 080EA7EA
add   r2,r0,r3                  ; 080EA7EC
strh  r1,[r2]                   ; 080EA7EE
add   r3,0x2                    ; 080EA7F0
add   r2,r0,r3                  ; 080EA7F2
strh  r1,[r2]                   ; 080EA7F4
add   r3,0x2                    ; 080EA7F6
add   r2,r0,r3                  ; 080EA7F8
strh  r1,[r2]                   ; 080EA7FA
add   r3,0x2                    ; 080EA7FC
add   r2,r0,r3                  ; 080EA7FE
strh  r1,[r2]                   ; 080EA800
add   r3,0x2                    ; 080EA802
add   r2,r0,r3                  ; 080EA804
strh  r1,[r2]                   ; 080EA806
add   r3,0x2                    ; 080EA808
add   r2,r0,r3                  ; 080EA80A
strh  r1,[r2]                   ; 080EA80C
add   r3,0x2                    ; 080EA80E
add   r2,r0,r3                  ; 080EA810
strh  r1,[r2]                   ; 080EA812
add   r3,0x2                    ; 080EA814
add   r2,r0,r3                  ; 080EA816
strh  r1,[r2]                   ; 080EA818
add   r3,0x2                    ; 080EA81A
add   r2,r0,r3                  ; 080EA81C
strh  r1,[r2]                   ; 080EA81E
add   r3,0x2                    ; 080EA820
add   r2,r0,r3                  ; 080EA822
strh  r1,[r2]                   ; 080EA824
add   r3,0x2                    ; 080EA826
add   r2,r0,r3                  ; 080EA828
strh  r1,[r2]                   ; 080EA82A
add   r3,0x2                    ; 080EA82C
add   r2,r0,r3                  ; 080EA82E
strh  r1,[r2]                   ; 080EA830
add   r3,0x2                    ; 080EA832
add   r2,r0,r3                  ; 080EA834
strh  r1,[r2]                   ; 080EA836
ldr   r2,=0x29AE                ; 080EA838
add   r0,r0,r2                  ; 080EA83A
strh  r1,[r0]                   ; 080EA83C
bx    lr                        ; 080EA83E
.pool                           ; 080EA840

Sub080EA850:
push  {r4-r7,lr}                ; 080EA850
mov   r7,r10                    ; 080EA852
mov   r6,r9                     ; 080EA854
mov   r5,r8                     ; 080EA856
push  {r5-r7}                   ; 080EA858
ldr   r2,=0x03002200            ; 080EA85A
ldr   r3,=0x47C0                ; 080EA85C
add   r1,r2,r3                  ; 080EA85E
ldrh  r1,[r1]                   ; 080EA860
mov   r12,r1                    ; 080EA862
mov   r3,0x1                    ; 080EA864
mov   r2,r3                     ; 080EA866
mov   r4,r12                    ; 080EA868
and   r2,r4                     ; 080EA86A
lsl   r2,r2,0x7                 ; 080EA86C
mov   r1,0x2                    ; 080EA86E
and   r1,r4                     ; 080EA870
lsl   r1,r1,0x10                ; 080EA872
lsr   r1,r1,0x10                ; 080EA874
lsl   r1,r1,0xE                 ; 080EA876
orr   r2,r1                     ; 080EA878
mov   r7,0x4                    ; 080EA87A
mov   r10,r7                    ; 080EA87C
mov   r1,r10                    ; 080EA87E
and   r1,r4                     ; 080EA880
lsl   r1,r1,0x10                ; 080EA882
lsr   r1,r1,0x10                ; 080EA884
lsl   r1,r1,0xB                 ; 080EA886
orr   r2,r1                     ; 080EA888
mov   r1,0x8                    ; 080EA88A
mov   r9,r1                     ; 080EA88C
and   r1,r4                     ; 080EA88E
lsl   r1,r1,0x10                ; 080EA890
lsr   r1,r1,0x10                ; 080EA892
lsl   r1,r1,0x9                 ; 080EA894
orr   r2,r1                     ; 080EA896
mov   r4,0x10                   ; 080EA898
mov   r8,r4                     ; 080EA89A
mov   r1,r8                     ; 080EA89C
mov   r7,r12                    ; 080EA89E
and   r1,r7                     ; 080EA8A0
lsl   r1,r1,0x10                ; 080EA8A2
lsr   r1,r1,0x10                ; 080EA8A4
lsl   r1,r1,0x4                 ; 080EA8A6
orr   r2,r1                     ; 080EA8A8
mov   r6,0x20                   ; 080EA8AA
mov   r1,r6                     ; 080EA8AC
mov   r4,r12                    ; 080EA8AE
and   r1,r4                     ; 080EA8B0
lsl   r1,r1,0x10                ; 080EA8B2
lsr   r1,r1,0x10                ; 080EA8B4
lsl   r1,r1,0x4                 ; 080EA8B6
orr   r2,r1                     ; 080EA8B8
mov   r5,0x40                   ; 080EA8BA
mov   r1,r5                     ; 080EA8BC
and   r1,r4                     ; 080EA8BE
lsl   r1,r1,0x10                ; 080EA8C0
lsr   r1,r1,0x10                ; 080EA8C2
lsl   r1,r1,0x5                 ; 080EA8C4
orr   r2,r1                     ; 080EA8C6
mov   r4,0x80                   ; 080EA8C8
mov   r1,r4                     ; 080EA8CA
and   r1,r7                     ; 080EA8CC
lsl   r1,r1,0x10                ; 080EA8CE
lsr   r1,r1,0x10                ; 080EA8D0
lsl   r1,r1,0x3                 ; 080EA8D2
orr   r2,r1                     ; 080EA8D4
mov   r1,0x80                   ; 080EA8D6
lsl   r1,r1,0x1                 ; 080EA8D8
and   r1,r7                     ; 080EA8DA
lsl   r1,r1,0x10                ; 080EA8DC
lsr   r1,r1,0x12                ; 080EA8DE
orr   r2,r1                     ; 080EA8E0
mov   r1,0x80                   ; 080EA8E2
lsl   r1,r1,0x2                 ; 080EA8E4
and   r1,r7                     ; 080EA8E6
lsl   r1,r1,0x10                ; 080EA8E8
lsr   r1,r1,0x10                ; 080EA8EA
lsl   r1,r1,0x5                 ; 080EA8EC
orr   r2,r1                     ; 080EA8EE
mov   r1,r0                     ; 080EA8F0
add   r1,0xC2                   ; 080EA8F2
strh  r2,[r1]                   ; 080EA8F4
ldr   r2,=0x03002200            ; 080EA8F6
ldr   r7,=0x47BE                ; 080EA8F8
add   r1,r2,r7                  ; 080EA8FA
ldrh  r1,[r1]                   ; 080EA8FC
and   r3,r1                     ; 080EA8FE
lsl   r3,r3,0x7                 ; 080EA900
mov   r2,0x2                    ; 080EA902
and   r2,r1                     ; 080EA904
lsl   r2,r2,0x10                ; 080EA906
lsr   r2,r2,0x10                ; 080EA908
lsl   r2,r2,0xE                 ; 080EA90A
orr   r3,r2                     ; 080EA90C
mov   r2,r10                    ; 080EA90E
and   r2,r1                     ; 080EA910
lsl   r2,r2,0x10                ; 080EA912
lsr   r2,r2,0x10                ; 080EA914
lsl   r2,r2,0xB                 ; 080EA916
orr   r3,r2                     ; 080EA918
mov   r7,r9                     ; 080EA91A
and   r7,r1                     ; 080EA91C
mov   r2,r7                     ; 080EA91E
lsl   r2,r2,0x10                ; 080EA920
lsr   r2,r2,0x10                ; 080EA922
lsl   r2,r2,0x9                 ; 080EA924
orr   r3,r2                     ; 080EA926
mov   r7,r8                     ; 080EA928
and   r7,r1                     ; 080EA92A
mov   r2,r7                     ; 080EA92C
lsl   r2,r2,0x10                ; 080EA92E
lsr   r2,r2,0x10                ; 080EA930
lsl   r2,r2,0x4                 ; 080EA932
orr   r3,r2                     ; 080EA934
and   r6,r1                     ; 080EA936
lsl   r6,r6,0x10                ; 080EA938
lsr   r6,r6,0x10                ; 080EA93A
lsl   r6,r6,0x4                 ; 080EA93C
orr   r3,r6                     ; 080EA93E
and   r5,r1                     ; 080EA940
lsl   r5,r5,0x10                ; 080EA942
lsr   r5,r5,0x10                ; 080EA944
lsl   r5,r5,0x5                 ; 080EA946
orr   r3,r5                     ; 080EA948
and   r4,r1                     ; 080EA94A
lsl   r4,r4,0x10                ; 080EA94C
lsr   r4,r4,0x10                ; 080EA94E
lsl   r4,r4,0x3                 ; 080EA950
orr   r3,r4                     ; 080EA952
mov   r2,0x80                   ; 080EA954
lsl   r2,r2,0x1                 ; 080EA956
and   r2,r1                     ; 080EA958
lsl   r2,r2,0x10                ; 080EA95A
lsr   r2,r2,0x14                ; 080EA95C
orr   r3,r2                     ; 080EA95E
mov   r2,0x80                   ; 080EA960
lsl   r2,r2,0x2                 ; 080EA962
and   r2,r1                     ; 080EA964
lsl   r1,r2,0x10                ; 080EA966
lsr   r1,r1,0x14                ; 080EA968
orr   r3,r1                     ; 080EA96A
add   r0,0xC4                   ; 080EA96C
strh  r3,[r0]                   ; 080EA96E
pop   {r3-r5}                   ; 080EA970
mov   r8,r3                     ; 080EA972
mov   r9,r4                     ; 080EA974
mov   r10,r5                    ; 080EA976
pop   {r4-r7}                   ; 080EA978
pop   {r0}                      ; 080EA97A
bx    r0                        ; 080EA97C
.pool                           ; 080EA97E

BanditMinigameInit:
; Game state 20: Bandit minigame init
; Not used as a standalone game state, but called directly from state 0A(sublevel load)/35(level select) when transitioning into a Bandit minigame
push  {r4-r7,lr}                ; 080EA98C
mov   r7,r10                    ; 080EA98E
mov   r6,r9                     ; 080EA990
mov   r5,r8                     ; 080EA992
push  {r5-r7}                   ; 080EA994
add   sp,-0xC                   ; 080EA996
bl    Sub08002534               ; 080EA998
ldr   r0,=0x03002200            ; 080EA99C
mov   r8,r0                     ; 080EA99E
ldr   r0,=0x48F6                ; 080EA9A0
add   r0,r8                     ; 080EA9A2
mov   r7,0x0                    ; 080EA9A4
strb  r7,[r0]                   ; 080EA9A6
ldr   r0,=0x48F7                ; 080EA9A8
add   r0,r8                     ; 080EA9AA
strb  r7,[r0]                   ; 080EA9AC
ldr   r1,=0x48F9                ; 080EA9AE
add   r1,r8                     ; 080EA9B0
mov   r0,0x4                    ; 080EA9B2
strb  r0,[r1]                   ; 080EA9B4
bl    Sub08001EFC               ; 080EA9B6
ldr   r0,=0x4A0A                ; 080EA9BA
add   r0,r8                     ; 080EA9BC
strb  r7,[r0]                   ; 080EA9BE
ldr   r0,=0x02011000            ; 080EA9C0
strh  r7,[r0]                   ; 080EA9C2
add   r0,0x2                    ; 080EA9C4
ldr   r1,=0xFFFF                ; 080EA9C6
mov   r6,r1                     ; 080EA9C8
strh  r6,[r0]                   ; 080EA9CA
ldr   r0,=0x48C2                ; 080EA9CC
add   r0,r8                     ; 080EA9CE
strh  r7,[r0]                   ; 080EA9D0
ldr   r5,=0x03007240            ; 080EA9D2  Normal gameplay IWRAM (0300220C)
ldr   r4,[r5]                   ; 080EA9D4
ldr   r2,=0x2708                ; 080EA9D6
add   r2,r2,r4                  ; 080EA9D8
mov   r9,r2                     ; 080EA9DA
mov   r3,0xE0                   ; 080EA9DC
lsl   r3,r3,0x1                 ; 080EA9DE
add   r3,r3,r4                  ; 080EA9E0
mov   r10,r3                    ; 080EA9E2
str   r7,[sp]                   ; 080EA9E4
ldr   r2,=0x05000032            ; 080EA9E6
mov   r0,sp                     ; 080EA9E8
mov   r1,r9                     ; 080EA9EA
bl    swi_MemoryCopy4or2        ; 080EA9EC  Memory copy/fill, 4- or 2-byte blocks
bl    Sub0804C9A4               ; 080EA9F0
bl    Sub08002338               ; 080EA9F4
mov   r0,r9                     ; 080EA9F8
bl    Sub080EA850               ; 080EA9FA
bl    Sub080EA7D8               ; 080EA9FE
ldr   r0,[r5]                   ; 080EAA02
ldr   r1,=0x29BA                ; 080EAA04
add   r0,r0,r1                  ; 080EAA06
strh  r7,[r0]                   ; 080EAA08
ldr   r0,=Data082AF690          ; 080EAA0A  global sprite graphics
ldr   r1,=0x06010000            ; 080EAA0C
bl    swi_LZ77_VRAM             ; 080EAA0E  LZ77 decompress (VRAM)
bl    Sub08013474               ; 080EAA12
bl    Sub080EA640               ; 080EAA16
ldr   r5,=0x03006D80            ; 080EAA1A
ldr   r2,=0x0246                ; 080EAA1C
add   r1,r5,r2                  ; 080EAA1E
ldrh  r0,[r1]                   ; 080EAA20
orr   r0,r6                     ; 080EAA22
strh  r0,[r1]                   ; 080EAA24
mov   r1,r5                     ; 080EAA26
add   r1,0xA2                   ; 080EAA28
mov   r0,0x20                   ; 080EAA2A
strh  r0,[r1]                   ; 080EAA2C
mov   r1,r4                     ; 080EAA2E
add   r1,0x66                   ; 080EAA30
mov   r0,0x80                   ; 080EAA32
lsl   r0,r0,0x7                 ; 080EAA34
strh  r0,[r1]                   ; 080EAA36
add   r4,0x64                   ; 080EAA38
strh  r0,[r4]                   ; 080EAA3A
bl    Sub08013FAC               ; 080EAA3C
ldr   r4,=Data082D497C          ; 080EAA40
ldr   r1,=0x02010700            ; 080EAA42
mov   r0,r4                     ; 080EAA44
mov   r2,0x18                   ; 080EAA46
bl    swi_MemoryCopy32          ; 080EAA48  Memory copy/fill, 32-byte blocks
add   r4,0x60                   ; 080EAA4C
ldr   r1,=0x020107C0            ; 080EAA4E
mov   r0,r4                     ; 080EAA50
mov   r2,0x8                    ; 080EAA52
bl    swi_MemoryCopy32          ; 080EAA54  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02010600            ; 080EAA58
ldr   r1,=0x05000200            ; 080EAA5A
mov   r2,0x80                   ; 080EAA5C
bl    swi_MemoryCopy32          ; 080EAA5E  Memory copy/fill, 32-byte blocks
ldr   r0,=0x48EF                ; 080EAA62
add   r0,r8                     ; 080EAA64
ldrb  r0,[r0]                   ; 080EAA66
cmp   r0,0xFF                   ; 080EAA68
bne   @@Code080EAAD8            ; 080EAA6A
ldr   r0,=0x4896                ; 080EAA6C
add   r0,r8                     ; 080EAA6E
strh  r7,[r0]                   ; 080EAA70
mov   r0,r5                     ; 080EAA72
add   r0,0x92                   ; 080EAA74
strh  r7,[r0]                   ; 080EAA76
b     @@Code080EAAE6            ; 080EAA78
.pool                           ; 080EAA7A

@@Code080EAAD8:
ldr   r0,=0x4896                ; 080EAAD8
add   r0,r8                     ; 080EAADA
ldrh  r0,[r0]                   ; 080EAADC
lsl   r0,r0,0x1                 ; 080EAADE
mov   r1,r5                     ; 080EAAE0
add   r1,0x92                   ; 080EAAE2
strh  r0,[r1]                   ; 080EAAE4
@@Code080EAAE6:
bl    Sub08054074               ; 080EAAE6
mov   r0,0x1F                   ; 080EAAEA  1F: Bonus room/Super Baby
bl    Sub0812C3B4               ; 080EAAEC  Change music (YI)
ldr   r5,=0x03007240            ; 080EAAF0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]                   ; 080EAAF2
ldr   r4,=0x29C2                ; 080EAAF4
add   r0,r0,r4                  ; 080EAAF6
ldrh  r6,[r0]                   ; 080EAAF8
ldr   r1,=CodePtrs08195E54      ; 080EAAFA
lsr   r0,r6,0x1                 ; 080EAAFC
lsl   r0,r0,0x2                 ; 080EAAFE
add   r0,r0,r1                  ; 080EAB00
ldr   r1,[r0]                   ; 080EAB02
mov   r0,r9                     ; 080EAB04
bl    Sub_bx_r1                 ; 080EAB06  bx r1
ldr   r2,=0x03006D80            ; 080EAB0A
mov   r0,0xD5                   ; 080EAB0C
lsl   r0,r0,0x1                 ; 080EAB0E
add   r3,r2,r0                  ; 080EAB10
mov   r1,0x0                    ; 080EAB12
mov   r0,0x80                   ; 080EAB14
lsl   r0,r0,0x8                 ; 080EAB16  8000
strh  r0,[r3]                   ; 080EAB18
mov   r3,0x92                   ; 080EAB1A
lsl   r3,r3,0x2                 ; 080EAB1C  248
add   r0,r2,r3                  ; 080EAB1E
strh  r1,[r0]                   ; 080EAB20
mov   r2,r9                     ; 080EAB22  03004914
ldrh  r0,[r2,0x28]              ; 080EAB24
add   r0,0x1                    ; 080EAB26  increment 0300493C
strh  r0,[r2,0x28]              ; 080EAB28
ldr   r0,[r5]                   ; 080EAB2A
add   r0,r0,r4                  ; 080EAB2C  [03007240]+29C2 (03004BCE)
ldrh  r0,[r0]                   ; 080EAB2E  Bandit minigame index *2
lsr   r4,r0,0x1                 ; 080EAB30
ldr   r3,=0x0121                ; 080EAB32
add   r4,r4,r3                  ; 080EAB34  121 + Bandit minigame index
mov   r0,r10                    ; 080EAB36
strh  r4,[r0,0xC]               ; 080EAB38  set message ID
ldr   r2,=0x03002200            ; 080EAB3A
ldr   r3,=0x4852                ; 080EAB3C
add   r0,r2,r3                  ; 080EAB3E  03006A52
strh  r1,[r0]                   ; 080EAB40
mov   r1,r10                    ; 080EAB42
add   r1,0x5C                   ; 080EAB44
ldrh  r0,[r1]                   ; 080EAB46
add   r0,0x1                    ; 080EAB48
strh  r0,[r1]                   ; 080EAB4A
ldr   r0,=0x4905                ; 080EAB4C
add   r1,r2,r0                  ; 080EAB4E
mov   r0,0x21                   ; 080EAB50
strb  r0,[r1]                   ; 080EAB52
add   r3,0xA9                   ; 080EAB54
add   r1,r2,r3                  ; 080EAB56
mov   r0,0x1                    ; 080EAB58
strb  r0,[r1]                   ; 080EAB5A
ldr   r1,=0x4A14                ; 080EAB5C
add   r0,r2,r1                  ; 080EAB5E
ldrb  r4,[r0]                   ; 080EAB60
ldr   r1,=Data08195E84          ; 080EAB62
lsl   r0,r4,0x1                 ; 080EAB64
add   r0,r0,r1                  ; 080EAB66
ldrh  r0,[r0]                   ; 080EAB68
lsr   r0,r0,0x2                 ; 080EAB6A
lsl   r0,r0,0x2                 ; 080EAB6C
ldr   r1,=Data0819F2D8          ; 080EAB6E
add   r0,r0,r1                  ; 080EAB70
mov   r9,r0                     ; 080EAB72
mov   r4,0x0                    ; 080EAB74
add   r3,sp,0x4                 ; 080EAB76
mov   r10,r3                    ; 080EAB78
mov   r0,sp                     ; 080EAB7A
add   r0,0x6                    ; 080EAB7C
str   r0,[sp,0x8]               ; 080EAB7E
mov   r5,r2                     ; 080EAB80
mov   r8,r4                     ; 080EAB82
@@Code080EAB84:
ldr   r1,=0x47F4                ; 080EAB84
add   r7,r5,r1                  ; 080EAB86
mov   r2,r8                     ; 080EAB88
strh  r2,[r7]                   ; 080EAB8A
ldr   r3,=0x47F6                ; 080EAB8C
add   r0,r5,r3                  ; 080EAB8E
strh  r2,[r0]                   ; 080EAB90
add   r1,0x4                    ; 080EAB92
add   r0,r5,r1                  ; 080EAB94
strh  r4,[r0]                   ; 080EAB96
mov   r0,0x80                   ; 080EAB98
lsl   r0,r0,0x1                 ; 080EAB9A
ldr   r2,=0x030069FA            ; 080EAB9C
strh  r0,[r2]                   ; 080EAB9E
mov   r0,r9                     ; 080EABA0
bl    Sub080EB0F8               ; 080EABA2
lsr   r0,r4,0x2                 ; 080EABA6
lsl   r0,r0,0x19                ; 080EABA8
lsr   r6,r0,0x10                ; 080EABAA
ldr   r3,=0x0201FC00            ; 080EABAC  decompressed graphics buffer
add   r1,r6,r3                  ; 080EABAE
ldr   r0,=0x02011400            ; 080EABB0
mov   r2,0x40                   ; 080EABB2
bl    swi_MemoryCopy4or2        ; 080EABB4  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x0201FC80            ; 080EABB8
add   r1,r6,r0                  ; 080EABBA
ldr   r0,=0x02011480            ; 080EABBC
mov   r2,0x40                   ; 080EABBE
bl    swi_MemoryCopy4or2        ; 080EABC0  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x0201FD00            ; 080EABC4
add   r1,r6,r2                  ; 080EABC6
ldr   r0,=0x02011500            ; 080EABC8
mov   r2,0x40                   ; 080EABCA
bl    swi_MemoryCopy4or2        ; 080EABCC  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x0201FD80            ; 080EABD0
add   r1,r6,r3                  ; 080EABD2
ldr   r0,=0x02011580            ; 080EABD4
mov   r2,0x40                   ; 080EABD6
bl    swi_MemoryCopy4or2        ; 080EABD8  Memory copy/fill, 4- or 2-byte blocks
add   r0,r4,0x4                 ; 080EABDC
lsl   r0,r0,0x10                ; 080EABDE
lsr   r4,r0,0x10                ; 080EABE0
cmp   r4,0xFF                   ; 080EABE2
bls   @@Code080EAB84            ; 080EABE4
ldr   r1,=0x01FF                ; 080EABE6
mov   r0,r1                     ; 080EABE8
mov   r2,r10                    ; 080EABEA
strh  r0,[r2]                   ; 080EABEC
ldr   r1,=0x0600D000            ; 080EABEE
ldr   r4,=0x01000800            ; 080EABF0
mov   r0,r10                    ; 080EABF2
mov   r2,r4                     ; 080EABF4
bl    swi_MemoryCopy4or2        ; 080EABF6  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0xFF                   ; 080EABFA
ldr   r3,[sp,0x8]               ; 080EABFC
strh  r0,[r3]                   ; 080EABFE
ldr   r1,=0x0600F000            ; 080EAC00
ldr   r0,[sp,0x8]               ; 080EAC02
mov   r2,r4                     ; 080EAC04
bl    swi_MemoryCopy4or2        ; 080EAC06  Memory copy/fill, 4- or 2-byte blocks
mov   r1,r7                     ; 080EAC0A
sub   r1,0x2A                   ; 080EAC0C
ldr   r0,=0x7402                ; 080EAC0E
strh  r0,[r1]                   ; 080EAC10
add   r1,0x2                    ; 080EAC12
ldr   r0,=0x7603                ; 080EAC14
strh  r0,[r1]                   ; 080EAC16
add   r1,0x2                    ; 080EAC18
ldr   r0,=0x7A04                ; 080EAC1A
strh  r0,[r1]                   ; 080EAC1C
sub   r1,0x6                    ; 080EAC1E
ldr   r0,=0x7E01                ; 080EAC20
strh  r0,[r1]                   ; 080EAC22
sub   r1,0x2                    ; 080EAC24
add   r0,0xFF                   ; 080EAC26
strh  r0,[r1]                   ; 080EAC28
ldr   r1,=0x04000200            ; 080EAC2A
ldr   r2,=0x2007                ; 080EAC2C
mov   r0,r2                     ; 080EAC2E
strh  r0,[r1]                   ; 080EAC30
ldr   r1,=0x04000004            ; 080EAC32
mov   r0,0x8                    ; 080EAC34
strh  r0,[r1]                   ; 080EAC36
ldr   r1,=0x04000208            ; 080EAC38
mov   r0,0x1                    ; 080EAC3A
strh  r0,[r1]                   ; 080EAC3C
add   sp,0xC                    ; 080EAC3E
pop   {r3-r5}                   ; 080EAC40
mov   r8,r3                     ; 080EAC42
mov   r9,r4                     ; 080EAC44
mov   r10,r5                    ; 080EAC46
pop   {r4-r7}                   ; 080EAC48
pop   {r0}                      ; 080EAC4A
bx    r0                        ; 080EAC4C
.pool                           ; 080EAC4E

Sub080EACDC:
push  {lr}                      ; 080EACDC
ldr   r0,=0x03002200            ; 080EACDE
ldr   r1,=0x4901                ; 080EACE0
add   r0,r0,r1                  ; 080EACE2
ldrb  r1,[r0]                   ; 080EACE4
mov   r0,0x1                    ; 080EACE6
and   r0,r1                     ; 080EACE8
cmp   r0,0x0                    ; 080EACEA
beq   @@Code080EAD10            ; 080EACEC
ldr   r1,=0x04000018            ; 080EACEE
ldr   r0,=0x04000006            ; 080EACF0
ldrh  r0,[r0]                   ; 080EACF2
lsl   r0,r0,0x1                 ; 080EACF4
ldr   r2,=0x02027D10            ; 080EACF6
b     @@Code080EAD1A            ; 080EACF8
.pool                           ; 080EACFA

@@Code080EAD10:
ldr   r1,=0x04000018            ; 080EAD10
ldr   r0,=0x04000006            ; 080EAD12
ldrh  r0,[r0]                   ; 080EAD14
lsl   r0,r0,0x1                 ; 080EAD16
ldr   r2,=0x02027F94            ; 080EAD18
@@Code080EAD1A:
add   r0,r0,r2                  ; 080EAD1A
ldrh  r0,[r0]                   ; 080EAD1C
strh  r0,[r1]                   ; 080EAD1E
ldr   r1,=0x04000202            ; 080EAD20
mov   r0,0x2                    ; 080EAD22
strh  r0,[r1]                   ; 080EAD24
pop   {r0}                      ; 080EAD26
bx    r0                        ; 080EAD28
.pool                           ; 080EAD2A

bx    lr                        ; 080EAD3C
.pool                           ; 080EAD3E

Return080EAD40:
bx    lr                        ; 080EAD40
.pool                           ; 080EAD42

Sub080EAD44:
push  {r4-r7,lr}                ; 080EAD44
mov   r7,r10                    ; 080EAD46
mov   r6,r9                     ; 080EAD48
mov   r5,r8                     ; 080EAD4A
push  {r5-r7}                   ; 080EAD4C
add   sp,-0x24                  ; 080EAD4E
str   r0,[sp]                   ; 080EAD50
ldr   r1,=0x03002200            ; 080EAD52
ldr   r2,=0x4818                ; 080EAD54
add   r0,r1,r2                  ; 080EAD56
ldrh  r0,[r0]                   ; 080EAD58
str   r0,[sp,0x8]               ; 080EAD5A
mov   r3,0xF                    ; 080EAD5C
str   r3,[sp,0xC]               ; 080EAD5E
ldr   r4,=0x4806                ; 080EAD60
add   r2,r1,r4                  ; 080EAD62
mov   r0,0x0                    ; 080EAD64
strh  r0,[r2]                   ; 080EAD66
ldr   r3,=0x480C                ; 080EAD68
add   r0,r1,r3                  ; 080EAD6A
mov   r4,sp                     ; 080EAD6C
ldrh  r4,[r4,0xC]               ; 080EAD6E
strh  r4,[r0]                   ; 080EAD70
@@Code080EAD72:
ldr   r1,=0x03006A06            ; 080EAD72
ldrh  r0,[r1]                   ; 080EAD74
cmp   r0,0xFF                   ; 080EAD76
bls   @@Code080EAD7C            ; 080EAD78
b     @@Code080EAED8            ; 080EAD7A
@@Code080EAD7C:
ldr   r0,[sp,0xC]               ; 080EAD7C
mov   r2,0x7                    ; 080EAD7E
and   r0,r2                     ; 080EAD80
lsr   r0,r0,0x1                 ; 080EAD82
str   r0,[sp,0x14]              ; 080EAD84
@@Code080EAD86:
ldr   r3,=0x03006A1E            ; 080EAD86
ldrh  r0,[r3]                   ; 080EAD88
ldr   r4,=0x03006A0E            ; 080EAD8A
ldrh  r4,[r4]                   ; 080EAD8C
add   r1,r0,r4                  ; 080EAD8E
ldr   r0,=0x03006A0E            ; 080EAD90
strh  r1,[r0]                   ; 080EAD92
ldr   r2,=0x03002200            ; 080EAD94
ldr   r3,=0x480A                ; 080EAD96
add   r0,r2,r3                  ; 080EAD98
ldrh  r7,[r0]                   ; 080EAD9A
mov   r0,r7                     ; 080EAD9C
mov   r4,0x80                   ; 080EAD9E
lsl   r4,r4,0x8                 ; 080EADA0
and   r0,r4                     ; 080EADA2
cmp   r0,0x0                    ; 080EADA4
beq   @@Code080EADAC            ; 080EADA6
ldr   r0,=0xFFFF0000            ; 080EADA8
orr   r7,r0                     ; 080EADAA
@@Code080EADAC:
mov   r2,0xFF                   ; 080EADAC
and   r1,r2                     ; 080EADAE
lsl   r4,r1,0x8                 ; 080EADB0
mov   r0,r4                     ; 080EADB2
mov   r3,0x80                   ; 080EADB4
lsl   r3,r3,0x8                 ; 080EADB6
and   r0,r3                     ; 080EADB8
cmp   r0,0x0                    ; 080EADBA
beq   @@Code080EADC2            ; 080EADBC
ldr   r0,=0xFFFF0000            ; 080EADBE
orr   r4,r0                     ; 080EADC0
@@Code080EADC2:
mov   r0,r4                     ; 080EADC2
mul   r0,r7                     ; 080EADC4
lsr   r4,r0,0x10                ; 080EADC6
mov   r0,r4                     ; 080EADC8
mov   r1,0x80                   ; 080EADCA
lsl   r1,r1,0x8                 ; 080EADCC
and   r0,r1                     ; 080EADCE
cmp   r0,0x0                    ; 080EADD0
beq   @@Code080EADD8            ; 080EADD2
ldr   r2,=0xFFFF0000            ; 080EADD4
orr   r4,r2                     ; 080EADD6
@@Code080EADD8:
ldr   r3,=0x03002200            ; 080EADD8
ldr   r1,=0x47FE                ; 080EADDA
add   r0,r3,r1                  ; 080EADDC
ldrh  r0,[r0]                   ; 080EADDE
add   r4,r4,r0                  ; 080EADE0
ldr   r2,=0x481A                ; 080EADE2
add   r0,r3,r2                  ; 080EADE4
ldrh  r0,[r0]                   ; 080EADE6
add   r0,r0,r4                  ; 080EADE8
mov   r8,r0                     ; 080EADEA
add   r4,0x1                    ; 080EADEC
lsl   r0,r4,0x2                 ; 080EADEE
ldr   r3,=Data081AF2CC          ; 080EADF0
add   r0,r0,r3                  ; 080EADF2
ldrh  r4,[r0]                   ; 080EADF4
lsr   r4,r4,0x3                 ; 080EADF6
str   r4,[sp,0x4]               ; 080EADF8
mov   r4,0x0                    ; 080EADFA
mov   r12,r4                    ; 080EADFC
mov   r0,0x1F                   ; 080EADFE
str   r0,[sp,0x10]              ; 080EAE00
ldr   r1,[sp,0xC]               ; 080EAE02
lsr   r0,r1,0x3                 ; 080EAE04
lsl   r0,r0,0x5                 ; 080EAE06
ldr   r2,[sp,0x14]              ; 080EAE08
add   r4,r0,r2                  ; 080EAE0A
mov   r7,0x1F                   ; 080EAE0C
mov   r0,0x1                    ; 080EAE0E
mov   r3,r1                     ; 080EAE10
and   r3,r0                     ; 080EAE12
str   r3,[sp,0x18]              ; 080EAE14
ldr   r1,[sp,0x8]               ; 080EAE16
mov   r2,r1                     ; 080EAE18
and   r2,r0                     ; 080EAE1A
str   r2,[sp,0x1C]              ; 080EAE1C
lsr   r3,r1,0x3                 ; 080EAE1E
str   r3,[sp,0x20]              ; 080EAE20
@@Code080EAE22:
ldr   r0,[sp,0x10]              ; 080EAE22
lsr   r1,r0,0x3                 ; 080EAE24
mov   r2,0x7                    ; 080EAE26
and   r0,r2                     ; 080EAE28
lsl   r0,r0,0x2                 ; 080EAE2A
lsl   r1,r1,0xA                 ; 080EAE2C
ldr   r3,[sp]                   ; 080EAE2E
add   r1,r1,r3                  ; 080EAE30
add   r0,r0,r1                  ; 080EAE32
add   r0,r0,r4                  ; 080EAE34
ldrb  r3,[r0]                   ; 080EAE36
ldr   r0,[sp,0x18]              ; 080EAE38
cmp   r0,0x0                    ; 080EAE3A
beq   @@Code080EAE40            ; 080EAE3C
lsr   r3,r3,0x4                 ; 080EAE3E
@@Code080EAE40:
mov   r0,0xF                    ; 080EAE40
and   r3,r0                     ; 080EAE42
ldr   r1,[sp,0x1C]              ; 080EAE44
cmp   r1,0x0                    ; 080EAE46
beq   @@Code080EAE4C            ; 080EAE48
lsl   r3,r3,0x4                 ; 080EAE4A
@@Code080EAE4C:
mov   r2,r12                    ; 080EAE4C
cmp   r2,0xFF                   ; 080EAE4E
bhi   @@Code080EAE94            ; 080EAE50
mov   r0,0x7                    ; 080EAE52
mov   r9,r0                     ; 080EAE54
ldr   r0,[sp,0x8]               ; 080EAE56
mov   r1,r9                     ; 080EAE58
and   r0,r1                     ; 080EAE5A
lsr   r6,r0,0x1                 ; 080EAE5C
ldr   r2,[sp,0x20]              ; 080EAE5E
lsl   r5,r2,0x5                 ; 080EAE60
ldr   r0,=0x02011400            ; 080EAE62
mov   r10,r0                    ; 080EAE64
@@Code080EAE66:
mov   r2,r8                     ; 080EAE66
lsr   r1,r2,0x3                 ; 080EAE68
mov   r0,r8                     ; 080EAE6A
mov   r2,r9                     ; 080EAE6C
and   r0,r2                     ; 080EAE6E
lsl   r1,r1,0x7                 ; 080EAE70
lsl   r0,r0,0x2                 ; 080EAE72
add   r1,r1,r0                  ; 080EAE74
add   r1,r5,r1                  ; 080EAE76
add   r1,r1,r6                  ; 080EAE78
add   r1,r10                    ; 080EAE7A
ldrb  r2,[r1]                   ; 080EAE7C
mov   r0,r3                     ; 080EAE7E
orr   r0,r2                     ; 080EAE80
strb  r0,[r1]                   ; 080EAE82
mov   r0,0x1                    ; 080EAE84
neg   r0,r0                     ; 080EAE86
add   r8,r0                     ; 080EAE88
ldr   r1,[sp,0x4]               ; 080EAE8A
add   r12,r1                    ; 080EAE8C
mov   r2,r12                    ; 080EAE8E
cmp   r2,0xFF                   ; 080EAE90
bls   @@Code080EAE66            ; 080EAE92
@@Code080EAE94:
mov   r3,r12                    ; 080EAE94
lsr   r1,r3,0x8                 ; 080EAE96
ldr   r2,[sp,0x10]              ; 080EAE98
sub   r0,r2,r1                  ; 080EAE9A
lsl   r0,r0,0x10                ; 080EAE9C
lsr   r0,r0,0x10                ; 080EAE9E
str   r0,[sp,0x10]              ; 080EAEA0
sub   r7,r7,r1                  ; 080EAEA2
mov   r0,0xFF                   ; 080EAEA4
and   r3,r0                     ; 080EAEA6
mov   r12,r3                    ; 080EAEA8
cmp   r7,0x1F                   ; 080EAEAA
bls   @@Code080EAE22            ; 080EAEAC
ldr   r1,=0x03006A1E            ; 080EAEAE
ldrh  r0,[r1]                   ; 080EAEB0
ldr   r2,[sp,0x8]               ; 080EAEB2
add   r0,r2,r0                  ; 080EAEB4
lsl   r0,r0,0x10                ; 080EAEB6
lsr   r0,r0,0x10                ; 080EAEB8
str   r0,[sp,0x8]               ; 080EAEBA
ldr   r3,=0x03002200            ; 080EAEBC
ldr   r4,=0x4808                ; 080EAEBE
add   r0,r3,r4                  ; 080EAEC0
ldrh  r0,[r0]                   ; 080EAEC2
ldr   r1,=0x03006A06            ; 080EAEC4
ldrh  r1,[r1]                   ; 080EAEC6
add   r0,r0,r1                  ; 080EAEC8
ldr   r2,=0x03006A06            ; 080EAECA
strh  r0,[r2]                   ; 080EAECC
lsl   r0,r0,0x10                ; 080EAECE
lsr   r0,r0,0x10                ; 080EAED0
cmp   r0,0xFF                   ; 080EAED2
bhi   @@Code080EAED8            ; 080EAED4
b     @@Code080EAD86            ; 080EAED6
@@Code080EAED8:
ldr   r3,=0x03006A06            ; 080EAED8
ldrh  r0,[r3]                   ; 080EAEDA
lsr   r4,r0,0x8                 ; 080EAEDC
ldr   r1,=0x03002200            ; 080EAEDE
ldr   r2,=0x481C                ; 080EAEE0
add   r0,r1,r2                  ; 080EAEE2
ldrh  r0,[r0]                   ; 080EAEE4
cmp   r0,0x0                    ; 080EAEE6
beq   @@Code080EAF2C            ; 080EAEE8
ldr   r3,[sp,0xC]               ; 080EAEEA
add   r0,r3,r4                  ; 080EAEEC
b     @@Code080EAF30            ; 080EAEEE
.pool                           ; 080EAEF0

@@Code080EAF2C:
ldr   r1,[sp,0xC]               ; 080EAF2C
sub   r0,r1,r4                  ; 080EAF2E
@@Code080EAF30:
lsl   r0,r0,0x10                ; 080EAF30
lsr   r0,r0,0x10                ; 080EAF32
str   r0,[sp,0xC]               ; 080EAF34
ldr   r2,=0x03006A0C            ; 080EAF36
ldrh  r0,[r2]                   ; 080EAF38
sub   r0,r0,r4                  ; 080EAF3A
strh  r0,[r2]                   ; 080EAF3C
ldr   r3,=0x03006A06            ; 080EAF3E
ldrh  r2,[r3]                   ; 080EAF40
mov   r1,0xFF                   ; 080EAF42
and   r1,r2                     ; 080EAF44
strh  r1,[r3]                   ; 080EAF46
lsl   r0,r0,0x10                ; 080EAF48
lsr   r0,r0,0x10                ; 080EAF4A
cmp   r0,0xF                    ; 080EAF4C
bhi   @@Code080EAF52            ; 080EAF4E
b     @@Code080EAD72            ; 080EAF50
@@Code080EAF52:
add   sp,0x24                   ; 080EAF52
pop   {r3-r5}                   ; 080EAF54
mov   r8,r3                     ; 080EAF56
mov   r9,r4                     ; 080EAF58
mov   r10,r5                    ; 080EAF5A
pop   {r4-r7}                   ; 080EAF5C
pop   {r0}                      ; 080EAF5E
bx    r0                        ; 080EAF60
.pool                           ; 080EAF62

Sub080EAF6C:
push  {r4-r7,lr}                ; 080EAF6C
mov   r7,r10                    ; 080EAF6E
mov   r6,r9                     ; 080EAF70
mov   r5,r8                     ; 080EAF72
push  {r5-r7}                   ; 080EAF74
add   sp,-0x8                   ; 080EAF76
str   r0,[sp,0x4]               ; 080EAF78
mov   r0,0x0                    ; 080EAF7A
str   r0,[sp]                   ; 080EAF7C
ldr   r1,=0x02011400            ; 080EAF7E
ldr   r2,=0x05000080            ; 080EAF80
mov   r0,sp                     ; 080EAF82
bl    swi_MemoryCopy4or2        ; 080EAF84  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x03002200            ; 080EAF88
ldr   r0,=0x4818                ; 080EAF8A
add   r1,r3,r0                  ; 080EAF8C
ldrh  r0,[r1]                   ; 080EAF8E
add   r0,0x10                   ; 080EAF90
strh  r0,[r1]                   ; 080EAF92
ldr   r2,=0x481A                ; 080EAF94
add   r1,r3,r2                  ; 080EAF96
ldrh  r0,[r1]                   ; 080EAF98
add   r0,0x10                   ; 080EAF9A
strh  r0,[r1]                   ; 080EAF9C
ldr   r1,=Data08195EBC          ; 080EAF9E
ldr   r6,=0x4806                ; 080EAFA0
add   r0,r3,r6                  ; 080EAFA2
ldrh  r0,[r0]                   ; 080EAFA4
lsl   r0,r0,0x1                 ; 080EAFA6
add   r0,r0,r1                  ; 080EAFA8
ldrh  r0,[r0]                   ; 080EAFAA
ldr   r1,=0x03006A1C            ; 080EAFAC
strh  r0,[r1]                   ; 080EAFAE
sub   r2,0x20                   ; 080EAFB0
add   r2,r2,r3                  ; 080EAFB2
mov   r8,r2                     ; 080EAFB4
ldrh  r1,[r2]                   ; 080EAFB6
mov   r5,0x80                   ; 080EAFB8
lsl   r5,r5,0x8                 ; 080EAFBA
mov   r0,r1                     ; 080EAFBC
and   r0,r5                     ; 080EAFBE
cmp   r0,0x0                    ; 080EAFC0
beq   @@Code080EAFC8            ; 080EAFC2
ldr   r0,=0xFFFF0000            ; 080EAFC4
orr   r1,r0                     ; 080EAFC6
@@Code080EAFC8:
ldr   r6,=0x4802                ; 080EAFC8
add   r4,r3,r6                  ; 080EAFCA
ldrh  r2,[r4]                   ; 080EAFCC
mov   r0,r2                     ; 080EAFCE
and   r0,r5                     ; 080EAFD0
cmp   r0,0x0                    ; 080EAFD2
beq   @@Code080EAFDA            ; 080EAFD4
ldr   r0,=0xFFFF0000            ; 080EAFD6
orr   r2,r0                     ; 080EAFD8
@@Code080EAFDA:
sub   r1,r2,r1                  ; 080EAFDA
ldr   r7,=Data081AF2CC          ; 080EAFDC
lsl   r0,r1,0x1                 ; 080EAFDE
add   r0,r0,r7                  ; 080EAFE0
ldrh  r2,[r0]                   ; 080EAFE2
ldr   r1,=0x4804                ; 080EAFE4
add   r0,r3,r1                  ; 080EAFE6
ldrh  r1,[r0]                   ; 080EAFE8
ldr   r6,=0x47FE                ; 080EAFEA
add   r0,r3,r6                  ; 080EAFEC
ldrh  r0,[r0]                   ; 080EAFEE
sub   r1,r1,r0                  ; 080EAFF0
mov   r0,0xFF                   ; 080EAFF2
and   r0,r1                     ; 080EAFF4
lsl   r1,r0,0x8                 ; 080EAFF6
mov   r0,r1                     ; 080EAFF8
and   r0,r5                     ; 080EAFFA
cmp   r0,0x0                    ; 080EAFFC
beq   @@Code080EB004            ; 080EAFFE
ldr   r0,=0xFFFF0000            ; 080EB000
orr   r1,r0                     ; 080EB002
@@Code080EB004:
mul   r1,r2                     ; 080EB004
lsr   r1,r1,0x10                ; 080EB006
ldr   r2,=0x480A                ; 080EB008
add   r0,r3,r2                  ; 080EB00A
strh  r1,[r0]                   ; 080EB00C
ldrh  r1,[r4]                   ; 080EB00E
mov   r0,r1                     ; 080EB010
and   r0,r5                     ; 080EB012
cmp   r0,0x0                    ; 080EB014
beq   @@Code080EB01C            ; 080EB016
ldr   r0,=0xFFFF0000            ; 080EB018
orr   r1,r0                     ; 080EB01A
@@Code080EB01C:
add   r1,0x1                    ; 080EB01C
lsl   r0,r1,0x1                 ; 080EB01E
add   r0,r0,r7                  ; 080EB020
ldrh  r1,[r0]                   ; 080EB022
lsr   r0,r1,0x4                 ; 080EB024
ldr   r6,=0x4808                ; 080EB026
add   r6,r6,r3                  ; 080EB028
mov   r10,r6                    ; 080EB02A
strh  r0,[r6]                   ; 080EB02C
mov   r0,r8                     ; 080EB02E
ldrh  r1,[r0]                   ; 080EB030
mvn   r1,r1                     ; 080EB032
ldr   r2,=0x480E                ; 080EB034
add   r2,r2,r3                  ; 080EB036
mov   r9,r2                     ; 080EB038
strh  r1,[r2]                   ; 080EB03A
ldr   r6,=0x481E                ; 080EB03C
add   r4,r3,r6                  ; 080EB03E
mov   r0,0x1                    ; 080EB040
strh  r0,[r4]                   ; 080EB042
ldr   r0,=0x4822                ; 080EB044
add   r6,r3,r0                  ; 080EB046
strh  r1,[r6]                   ; 080EB048
ldr   r0,[sp,0x4]               ; 080EB04A
bl    Sub080EAD44               ; 080EB04C
mov   r1,r8                     ; 080EB050
ldrh  r0,[r1]                   ; 080EB052
ldr   r2,=0xFFFF                ; 080EB054
mov   r1,r2                     ; 080EB056
bic   r1,r0                     ; 080EB058
mov   r0,r1                     ; 080EB05A
and   r0,r5                     ; 080EB05C
cmp   r0,0x0                    ; 080EB05E
beq   @@Code080EB066            ; 080EB060
ldr   r0,=0xFFFF0000            ; 080EB062
orr   r1,r0                     ; 080EB064
@@Code080EB066:
cmp   r1,0x0                    ; 080EB066
bge   @@Code080EB06C            ; 080EB068
add   r1,0x1                    ; 080EB06A
@@Code080EB06C:
lsl   r0,r1,0x1                 ; 080EB06C
add   r0,r0,r7                  ; 080EB06E
ldrh  r1,[r0]                   ; 080EB070
lsr   r0,r1,0x4                 ; 080EB072
mov   r1,r10                    ; 080EB074
strh  r0,[r1]                   ; 080EB076
ldrh  r0,[r6]                   ; 080EB078
add   r0,0x1                    ; 080EB07A
mov   r6,r9                     ; 080EB07C
strh  r0,[r6]                   ; 080EB07E
ldrh  r1,[r4]                   ; 080EB080
mov   r0,r2                     ; 080EB082
orr   r0,r1                     ; 080EB084
strh  r0,[r4]                   ; 080EB086
ldr   r1,=0x03006A1C            ; 080EB088
ldrh  r0,[r1]                   ; 080EB08A
mov   r1,0x1                    ; 080EB08C
eor   r0,r1                     ; 080EB08E
ldr   r2,=0x03006A1C            ; 080EB090
strh  r0,[r2]                   ; 080EB092
ldr   r0,[sp,0x4]               ; 080EB094
bl    Sub080EAD44               ; 080EB096
add   sp,0x8                    ; 080EB09A
pop   {r3-r5}                   ; 080EB09C
mov   r8,r3                     ; 080EB09E
mov   r9,r4                     ; 080EB0A0
mov   r10,r5                    ; 080EB0A2
pop   {r4-r7}                   ; 080EB0A4
pop   {r0}                      ; 080EB0A6
bx    r0                        ; 080EB0A8
.pool                           ; 080EB0AA

Sub080EB0F8:
push  {r4-r7,lr}                ; 080EB0F8
mov   r7,r10                    ; 080EB0FA
mov   r6,r9                     ; 080EB0FC
mov   r5,r8                     ; 080EB0FE
push  {r5-r7}                   ; 080EB100
add   sp,-0x8                   ; 080EB102
str   r0,[sp]                   ; 080EB104
ldr   r5,=0x03002200            ; 080EB106
ldr   r1,=0x47F4                ; 080EB108
add   r0,r5,r1                  ; 080EB10A
ldrh  r1,[r0]                   ; 080EB10C
ldr   r2,=0x4818                ; 080EB10E
add   r0,r5,r2                  ; 080EB110
strh  r1,[r0]                   ; 080EB112
ldr   r7,=0x47F6                ; 080EB114
add   r0,r5,r7                  ; 080EB116
ldrh  r1,[r0]                   ; 080EB118
add   r2,0x2                    ; 080EB11A
add   r0,r5,r2                  ; 080EB11C
strh  r1,[r0]                   ; 080EB11E
ldr   r7,=Data081AF2CC          ; 080EB120
mov   r10,r7                    ; 080EB122
ldr   r0,=0x47FA                ; 080EB124
add   r0,r0,r5                  ; 080EB126
mov   r9,r0                     ; 080EB128
ldrh  r0,[r0]                   ; 080EB12A
lsl   r0,r0,0x1                 ; 080EB12C
add   r0,r10                    ; 080EB12E
ldrh  r1,[r0]                   ; 080EB130
lsl   r0,r1,0x1                 ; 080EB132
add   r0,r0,r1                  ; 080EB134
lsr   r0,r0,0x4                 ; 080EB136
str   r0,[sp,0x4]               ; 080EB138
ldr   r3,=Data081AF6CE          ; 080EB13A
ldr   r1,=0x47F8                ; 080EB13C
add   r0,r5,r1                  ; 080EB13E
ldrh  r0,[r0]                   ; 080EB140
lsl   r2,r0,0x1                 ; 080EB142
add   r0,r2,r3                  ; 080EB144
ldrh  r1,[r0]                   ; 080EB146
mov   r7,0x80                   ; 080EB148
lsl   r7,r7,0x8                 ; 080EB14A
mov   r0,r1                     ; 080EB14C
and   r0,r7                     ; 080EB14E
cmp   r0,0x0                    ; 080EB150
beq   @@Code080EB158            ; 080EB152
ldr   r0,=0xFFFF0000            ; 080EB154
orr   r1,r0                     ; 080EB156
@@Code080EB158:
lsl   r1,r1,0x4                 ; 080EB158
lsl   r0,r1,0x1                 ; 080EB15A
add   r0,r0,r1                  ; 080EB15C
lsl   r0,r0,0xC                 ; 080EB15E
lsr   r4,r0,0x10                ; 080EB160
mov   r0,r4                     ; 080EB162
and   r0,r7                     ; 080EB164
cmp   r0,0x0                    ; 080EB166
beq   @@Code080EB16E            ; 080EB168
ldr   r0,=0xFFFF0000            ; 080EB16A
orr   r4,r0                     ; 080EB16C
@@Code080EB16E:
mov   r0,r3                     ; 080EB16E
add   r0,0x80                   ; 080EB170
add   r0,r2,r0                  ; 080EB172
ldrh  r1,[r0]                   ; 080EB174
mov   r0,r1                     ; 080EB176
and   r0,r7                     ; 080EB178
cmp   r0,0x0                    ; 080EB17A
beq   @@Code080EB182            ; 080EB17C
ldr   r0,=0xFFFF0000            ; 080EB17E
orr   r1,r0                     ; 080EB180
@@Code080EB182:
lsl   r0,r1,0xC                 ; 080EB182
lsr   r3,r0,0x10                ; 080EB184
mov   r0,r3                     ; 080EB186
and   r0,r7                     ; 080EB188
cmp   r0,0x0                    ; 080EB18A
beq   @@Code080EB192            ; 080EB18C
ldr   r0,=0xFFFF0000            ; 080EB18E
orr   r3,r0                     ; 080EB190
@@Code080EB192:
ldr   r2,[sp,0x4]               ; 080EB192
add   r1,r2,r3                  ; 080EB194
ldr   r0,=0x01FF                ; 080EB196
mov   r8,r0                     ; 080EB198
cmp   r1,r8                     ; 080EB19A
bls   @@Code080EB1A2            ; 080EB19C
mov   r1,0x80                   ; 080EB19E
lsl   r1,r1,0x2                 ; 080EB1A0
@@Code080EB1A2:
lsl   r0,r1,0x1                 ; 080EB1A2
add   r0,r10                    ; 080EB1A4
ldrh  r2,[r0]                   ; 080EB1A6
mov   r1,r4                     ; 080EB1A8
mul   r1,r2                     ; 080EB1AA
lsr   r1,r1,0x10                ; 080EB1AC
sub   r1,0x1                    ; 080EB1AE
mov   r0,r1                     ; 080EB1B0
and   r0,r7                     ; 080EB1B2
cmp   r0,0x0                    ; 080EB1B4
bne   @@Code080EB1BA            ; 080EB1B6
add   r1,0x1                    ; 080EB1B8
@@Code080EB1BA:
ldr   r0,=0x4802                ; 080EB1BA
add   r6,r5,r0                  ; 080EB1BC
strh  r1,[r6]                   ; 080EB1BE
lsl   r0,r2,0x1                 ; 080EB1C0
add   r0,r0,r2                  ; 080EB1C2
lsr   r1,r0,0x8                 ; 080EB1C4
ldr   r2,=0x4804                ; 080EB1C6
add   r2,r2,r5                  ; 080EB1C8
mov   r12,r2                    ; 080EB1CA
strh  r1,[r2]                   ; 080EB1CC
ldr   r0,[sp,0x4]               ; 080EB1CE
sub   r1,r0,r3                  ; 080EB1D0
cmp   r1,r8                     ; 080EB1D2
bls   @@Code080EB1DA            ; 080EB1D4
mov   r1,0x80                   ; 080EB1D6
lsl   r1,r1,0x2                 ; 080EB1D8
@@Code080EB1DA:
lsl   r0,r1,0x1                 ; 080EB1DA
add   r0,r10                    ; 080EB1DC
ldrh  r2,[r0]                   ; 080EB1DE
neg   r0,r4                     ; 080EB1E0
mov   r1,r0                     ; 080EB1E2
mul   r1,r2                     ; 080EB1E4
lsr   r1,r1,0x10                ; 080EB1E6
sub   r1,0x1                    ; 080EB1E8
mov   r0,r1                     ; 080EB1EA
and   r0,r7                     ; 080EB1EC
cmp   r0,0x0                    ; 080EB1EE
bne   @@Code080EB1F4            ; 080EB1F0
add   r1,0x1                    ; 080EB1F2
@@Code080EB1F4:
mov   r7,r9                     ; 080EB1F4
strh  r1,[r7]                   ; 080EB1F6
lsl   r0,r2,0x1                 ; 080EB1F8
add   r0,r0,r2                  ; 080EB1FA
lsr   r1,r0,0x8                 ; 080EB1FC
ldr   r0,=0x47FE                ; 080EB1FE
add   r3,r5,r0                  ; 080EB200
strh  r1,[r3]                   ; 080EB202
ldr   r1,=0x4806                ; 080EB204
add   r4,r5,r1                  ; 080EB206
mov   r0,0x0                    ; 080EB208
strh  r0,[r4]                   ; 080EB20A
mov   r2,0x0                    ; 080EB20C
ldsh  r1,[r6,r2]                ; 080EB20E
ldrh  r2,[r7]                   ; 080EB210
mov   r5,0x0                    ; 080EB212
ldsh  r0,[r7,r5]                ; 080EB214
cmp   r1,r0                     ; 080EB216
bge   @@Code080EB22E            ; 080EB218
ldrh  r1,[r6]                   ; 080EB21A
strh  r2,[r6]                   ; 080EB21C
strh  r1,[r7]                   ; 080EB21E
mov   r7,r12                    ; 080EB220
ldrh  r1,[r7]                   ; 080EB222
ldrh  r0,[r3]                   ; 080EB224
strh  r0,[r7]                   ; 080EB226
strh  r1,[r3]                   ; 080EB228
mov   r0,0x1                    ; 080EB22A
strh  r0,[r4]                   ; 080EB22C
@@Code080EB22E:
ldr   r0,[sp]                   ; 080EB22E
bl    Sub080EAF6C               ; 080EB230
add   sp,0x8                    ; 080EB234
pop   {r3-r5}                   ; 080EB236
mov   r8,r3                     ; 080EB238
mov   r9,r4                     ; 080EB23A
mov   r10,r5                    ; 080EB23C
pop   {r4-r7}                   ; 080EB23E
pop   {r0}                      ; 080EB240
bx    r0                        ; 080EB242
.pool                           ; 080EB244

Sub080EB27C:
lsl   r0,r0,0x10                ; 080EB27C
ldr   r2,=0x03007240            ; 080EB27E  Normal gameplay IWRAM (0300220C)
lsr   r0,r0,0x11                ; 080EB280
mov   r1,0xB0                   ; 080EB282
mul   r0,r1                     ; 080EB284
mov   r1,0x95                   ; 080EB286
lsl   r1,r1,0x2                 ; 080EB288
add   r0,r0,r1                  ; 080EB28A
ldr   r2,[r2]                   ; 080EB28C
add   r2,r2,r0                  ; 080EB28E
mov   r1,0x8                    ; 080EB290
ldsh  r0,[r2,r1]                ; 080EB292
lsl   r0,r0,0x14                ; 080EB294
asr   r0,r0,0x10                ; 080EB296
ldr   r1,[r2]                   ; 080EB298
add   r0,r0,r1                  ; 080EB29A
str   r0,[r2]                   ; 080EB29C
bx    lr                        ; 080EB29E
.pool                           ; 080EB2A0

Sub080EB2A4:
push  {r4-r7,lr}                ; 080EB2A4
lsl   r1,r1,0x10                ; 080EB2A6
ldr   r3,=0x03007240            ; 080EB2A8  Normal gameplay IWRAM (0300220C)
lsr   r1,r1,0x11                ; 080EB2AA
mov   r2,0xB0                   ; 080EB2AC
mul   r2,r1                     ; 080EB2AE
mov   r4,0x95                   ; 080EB2B0
lsl   r4,r4,0x2                 ; 080EB2B2
add   r2,r2,r4                  ; 080EB2B4
ldr   r5,[r3]                   ; 080EB2B6
add   r6,r5,r2                  ; 080EB2B8
mov   r7,0x0                    ; 080EB2BA
mov   r2,r1                     ; 080EB2BC
add   r2,0x13                   ; 080EB2BE
lsl   r2,r2,0x1                 ; 080EB2C0
add   r0,0x2A                   ; 080EB2C2
add   r2,r0,r2                  ; 080EB2C4
ldrh  r3,[r2]                   ; 080EB2C6
add   r1,0x3                    ; 080EB2C8
lsl   r1,r1,0x1                 ; 080EB2CA
add   r4,r0,r1                  ; 080EB2CC
mov   r1,0xFF                   ; 080EB2CE
ldrb  r0,[r4]                   ; 080EB2D0
add   r0,r3,r0                  ; 080EB2D2
lsl   r0,r0,0x10                ; 080EB2D4
lsr   r3,r0,0x10                ; 080EB2D6
and   r1,r3                     ; 080EB2D8
strh  r1,[r2]                   ; 080EB2DA
cmp   r3,0xFF                   ; 080EB2DC
bls   @@Code080EB2E4            ; 080EB2DE
mov   r7,0x80                   ; 080EB2E0
lsl   r7,r7,0x1                 ; 080EB2E2
@@Code080EB2E4:
mov   r1,0x0                    ; 080EB2E4
ldsh  r0,[r4,r1]                ; 080EB2E6
ldr   r1,=0xFFFFFF00            ; 080EB2E8
and   r0,r1                     ; 080EB2EA
add   r0,r0,r7                  ; 080EB2EC
ldr   r1,[r6,0x4]               ; 080EB2EE
add   r0,r0,r1                  ; 080EB2F0
str   r0,[r6,0x4]               ; 080EB2F2
ldr   r1,=0x29D2                ; 080EB2F4
add   r0,r5,r1                  ; 080EB2F6
ldrh  r0,[r0]                   ; 080EB2F8
ldrh  r1,[r4]                   ; 080EB2FA
add   r0,r0,r1                  ; 080EB2FC
lsl   r1,r0,0x10                ; 080EB2FE
strh  r0,[r4]                   ; 080EB300
lsr   r3,r1,0x18                ; 080EB302
ldr   r1,=0x29D6                ; 080EB304
add   r0,r5,r1                  ; 080EB306
ldrh  r0,[r0]                   ; 080EB308
cmp   r3,r0                     ; 080EB30A
blo   @@Code080EB316            ; 080EB30C
cmp   r3,0x7F                   ; 080EB30E
bhi   @@Code080EB316            ; 080EB310
lsl   r0,r0,0x8                 ; 080EB312
strh  r0,[r4]                   ; 080EB314
@@Code080EB316:
pop   {r4-r7}                   ; 080EB316
pop   {r0}                      ; 080EB318
bx    r0                        ; 080EB31A
.pool                           ; 080EB31C

Sub080EB32C:
push  {r4-r6,lr}                ; 080EB32C
mov   r4,r0                     ; 080EB32E
mov   r2,r4                     ; 080EB330
add   r2,0xBC                   ; 080EB332
mov   r1,0x80                   ; 080EB334
lsl   r1,r1,0x1                 ; 080EB336
mov   r0,r1                     ; 080EB338
ldrh  r3,[r2]                   ; 080EB33A
add   r0,r0,r3                  ; 080EB33C
strh  r0,[r2]                   ; 080EB33E
ldrh  r0,[r2]                   ; 080EB340
mov   r1,r4                     ; 080EB342
add   r1,0xBA                   ; 080EB344
ldrh  r1,[r1]                   ; 080EB346
sub   r0,r0,r1                  ; 080EB348
lsl   r0,r0,0x10                ; 080EB34A
lsr   r1,r0,0x10                ; 080EB34C
mov   r0,0x80                   ; 080EB34E
lsl   r0,r0,0x8                 ; 080EB350
and   r0,r1                     ; 080EB352
cmp   r0,0x0                    ; 080EB354
bne   @@Code080EB3C0            ; 080EB356
strh  r1,[r2]                   ; 080EB358
mov   r6,0xBE                   ; 080EB35A
add   r6,r6,r4                  ; 080EB35C
mov   r12,r6                    ; 080EB35E
ldrh  r0,[r6]                   ; 080EB360
sub   r0,0x1                    ; 080EB362
strh  r0,[r6]                   ; 080EB364
ldr   r5,=0x02011000            ; 080EB366
ldrh  r2,[r5]                   ; 080EB368
ldrh  r0,[r6]                   ; 080EB36A
mov   r1,0x47                   ; 080EB36C
sub   r1,r1,r0                  ; 080EB36E
lsl   r1,r1,0x10                ; 080EB370
lsr   r1,r1,0x12                ; 080EB372
ldr   r3,=Data08195EC8          ; 080EB374
mov   r0,r4                     ; 080EB376
add   r0,0x9C                   ; 080EB378
ldrh  r0,[r0]                   ; 080EB37A
sub   r0,0x3                    ; 080EB37C
lsl   r0,r0,0x1                 ; 080EB37E
add   r0,r0,r3                  ; 080EB380
lsl   r1,r1,0x1                 ; 080EB382
ldrh  r0,[r0]                   ; 080EB384
add   r1,r1,r0                  ; 080EB386
lsl   r3,r2,0x1                 ; 080EB388
ldr   r4,=0x02011002            ; 080EB38A
add   r0,r3,r4                  ; 080EB38C
strh  r1,[r0]                   ; 080EB38E
mov   r1,0x1                    ; 080EB390
ldr   r6,=0x02011004            ; 080EB392
add   r0,r3,r6                  ; 080EB394
strh  r1,[r0]                   ; 080EB396
mov   r0,r12                    ; 080EB398
ldrh  r1,[r0]                   ; 080EB39A
mov   r0,0x3                    ; 080EB39C
and   r0,r1                     ; 080EB39E
ldr   r1,=Data08195EC0          ; 080EB3A0
lsl   r0,r0,0x1                 ; 080EB3A2
add   r0,r0,r1                  ; 080EB3A4
ldrh  r0,[r0]                   ; 080EB3A6
ldr   r1,=0x02011006            ; 080EB3A8
add   r3,r3,r1                  ; 080EB3AA
strh  r0,[r3]                   ; 080EB3AC
add   r2,0x3                    ; 080EB3AE
lsl   r2,r2,0x10                ; 080EB3B0
lsr   r2,r2,0x10                ; 080EB3B2
lsl   r0,r2,0x1                 ; 080EB3B4
add   r0,r0,r4                  ; 080EB3B6
ldr   r3,=0xFFFF                ; 080EB3B8
mov   r1,r3                     ; 080EB3BA
strh  r1,[r0]                   ; 080EB3BC
strh  r2,[r5]                   ; 080EB3BE
@@Code080EB3C0:
pop   {r4-r6}                   ; 080EB3C0
pop   {r0}                      ; 080EB3C2
bx    r0                        ; 080EB3C4
.pool                           ; 080EB3C6

Sub080EB3E4:
push  {lr}                      ; 080EB3E4
mov   r3,r0                     ; 080EB3E6
lsl   r1,r1,0x10                ; 080EB3E8
ldrh  r2,[r3,0x2A]              ; 080EB3EA
ldr   r0,=Data08195ED8          ; 080EB3EC
lsr   r1,r1,0xF                 ; 080EB3EE
add   r1,r1,r0                  ; 080EB3F0
ldrh  r0,[r1]                   ; 080EB3F2
sub   r1,r2,r0                  ; 080EB3F4
strh  r1,[r3,0x2A]              ; 080EB3F6
ldrh  r1,[r3,0x2C]              ; 080EB3F8
add   r0,r0,r1                  ; 080EB3FA
lsl   r0,r0,0x10                ; 080EB3FC
lsr   r2,r0,0x10                ; 080EB3FE
mov   r0,0xFF                   ; 080EB400
lsl   r0,r0,0x1                 ; 080EB402
cmp   r2,r0                     ; 080EB404
bls   @@Code080EB40A            ; 080EB406
ldr   r2,=0x01FF                ; 080EB408
@@Code080EB40A:
strh  r2,[r3,0x2C]              ; 080EB40A
pop   {r0}                      ; 080EB40C
bx    r0                        ; 080EB40E
.pool                           ; 080EB410

Sub080EB418:
push  {lr}                      ; 080EB418
mov   r3,r0                     ; 080EB41A
lsl   r1,r1,0x10                ; 080EB41C
ldrh  r2,[r3,0x2C]              ; 080EB41E
ldr   r0,=Data08195ED8          ; 080EB420
lsr   r1,r1,0xF                 ; 080EB422
add   r1,r1,r0                  ; 080EB424
ldrh  r0,[r1]                   ; 080EB426
sub   r1,r2,r0                  ; 080EB428
strh  r1,[r3,0x2C]              ; 080EB42A
ldrh  r1,[r3,0x2A]              ; 080EB42C
add   r0,r0,r1                  ; 080EB42E
lsl   r0,r0,0x10                ; 080EB430
lsr   r2,r0,0x10                ; 080EB432
mov   r0,0xFF                   ; 080EB434
lsl   r0,r0,0x1                 ; 080EB436
cmp   r2,r0                     ; 080EB438
bls   @@Code080EB43E            ; 080EB43A
ldr   r2,=0x01FF                ; 080EB43C
@@Code080EB43E:
strh  r2,[r3,0x2A]              ; 080EB43E
pop   {r0}                      ; 080EB440
bx    r0                        ; 080EB442
.pool                           ; 080EB444

Sub080EB44C:
push  {r4-r5,lr}                ; 080EB44C
mov   r5,r0                     ; 080EB44E
mov   r3,r5                     ; 080EB450
add   r3,0x96                   ; 080EB452
ldrh  r0,[r3]                   ; 080EB454
mov   r4,r0                     ; 080EB456
mov   r2,r5                     ; 080EB458
add   r2,0x94                   ; 080EB45A
ldrh  r0,[r2]                   ; 080EB45C
add   r0,0x1                    ; 080EB45E
strh  r0,[r2]                   ; 080EB460
ldrh  r1,[r2]                   ; 080EB462
ldr   r0,=Data08195ECE          ; 080EB464
add   r0,r4,r0                  ; 080EB466
ldrb  r0,[r0]                   ; 080EB468
cmp   r1,r0                     ; 080EB46A
blo   @@Code080EB478            ; 080EB46C
mov   r0,0x0                    ; 080EB46E
strh  r0,[r2]                   ; 080EB470
ldrh  r0,[r3]                   ; 080EB472
add   r0,0x1                    ; 080EB474
strh  r0,[r3]                   ; 080EB476
@@Code080EB478:
ldr   r0,=CodePtrs08195EEC      ; 080EB478
lsl   r1,r4,0x2                 ; 080EB47A
add   r1,r1,r0                  ; 080EB47C
ldr   r2,[r1]                   ; 080EB47E
mov   r0,r5                     ; 080EB480
mov   r1,r4                     ; 080EB482
bl    Sub_bx_r2                 ; 080EB484  bx r2
pop   {r4-r5}                   ; 080EB488
pop   {r0}                      ; 080EB48A
bx    r0                        ; 080EB48C
.pool                           ; 080EB48E

Sub080EB498:
push  {lr}                      ; 080EB498
ldr   r0,=0x03007240            ; 080EB49A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EB49C
mov   r1,0x95                   ; 080EB49E
lsl   r1,r1,0x2                 ; 080EB4A0
add   r2,r0,r1                  ; 080EB4A2
ldr   r0,=0x03002200            ; 080EB4A4
ldr   r1,=0x4852                ; 080EB4A6
add   r0,r0,r1                  ; 080EB4A8
ldrh  r0,[r0]                   ; 080EB4AA
cmp   r0,0x0                    ; 080EB4AC
bne   @@Code080EB4BA            ; 080EB4AE
ldrh  r0,[r2]                   ; 080EB4B0
ldr   r1,=0x03006D80            ; 080EB4B2
str   r0,[r1]                   ; 080EB4B4
ldrh  r0,[r2,0x4]               ; 080EB4B6
str   r0,[r1,0x4]               ; 080EB4B8
@@Code080EB4BA:
bl    Sub08042FF8               ; 080EB4BA
pop   {r0}                      ; 080EB4BE
bx    r0                        ; 080EB4C0
.pool                           ; 080EB4C2

Sub080EB4D4:
push  {r4-r7,lr}                ; 080EB4D4
mov   r7,r10                    ; 080EB4D6
mov   r6,r9                     ; 080EB4D8
mov   r5,r8                     ; 080EB4DA
push  {r5-r7}                   ; 080EB4DC
ldr   r5,=0x03002200            ; 080EB4DE
ldr   r1,=0x47D0                ; 080EB4E0
add   r0,r5,r1                  ; 080EB4E2
ldrh  r0,[r0]                   ; 080EB4E4
mov   r12,r0                    ; 080EB4E6
ldr   r1,=0x4901                ; 080EB4E8
add   r0,r5,r1                  ; 080EB4EA
ldrb  r1,[r0]                   ; 080EB4EC
mov   r7,0x10                   ; 080EB4EE
mov   r0,0x10                   ; 080EB4F0
and   r0,r1                     ; 080EB4F2
cmp   r0,0x0                    ; 080EB4F4
bne   @@Code080EB564            ; 080EB4F6
ldr   r6,=0x030021B0            ; 080EB4F8
mov   r0,r12                    ; 080EB4FA
lsr   r0,r0,0x2                 ; 080EB4FC
mov   r10,r0                    ; 080EB4FE
lsl   r1,r0,0x3                 ; 080EB500
mov   r0,0xE0                   ; 080EB502
lsl   r0,r0,0x6                 ; 080EB504
add   r5,r5,r0                  ; 080EB506
add   r1,r1,r5                  ; 080EB508
str   r1,[r6]                   ; 080EB50A
ldrh  r2,[r1,0x4]               ; 080EB50C
ldr   r3,=0xFFFFFC00            ; 080EB50E
mov   r0,r3                     ; 080EB510
and   r0,r2                     ; 080EB512
mov   r4,0x10                   ; 080EB514
orr   r0,r4                     ; 080EB516
strh  r0,[r1,0x4]               ; 080EB518
mov   r1,0x4                    ; 080EB51A
add   r1,r12                    ; 080EB51C
mov   r9,r1                     ; 080EB51E
asr   r1,r1,0x2                 ; 080EB520
lsl   r1,r1,0x3                 ; 080EB522
add   r1,r1,r5                  ; 080EB524
str   r1,[r6]                   ; 080EB526
ldrh  r2,[r1,0x4]               ; 080EB528
mov   r0,r3                     ; 080EB52A
and   r0,r2                     ; 080EB52C
orr   r0,r4                     ; 080EB52E
strh  r0,[r1,0x4]               ; 080EB530
ldrb  r0,[r1,0x3]               ; 080EB532
orr   r0,r7                     ; 080EB534
strb  r0,[r1,0x3]               ; 080EB536
mov   r0,0x8                    ; 080EB538
add   r0,r12                    ; 080EB53A
mov   r8,r0                     ; 080EB53C
asr   r1,r0,0x2                 ; 080EB53E
lsl   r1,r1,0x3                 ; 080EB540
add   r1,r1,r5                  ; 080EB542
str   r1,[r6]                   ; 080EB544
ldrh  r2,[r1,0x4]               ; 080EB546
mov   r0,r3                     ; 080EB548
and   r0,r2                     ; 080EB54A
mov   r2,0x30                   ; 080EB54C
b     @@Code080EB5BA            ; 080EB54E
.pool                           ; 080EB550

@@Code080EB564:
ldr   r6,=0x030021B0            ; 080EB564
mov   r1,r12                    ; 080EB566
lsr   r1,r1,0x2                 ; 080EB568
mov   r10,r1                    ; 080EB56A
lsl   r1,r1,0x3                 ; 080EB56C
mov   r0,0xE0                   ; 080EB56E
lsl   r0,r0,0x6                 ; 080EB570
add   r5,r5,r0                  ; 080EB572
add   r1,r1,r5                  ; 080EB574
str   r1,[r6]                   ; 080EB576
ldrh  r2,[r1,0x4]               ; 080EB578
ldr   r3,=0xFFFFFC00            ; 080EB57A
mov   r0,r3                     ; 080EB57C
and   r0,r2                     ; 080EB57E
mov   r4,0x10                   ; 080EB580
orr   r0,r4                     ; 080EB582
strh  r0,[r1,0x4]               ; 080EB584
mov   r1,0x4                    ; 080EB586
add   r1,r12                    ; 080EB588
mov   r9,r1                     ; 080EB58A
asr   r1,r1,0x2                 ; 080EB58C
lsl   r1,r1,0x3                 ; 080EB58E
add   r1,r1,r5                  ; 080EB590
str   r1,[r6]                   ; 080EB592
ldrh  r2,[r1,0x4]               ; 080EB594
mov   r0,r3                     ; 080EB596
and   r0,r2                     ; 080EB598
orr   r0,r4                     ; 080EB59A
strh  r0,[r1,0x4]               ; 080EB59C
ldrb  r0,[r1,0x3]               ; 080EB59E
orr   r0,r7                     ; 080EB5A0
strb  r0,[r1,0x3]               ; 080EB5A2
mov   r0,0x8                    ; 080EB5A4
add   r0,r12                    ; 080EB5A6
mov   r8,r0                     ; 080EB5A8
asr   r1,r0,0x2                 ; 080EB5AA
lsl   r1,r1,0x3                 ; 080EB5AC
add   r1,r1,r5                  ; 080EB5AE
str   r1,[r6]                   ; 080EB5B0
ldrh  r2,[r1,0x4]               ; 080EB5B2
mov   r0,r3                     ; 080EB5B4
and   r0,r2                     ; 080EB5B6
mov   r2,0x31                   ; 080EB5B8
@@Code080EB5BA:
orr   r0,r2                     ; 080EB5BA
strh  r0,[r1,0x4]               ; 080EB5BC
mov   r4,r12                    ; 080EB5BE
add   r4,0xC                    ; 080EB5C0
asr   r1,r4,0x2                 ; 080EB5C2
lsl   r1,r1,0x3                 ; 080EB5C4
add   r1,r1,r5                  ; 080EB5C6
str   r1,[r6]                   ; 080EB5C8
ldrh  r0,[r1,0x4]               ; 080EB5CA
and   r3,r0                     ; 080EB5CC
orr   r3,r2                     ; 080EB5CE
strh  r3,[r1,0x4]               ; 080EB5D0
ldrb  r0,[r1,0x3]               ; 080EB5D2
orr   r0,r7                     ; 080EB5D4
strb  r0,[r1,0x3]               ; 080EB5D6
mov   r1,r10                    ; 080EB5D8
mov   r5,r9                     ; 080EB5DA
mov   r7,r8                     ; 080EB5DC
mov   r8,r4                     ; 080EB5DE
lsl   r1,r1,0x10                ; 080EB5E0
lsr   r1,r1,0xD                 ; 080EB5E2
ldr   r4,=0x03005A00            ; 080EB5E4
add   r1,r1,r4                  ; 080EB5E6
str   r1,[r6]                   ; 080EB5E8
ldrb  r2,[r1,0x3]               ; 080EB5EA
mov   r3,0x3F                   ; 080EB5EC
mov   r0,r3                     ; 080EB5EE
and   r0,r2                     ; 080EB5F0
strb  r0,[r1,0x3]               ; 080EB5F2
ldr   r2,[r6]                   ; 080EB5F4
ldrb  r1,[r2,0x1]               ; 080EB5F6
mov   r0,r3                     ; 080EB5F8
and   r0,r1                     ; 080EB5FA
strb  r0,[r2,0x1]               ; 080EB5FC
asr   r1,r5,0x2                 ; 080EB5FE
lsl   r1,r1,0x3                 ; 080EB600
add   r1,r1,r4                  ; 080EB602
str   r1,[r6]                   ; 080EB604
ldrb  r2,[r1,0x3]               ; 080EB606
mov   r0,r3                     ; 080EB608
and   r0,r2                     ; 080EB60A
strb  r0,[r1,0x3]               ; 080EB60C
ldr   r2,[r6]                   ; 080EB60E
ldrb  r1,[r2,0x1]               ; 080EB610
mov   r0,r3                     ; 080EB612
and   r0,r1                     ; 080EB614
strb  r0,[r2,0x1]               ; 080EB616
asr   r1,r7,0x2                 ; 080EB618
lsl   r1,r1,0x3                 ; 080EB61A
add   r1,r1,r4                  ; 080EB61C
str   r1,[r6]                   ; 080EB61E
ldrb  r2,[r1,0x3]               ; 080EB620
mov   r0,r3                     ; 080EB622
and   r0,r2                     ; 080EB624
strb  r0,[r1,0x3]               ; 080EB626
ldr   r2,[r6]                   ; 080EB628
ldrb  r1,[r2,0x1]               ; 080EB62A
mov   r0,r3                     ; 080EB62C
and   r0,r1                     ; 080EB62E
strb  r0,[r2,0x1]               ; 080EB630
mov   r0,r8                     ; 080EB632
asr   r1,r0,0x2                 ; 080EB634
lsl   r1,r1,0x3                 ; 080EB636
add   r1,r1,r4                  ; 080EB638
str   r1,[r6]                   ; 080EB63A
ldrb  r2,[r1,0x3]               ; 080EB63C
mov   r0,r3                     ; 080EB63E
and   r0,r2                     ; 080EB640
strb  r0,[r1,0x3]               ; 080EB642
ldr   r1,[r6]                   ; 080EB644
ldrb  r0,[r1,0x1]               ; 080EB646
and   r3,r0                     ; 080EB648
strb  r3,[r1,0x1]               ; 080EB64A
mov   r0,r12                    ; 080EB64C
add   r0,0x10                   ; 080EB64E
mov   r1,0xFD                   ; 080EB650
lsl   r1,r1,0x4                 ; 080EB652
add   r4,r4,r1                  ; 080EB654
strh  r0,[r4]                   ; 080EB656
pop   {r3-r5}                   ; 080EB658
mov   r8,r3                     ; 080EB65A
mov   r9,r4                     ; 080EB65C
mov   r10,r5                    ; 080EB65E
pop   {r4-r7}                   ; 080EB660
pop   {r0}                      ; 080EB662
bx    r0                        ; 080EB664
.pool                           ; 080EB666

Sub080EB674:
push  {r4-r7,lr}                ; 080EB674
mov   r7,r10                    ; 080EB676
mov   r6,r9                     ; 080EB678
mov   r5,r8                     ; 080EB67A
push  {r5-r7}                   ; 080EB67C
mov   r9,r0                     ; 080EB67E
ldr   r0,=0x03002200            ; 080EB680
mov   r10,r0                    ; 080EB682
ldr   r0,=0x47D0                ; 080EB684
add   r0,r10                    ; 080EB686
ldrh  r6,[r0]                   ; 080EB688
mov   r0,r9                     ; 080EB68A
add   r0,0x9C                   ; 080EB68C
ldrh  r7,[r0]                   ; 080EB68E
sub   r0,r7,0x3                 ; 080EB690
lsl   r0,r0,0x11                ; 080EB692
ldr   r1,=Data08195F10          ; 080EB694
lsr   r0,r0,0x10                ; 080EB696
add   r0,r0,r1                  ; 080EB698
mov   r1,r9                     ; 080EB69A
add   r1,0x9A                   ; 080EB69C
ldrh  r7,[r1]                   ; 080EB69E
lsl   r1,r7,0x15                ; 080EB6A0
lsr   r7,r1,0x10                ; 080EB6A2
ldrh  r0,[r0]                   ; 080EB6A4
add   r0,r7,r0                  ; 080EB6A6
lsl   r0,r0,0x10                ; 080EB6A8
lsr   r7,r0,0x10                ; 080EB6AA
ldr   r1,=0x030021B0            ; 080EB6AC
mov   r12,r1                    ; 080EB6AE
lsr   r1,r6,0x2                 ; 080EB6B0
lsl   r1,r1,0x3                 ; 080EB6B2
mov   r5,0xE0                   ; 080EB6B4
lsl   r5,r5,0x6                 ; 080EB6B6
add   r5,r10                    ; 080EB6B8
add   r1,r1,r5                  ; 080EB6BA
mov   r0,r12                    ; 080EB6BC
str   r1,[r0]                   ; 080EB6BE
ldr   r0,=0x01FF                ; 080EB6C0
mov   r8,r0                     ; 080EB6C2
mov   r3,r7                     ; 080EB6C4
mov   r0,r8                     ; 080EB6C6
and   r3,r0                     ; 080EB6C8
ldrh  r2,[r1,0x2]               ; 080EB6CA
ldr   r4,=0xFFFFFE00            ; 080EB6CC
mov   r0,r4                     ; 080EB6CE
and   r0,r2                     ; 080EB6D0
orr   r0,r3                     ; 080EB6D2
strh  r0,[r1,0x2]               ; 080EB6D4
mov   r1,r6                     ; 080EB6D6
add   r1,0x8                    ; 080EB6D8
asr   r1,r1,0x2                 ; 080EB6DA
lsl   r1,r1,0x3                 ; 080EB6DC
add   r1,r1,r5                  ; 080EB6DE
mov   r0,r12                    ; 080EB6E0
str   r1,[r0]                   ; 080EB6E2
ldrh  r2,[r1,0x2]               ; 080EB6E4
mov   r0,r4                     ; 080EB6E6
and   r0,r2                     ; 080EB6E8
orr   r0,r3                     ; 080EB6EA
strh  r0,[r1,0x2]               ; 080EB6EC
mov   r2,r7                     ; 080EB6EE
add   r2,0x8                    ; 080EB6F0
lsl   r2,r2,0x10                ; 080EB6F2
lsr   r2,r2,0x10                ; 080EB6F4
add   r1,r6,0x4                 ; 080EB6F6
asr   r1,r1,0x2                 ; 080EB6F8
lsl   r1,r1,0x3                 ; 080EB6FA
add   r1,r1,r5                  ; 080EB6FC
mov   r0,r12                    ; 080EB6FE
str   r1,[r0]                   ; 080EB700
mov   r0,r8                     ; 080EB702
and   r2,r0                     ; 080EB704
ldrh  r3,[r1,0x2]               ; 080EB706
mov   r0,r4                     ; 080EB708
and   r0,r3                     ; 080EB70A
orr   r0,r2                     ; 080EB70C
strh  r0,[r1,0x2]               ; 080EB70E
mov   r0,r6                     ; 080EB710
add   r0,0xC                    ; 080EB712
asr   r0,r0,0x2                 ; 080EB714
lsl   r0,r0,0x3                 ; 080EB716
add   r0,r0,r5                  ; 080EB718
mov   r1,r12                    ; 080EB71A
str   r0,[r1]                   ; 080EB71C
ldrh  r1,[r0,0x2]               ; 080EB71E
and   r4,r1                     ; 080EB720
orr   r4,r2                     ; 080EB722
strh  r4,[r0,0x2]               ; 080EB724
mov   r0,r9                     ; 080EB726
add   r0,0xB6                   ; 080EB728
ldrh  r7,[r0]                   ; 080EB72A
mov   r2,r12                    ; 080EB72C
cmp   r7,0x0                    ; 080EB72E
bne   @@Code080EB760            ; 080EB730
ldr   r0,=0x4901                ; 080EB732
add   r0,r10                    ; 080EB734
ldrb  r1,[r0]                   ; 080EB736
mov   r0,0x10                   ; 080EB738
and   r0,r1                     ; 080EB73A
cmp   r0,0x0                    ; 080EB73C
beq   @@Code080EB760            ; 080EB73E
mov   r7,0x6                    ; 080EB740
b     @@Code080EB762            ; 080EB742
.pool                           ; 080EB744

@@Code080EB760:
mov   r7,0x4                    ; 080EB760
@@Code080EB762:
lsr   r0,r6,0x2                 ; 080EB762
lsl   r0,r0,0x3                 ; 080EB764
ldr   r1,=0x03005A00            ; 080EB766
add   r0,r0,r1                  ; 080EB768
str   r0,[r2]                   ; 080EB76A
strb  r7,[r0]                   ; 080EB76C
add   r0,r6,0x4                 ; 080EB76E
asr   r0,r0,0x2                 ; 080EB770
lsl   r0,r0,0x3                 ; 080EB772
add   r0,r0,r1                  ; 080EB774
str   r0,[r2]                   ; 080EB776
strb  r7,[r0]                   ; 080EB778
mov   r0,r7                     ; 080EB77A
add   r0,0x8                    ; 080EB77C
lsl   r0,r0,0x10                ; 080EB77E
lsr   r7,r0,0x10                ; 080EB780
mov   r0,r6                     ; 080EB782
add   r0,0x8                    ; 080EB784
asr   r0,r0,0x2                 ; 080EB786
lsl   r0,r0,0x3                 ; 080EB788
add   r0,r0,r1                  ; 080EB78A
str   r0,[r2]                   ; 080EB78C
strb  r7,[r0]                   ; 080EB78E
mov   r0,r6                     ; 080EB790
add   r0,0xC                    ; 080EB792
asr   r0,r0,0x2                 ; 080EB794
lsl   r0,r0,0x3                 ; 080EB796
add   r0,r0,r1                  ; 080EB798
str   r0,[r2]                   ; 080EB79A
strb  r7,[r0]                   ; 080EB79C
pop   {r3-r5}                   ; 080EB79E
mov   r8,r3                     ; 080EB7A0
mov   r9,r4                     ; 080EB7A2
mov   r10,r5                    ; 080EB7A4
pop   {r4-r7}                   ; 080EB7A6
pop   {r0}                      ; 080EB7A8
bx    r0                        ; 080EB7AA
.pool                           ; 080EB7AC

Sub080EB7B0:
push  {lr}                      ; 080EB7B0
bl    Sub080EB674               ; 080EB7B2
bl    Sub080EB4D4               ; 080EB7B6
pop   {r0}                      ; 080EB7BA
bx    r0                        ; 080EB7BC
.pool                           ; 080EB7BE

Sub080EB7C0:
push  {r4-r7,lr}                ; 080EB7C0
mov   r7,r10                    ; 080EB7C2
mov   r6,r9                     ; 080EB7C4
mov   r5,r8                     ; 080EB7C6
push  {r5-r7}                   ; 080EB7C8
add   sp,-0x4                   ; 080EB7CA
bl    Sub080EB674               ; 080EB7CC
ldr   r0,=0x030069D0            ; 080EB7D0
ldrh  r0,[r0]                   ; 080EB7D2
str   r0,[sp]                   ; 080EB7D4
ldr   r1,=0x030021B0            ; 080EB7D6
mov   r8,r1                     ; 080EB7D8
lsr   r0,r0,0x2                 ; 080EB7DA
lsl   r0,r0,0x3                 ; 080EB7DC
mov   r10,r0                    ; 080EB7DE
ldr   r2,=0x03005A00            ; 080EB7E0
add   r10,r2                    ; 080EB7E2
mov   r0,r10                    ; 080EB7E4
str   r0,[r1]                   ; 080EB7E6
ldrh  r1,[r0,0x4]               ; 080EB7E8
ldr   r4,=0xFFFFFC00            ; 080EB7EA
mov   r0,r4                     ; 080EB7EC
and   r0,r1                     ; 080EB7EE
mov   r1,0x11                   ; 080EB7F0
orr   r0,r1                     ; 080EB7F2
mov   r2,r10                    ; 080EB7F4
strh  r0,[r2,0x4]               ; 080EB7F6
ldrb  r1,[r2,0x5]               ; 080EB7F8
mov   r0,0xF                    ; 080EB7FA
mov   r9,r0                     ; 080EB7FC
and   r0,r1                     ; 080EB7FE
mov   r7,0x10                   ; 080EB800
orr   r0,r7                     ; 080EB802
strb  r0,[r2,0x5]               ; 080EB804
ldr   r6,[sp]                   ; 080EB806
add   r6,0x4                    ; 080EB808
asr   r6,r6,0x2                 ; 080EB80A
lsl   r6,r6,0x3                 ; 080EB80C
ldr   r1,=0x03005A00            ; 080EB80E
add   r6,r6,r1                  ; 080EB810
mov   r2,r8                     ; 080EB812
str   r6,[r2]                   ; 080EB814
ldrh  r1,[r6,0x4]               ; 080EB816
mov   r0,r4                     ; 080EB818
and   r0,r1                     ; 080EB81A
mov   r1,0x11                   ; 080EB81C
orr   r0,r1                     ; 080EB81E
strh  r0,[r6,0x4]               ; 080EB820
ldrb  r0,[r6,0x3]               ; 080EB822
orr   r0,r7                     ; 080EB824
strb  r0,[r6,0x3]               ; 080EB826
ldr   r2,[r2]                   ; 080EB828
ldrb  r1,[r2,0x5]               ; 080EB82A
mov   r0,r9                     ; 080EB82C
and   r0,r1                     ; 080EB82E
orr   r0,r7                     ; 080EB830
strb  r0,[r2,0x5]               ; 080EB832
ldr   r5,[sp]                   ; 080EB834
add   r5,0x8                    ; 080EB836
asr   r5,r5,0x2                 ; 080EB838
lsl   r5,r5,0x3                 ; 080EB83A
ldr   r2,=0x03005A00            ; 080EB83C
add   r5,r5,r2                  ; 080EB83E
mov   r0,r8                     ; 080EB840
str   r5,[r0]                   ; 080EB842
ldrh  r1,[r5,0x4]               ; 080EB844
mov   r0,r4                     ; 080EB846
and   r0,r1                     ; 080EB848
mov   r1,0x11                   ; 080EB84A
orr   r0,r1                     ; 080EB84C
strh  r0,[r5,0x4]               ; 080EB84E
ldrb  r0,[r5,0x3]               ; 080EB850
mov   r2,0x20                   ; 080EB852
mov   r12,r2                    ; 080EB854
mov   r1,r12                    ; 080EB856
orr   r0,r1                     ; 080EB858
strb  r0,[r5,0x3]               ; 080EB85A
mov   r0,r8                     ; 080EB85C
ldr   r2,[r0]                   ; 080EB85E
ldrb  r1,[r2,0x5]               ; 080EB860
mov   r0,r9                     ; 080EB862
and   r0,r1                     ; 080EB864
orr   r0,r7                     ; 080EB866
strb  r0,[r2,0x5]               ; 080EB868
ldr   r3,[sp]                   ; 080EB86A
add   r3,0xC                    ; 080EB86C
asr   r3,r3,0x2                 ; 080EB86E
lsl   r3,r3,0x3                 ; 080EB870
ldr   r1,=0x03005A00            ; 080EB872
add   r3,r3,r1                  ; 080EB874
mov   r2,r8                     ; 080EB876
str   r3,[r2]                   ; 080EB878
ldrh  r0,[r3,0x4]               ; 080EB87A
and   r4,r0                     ; 080EB87C
mov   r0,0x11                   ; 080EB87E
orr   r4,r0                     ; 080EB880
strh  r4,[r3,0x4]               ; 080EB882
ldrb  r0,[r3,0x3]               ; 080EB884
orr   r0,r7                     ; 080EB886
strb  r0,[r3,0x3]               ; 080EB888
ldr   r1,[r2]                   ; 080EB88A
ldrb  r0,[r1,0x3]               ; 080EB88C
mov   r2,r12                    ; 080EB88E
orr   r0,r2                     ; 080EB890
strb  r0,[r1,0x3]               ; 080EB892
mov   r0,r8                     ; 080EB894
ldr   r1,[r0]                   ; 080EB896
ldrb  r0,[r1,0x5]               ; 080EB898
mov   r2,r9                     ; 080EB89A
and   r2,r0                     ; 080EB89C
orr   r2,r7                     ; 080EB89E
strb  r2,[r1,0x5]               ; 080EB8A0
mov   r0,r10                    ; 080EB8A2
mov   r1,r8                     ; 080EB8A4
str   r0,[r1]                   ; 080EB8A6
ldrb  r2,[r0,0x3]               ; 080EB8A8
mov   r1,0x3F                   ; 080EB8AA
mov   r0,r1                     ; 080EB8AC
and   r0,r2                     ; 080EB8AE
mov   r2,r10                    ; 080EB8B0
strb  r0,[r2,0x3]               ; 080EB8B2
mov   r0,r8                     ; 080EB8B4
ldr   r4,[r0]                   ; 080EB8B6
ldrb  r2,[r4,0x1]               ; 080EB8B8
mov   r0,r1                     ; 080EB8BA
and   r0,r2                     ; 080EB8BC
strb  r0,[r4,0x1]               ; 080EB8BE
mov   r2,r8                     ; 080EB8C0
str   r6,[r2]                   ; 080EB8C2
ldrb  r2,[r6,0x3]               ; 080EB8C4
mov   r0,r1                     ; 080EB8C6
and   r0,r2                     ; 080EB8C8
strb  r0,[r6,0x3]               ; 080EB8CA
mov   r0,r8                     ; 080EB8CC
ldr   r4,[r0]                   ; 080EB8CE
ldrb  r2,[r4,0x1]               ; 080EB8D0
mov   r0,r1                     ; 080EB8D2
and   r0,r2                     ; 080EB8D4
strb  r0,[r4,0x1]               ; 080EB8D6
mov   r2,r8                     ; 080EB8D8
str   r5,[r2]                   ; 080EB8DA
ldrb  r2,[r5,0x3]               ; 080EB8DC
mov   r0,r1                     ; 080EB8DE
and   r0,r2                     ; 080EB8E0
strb  r0,[r5,0x3]               ; 080EB8E2
mov   r0,r8                     ; 080EB8E4
ldr   r4,[r0]                   ; 080EB8E6
ldrb  r2,[r4,0x1]               ; 080EB8E8
mov   r0,r1                     ; 080EB8EA
and   r0,r2                     ; 080EB8EC
strb  r0,[r4,0x1]               ; 080EB8EE
mov   r2,r8                     ; 080EB8F0
str   r3,[r2]                   ; 080EB8F2
ldrb  r2,[r3,0x3]               ; 080EB8F4
mov   r0,r1                     ; 080EB8F6
and   r0,r2                     ; 080EB8F8
strb  r0,[r3,0x3]               ; 080EB8FA
mov   r0,r8                     ; 080EB8FC
ldr   r2,[r0]                   ; 080EB8FE
ldrb  r0,[r2,0x1]               ; 080EB900
and   r1,r0                     ; 080EB902
strb  r1,[r2,0x1]               ; 080EB904
ldr   r3,[sp]                   ; 080EB906
add   r3,0x10                   ; 080EB908
ldr   r1,=0x030069D0            ; 080EB90A
strh  r3,[r1]                   ; 080EB90C
add   sp,0x4                    ; 080EB90E
pop   {r3-r5}                   ; 080EB910
mov   r8,r3                     ; 080EB912
mov   r9,r4                     ; 080EB914
mov   r10,r5                    ; 080EB916
pop   {r4-r7}                   ; 080EB918
pop   {r0}                      ; 080EB91A
bx    r0                        ; 080EB91C
.pool                           ; 080EB91E

Sub080EB930:
add   r0,0xC6                   ; 080EB930
mov   r1,0x1                    ; 080EB932
strh  r1,[r0]                   ; 080EB934
bx    lr                        ; 080EB936

Sub080EB938:
push  {r4-r7,lr}                ; 080EB938
mov   r7,r10                    ; 080EB93A
mov   r6,r9                     ; 080EB93C
mov   r5,r8                     ; 080EB93E
push  {r5-r7}                   ; 080EB940
mov   r7,r0                     ; 080EB942
lsl   r1,r1,0x10                ; 080EB944
ldr   r0,=0x03002200            ; 080EB946
mov   r8,r0                     ; 080EB948
cmp   r1,0x0                    ; 080EB94A
beq   @@Code080EB960            ; 080EB94C
ldr   r0,=0x4901                ; 080EB94E
add   r0,r8                     ; 080EB950
ldrb  r0,[r0]                   ; 080EB952
lsr   r0,r0,0x1                 ; 080EB954
mov   r1,0x1                    ; 080EB956
and   r0,r1                     ; 080EB958
cmp   r0,0x0                    ; 080EB95A
beq   @@Code080EB960            ; 080EB95C
b     @@Code080EBAA0            ; 080EB95E
@@Code080EB960:
ldr   r1,=0x47D0                ; 080EB960
add   r1,r8                     ; 080EB962
mov   r10,r1                    ; 080EB964
ldrh  r6,[r1]                   ; 080EB966
ldr   r0,=0x03007240            ; 080EB968  Normal gameplay IWRAM (0300220C)
ldr   r4,[r0]                   ; 080EB96A
mov   r0,0xED                   ; 080EB96C
lsl   r0,r0,0x2                 ; 080EB96E
add   r4,r4,r0                  ; 080EB970
ldrh  r3,[r4]                   ; 080EB972
lsr   r1,r6,0x2                 ; 080EB974
ldr   r5,=0x030021B0            ; 080EB976
lsl   r1,r1,0x3                 ; 080EB978
mov   r0,0xE0                   ; 080EB97A
lsl   r0,r0,0x6                 ; 080EB97C
add   r0,r8                     ; 080EB97E
mov   r9,r0                     ; 080EB980
add   r1,r9                     ; 080EB982
str   r1,[r5]                   ; 080EB984
lsr   r3,r3,0x8                 ; 080EB986
ldrh  r2,[r1,0x2]               ; 080EB988
ldr   r0,=0xFFFFFE00            ; 080EB98A
and   r0,r2                     ; 080EB98C
orr   r0,r3                     ; 080EB98E
strh  r0,[r1,0x2]               ; 080EB990
ldrh  r0,[r4,0x4]               ; 080EB992
lsr   r0,r0,0x8                 ; 080EB994
strb  r0,[r1]                   ; 080EB996
ldr   r3,[r5]                   ; 080EB998
ldr   r1,=Data08195F26          ; 080EB99A
ldrh  r0,[r4,0x3C]              ; 080EB99C
lsl   r0,r0,0x1                 ; 080EB99E
add   r0,r0,r1                  ; 080EB9A0
ldrh  r0,[r0]                   ; 080EB9A2
ldr   r1,=0x03FF                ; 080EB9A4
and   r1,r0                     ; 080EB9A6
ldrh  r2,[r3,0x4]               ; 080EB9A8
ldr   r0,=0xFFFFFC00            ; 080EB9AA
and   r0,r2                     ; 080EB9AC
orr   r0,r1                     ; 080EB9AE
strh  r0,[r3,0x4]               ; 080EB9B0
ldrb  r1,[r3,0x5]               ; 080EB9B2
mov   r0,0xD                    ; 080EB9B4
neg   r0,r0                     ; 080EB9B6
and   r0,r1                     ; 080EB9B8
mov   r1,0x8                    ; 080EB9BA
orr   r0,r1                     ; 080EB9BC
strb  r0,[r3,0x5]               ; 080EB9BE
ldr   r2,[r5]                   ; 080EB9C0
ldrb  r1,[r2,0x5]               ; 080EB9C2
mov   r0,0xF                    ; 080EB9C4
and   r0,r1                     ; 080EB9C6
mov   r1,0x40                   ; 080EB9C8
orr   r0,r1                     ; 080EB9CA
strb  r0,[r2,0x5]               ; 080EB9CC
ldr   r3,[r5]                   ; 080EB9CE
ldrb  r1,[r3,0x3]               ; 080EB9D0
mov   r2,0x3F                   ; 080EB9D2
mov   r0,r2                     ; 080EB9D4
and   r0,r1                     ; 080EB9D6
mov   r1,0x80                   ; 080EB9D8
orr   r0,r1                     ; 080EB9DA
strb  r0,[r3,0x3]               ; 080EB9DC
ldr   r1,[r5]                   ; 080EB9DE
ldrb  r0,[r1,0x1]               ; 080EB9E0
and   r2,r0                     ; 080EB9E2
strb  r2,[r1,0x1]               ; 080EB9E4
ldr   r2,[r5]                   ; 080EB9E6
ldrb  r0,[r2,0x1]               ; 080EB9E8
mov   r1,0x3                    ; 080EB9EA
orr   r0,r1                     ; 080EB9EC
strb  r0,[r2,0x1]               ; 080EB9EE
ldr   r3,[r5]                   ; 080EB9F0
ldr   r1,=0x47D2                ; 080EB9F2
add   r8,r1                     ; 080EB9F4
mov   r0,r8                     ; 080EB9F6
ldrh  r1,[r0]                   ; 080EB9F8
lsr   r1,r1,0x4                 ; 080EB9FA
mov   r4,0x1                    ; 080EB9FC
and   r1,r4                     ; 080EB9FE
lsl   r1,r1,0x5                 ; 080EBA00
ldrb  r2,[r3,0x3]               ; 080EBA02
mov   r0,0x21                   ; 080EBA04
neg   r0,r0                     ; 080EBA06
and   r0,r2                     ; 080EBA08
orr   r0,r1                     ; 080EBA0A
strb  r0,[r3,0x3]               ; 080EBA0C
ldr   r3,[r5]                   ; 080EBA0E
mov   r0,r8                     ; 080EBA10
ldrh  r1,[r0]                   ; 080EBA12
lsr   r1,r1,0x3                 ; 080EBA14
and   r1,r4                     ; 080EBA16
lsl   r1,r1,0x4                 ; 080EBA18
ldrb  r2,[r3,0x3]               ; 080EBA1A
mov   r0,0x11                   ; 080EBA1C
neg   r0,r0                     ; 080EBA1E
and   r0,r2                     ; 080EBA20
orr   r0,r1                     ; 080EBA22
strb  r0,[r3,0x3]               ; 080EBA24
ldr   r3,[r5]                   ; 080EBA26
mov   r1,r8                     ; 080EBA28
ldrh  r0,[r1]                   ; 080EBA2A
mov   r1,0x7                    ; 080EBA2C
and   r1,r0                     ; 080EBA2E
lsl   r1,r1,0x1                 ; 080EBA30
ldrb  r2,[r3,0x3]               ; 080EBA32
mov   r0,0xF                    ; 080EBA34
neg   r0,r0                     ; 080EBA36
and   r0,r2                     ; 080EBA38
orr   r0,r1                     ; 080EBA3A
strb  r0,[r3,0x3]               ; 080EBA3C
add   r6,0x4                    ; 080EBA3E
lsl   r6,r6,0x10                ; 080EBA40
lsr   r6,r6,0x10                ; 080EBA42
mov   r1,r8                     ; 080EBA44
ldrh  r0,[r1]                   ; 080EBA46
lsl   r0,r0,0x5                 ; 080EBA48
add   r0,r9                     ; 080EBA4A
str   r0,[r5]                   ; 080EBA4C
ldr   r0,=0x030021A8            ; 080EBA4E
ldrh  r1,[r7,0x2E]              ; 080EBA50
strh  r1,[r0,0x4]               ; 080EBA52
ldr   r2,=Data081AF2CC          ; 080EBA54
ldrh  r1,[r7,0x2A]              ; 080EBA56
lsl   r1,r1,0x1                 ; 080EBA58
add   r1,r1,r2                  ; 080EBA5A
ldrh  r1,[r1]                   ; 080EBA5C
strh  r1,[r0]                   ; 080EBA5E
ldrh  r1,[r7,0x2C]              ; 080EBA60
lsl   r1,r1,0x1                 ; 080EBA62
add   r1,r1,r2                  ; 080EBA64
ldrh  r1,[r1]                   ; 080EBA66
strh  r1,[r0,0x2]               ; 080EBA68
ldr   r4,=0x03007030            ; 080EBA6A
mov   r1,r4                     ; 080EBA6C
mov   r2,0x1                    ; 080EBA6E
mov   r3,0x2                    ; 080EBA70
bl    swi_0F                    ; 080EBA72
ldr   r0,[r5]                   ; 080EBA76
ldrh  r1,[r4]                   ; 080EBA78
strh  r1,[r0,0x6]               ; 080EBA7A
add   r0,0x8                    ; 080EBA7C
str   r0,[r5]                   ; 080EBA7E
ldrh  r1,[r4,0x2]               ; 080EBA80
strh  r1,[r0,0x6]               ; 080EBA82
add   r0,0x8                    ; 080EBA84
str   r0,[r5]                   ; 080EBA86
ldrh  r1,[r4,0x4]               ; 080EBA88
strh  r1,[r0,0x6]               ; 080EBA8A
add   r0,0x8                    ; 080EBA8C
str   r0,[r5]                   ; 080EBA8E
ldrh  r1,[r4,0x6]               ; 080EBA90
strh  r1,[r0,0x6]               ; 080EBA92
mov   r1,r8                     ; 080EBA94
ldrh  r0,[r1]                   ; 080EBA96
add   r0,0x1                    ; 080EBA98
strh  r0,[r1]                   ; 080EBA9A
mov   r0,r10                    ; 080EBA9C
strh  r6,[r0]                   ; 080EBA9E
@@Code080EBAA0:
pop   {r3-r5}                   ; 080EBAA0
mov   r8,r3                     ; 080EBAA2
mov   r9,r4                     ; 080EBAA4
mov   r10,r5                    ; 080EBAA6
pop   {r4-r7}                   ; 080EBAA8
pop   {r0}                      ; 080EBAAA
bx    r0                        ; 080EBAAC
.pool                           ; 080EBAAE

Sub080EBAE4:
push  {r4-r6,lr}                ; 080EBAE4
mov   r4,r0                     ; 080EBAE6
add   r0,0xB8                   ; 080EBAE8
ldrh  r1,[r0]                   ; 080EBAEA
sub   r0,0x20                   ; 080EBAEC
mov   r2,0x0                    ; 080EBAEE
strh  r1,[r0]                   ; 080EBAF0
add   r0,0x24                   ; 080EBAF2
strh  r2,[r0]                   ; 080EBAF4
mov   r1,r4                     ; 080EBAF6
add   r1,0xBE                   ; 080EBAF8
mov   r0,0x48                   ; 080EBAFA
strh  r0,[r1]                   ; 080EBAFC
mov   r0,r4                     ; 080EBAFE
add   r0,0x9A                   ; 080EBB00
strh  r2,[r0]                   ; 080EBB02
mov   r0,r4                     ; 080EBB04
bl    Sub080EC44C               ; 080EBB06
mov   r0,r4                     ; 080EBB0A
add   r0,0x9C                   ; 080EBB0C
ldrh  r2,[r0]                   ; 080EBB0E
lsl   r0,r2,0x11                ; 080EBB10
lsr   r5,r0,0x10                ; 080EBB12
ldr   r6,=Data081960F2          ; 080EBB14
add   r4,0x2A                   ; 080EBB16
@@Code080EBB18:
bl    GenRandomByte             ; 080EBB18  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 080EBB1C
mov   r1,0xE0                   ; 080EBB1E
lsl   r1,r1,0xC                 ; 080EBB20
and   r1,r0                     ; 080EBB22
lsr   r3,r1,0x11                ; 080EBB24
lsl   r0,r3,0x1                 ; 080EBB26
add   r0,r0,r6                  ; 080EBB28
ldrh  r2,[r0]                   ; 080EBB2A
add   r0,r5,0x2                 ; 080EBB2C
asr   r0,r0,0x1                 ; 080EBB2E
add   r0,0x3A                   ; 080EBB30
lsl   r0,r0,0x1                 ; 080EBB32
add   r0,r4,r0                  ; 080EBB34
ldrh  r0,[r0]                   ; 080EBB36
cmp   r2,r0                     ; 080EBB38
beq   @@Code080EBB18            ; 080EBB3A
lsr   r1,r5,0x1                 ; 080EBB3C
mov   r0,r1                     ; 080EBB3E
add   r0,0x3A                   ; 080EBB40
lsl   r0,r0,0x1                 ; 080EBB42
add   r0,r4,r0                  ; 080EBB44
strh  r2,[r0]                   ; 080EBB46
add   r1,0x40                   ; 080EBB48
lsl   r1,r1,0x1                 ; 080EBB4A
add   r1,r4,r1                  ; 080EBB4C
strh  r3,[r1]                   ; 080EBB4E
sub   r0,r5,0x2                 ; 080EBB50
lsl   r0,r0,0x10                ; 080EBB52
lsr   r5,r0,0x10                ; 080EBB54
mov   r0,0x80                   ; 080EBB56
lsl   r0,r0,0x8                 ; 080EBB58
mov   r1,r0                     ; 080EBB5A
mov   r0,r5                     ; 080EBB5C
and   r0,r1                     ; 080EBB5E
cmp   r0,0x0                    ; 080EBB60
beq   @@Code080EBB18            ; 080EBB62
pop   {r4-r6}                   ; 080EBB64
pop   {r0}                      ; 080EBB66
bx    r0                        ; 080EBB68
.pool                           ; 080EBB6A

Sub080EBB70:
push  {r4-r7,lr}                ; 080EBB70
mov   r7,r10                    ; 080EBB72
mov   r6,r9                     ; 080EBB74
mov   r5,r8                     ; 080EBB76
push  {r5-r7}                   ; 080EBB78
lsl   r0,r0,0x10                ; 080EBB7A
lsr   r6,r0,0x10                ; 080EBB7C
ldr   r2,=0x03002200            ; 080EBB7E
ldr   r1,=0x47D0                ; 080EBB80
add   r0,r2,r1                  ; 080EBB82
ldrh  r0,[r0]                   ; 080EBB84
mov   r12,r0                    ; 080EBB86
mov   r3,0x0                    ; 080EBB88
mov   r9,r3                     ; 080EBB8A
ldr   r1,=0x03007240            ; 080EBB8C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]                   ; 080EBB8E
ldr   r3,=0x29D2                ; 080EBB90
add   r0,r0,r3                  ; 080EBB92
ldrh  r0,[r0]                   ; 080EBB94
cmp   r9,r0                     ; 080EBB96
blo   @@Code080EBB9C            ; 080EBB98
b     @@Code080EBCAE            ; 080EBB9A
@@Code080EBB9C:
ldr   r0,=0x030021B0            ; 080EBB9C
mov   r8,r0                     ; 080EBB9E
mov   r1,0x3F                   ; 080EBBA0
mov   r10,r1                    ; 080EBBA2
@@Code080EBBA4:
mov   r3,r12                    ; 080EBBA4
lsr   r2,r3,0x2                 ; 080EBBA6
lsl   r2,r2,0x3                 ; 080EBBA8
ldr   r0,=0x03005A00            ; 080EBBAA
add   r2,r2,r0                  ; 080EBBAC
mov   r1,r8                     ; 080EBBAE
str   r2,[r1]                   ; 080EBBB0
ldrb  r1,[r2,0x5]               ; 080EBBB2
mov   r0,0xD                    ; 080EBBB4
neg   r0,r0                     ; 080EBBB6
and   r0,r1                     ; 080EBBB8
mov   r1,0x8                    ; 080EBBBA
orr   r0,r1                     ; 080EBBBC
strb  r0,[r2,0x5]               ; 080EBBBE
ldr   r2,=Data08195FA7          ; 080EBBC0
add   r0,r6,r2                  ; 080EBBC2
ldrb  r3,[r0]                   ; 080EBBC4
add   r3,0x20                   ; 080EBBC6
mov   r0,0xFF                   ; 080EBBC8
and   r3,r0                     ; 080EBBCA
cmp   r3,0x7F                   ; 080EBBCC
bls   @@Code080EBBD8            ; 080EBBCE
mov   r1,0xFF                   ; 080EBBD0
lsl   r1,r1,0x8                 ; 080EBBD2
mov   r0,r1                     ; 080EBBD4
orr   r3,r0                     ; 080EBBD6
@@Code080EBBD8:
ldr   r7,=0x03007240            ; 080EBBD8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r7]                   ; 080EBBDA
mov   r2,0xED                   ; 080EBBDC
lsl   r2,r2,0x2                 ; 080EBBDE
add   r5,r0,r2                  ; 080EBBE0
ldr   r1,[r5]                   ; 080EBBE2
asr   r1,r1,0x8                 ; 080EBBE4
add   r1,r3,r1                  ; 080EBBE6
mov   r3,r8                     ; 080EBBE8
ldr   r4,[r3]                   ; 080EBBEA
lsl   r1,r1,0x17                ; 080EBBEC
lsr   r1,r1,0x17                ; 080EBBEE
ldrh  r2,[r4,0x2]               ; 080EBBF0
ldr   r0,=0xFFFFFE00            ; 080EBBF2
and   r0,r2                     ; 080EBBF4
orr   r0,r1                     ; 080EBBF6
strh  r0,[r4,0x2]               ; 080EBBF8
ldr   r1,=Data08195F46          ; 080EBBFA
add   r0,r6,r1                  ; 080EBBFC
ldrb  r3,[r0]                   ; 080EBBFE
add   r3,0x20                   ; 080EBC00
mov   r2,0xFF                   ; 080EBC02
and   r3,r2                     ; 080EBC04
cmp   r3,0x7F                   ; 080EBC06
bls   @@Code080EBC12            ; 080EBC08
mov   r1,0xFF                   ; 080EBC0A
lsl   r1,r1,0x8                 ; 080EBC0C
mov   r0,r1                     ; 080EBC0E
orr   r3,r0                     ; 080EBC10
@@Code080EBC12:
ldr   r0,[r5,0x4]               ; 080EBC12
asr   r0,r0,0x8                 ; 080EBC14
add   r0,r3,r0                  ; 080EBC16
strb  r0,[r4]                   ; 080EBC18
ldr   r2,[r7]                   ; 080EBC1A
ldr   r3,=0x29EA                ; 080EBC1C
add   r0,r2,r3                  ; 080EBC1E
ldrh  r3,[r0]                   ; 080EBC20
mov   r0,r8                     ; 080EBC22
ldr   r4,[r0]                   ; 080EBC24
ldr   r0,=0x03FF                ; 080EBC26
and   r3,r0                     ; 080EBC28
ldrh  r1,[r4,0x4]               ; 080EBC2A
ldr   r0,=0xFFFFFC00            ; 080EBC2C
and   r0,r1                     ; 080EBC2E
orr   r0,r3                     ; 080EBC30
strh  r0,[r4,0x4]               ; 080EBC32
ldr   r1,=0x29E6                ; 080EBC34
add   r2,r2,r1                  ; 080EBC36
ldrh  r0,[r2]                   ; 080EBC38
cmp   r0,0x0                    ; 080EBC3A
beq   @@Code080EBC56            ; 080EBC3C
ldrb  r1,[r4,0x3]               ; 080EBC3E
mov   r0,r10                    ; 080EBC40
and   r0,r1                     ; 080EBC42
mov   r1,0x40                   ; 080EBC44
orr   r0,r1                     ; 080EBC46
strb  r0,[r4,0x3]               ; 080EBC48
mov   r3,r8                     ; 080EBC4A
ldr   r2,[r3]                   ; 080EBC4C
ldrb  r1,[r2,0x1]               ; 080EBC4E
mov   r0,r10                    ; 080EBC50
and   r0,r1                     ; 080EBC52
strb  r0,[r2,0x1]               ; 080EBC54
@@Code080EBC56:
ldr   r1,=Data08196008          ; 080EBC56
add   r0,r6,r1                  ; 080EBC58
ldrb  r3,[r0]                   ; 080EBC5A
mov   r0,0x80                   ; 080EBC5C
and   r0,r3                     ; 080EBC5E
cmp   r0,0x0                    ; 080EBC60
beq   @@Code080EBC70            ; 080EBC62
mov   r2,r8                     ; 080EBC64
ldr   r0,[r2]                   ; 080EBC66
ldrb  r1,[r0,0x3]               ; 080EBC68
mov   r2,0x20                   ; 080EBC6A
orr   r1,r2                     ; 080EBC6C
strb  r1,[r0,0x3]               ; 080EBC6E
@@Code080EBC70:
mov   r0,0x40                   ; 080EBC70
and   r0,r3                     ; 080EBC72
cmp   r0,0x0                    ; 080EBC74
beq   @@Code080EBC84            ; 080EBC76
mov   r3,r8                     ; 080EBC78
ldr   r0,[r3]                   ; 080EBC7A
ldrb  r1,[r0,0x3]               ; 080EBC7C
mov   r2,0x10                   ; 080EBC7E
orr   r1,r2                     ; 080EBC80
strb  r1,[r0,0x3]               ; 080EBC82
@@Code080EBC84:
add   r0,r6,0x1                 ; 080EBC84
lsl   r0,r0,0x10                ; 080EBC86
lsr   r6,r0,0x10                ; 080EBC88
mov   r0,r12                    ; 080EBC8A
add   r0,0x4                    ; 080EBC8C
lsl   r0,r0,0x10                ; 080EBC8E
lsr   r0,r0,0x10                ; 080EBC90
mov   r12,r0                    ; 080EBC92
mov   r0,r9                     ; 080EBC94
add   r0,0x1                    ; 080EBC96
lsl   r0,r0,0x10                ; 080EBC98
lsr   r0,r0,0x10                ; 080EBC9A
mov   r9,r0                     ; 080EBC9C
ldr   r1,=0x03007240            ; 080EBC9E  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]                   ; 080EBCA0
ldr   r2,=0x29D2                ; 080EBCA2
add   r0,r0,r2                  ; 080EBCA4
ldrh  r0,[r0]                   ; 080EBCA6
cmp   r9,r0                     ; 080EBCA8
bhs   @@Code080EBCAE            ; 080EBCAA
b     @@Code080EBBA4            ; 080EBCAC
@@Code080EBCAE:
ldr   r3,=0x03002200            ; 080EBCAE
ldr   r1,=0x47D0                ; 080EBCB0
add   r0,r3,r1                  ; 080EBCB2
mov   r2,r12                    ; 080EBCB4
strh  r2,[r0]                   ; 080EBCB6
pop   {r3-r5}                   ; 080EBCB8
mov   r8,r3                     ; 080EBCBA
mov   r9,r4                     ; 080EBCBC
mov   r10,r5                    ; 080EBCBE
pop   {r4-r7}                   ; 080EBCC0
pop   {r0}                      ; 080EBCC2
bx    r0                        ; 080EBCC4
.pool                           ; 080EBCC6

Sub080EBD00:
push  {lr}                      ; 080EBD00
bl    Sub080EA534               ; 080EBD02
pop   {r0}                      ; 080EBD06
bx    r0                        ; 080EBD08
.pool                           ; 080EBD0A

Sub080EBD0C:
push  {r4-r5,lr}                ; 080EBD0C
mov   r4,r0                     ; 080EBD0E
ldr   r5,=0x03007240            ; 080EBD10  Normal gameplay IWRAM (0300220C)
ldr   r1,[r5]                   ; 080EBD12
ldr   r0,=0x29D2                ; 080EBD14
add   r2,r1,r0                  ; 080EBD16
mov   r0,0x8                    ; 080EBD18
strh  r0,[r2]                   ; 080EBD1A
ldr   r0,=0x29E6                ; 080EBD1C
add   r2,r1,r0                  ; 080EBD1E
mov   r0,0x2                    ; 080EBD20
strh  r0,[r2]                   ; 080EBD22
ldr   r2,=0x29EA                ; 080EBD24
add   r1,r1,r2                  ; 080EBD26
ldr   r0,=0x01C5                ; 080EBD28
strh  r0,[r1]                   ; 080EBD2A
mov   r0,0x59                   ; 080EBD2C
bl    Sub080EBB70               ; 080EBD2E
mov   r1,r4                     ; 080EBD32
add   r1,0x94                   ; 080EBD34
ldrh  r0,[r1]                   ; 080EBD36
sub   r0,0x1                    ; 080EBD38
strh  r0,[r1]                   ; 080EBD3A
lsl   r0,r0,0x10                ; 080EBD3C
cmp   r0,0x0                    ; 080EBD3E
bne   @@Code080EBDE0            ; 080EBD40
add   r1,0x2                    ; 080EBD42
ldrh  r0,[r1]                   ; 080EBD44
add   r0,0x1                    ; 080EBD46
strh  r0,[r1]                   ; 080EBD48
ldrh  r0,[r4,0xC]               ; 080EBD4A
add   r0,0x1                    ; 080EBD4C
strh  r0,[r4,0xC]               ; 080EBD4E
ldr   r0,[r5]                   ; 080EBD50
ldr   r1,=0x02BE                ; 080EBD52
add   r0,r0,r1                  ; 080EBD54
ldrh  r0,[r0]                   ; 080EBD56
cmp   r0,0x4                    ; 080EBD58
beq   @@Code080EBD7C            ; 080EBD5A
ldrh  r0,[r4,0x10]              ; 080EBD5C
add   r0,0x1                    ; 080EBD5E
strh  r0,[r4,0x10]              ; 080EBD60
b     @@Code080EBDDA            ; 080EBD62
.pool                           ; 080EBD64

@@Code080EBD7C:
ldrh  r0,[r4,0x1C]              ; 080EBD7C
cmp   r0,0x0                    ; 080EBD7E
bne   @@Code080EBDD4            ; 080EBD80
mov   r0,0x11                   ; 080EBD82
bl    Sub0804A2AC               ; 080EBD84
lsl   r0,r0,0x18                ; 080EBD88
lsr   r1,r0,0x18                ; 080EBD8A
mov   r0,0x80                   ; 080EBD8C
and   r0,r1                     ; 080EBD8E
cmp   r0,0x0                    ; 080EBD90
beq   @@Code080EBD9C            ; 080EBD92
mov   r0,r4                     ; 080EBD94
bl    Sub080EA534               ; 080EBD96
b     @@Code080EBDE0            ; 080EBD9A
@@Code080EBD9C:
mov   r0,0xB0                   ; 080EBD9C
mul   r0,r1                     ; 080EBD9E
mov   r2,0x95                   ; 080EBDA0
lsl   r2,r2,0x2                 ; 080EBDA2
add   r0,r0,r2                  ; 080EBDA4
ldr   r1,[r5]                   ; 080EBDA6
add   r1,r1,r0                  ; 080EBDA8
ldr   r0,=0x03002200            ; 080EBDAA
ldr   r2,=0x4A14                ; 080EBDAC
add   r0,r0,r2                  ; 080EBDAE
ldrb  r0,[r0]                   ; 080EBDB0
mov   r2,r1                     ; 080EBDB2
add   r2,0x6A                   ; 080EBDB4
strh  r0,[r2]                   ; 080EBDB6
mov   r0,0x80                   ; 080EBDB8
lsl   r0,r0,0x7                 ; 080EBDBA
str   r0,[r1,0x4]               ; 080EBDBC
mov   r0,0xD0                   ; 080EBDBE
lsl   r0,r0,0x7                 ; 080EBDC0
str   r0,[r1]                   ; 080EBDC2
ldrh  r0,[r4,0x22]              ; 080EBDC4
add   r0,0x1                    ; 080EBDC6
strh  r0,[r4,0x22]              ; 080EBDC8
b     @@Code080EBDDA            ; 080EBDCA
.pool                           ; 080EBDCC

@@Code080EBDD4:
ldrh  r0,[r4,0x24]              ; 080EBDD4
add   r0,0x1                    ; 080EBDD6
strh  r0,[r4,0x24]              ; 080EBDD8
@@Code080EBDDA:
mov   r0,r4                     ; 080EBDDA
bl    Sub080EA534               ; 080EBDDC
@@Code080EBDE0:
pop   {r4-r5}                   ; 080EBDE0
pop   {r0}                      ; 080EBDE2
bx    r0                        ; 080EBDE4
.pool                           ; 080EBDE6

Sub080EBDE8:
push  {r4,lr}                   ; 080EBDE8
mov   r4,r0                     ; 080EBDEA
ldr   r0,=0x03007240            ; 080EBDEC  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080EBDEE
ldr   r0,=0x29D2                ; 080EBDF0
add   r2,r1,r0                  ; 080EBDF2
mov   r3,0x0                    ; 080EBDF4
mov   r0,0x20                   ; 080EBDF6
strh  r0,[r2]                   ; 080EBDF8
ldr   r2,=0x29E6                ; 080EBDFA
add   r0,r1,r2                  ; 080EBDFC
strh  r3,[r0]                   ; 080EBDFE
ldr   r0,=0x29EA                ; 080EBE00
add   r1,r1,r0                  ; 080EBE02
ldr   r0,=0x01C3                ; 080EBE04
strh  r0,[r1]                   ; 080EBE06
mov   r0,0x39                   ; 080EBE08
bl    Sub080EBB70               ; 080EBE0A
mov   r2,r4                     ; 080EBE0E
add   r2,0x94                   ; 080EBE10
ldrh  r0,[r2]                   ; 080EBE12
sub   r0,0x1                    ; 080EBE14
strh  r0,[r2]                   ; 080EBE16
lsl   r0,r0,0x10                ; 080EBE18
cmp   r0,0x0                    ; 080EBE1A
bne   @@Code080EBE2C            ; 080EBE1C
mov   r0,r4                     ; 080EBE1E
add   r0,0x96                   ; 080EBE20
ldrh  r1,[r0]                   ; 080EBE22
add   r1,0x1                    ; 080EBE24
strh  r1,[r0]                   ; 080EBE26
mov   r0,0x2                    ; 080EBE28
strh  r0,[r2]                   ; 080EBE2A
@@Code080EBE2C:
pop   {r4}                      ; 080EBE2C
pop   {r0}                      ; 080EBE2E
bx    r0                        ; 080EBE30
.pool                           ; 080EBE32

Sub080EBE48:
push  {r4,lr}                   ; 080EBE48
mov   r4,r0                     ; 080EBE4A
ldr   r0,=0x03007240            ; 080EBE4C  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080EBE4E
ldr   r0,=0x29D2                ; 080EBE50
add   r2,r1,r0                  ; 080EBE52
mov   r3,0x0                    ; 080EBE54
mov   r0,0x20                   ; 080EBE56
strh  r0,[r2]                   ; 080EBE58
ldr   r2,=0x29E6                ; 080EBE5A
add   r0,r1,r2                  ; 080EBE5C
strh  r3,[r0]                   ; 080EBE5E
ldr   r0,=0x29EA                ; 080EBE60
add   r1,r1,r0                  ; 080EBE62
ldr   r0,=0x01C3                ; 080EBE64
strh  r0,[r1]                   ; 080EBE66
mov   r0,0x19                   ; 080EBE68
bl    Sub080EBB70               ; 080EBE6A
mov   r2,r4                     ; 080EBE6E
add   r2,0x94                   ; 080EBE70
ldrh  r0,[r2]                   ; 080EBE72
sub   r0,0x1                    ; 080EBE74
strh  r0,[r2]                   ; 080EBE76
lsl   r0,r0,0x10                ; 080EBE78
cmp   r0,0x0                    ; 080EBE7A
bne   @@Code080EBE8C            ; 080EBE7C
mov   r0,r4                     ; 080EBE7E
add   r0,0x96                   ; 080EBE80
ldrh  r1,[r0]                   ; 080EBE82
add   r1,0x1                    ; 080EBE84
strh  r1,[r0]                   ; 080EBE86
mov   r0,0x2                    ; 080EBE88
strh  r0,[r2]                   ; 080EBE8A
@@Code080EBE8C:
pop   {r4}                      ; 080EBE8C
pop   {r0}                      ; 080EBE8E
bx    r0                        ; 080EBE90
.pool                           ; 080EBE92

Sub080EBEA8:
push  {r4,lr}                   ; 080EBEA8
mov   r4,r0                     ; 080EBEAA
ldr   r0,=0x03007240            ; 080EBEAC  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080EBEAE
ldr   r0,=0x29D2                ; 080EBEB0
add   r2,r1,r0                  ; 080EBEB2
mov   r3,0x0                    ; 080EBEB4
mov   r0,0x10                   ; 080EBEB6
strh  r0,[r2]                   ; 080EBEB8
ldr   r2,=0x29E6                ; 080EBEBA
add   r0,r1,r2                  ; 080EBEBC
strh  r3,[r0]                   ; 080EBEBE
ldr   r0,=0x29EA                ; 080EBEC0
add   r1,r1,r0                  ; 080EBEC2
ldr   r0,=0x01C3                ; 080EBEC4
strh  r0,[r1]                   ; 080EBEC6
mov   r0,0x9                    ; 080EBEC8
bl    Sub080EBB70               ; 080EBECA
mov   r2,r4                     ; 080EBECE
add   r2,0x94                   ; 080EBED0
ldrh  r0,[r2]                   ; 080EBED2
sub   r0,0x1                    ; 080EBED4
strh  r0,[r2]                   ; 080EBED6
lsl   r0,r0,0x10                ; 080EBED8
cmp   r0,0x0                    ; 080EBEDA
bne   @@Code080EBEEC            ; 080EBEDC
mov   r0,r4                     ; 080EBEDE
add   r0,0x96                   ; 080EBEE0
ldrh  r1,[r0]                   ; 080EBEE2
add   r1,0x1                    ; 080EBEE4
strh  r1,[r0]                   ; 080EBEE6
mov   r0,0x2                    ; 080EBEE8
strh  r0,[r2]                   ; 080EBEEA
@@Code080EBEEC:
pop   {r4}                      ; 080EBEEC
pop   {r0}                      ; 080EBEEE
bx    r0                        ; 080EBEF0
.pool                           ; 080EBEF2

Sub080EBF08:
push  {r4-r6,lr}                ; 080EBF08
mov   r4,r0                     ; 080EBF0A
ldr   r0,=0x03007240            ; 080EBF0C  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080EBF0E
ldr   r0,=0x29D2                ; 080EBF10
add   r2,r1,r0                  ; 080EBF12
mov   r0,0x4                    ; 080EBF14
strh  r0,[r2]                   ; 080EBF16
ldr   r2,=0x29E6                ; 080EBF18
add   r0,r1,r2                  ; 080EBF1A
mov   r6,0x2                    ; 080EBF1C
strh  r6,[r0]                   ; 080EBF1E
ldr   r0,=0x29EA                ; 080EBF20
add   r1,r1,r0                  ; 080EBF22
mov   r0,0x82                   ; 080EBF24
strh  r0,[r1]                   ; 080EBF26
mov   r0,0x5                    ; 080EBF28
bl    Sub080EBB70               ; 080EBF2A
mov   r5,r4                     ; 080EBF2E
add   r5,0x96                   ; 080EBF30
ldrh  r1,[r5]                   ; 080EBF32
mov   r0,0x1                    ; 080EBF34
and   r1,r0                     ; 080EBF36
cmp   r1,0x0                    ; 080EBF38
bne   @@Code080EBF44            ; 080EBF3A
mov   r0,r4                     ; 080EBF3C
mov   r1,0x1                    ; 080EBF3E
bl    Sub080EB938               ; 080EBF40
@@Code080EBF44:
mov   r1,r4                     ; 080EBF44
add   r1,0x94                   ; 080EBF46
ldrh  r0,[r1]                   ; 080EBF48
sub   r0,0x1                    ; 080EBF4A
strh  r0,[r1]                   ; 080EBF4C
lsl   r0,r0,0x10                ; 080EBF4E
cmp   r0,0x0                    ; 080EBF50
bne   @@Code080EBF5C            ; 080EBF52
ldrh  r0,[r5]                   ; 080EBF54
add   r0,0x1                    ; 080EBF56
strh  r0,[r5]                   ; 080EBF58
strh  r6,[r1]                   ; 080EBF5A
@@Code080EBF5C:
ldrh  r1,[r4,0x2A]              ; 080EBF5C
mov   r0,r1                     ; 080EBF5E
sub   r0,0x10                   ; 080EBF60
lsl   r0,r0,0x10                ; 080EBF62
lsr   r1,r0,0x10                ; 080EBF64
mov   r2,0x80                   ; 080EBF66
lsl   r2,r2,0x8                 ; 080EBF68
mov   r0,r1                     ; 080EBF6A
and   r0,r2                     ; 080EBF6C
cmp   r0,0x0                    ; 080EBF6E
beq   @@Code080EBF74            ; 080EBF70
mov   r1,0x1                    ; 080EBF72
@@Code080EBF74:
strh  r1,[r4,0x2A]              ; 080EBF74
ldrh  r1,[r4,0x2C]              ; 080EBF76
mov   r0,r1                     ; 080EBF78
sub   r0,0x10                   ; 080EBF7A
lsl   r0,r0,0x10                ; 080EBF7C
lsr   r1,r0,0x10                ; 080EBF7E
mov   r0,r1                     ; 080EBF80
and   r0,r2                     ; 080EBF82
cmp   r0,0x0                    ; 080EBF84
beq   @@Code080EBF8A            ; 080EBF86
mov   r1,0x1                    ; 080EBF88
@@Code080EBF8A:
strh  r1,[r4,0x2C]              ; 080EBF8A
pop   {r4-r6}                   ; 080EBF8C
pop   {r0}                      ; 080EBF8E
bx    r0                        ; 080EBF90
.pool                           ; 080EBF92

Sub080EBFA4:
push  {r4,lr}                   ; 080EBFA4
mov   r4,r0                     ; 080EBFA6
ldr   r0,=0x03007240            ; 080EBFA8  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080EBFAA
ldr   r0,=0x29D2                ; 080EBFAC
add   r2,r1,r0                  ; 080EBFAE
mov   r0,0x1                    ; 080EBFB0
strh  r0,[r2]                   ; 080EBFB2
ldr   r0,=0x29E6                ; 080EBFB4
add   r2,r1,r0                  ; 080EBFB6
mov   r0,0x2                    ; 080EBFB8
strh  r0,[r2]                   ; 080EBFBA
ldr   r0,=0x29EA                ; 080EBFBC
add   r1,r1,r0                  ; 080EBFBE
mov   r0,0x80                   ; 080EBFC0
strh  r0,[r1]                   ; 080EBFC2
mov   r0,0x4                    ; 080EBFC4
bl    Sub080EBB70               ; 080EBFC6
mov   r0,r4                     ; 080EBFCA
mov   r1,0x1                    ; 080EBFCC
bl    Sub080EB938               ; 080EBFCE
mov   r1,r4                     ; 080EBFD2
add   r1,0x96                   ; 080EBFD4
ldrh  r0,[r1]                   ; 080EBFD6
add   r0,0x1                    ; 080EBFD8
strh  r0,[r1]                   ; 080EBFDA
add   r4,0x94                   ; 080EBFDC
mov   r0,0x10                   ; 080EBFDE
strh  r0,[r4]                   ; 080EBFE0
pop   {r4}                      ; 080EBFE2
pop   {r0}                      ; 080EBFE4
bx    r0                        ; 080EBFE6
.pool                           ; 080EBFE8

Sub080EBFF8:
push  {r4-r5,lr}                ; 080EBFF8
mov   r4,r0                     ; 080EBFFA
ldr   r5,=0x03007240            ; 080EBFFC  Normal gameplay IWRAM (0300220C)
ldr   r1,[r5]                   ; 080EBFFE
ldr   r0,=0x29D2                ; 080EC000
add   r2,r1,r0                  ; 080EC002
mov   r0,0x4                    ; 080EC004
strh  r0,[r2]                   ; 080EC006
ldr   r0,=0x29E6                ; 080EC008
add   r2,r1,r0                  ; 080EC00A
mov   r0,0x2                    ; 080EC00C
strh  r0,[r2]                   ; 080EC00E
ldr   r2,=0x29EA                ; 080EC010
add   r1,r1,r2                  ; 080EC012
mov   r0,0xCA                   ; 080EC014
strh  r0,[r1]                   ; 080EC016
mov   r0,0x0                    ; 080EC018
bl    Sub080EBB70               ; 080EC01A
mov   r0,r4                     ; 080EC01E
mov   r1,0x1                    ; 080EC020
bl    Sub080EB938               ; 080EC022
add   r4,0x96                   ; 080EC026
ldrh  r0,[r4]                   ; 080EC028
add   r0,0x1                    ; 080EC02A
strh  r0,[r4]                   ; 080EC02C
ldr   r0,[r5]                   ; 080EC02E
mov   r1,0xED                   ; 080EC030
lsl   r1,r1,0x2                 ; 080EC032
add   r0,r0,r1                  ; 080EC034
ldr   r1,=0x03002200            ; 080EC036
ldr   r0,[r0]                   ; 080EC038
asr   r0,r0,0x8                 ; 080EC03A
ldr   r2,=0x4058                ; 080EC03C
add   r1,r1,r2                  ; 080EC03E
strh  r0,[r1]                   ; 080EC040
mov   r0,0xBD                   ; 080EC042
bl    PlayYISound               ; 080EC044
pop   {r4-r5}                   ; 080EC048
pop   {r0}                      ; 080EC04A
bx    r0                        ; 080EC04C
.pool                           ; 080EC04E

Sub080EC068:
push  {lr}                      ; 080EC068
mov   r1,r0                     ; 080EC06A
add   r1,0x96                   ; 080EC06C
ldrh  r1,[r1]                   ; 080EC06E
ldr   r2,=CodePtrs0819606C      ; 080EC070
lsl   r1,r1,0x2                 ; 080EC072
add   r1,r1,r2                  ; 080EC074
ldr   r1,[r1]                   ; 080EC076
bl    Sub_bx_r1                 ; 080EC078  bx r1
pop   {r0}                      ; 080EC07C
bx    r0                        ; 080EC07E
.pool                           ; 080EC080

Sub080EC084:
push  {r4-r5,lr}                ; 080EC084
mov   r5,r0                     ; 080EC086
mov   r2,0x0                    ; 080EC088
ldr   r0,=0x03007240            ; 080EC08A  Normal gameplay IWRAM (0300220C)
ldr   r4,[r0]                   ; 080EC08C
ldr   r1,=0x02BE                ; 080EC08E
add   r0,r4,r1                  ; 080EC090
ldrh  r3,[r0]                   ; 080EC092
cmp   r3,0x2                    ; 080EC094
beq   @@Code080EC0F4            ; 080EC096
add   r1,0xB0                   ; 080EC098
add   r0,r4,r1                  ; 080EC09A
ldrh  r3,[r0]                   ; 080EC09C
cmp   r3,0x2                    ; 080EC09E
bne   @@Code080EC0C0            ; 080EC0A0
ldrh  r0,[r5,0x30]              ; 080EC0A2
lsr   r3,r0,0x8                 ; 080EC0A4
cmp   r3,0xFD                   ; 080EC0A6
beq   @@Code080EC120            ; 080EC0A8
ldr   r2,=0x29D2                ; 080EC0AA
add   r1,r4,r2                  ; 080EC0AC
mov   r2,0x0                    ; 080EC0AE
b     @@Code080EC0C4            ; 080EC0B0
.pool                           ; 080EC0B2

@@Code080EC0C0:
ldr   r0,=0x29D2                ; 080EC0C0
add   r1,r4,r0                  ; 080EC0C2
@@Code080EC0C4:
mov   r0,0xD                    ; 080EC0C4
strh  r0,[r1]                   ; 080EC0C6
ldr   r0,=0x29D6                ; 080EC0C8
add   r1,r4,r0                  ; 080EC0CA
mov   r0,0x3                    ; 080EC0CC
strh  r0,[r1]                   ; 080EC0CE
ldr   r1,=0x29E6                ; 080EC0D0
add   r0,r4,r1                  ; 080EC0D2
strh  r2,[r0]                   ; 080EC0D4
mov   r0,r5                     ; 080EC0D6
mov   r1,0x4                    ; 080EC0D8
bl    Sub080EB2A4               ; 080EC0DA
mov   r0,0x4                    ; 080EC0DE
bl    Sub080EB27C               ; 080EC0E0
b     @@Code080EC120            ; 080EC0E4
.pool                           ; 080EC0E6

@@Code080EC0F4:
ldrh  r0,[r5,0x30]              ; 080EC0F4
lsr   r3,r0,0x8                 ; 080EC0F6
cmp   r3,0xFD                   ; 080EC0F8
beq   @@Code080EC120            ; 080EC0FA
ldr   r0,=0x29D2                ; 080EC0FC
add   r1,r4,r0                  ; 080EC0FE
mov   r0,0xD                    ; 080EC100
strh  r0,[r1]                   ; 080EC102
ldr   r0,=0x29D6                ; 080EC104
add   r1,r4,r0                  ; 080EC106
mov   r0,0x3                    ; 080EC108
strh  r0,[r1]                   ; 080EC10A
ldr   r1,=0x29E6                ; 080EC10C
add   r0,r4,r1                  ; 080EC10E
strh  r2,[r0]                   ; 080EC110
mov   r0,r5                     ; 080EC112
mov   r1,0x4                    ; 080EC114
bl    Sub080EB2A4               ; 080EC116
mov   r0,0x4                    ; 080EC11A
bl    Sub080EB27C               ; 080EC11C
@@Code080EC120:
mov   r0,r5                     ; 080EC120
bl    Sub080EB44C               ; 080EC122
ldr   r2,=0x03007240            ; 080EC126  Normal gameplay IWRAM (0300220C)
mov   r0,0x4                    ; 080EC128
lsr   r0,r0,0x1                 ; 080EC12A
mov   r1,0xB0                   ; 080EC12C
mul   r0,r1                     ; 080EC12E
mov   r1,0x95                   ; 080EC130
lsl   r1,r1,0x2                 ; 080EC132
add   r0,r0,r1                  ; 080EC134
ldr   r1,[r2]                   ; 080EC136
add   r3,r1,r0                  ; 080EC138
ldr   r2,[r3]                   ; 080EC13A
ldr   r0,=0x1DFF                ; 080EC13C
cmp   r2,r0                     ; 080EC13E
bgt   @@Code080EC1B4            ; 080EC140
add   r0,0x1                    ; 080EC142
str   r0,[r3]                   ; 080EC144
mov   r0,0xA0                   ; 080EC146
lsl   r0,r0,0x7                 ; 080EC148
str   r0,[r3,0x4]               ; 080EC14A
mov   r0,r3                     ; 080EC14C
add   r0,0x6A                   ; 080EC14E
mov   r4,0x0                    ; 080EC150
strh  r4,[r0]                   ; 080EC152
mov   r3,0x1                    ; 080EC154
ldr   r2,=0x02BE                ; 080EC156
add   r0,r1,r2                  ; 080EC158
strh  r3,[r0]                   ; 080EC15A
mov   r0,r5                     ; 080EC15C
add   r0,0x80                   ; 080EC15E
strh  r4,[r0]                   ; 080EC160
sub   r0,0x10                   ; 080EC162
strh  r4,[r0]                   ; 080EC164
add   r0,0x2A                   ; 080EC166
strh  r4,[r0]                   ; 080EC168
mov   r1,r5                     ; 080EC16A
add   r1,0x94                   ; 080EC16C
mov   r0,0x8                    ; 080EC16E
strh  r0,[r1]                   ; 080EC170
ldr   r1,=0x03002200            ; 080EC172
ldr   r0,=0x03006D80            ; 080EC174
ldr   r0,[r0]                   ; 080EC176
asr   r0,r0,0x8                 ; 080EC178
ldr   r2,=0x4058                ; 080EC17A
add   r1,r1,r2                  ; 080EC17C
strh  r0,[r1]                   ; 080EC17E
mov   r0,0xD                    ; 080EC180
bl    PlayYISound               ; 080EC182
mov   r0,r5                     ; 080EC186
add   r0,0xC0                   ; 080EC188
strh  r4,[r0]                   ; 080EC18A
b     @@Code080EC210            ; 080EC18C
.pool                           ; 080EC18E

@@Code080EC1B4:
ldr   r0,=0x94FF                ; 080EC1B4
cmp   r2,r0                     ; 080EC1B6
ble   @@Code080EC232            ; 080EC1B8
sub   r0,0xFF                   ; 080EC1BA
str   r0,[r3]                   ; 080EC1BC
mov   r0,0xA0                   ; 080EC1BE
lsl   r0,r0,0x7                 ; 080EC1C0
str   r0,[r3,0x4]               ; 080EC1C2
mov   r0,r3                     ; 080EC1C4
add   r0,0x6A                   ; 080EC1C6
mov   r2,0x0                    ; 080EC1C8
strh  r2,[r0]                   ; 080EC1CA
mov   r0,0xC1                   ; 080EC1CC
lsl   r0,r0,0x2                 ; 080EC1CE
add   r3,r1,r0                  ; 080EC1D0
add   r0,0x6A                   ; 080EC1D2
add   r1,r1,r0                  ; 080EC1D4
mov   r0,0x1                    ; 080EC1D6
strh  r0,[r1]                   ; 080EC1D8
mov   r0,r5                     ; 080EC1DA
add   r0,0x82                   ; 080EC1DC
strh  r2,[r0]                   ; 080EC1DE
sub   r0,0x10                   ; 080EC1E0
strh  r2,[r0]                   ; 080EC1E2
add   r0,0x28                   ; 080EC1E4
strh  r2,[r0]                   ; 080EC1E6
mov   r1,r5                     ; 080EC1E8
add   r1,0x94                   ; 080EC1EA
mov   r0,0x8                    ; 080EC1EC
strh  r0,[r1]                   ; 080EC1EE
ldr   r1,=0x03002200            ; 080EC1F0
ldr   r0,[r3]                   ; 080EC1F2
asr   r0,r0,0x8                 ; 080EC1F4
ldr   r2,=0x4058                ; 080EC1F6
add   r1,r1,r2                  ; 080EC1F8
strh  r0,[r1]                   ; 080EC1FA
mov   r0,0xD                    ; 080EC1FC
bl    PlayYISound               ; 080EC1FE
ldrh  r3,[r5,0x1C]              ; 080EC202
cmp   r3,0x0                    ; 080EC204
beq   @@Code080EC22C            ; 080EC206
mov   r1,r5                     ; 080EC208
add   r1,0xC0                   ; 080EC20A
mov   r0,0x4                    ; 080EC20C
strh  r0,[r1]                   ; 080EC20E
@@Code080EC210:
mov   r0,r5                     ; 080EC210
bl    Sub080EBAE4               ; 080EC212
mov   r0,r5                     ; 080EC216
bl    Sub080ECA48               ; 080EC218
b     @@Code080EC232            ; 080EC21C
.pool                           ; 080EC21E

@@Code080EC22C:
mov   r0,r5                     ; 080EC22C
bl    Sub080EC610               ; 080EC22E
@@Code080EC232:
mov   r0,r5                     ; 080EC232
mov   r1,0x0                    ; 080EC234
bl    Sub080EB938               ; 080EC236
pop   {r4-r5}                   ; 080EC23A
pop   {r0}                      ; 080EC23C
bx    r0                        ; 080EC23E

Sub080EC240:
push  {lr}                      ; 080EC240
mov   r3,r0                     ; 080EC242
mov   r2,r3                     ; 080EC244
add   r2,0x94                   ; 080EC246
ldrh  r1,[r2]                   ; 080EC248
cmp   r1,0x0                    ; 080EC24A
beq   @@Code080EC2A4            ; 080EC24C
sub   r0,r1,0x1                 ; 080EC24E
strh  r0,[r2]                   ; 080EC250
ldrh  r1,[r3,0x2C]              ; 080EC252
sub   r0,r1,0x3                 ; 080EC254
strh  r0,[r3,0x2C]              ; 080EC256
ldrh  r1,[r3,0x2A]              ; 080EC258
add   r0,r1,0x3                 ; 080EC25A
lsl   r0,r0,0x10                ; 080EC25C
lsr   r1,r0,0x10                ; 080EC25E
mov   r0,0xFF                   ; 080EC260
lsl   r0,r0,0x1                 ; 080EC262
cmp   r1,r0                     ; 080EC264
bls   @@Code080EC26A            ; 080EC266
ldr   r1,=0x01FF                ; 080EC268
@@Code080EC26A:
strh  r1,[r3,0x2A]              ; 080EC26A
ldr   r0,=0x03002200            ; 080EC26C
ldr   r1,=0x4901                ; 080EC26E
add   r0,r0,r1                  ; 080EC270
ldrb  r1,[r0]                   ; 080EC272
mov   r0,0x3                    ; 080EC274
and   r0,r1                     ; 080EC276
cmp   r0,0x0                    ; 080EC278
bne   @@Code080EC2EE            ; 080EC27A
ldr   r0,=0x03007240            ; 080EC27C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EC27E
mov   r1,0xED                   ; 080EC280
lsl   r1,r1,0x2                 ; 080EC282
add   r2,r0,r1                  ; 080EC284
ldr   r0,[r2,0x4]               ; 080EC286
mov   r1,0x80                   ; 080EC288
lsl   r1,r1,0x1                 ; 080EC28A
add   r0,r0,r1                  ; 080EC28C
str   r0,[r2,0x4]               ; 080EC28E
b     @@Code080EC2EE            ; 080EC290
.pool                           ; 080EC292

@@Code080EC2A4:
ldrh  r1,[r3,0x2C]              ; 080EC2A4
add   r0,r1,0x3                 ; 080EC2A6
lsl   r0,r0,0x10                ; 080EC2A8
lsr   r1,r0,0x10                ; 080EC2AA
mov   r2,r3                     ; 080EC2AC
add   r2,0x90                   ; 080EC2AE
ldrh  r0,[r2]                   ; 080EC2B0
cmp   r1,r0                     ; 080EC2B2
blo   @@Code080EC2B8            ; 080EC2B4
ldrh  r1,[r2]                   ; 080EC2B6
@@Code080EC2B8:
strh  r1,[r3,0x2C]              ; 080EC2B8
ldrh  r1,[r3,0x2A]              ; 080EC2BA
sub   r0,r1,0x3                 ; 080EC2BC
lsl   r0,r0,0x10                ; 080EC2BE
lsr   r1,r0,0x10                ; 080EC2C0
ldrh  r0,[r2]                   ; 080EC2C2
cmp   r1,r0                     ; 080EC2C4
bhs   @@Code080EC2CA            ; 080EC2C6
ldrh  r1,[r2]                   ; 080EC2C8
@@Code080EC2CA:
strh  r1,[r3,0x2A]              ; 080EC2CA
ldr   r0,=0x03007240            ; 080EC2CC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EC2CE
mov   r1,0xED                   ; 080EC2D0
lsl   r1,r1,0x2                 ; 080EC2D2
add   r2,r0,r1                  ; 080EC2D4
ldr   r1,=0xFFFFFF00            ; 080EC2D6
mov   r0,r1                     ; 080EC2D8
ldrh  r1,[r2,0x4]               ; 080EC2DA
add   r0,r0,r1                  ; 080EC2DC
lsl   r0,r0,0x10                ; 080EC2DE
lsr   r1,r0,0x10                ; 080EC2E0
ldr   r0,=0x4FFF                ; 080EC2E2
cmp   r1,r0                     ; 080EC2E4
bhi   @@Code080EC2EC            ; 080EC2E6
mov   r1,0xA0                   ; 080EC2E8
lsl   r1,r1,0x7                 ; 080EC2EA
@@Code080EC2EC:
str   r1,[r2,0x4]               ; 080EC2EC
@@Code080EC2EE:
mov   r0,r3                     ; 080EC2EE
mov   r1,0x0                    ; 080EC2F0
bl    Sub080EB938               ; 080EC2F2
pop   {r0}                      ; 080EC2F6
bx    r0                        ; 080EC2F8
.pool                           ; 080EC2FA

Sub080EC308:
push  {r4-r6,lr}                ; 080EC308
mov   r12,r0                    ; 080EC30A
ldr   r4,=0x03002200            ; 080EC30C
ldr   r1,=0x4901                ; 080EC30E
add   r0,r4,r1                  ; 080EC310
ldrb  r0,[r0]                   ; 080EC312
mov   r6,0x3                    ; 080EC314
mov   r3,r6                     ; 080EC316
and   r3,r0                     ; 080EC318
mov   r5,r3                     ; 080EC31A
cmp   r5,0x0                    ; 080EC31C
bne   @@Code080EC366            ; 080EC31E
mov   r2,r12                    ; 080EC320
add   r2,0x90                   ; 080EC322
ldrh  r3,[r2]                   ; 080EC324
mov   r0,0xF8                   ; 080EC326
lsl   r0,r0,0x1                 ; 080EC328
and   r3,r0                     ; 080EC32A
lsl   r3,r3,0x6                 ; 080EC32C
mov   r0,0x1F                   ; 080EC32E
orr   r3,r0                     ; 080EC330
ldr   r0,=0x0201068A            ; 080EC332
strh  r3,[r0]                   ; 080EC334
mov   r0,0x91                   ; 080EC336
lsl   r0,r0,0x7                 ; 080EC338
add   r1,r4,r0                  ; 080EC33A
mov   r0,0x80                   ; 080EC33C
lsl   r0,r0,0x1                 ; 080EC33E
strh  r0,[r1]                   ; 080EC340
ldr   r1,=0x4882                ; 080EC342
add   r0,r4,r1                  ; 080EC344
strh  r5,[r0]                   ; 080EC346
ldr   r0,=0x4884                ; 080EC348
add   r1,r4,r0                  ; 080EC34A
mov   r0,0x80                   ; 080EC34C
lsl   r0,r0,0x2                 ; 080EC34E
strh  r0,[r1]                   ; 080EC350
ldrh  r3,[r2]                   ; 080EC352
add   r0,r3,0x1                 ; 080EC354
lsl   r0,r0,0x10                ; 080EC356
lsr   r3,r0,0x10                ; 080EC358
strh  r3,[r2]                   ; 080EC35A
mov   r0,0xFF                   ; 080EC35C
lsl   r0,r0,0x1                 ; 080EC35E
mov   r5,r2                     ; 080EC360
cmp   r3,r0                     ; 080EC362
bhi   @@Code080EC384            ; 080EC364
@@Code080EC366:
mov   r0,r12                    ; 080EC366
bl    Sub080EC240               ; 080EC368
b     @@Code080EC416            ; 080EC36C
.pool                           ; 080EC36E

@@Code080EC384:
ldr   r0,=0x03007240            ; 080EC384  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080EC386
ldr   r0,=0x041E                ; 080EC388
add   r1,r2,r0                  ; 080EC38A
mov   r0,0x2                    ; 080EC38C
strh  r0,[r1]                   ; 080EC38E
ldr   r1,=0x02BE                ; 080EC390
add   r4,r2,r1                  ; 080EC392
ldrh  r3,[r4]                   ; 080EC394
cmp   r3,0x0                    ; 080EC396
bne   @@Code080EC3E4            ; 080EC398
add   r1,0xB0                   ; 080EC39A
add   r0,r2,r1                  ; 080EC39C
strh  r6,[r0]                   ; 080EC39E
mov   r0,0x4                    ; 080EC3A0
strh  r0,[r4]                   ; 080EC3A2
ldr   r0,=0x02C6                ; 080EC3A4
add   r1,r2,r0                  ; 080EC3A6
mov   r0,0xC0                   ; 080EC3A8
strh  r0,[r1]                   ; 080EC3AA
ldr   r1,=0x02C2                ; 080EC3AC
add   r0,r2,r1                  ; 080EC3AE
strh  r3,[r0]                   ; 080EC3B0
mov   r0,0xFE                   ; 080EC3B2
lsl   r0,r0,0x8                 ; 080EC3B4
mov   r1,r12                    ; 080EC3B6
strh  r0,[r1,0x32]              ; 080EC3B8
mov   r0,0xC1                   ; 080EC3BA
lsl   r0,r0,0x2                 ; 080EC3BC
add   r1,r2,r0                  ; 080EC3BE
mov   r0,0x8                    ; 080EC3C0
str   r0,[r1,0x8]               ; 080EC3C2
mov   r0,r12                    ; 080EC3C4
add   r0,0x52                   ; 080EC3C6
strh  r3,[r0]                   ; 080EC3C8
add   r0,0x10                   ; 080EC3CA
strh  r3,[r0]                   ; 080EC3CC
b     @@Code080EC3EE            ; 080EC3CE
.pool                           ; 080EC3D0

@@Code080EC3E4:
ldr   r0,=0x036E                ; 080EC3E4
add   r1,r2,r0                  ; 080EC3E6
mov   r0,0x4                    ; 080EC3E8
strh  r0,[r1]                   ; 080EC3EA
strh  r6,[r4]                   ; 080EC3EC
@@Code080EC3EE:
mov   r2,0x0                    ; 080EC3EE
ldr   r0,=0x01FF                ; 080EC3F0
strh  r0,[r5]                   ; 080EC3F2
mov   r0,r12                    ; 080EC3F4
add   r0,0x76                   ; 080EC3F6
strh  r2,[r0]                   ; 080EC3F8
mov   r1,r12                    ; 080EC3FA
add   r1,0x74                   ; 080EC3FC
mov   r0,0x30                   ; 080EC3FE
strh  r0,[r1]                   ; 080EC400
mov   r0,r12                    ; 080EC402
add   r0,0x86                   ; 080EC404
strh  r2,[r0]                   ; 080EC406
add   r0,0x10                   ; 080EC408
strh  r2,[r0]                   ; 080EC40A
sub   r0,0x2                    ; 080EC40C
strh  r2,[r0]                   ; 080EC40E
mov   r0,r12                    ; 080EC410
bl    Sub080EC240               ; 080EC412
@@Code080EC416:
pop   {r4-r6}                   ; 080EC416
pop   {r0}                      ; 080EC418
bx    r0                        ; 080EC41A
.pool                           ; 080EC41C

Sub080EC424:
push  {lr}                      ; 080EC424
ldr   r1,=0x03007240            ; 080EC426  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]                   ; 080EC428
ldr   r2,=0x041E                ; 080EC42A
add   r1,r1,r2                  ; 080EC42C
ldrh  r1,[r1]                   ; 080EC42E
ldr   r2,=CodePtrs0819608C      ; 080EC430
lsl   r1,r1,0x2                 ; 080EC432
add   r1,r1,r2                  ; 080EC434
ldr   r1,[r1]                   ; 080EC436
bl    Sub_bx_r1                 ; 080EC438  bx r1
pop   {r0}                      ; 080EC43C
bx    r0                        ; 080EC43E
.pool                           ; 080EC440

Sub080EC44C:
push  {r4-r6,lr}                ; 080EC44C
mov   r12,r0                    ; 080EC44E
ldr   r0,=0x02011000            ; 080EC450
ldrh  r2,[r0]                   ; 080EC452
mov   r0,r12                    ; 080EC454
add   r0,0x9C                   ; 080EC456
ldrh  r0,[r0]                   ; 080EC458
sub   r0,0x3                    ; 080EC45A
lsl   r0,r0,0x12                ; 080EC45C
lsr   r4,r0,0x10                ; 080EC45E
ldr   r6,=Data08196098          ; 080EC460
ldr   r5,=0x02011002            ; 080EC462
@@Code080EC464:
lsl   r0,r4,0x1                 ; 080EC464
add   r0,r0,r6                  ; 080EC466
ldrh  r1,[r0]                   ; 080EC468
lsl   r0,r2,0x1                 ; 080EC46A
add   r0,r0,r5                  ; 080EC46C
strh  r1,[r0]                   ; 080EC46E
add   r0,r2,0x1                 ; 080EC470
lsl   r0,r0,0x10                ; 080EC472
lsr   r2,r0,0x10                ; 080EC474
add   r0,r4,0x1                 ; 080EC476
lsl   r0,r0,0x10                ; 080EC478
lsr   r4,r0,0x10                ; 080EC47A
add   r1,0x1                    ; 080EC47C
lsl   r1,r1,0x10                ; 080EC47E
lsr   r3,r1,0x10                ; 080EC480
cmp   r3,0x0                    ; 080EC482
bne   @@Code080EC464            ; 080EC484
sub   r1,r2,0x1                 ; 080EC486
ldr   r0,=0x02011000            ; 080EC488
strh  r1,[r0]                   ; 080EC48A
mov   r1,r12                    ; 080EC48C
add   r1,0xBE                   ; 080EC48E
mov   r0,0x48                   ; 080EC490
strh  r0,[r1]                   ; 080EC492
mov   r0,r12                    ; 080EC494
add   r0,0xBC                   ; 080EC496
strh  r3,[r0]                   ; 080EC498
pop   {r4-r6}                   ; 080EC49A
pop   {r0}                      ; 080EC49C
bx    r0                        ; 080EC49E
.pool                           ; 080EC4A0

Sub080EC4AC:
push  {r4-r7,lr}                ; 080EC4AC
mov   r1,r0                     ; 080EC4AE
add   r1,0x9C                   ; 080EC4B0
ldrh  r2,[r1]                   ; 080EC4B2
sub   r1,r2,0x1                 ; 080EC4B4
lsl   r1,r1,0x11                ; 080EC4B6
lsr   r3,r1,0x10                ; 080EC4B8
mov   r7,r3                     ; 080EC4BA
mov   r4,0x0                    ; 080EC4BC
mov   r1,0x80                   ; 080EC4BE
lsl   r1,r1,0x8                 ; 080EC4C0
mov   r12,r1                    ; 080EC4C2
mov   r6,r0                     ; 080EC4C4
add   r6,0x2A                   ; 080EC4C6
mov   r5,r6                     ; 080EC4C8
@@Code080EC4CA:
lsr   r1,r3,0x1                 ; 080EC4CA
add   r1,0x3A                   ; 080EC4CC
lsl   r1,r1,0x1                 ; 080EC4CE
add   r1,r5,r1                  ; 080EC4D0
ldrh  r2,[r1]                   ; 080EC4D2
mov   r0,r2                     ; 080EC4D4
sub   r0,0x8                    ; 080EC4D6
lsl   r0,r0,0x10                ; 080EC4D8
lsr   r2,r0,0x10                ; 080EC4DA
add   r0,r2,r4                  ; 080EC4DC
lsl   r0,r0,0x10                ; 080EC4DE
lsr   r4,r0,0x10                ; 080EC4E0
mov   r2,0x8                    ; 080EC4E2
strh  r2,[r1]                   ; 080EC4E4
sub   r0,r3,0x2                 ; 080EC4E6
lsl   r0,r0,0x10                ; 080EC4E8
lsr   r3,r0,0x10                ; 080EC4EA
mov   r0,r3                     ; 080EC4EC
mov   r1,r12                    ; 080EC4EE
and   r0,r1                     ; 080EC4F0
cmp   r0,0x0                    ; 080EC4F2
beq   @@Code080EC4CA            ; 080EC4F4
mov   r0,r7                     ; 080EC4F6
add   r0,0x76                   ; 080EC4F8
add   r0,r6,r0                  ; 080EC4FA
ldrh  r2,[r0]                   ; 080EC4FC
add   r1,r2,r4                  ; 080EC4FE
strh  r1,[r0]                   ; 080EC500
pop   {r4-r7}                   ; 080EC502
pop   {r0}                      ; 080EC504
bx    r0                        ; 080EC506

Sub080EC508:
push  {r4-r5,lr}                ; 080EC508
mov   r12,r0                    ; 080EC50A
add   r0,0x9C                   ; 080EC50C
ldrh  r0,[r0]                   ; 080EC50E
lsl   r0,r0,0x11                ; 080EC510
lsr   r2,r0,0x10                ; 080EC512
mov   r4,0x0                    ; 080EC514
mov   r5,r12                    ; 080EC516
add   r5,0x2A                   ; 080EC518
@@Code080EC51A:
lsr   r1,r2,0x1                 ; 080EC51A
add   r1,0x3A                   ; 080EC51C
lsl   r1,r1,0x1                 ; 080EC51E
add   r1,r5,r1                  ; 080EC520
ldrh  r0,[r1]                   ; 080EC522
sub   r0,0x8                    ; 080EC524
lsl   r0,r0,0x10                ; 080EC526
lsr   r0,r0,0x10                ; 080EC528
add   r0,r0,r4                  ; 080EC52A
lsl   r3,r0,0x10                ; 080EC52C
lsr   r4,r3,0x10                ; 080EC52E
mov   r0,0x8                    ; 080EC530
strh  r0,[r1]                   ; 080EC532
sub   r0,r2,0x2                 ; 080EC534
lsl   r0,r0,0x10                ; 080EC536
lsr   r2,r0,0x10                ; 080EC538
cmp   r2,0x2                    ; 080EC53A
bne   @@Code080EC51A            ; 080EC53C
mov   r1,r12                    ; 080EC53E
add   r1,0x9E                   ; 080EC540
lsr   r0,r3,0x11                ; 080EC542
ldrh  r2,[r1]                   ; 080EC544
add   r0,r0,r2                  ; 080EC546
lsl   r0,r0,0x10                ; 080EC548
lsr   r0,r0,0x10                ; 080EC54A
strh  r0,[r1]                   ; 080EC54C
add   r1,r0,0x1                 ; 080EC54E
mov   r0,r12                    ; 080EC550
add   r0,0xA0                   ; 080EC552
strh  r1,[r0]                   ; 080EC554
pop   {r4-r5}                   ; 080EC556
pop   {r0}                      ; 080EC558
bx    r0                        ; 080EC55A

Sub080EC55C:
push  {r4-r7,lr}                ; 080EC55C
mov   r5,r0                     ; 080EC55E
bl    Sub08035648               ; 080EC560
ldr   r0,=0x03007240            ; 080EC564  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EC566
ldr   r1,=0x29CC                ; 080EC568
add   r0,r0,r1                  ; 080EC56A
ldrh  r0,[r0]                   ; 080EC56C
mov   r1,0x7F                   ; 080EC56E
and   r1,r0                     ; 080EC570
add   r1,0x30                   ; 080EC572
mov   r0,r5                     ; 080EC574
add   r0,0x92                   ; 080EC576
strh  r1,[r0]                   ; 080EC578
mov   r0,r1                     ; 080EC57A
mov   r1,r5                     ; 080EC57C
add   r1,0x9C                   ; 080EC57E
ldrh  r4,[r1]                   ; 080EC580
add   r1,r4,0x1                 ; 080EC582
lsl   r1,r1,0x10                ; 080EC584
lsr   r1,r1,0x10                ; 080EC586
bl    DivideAlt                 ; 080EC588
lsl   r0,r0,0x10                ; 080EC58C
lsr   r7,r0,0x10                ; 080EC58E
lsl   r4,r4,0x11                ; 080EC590
lsr   r6,r4,0x10                ; 080EC592
mov   r3,0x0                    ; 080EC594
mov   r2,0x0                    ; 080EC596
mov   r0,0x2A                   ; 080EC598
add   r0,r0,r5                  ; 080EC59A
mov   r12,r0                    ; 080EC59C
mov   r4,r12                    ; 080EC59E
@@Code080EC5A0:
mov   r1,r7                     ; 080EC5A0
lsr   r0,r2,0x1                 ; 080EC5A2
add   r0,0x3A                   ; 080EC5A4
lsl   r0,r0,0x1                 ; 080EC5A6
add   r0,r4,r0                  ; 080EC5A8
strh  r1,[r0]                   ; 080EC5AA
add   r0,r1,r3                  ; 080EC5AC
lsl   r0,r0,0x10                ; 080EC5AE
lsr   r3,r0,0x10                ; 080EC5B0
add   r0,r2,0x2                 ; 080EC5B2
lsl   r0,r0,0x10                ; 080EC5B4
lsr   r2,r0,0x10                ; 080EC5B6
cmp   r2,r6                     ; 080EC5B8
bne   @@Code080EC5A0            ; 080EC5BA
mov   r2,r5                     ; 080EC5BC
add   r2,0x92                   ; 080EC5BE
ldrh  r1,[r2]                   ; 080EC5C0
sub   r1,r1,r3                  ; 080EC5C2
lsr   r0,r0,0x11                ; 080EC5C4
add   r0,0x3A                   ; 080EC5C6
lsl   r0,r0,0x1                 ; 080EC5C8
add   r0,r12                    ; 080EC5CA
mov   r4,0x0                    ; 080EC5CC
strh  r1,[r0]                   ; 080EC5CE
bl    Sub08035648               ; 080EC5D0
ldr   r0,=0x03007240            ; 080EC5D4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EC5D6
ldr   r1,=0x29CC                ; 080EC5D8
add   r0,r0,r1                  ; 080EC5DA
ldrh  r1,[r0]                   ; 080EC5DC
mov   r0,0x6                    ; 080EC5DE
and   r0,r1                     ; 080EC5E0
ldr   r1,=CodePtrs081960B0      ; 080EC5E2
lsl   r0,r0,0x1                 ; 080EC5E4
add   r0,r0,r1                  ; 080EC5E6
ldr   r1,[r0]                   ; 080EC5E8
mov   r0,r5                     ; 080EC5EA
bl    Sub_bx_r1                 ; 080EC5EC  bx r1
mov   r0,r5                     ; 080EC5F0
bl    Sub080ECBD0               ; 080EC5F2
mov   r0,r5                     ; 080EC5F6
add   r0,0x9A                   ; 080EC5F8
strh  r4,[r0]                   ; 080EC5FA
pop   {r4-r7}                   ; 080EC5FC
pop   {r0}                      ; 080EC5FE
bx    r0                        ; 080EC600
.pool                           ; 080EC602

Sub080EC610:
push  {r4-r7,lr}                ; 080EC610
mov   r7,r8                     ; 080EC612
push  {r7}                      ; 080EC614
mov   r5,r0                     ; 080EC616
bl    Sub080EC44C               ; 080EC618
mov   r4,0x0                    ; 080EC61C
mov   r1,r5                     ; 080EC61E
add   r1,0x2A                   ; 080EC620
mov   r2,0x0                    ; 080EC622
mov   r8,r1                     ; 080EC624
@@Code080EC626:
lsr   r0,r4,0x1                 ; 080EC626
add   r0,0x3A                   ; 080EC628
lsl   r0,r0,0x1                 ; 080EC62A
add   r0,r1,r0                  ; 080EC62C
strh  r2,[r0]                   ; 080EC62E
add   r0,r4,0x2                 ; 080EC630
lsl   r0,r0,0x10                ; 080EC632
lsr   r4,r0,0x10                ; 080EC634
cmp   r4,0xA                    ; 080EC636
bls   @@Code080EC626            ; 080EC638
mov   r0,r5                     ; 080EC63A
add   r0,0x90                   ; 080EC63C
ldrh  r1,[r0]                   ; 080EC63E
lsr   r2,r1,0x8                 ; 080EC640
cmp   r2,0x0                    ; 080EC642
beq   @@Code080EC668            ; 080EC644
mov   r0,0xFF                   ; 080EC646
and   r0,r1                     ; 080EC648
cmp   r0,0x7F                   ; 080EC64A
bls   @@Code080EC668            ; 080EC64C
bl    GenRandomByte             ; 080EC64E  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 080EC652
lsr   r2,r0,0x10                ; 080EC654
mov   r0,0x80                   ; 080EC656
lsl   r0,r0,0x8                 ; 080EC658
and   r2,r0                     ; 080EC65A
cmp   r2,0x0                    ; 080EC65C
beq   @@Code080EC668            ; 080EC65E
mov   r0,r5                     ; 080EC660
bl    Sub080EC55C               ; 080EC662
b     @@Code080EC6D2            ; 080EC666
@@Code080EC668:
mov   r0,r5                     ; 080EC668
add   r0,0x9C                   ; 080EC66A
ldrh  r0,[r0]                   ; 080EC66C
lsl   r0,r0,0x11                ; 080EC66E
lsr   r4,r0,0x10                ; 080EC670
mov   r6,0x0                    ; 080EC672
mov   r7,r5                     ; 080EC674
add   r7,0x92                   ; 080EC676
@@Code080EC678:
bl    GenRandomByte             ; 080EC678  Generate pseudo-random byte
mov   r2,0x1F                   ; 080EC67C
and   r2,r0                     ; 080EC67E
cmp   r2,0x17                   ; 080EC680
bls   @@Code080EC696            ; 080EC682
cmp   r2,0x1B                   ; 080EC684
bls   @@Code080EC68E            ; 080EC686
mov   r0,r2                     ; 080EC688
sub   r0,0x8                    ; 080EC68A
b     @@Code080EC692            ; 080EC68C
@@Code080EC68E:
mov   r0,r2                     ; 080EC68E
sub   r0,0x18                   ; 080EC690
@@Code080EC692:
lsl   r0,r0,0x10                ; 080EC692
lsr   r2,r0,0x10                ; 080EC694
@@Code080EC696:
mov   r0,r2                     ; 080EC696
add   r0,0x8                    ; 080EC698
lsl   r0,r0,0x10                ; 080EC69A
lsr   r2,r0,0x10                ; 080EC69C
lsr   r0,r4,0x1                 ; 080EC69E
add   r0,0x3A                   ; 080EC6A0
lsl   r0,r0,0x1                 ; 080EC6A2
add   r0,r8                     ; 080EC6A4
strh  r2,[r0]                   ; 080EC6A6
add   r0,r2,r6                  ; 080EC6A8
lsl   r0,r0,0x10                ; 080EC6AA
lsr   r2,r0,0x10                ; 080EC6AC
mov   r6,r2                     ; 080EC6AE
sub   r0,r4,0x2                 ; 080EC6B0
lsl   r0,r0,0x10                ; 080EC6B2
lsr   r4,r0,0x10                ; 080EC6B4
mov   r0,0x80                   ; 080EC6B6
lsl   r0,r0,0x8                 ; 080EC6B8
mov   r1,r0                     ; 080EC6BA
mov   r0,r4                     ; 080EC6BC
and   r0,r1                     ; 080EC6BE
cmp   r0,0x0                    ; 080EC6C0
beq   @@Code080EC678            ; 080EC6C2
cmp   r2,0xB3                   ; 080EC6C4
bls   @@Code080EC6CA            ; 080EC6C6
mov   r2,0xB4                   ; 080EC6C8
@@Code080EC6CA:
strh  r2,[r7]                   ; 080EC6CA
mov   r0,r5                     ; 080EC6CC
bl    Sub080ECBD0               ; 080EC6CE
@@Code080EC6D2:
pop   {r3}                      ; 080EC6D2
mov   r8,r3                     ; 080EC6D4
pop   {r4-r7}                   ; 080EC6D6
pop   {r0}                      ; 080EC6D8
bx    r0                        ; 080EC6DA

Sub080EC6DC:
push  {r4-r7,lr}                ; 080EC6DC
mov   r7,r9                     ; 080EC6DE
mov   r6,r8                     ; 080EC6E0
push  {r6-r7}                   ; 080EC6E2
mov   r4,r0                     ; 080EC6E4
mov   r8,r1                     ; 080EC6E6
mov   r0,0xB6                   ; 080EC6E8
add   r0,r0,r4                  ; 080EC6EA
mov   r9,r0                     ; 080EC6EC
ldrh  r5,[r0]                   ; 080EC6EE
cmp   r5,0x0                    ; 080EC6F0
beq   @@Code080EC71E            ; 080EC6F2
sub   r0,r5,0x1                 ; 080EC6F4
mov   r1,r9                     ; 080EC6F6
strh  r0,[r1]                   ; 080EC6F8
lsl   r0,r0,0x10                ; 080EC6FA
lsr   r0,r0,0x10                ; 080EC6FC
cmp   r0,0x0                    ; 080EC6FE
bne   @@Code080EC70E            ; 080EC700
mov   r1,r4                     ; 080EC702
add   r1,0x9A                   ; 080EC704
strh  r0,[r1]                   ; 080EC706
mov   r0,r4                     ; 080EC708
bl    Sub080ECA48               ; 080EC70A
@@Code080EC70E:
mov   r0,r4                     ; 080EC70E
mov   r1,r8                     ; 080EC710
bl    Sub080ED538               ; 080EC712
mov   r0,r4                     ; 080EC716
bl    Sub080EB7C0               ; 080EC718
b     @@Code080EC7D0            ; 080EC71C
@@Code080EC71E:
mov   r0,r4                     ; 080EC71E
bl    Sub080EB32C               ; 080EC720
mov   r7,r4                     ; 080EC724
add   r7,0x98                   ; 080EC726
ldrh  r0,[r7]                   ; 080EC728
sub   r0,0x1                    ; 080EC72A
strh  r0,[r7]                   ; 080EC72C
lsl   r0,r0,0x10                ; 080EC72E
cmp   r0,0x0                    ; 080EC730
bne   @@Code080EC748            ; 080EC732
ldr   r1,=0x03006258            ; 080EC734
mov   r0,0x5D                   ; 080EC736
bl    PlayYISound               ; 080EC738
mov   r0,0x20                   ; 080EC73C
mov   r2,r9                     ; 080EC73E
strh  r0,[r2]                   ; 080EC740
b     @@Code080EC77E            ; 080EC742
.pool                           ; 080EC744

@@Code080EC748:
mov   r0,r4                     ; 080EC748
bl    Sub080EB7B0               ; 080EC74A
mov   r6,r4                     ; 080EC74E
add   r6,0x9A                   ; 080EC750
ldrh  r0,[r6]                   ; 080EC752
lsl   r3,r0,0x11                ; 080EC754
ldr   r1,=0x03002200            ; 080EC756
ldr   r2,=0x47C0                ; 080EC758
add   r0,r1,r2                  ; 080EC75A
ldrh  r2,[r0]                   ; 080EC75C
cmp   r2,0x0                    ; 080EC75E
beq   @@Code080EC7D0            ; 080EC760
lsr   r0,r3,0x10                ; 080EC762
add   r0,r4,r0                  ; 080EC764
add   r0,0x9E                   ; 080EC766
ldrh  r0,[r0]                   ; 080EC768
cmp   r2,r0                     ; 080EC76A
beq   @@Code080EC7B0            ; 080EC76C
ldr   r3,=0x4058                ; 080EC76E
add   r1,r1,r3                  ; 080EC770
mov   r0,0x5D                   ; 080EC772
bl    PlayYISound               ; 080EC774
mov   r0,0x20                   ; 080EC778
mov   r1,r9                     ; 080EC77A
strh  r0,[r1]                   ; 080EC77C
@@Code080EC77E:
mov   r0,r4                     ; 080EC77E
add   r0,0xB8                   ; 080EC780
ldrh  r0,[r0]                   ; 080EC782
strh  r0,[r7]                   ; 080EC784
mov   r1,r4                     ; 080EC786
add   r1,0xBE                   ; 080EC788
mov   r0,0x48                   ; 080EC78A
strh  r0,[r1]                   ; 080EC78C
mov   r0,r4                     ; 080EC78E
add   r0,0xBC                   ; 080EC790
strh  r5,[r0]                   ; 080EC792
mov   r0,r4                     ; 080EC794
bl    Sub080EC44C               ; 080EC796
mov   r0,r4                     ; 080EC79A
mov   r1,r8                     ; 080EC79C
bl    Sub080ED538               ; 080EC79E
b     @@Code080EC7D0            ; 080EC7A2
.pool                           ; 080EC7A4

@@Code080EC7B0:
ldr   r2,=0x4058                ; 080EC7B0
add   r7,r1,r2                  ; 080EC7B2
mov   r0,0x45                   ; 080EC7B4
mov   r1,r7                     ; 080EC7B6
bl    PlayYISound               ; 080EC7B8
ldrh  r0,[r6]                   ; 080EC7BC
add   r0,0x1                    ; 080EC7BE
strh  r0,[r6]                   ; 080EC7C0
mov   r0,r4                     ; 080EC7C2
bl    Sub080EC908               ; 080EC7C4
mov   r0,r4                     ; 080EC7C8
mov   r1,r8                     ; 080EC7CA
bl    Sub080ED538               ; 080EC7CC
@@Code080EC7D0:
pop   {r3-r4}                   ; 080EC7D0
mov   r8,r3                     ; 080EC7D2
mov   r9,r4                     ; 080EC7D4
pop   {r4-r7}                   ; 080EC7D6
pop   {r0}                      ; 080EC7D8
bx    r0                        ; 080EC7DA
.pool                           ; 080EC7DC

Sub080EC7E0:
push  {r4-r7,lr}                ; 080EC7E0
mov   r7,r8                     ; 080EC7E2
push  {r7}                      ; 080EC7E4
mov   r1,r0                     ; 080EC7E6
add   r1,0x9C                   ; 080EC7E8
ldrh  r1,[r1]                   ; 080EC7EA
sub   r1,0x3                    ; 080EC7EC
lsl   r1,r1,0x10                ; 080EC7EE
lsr   r1,r1,0x10                ; 080EC7F0
lsl   r2,r1,0x2                 ; 080EC7F2
add   r2,r2,r1                  ; 080EC7F4
lsl   r2,r2,0x10                ; 080EC7F6
lsr   r2,r2,0x10                ; 080EC7F8
add   r0,0x9A                   ; 080EC7FA
ldrh  r0,[r0]                   ; 080EC7FC
sub   r0,0x1                    ; 080EC7FE
lsl   r0,r0,0x10                ; 080EC800
lsr   r0,r0,0x10                ; 080EC802
add   r0,r0,r2                  ; 080EC804
lsl   r0,r0,0x10                ; 080EC806
ldr   r1,=0x02011000            ; 080EC808
mov   r8,r1                     ; 080EC80A
ldrh  r6,[r1]                   ; 080EC80C
ldr   r1,=Data081960D2          ; 080EC80E
lsr   r0,r0,0xF                 ; 080EC810
add   r0,r0,r1                  ; 080EC812
ldrh  r0,[r0]                   ; 080EC814
lsl   r3,r6,0x1                 ; 080EC816
ldr   r2,=0x02011002            ; 080EC818
add   r1,r3,r2                  ; 080EC81A
strh  r0,[r1]                   ; 080EC81C
add   r0,0x40                   ; 080EC81E
lsl   r0,r0,0x10                ; 080EC820
lsr   r0,r0,0x10                ; 080EC822
ldr   r7,=0x0201100C            ; 080EC824
add   r1,r3,r7                  ; 080EC826
strh  r0,[r1]                   ; 080EC828
add   r0,0x40                   ; 080EC82A
add   r2,0x14                   ; 080EC82C
add   r1,r3,r2                  ; 080EC82E
strh  r0,[r1]                   ; 080EC830
sub   r7,0x8                    ; 080EC832
add   r0,r3,r7                  ; 080EC834
mov   r1,0x3                    ; 080EC836
strh  r1,[r0]                   ; 080EC838
sub   r2,0x8                    ; 080EC83A
add   r0,r3,r2                  ; 080EC83C
strh  r1,[r0]                   ; 080EC83E
add   r7,0x14                   ; 080EC840
add   r0,r3,r7                  ; 080EC842
strh  r1,[r0]                   ; 080EC844
ldr   r5,=Data081960C0          ; 080EC846
ldrh  r1,[r5]                   ; 080EC848
ldr   r2,=0x0FFF                ; 080EC84A
mov   r0,r2                     ; 080EC84C
and   r0,r1                     ; 080EC84E
mov   r1,0xC0                   ; 080EC850
lsl   r1,r1,0x7                 ; 080EC852
mov   r4,r1                     ; 080EC854
orr   r0,r4                     ; 080EC856
sub   r7,0x12                   ; 080EC858
add   r1,r3,r7                  ; 080EC85A
strh  r0,[r1]                   ; 080EC85C
ldrh  r1,[r5,0x2]               ; 080EC85E
mov   r0,r2                     ; 080EC860
and   r0,r1                     ; 080EC862
orr   r0,r4                     ; 080EC864
add   r7,0x2                    ; 080EC866
add   r1,r3,r7                  ; 080EC868
strh  r0,[r1]                   ; 080EC86A
ldrh  r1,[r5,0x4]               ; 080EC86C
mov   r0,r2                     ; 080EC86E
and   r0,r1                     ; 080EC870
orr   r0,r4                     ; 080EC872
add   r7,0x2                    ; 080EC874
add   r1,r3,r7                  ; 080EC876
strh  r0,[r1]                   ; 080EC878
ldrh  r1,[r5,0x6]               ; 080EC87A
mov   r0,r2                     ; 080EC87C
and   r0,r1                     ; 080EC87E
orr   r0,r4                     ; 080EC880
add   r7,0x6                    ; 080EC882
add   r1,r3,r7                  ; 080EC884
strh  r0,[r1]                   ; 080EC886
ldrh  r1,[r5,0x8]               ; 080EC888
mov   r0,r2                     ; 080EC88A
and   r0,r1                     ; 080EC88C
orr   r0,r4                     ; 080EC88E
add   r7,0x2                    ; 080EC890
add   r1,r3,r7                  ; 080EC892
strh  r0,[r1]                   ; 080EC894
ldrh  r1,[r5,0xA]               ; 080EC896
mov   r0,r2                     ; 080EC898
and   r0,r1                     ; 080EC89A
orr   r0,r4                     ; 080EC89C
add   r7,0x2                    ; 080EC89E
add   r1,r3,r7                  ; 080EC8A0
strh  r0,[r1]                   ; 080EC8A2
ldrh  r1,[r5,0xC]               ; 080EC8A4
mov   r0,r2                     ; 080EC8A6
and   r0,r1                     ; 080EC8A8
orr   r0,r4                     ; 080EC8AA
add   r7,0x6                    ; 080EC8AC
add   r1,r3,r7                  ; 080EC8AE
strh  r0,[r1]                   ; 080EC8B0
ldrh  r1,[r5,0xE]               ; 080EC8B2
mov   r0,r2                     ; 080EC8B4
and   r0,r1                     ; 080EC8B6
orr   r0,r4                     ; 080EC8B8
add   r7,0x2                    ; 080EC8BA
add   r1,r3,r7                  ; 080EC8BC
strh  r0,[r1]                   ; 080EC8BE
ldrh  r0,[r5,0x10]              ; 080EC8C0
and   r2,r0                     ; 080EC8C2
orr   r2,r4                     ; 080EC8C4
ldr   r1,=0x0201101E            ; 080EC8C6
add   r0,r3,r1                  ; 080EC8C8
strh  r2,[r0]                   ; 080EC8CA
ldr   r0,=0xFFFF                ; 080EC8CC
ldr   r2,=0x02011020            ; 080EC8CE
add   r3,r3,r2                  ; 080EC8D0
strh  r0,[r3]                   ; 080EC8D2
add   r6,0xF                    ; 080EC8D4
mov   r7,r8                     ; 080EC8D6
strh  r6,[r7]                   ; 080EC8D8
pop   {r3}                      ; 080EC8DA
mov   r8,r3                     ; 080EC8DC
pop   {r4-r7}                   ; 080EC8DE
pop   {r0}                      ; 080EC8E0
bx    r0                        ; 080EC8E2
.pool                           ; 080EC8E4

Sub080EC908:
push  {r4-r7,lr}                ; 080EC908
mov   r7,r8                     ; 080EC90A
push  {r7}                      ; 080EC90C
mov   r1,r0                     ; 080EC90E
add   r1,0x9C                   ; 080EC910
ldrh  r1,[r1]                   ; 080EC912
sub   r1,0x3                    ; 080EC914
lsl   r1,r1,0x10                ; 080EC916
lsr   r1,r1,0x10                ; 080EC918
lsl   r2,r1,0x2                 ; 080EC91A
add   r2,r2,r1                  ; 080EC91C
lsl   r2,r2,0x10                ; 080EC91E
lsr   r2,r2,0x10                ; 080EC920
mov   r4,r0                     ; 080EC922
add   r4,0x9A                   ; 080EC924
ldrh  r1,[r4]                   ; 080EC926
sub   r1,0x1                    ; 080EC928
lsl   r1,r1,0x10                ; 080EC92A
lsr   r1,r1,0x10                ; 080EC92C
add   r1,r1,r2                  ; 080EC92E
lsl   r1,r1,0x10                ; 080EC930
ldr   r2,=0x02011000            ; 080EC932
mov   r8,r2                     ; 080EC934
ldrh  r6,[r2]                   ; 080EC936
ldr   r2,=Data081960D2          ; 080EC938
lsr   r1,r1,0xF                 ; 080EC93A
add   r1,r1,r2                  ; 080EC93C
ldrh  r1,[r1]                   ; 080EC93E
lsl   r3,r6,0x1                 ; 080EC940
ldr   r5,=0x02011002            ; 080EC942
add   r2,r3,r5                  ; 080EC944
strh  r1,[r2]                   ; 080EC946
add   r1,0x40                   ; 080EC948
lsl   r1,r1,0x10                ; 080EC94A
lsr   r1,r1,0x10                ; 080EC94C
ldr   r7,=0x0201100C            ; 080EC94E
add   r2,r3,r7                  ; 080EC950
strh  r1,[r2]                   ; 080EC952
add   r1,0x40                   ; 080EC954
add   r5,0x14                   ; 080EC956
add   r2,r3,r5                  ; 080EC958
strh  r1,[r2]                   ; 080EC95A
sub   r7,0x8                    ; 080EC95C
add   r1,r3,r7                  ; 080EC95E
mov   r2,0x3                    ; 080EC960
strh  r2,[r1]                   ; 080EC962
sub   r5,0x8                    ; 080EC964
add   r1,r3,r5                  ; 080EC966
strh  r2,[r1]                   ; 080EC968
add   r7,0x14                   ; 080EC96A
add   r1,r3,r7                  ; 080EC96C
strh  r2,[r1]                   ; 080EC96E
ldrh  r1,[r4]                   ; 080EC970
sub   r1,0x1                    ; 080EC972
lsl   r1,r1,0x10                ; 080EC974
lsr   r1,r1,0xF                 ; 080EC976
add   r0,r0,r1                  ; 080EC978
add   r0,0xAA                   ; 080EC97A
ldrh  r0,[r0]                   ; 080EC97C
ldr   r1,=DataPtrs08196198      ; 080EC97E
lsl   r0,r0,0x2                 ; 080EC980
add   r0,r0,r1                  ; 080EC982
ldr   r5,[r0]                   ; 080EC984
ldrh  r1,[r5]                   ; 080EC986
ldr   r2,=0x0FFF                ; 080EC988
mov   r0,r2                     ; 080EC98A
and   r0,r1                     ; 080EC98C
mov   r1,0xC0                   ; 080EC98E
lsl   r1,r1,0x7                 ; 080EC990
mov   r4,r1                     ; 080EC992
orr   r0,r4                     ; 080EC994
sub   r7,0x12                   ; 080EC996
add   r1,r3,r7                  ; 080EC998
strh  r0,[r1]                   ; 080EC99A
ldrh  r1,[r5,0x2]               ; 080EC99C
mov   r0,r2                     ; 080EC99E
and   r0,r1                     ; 080EC9A0
orr   r0,r4                     ; 080EC9A2
add   r7,0x2                    ; 080EC9A4
add   r1,r3,r7                  ; 080EC9A6
strh  r0,[r1]                   ; 080EC9A8
ldrh  r1,[r5,0x4]               ; 080EC9AA
mov   r0,r2                     ; 080EC9AC
and   r0,r1                     ; 080EC9AE
orr   r0,r4                     ; 080EC9B0
add   r7,0x2                    ; 080EC9B2
add   r1,r3,r7                  ; 080EC9B4
strh  r0,[r1]                   ; 080EC9B6
ldrh  r1,[r5,0x6]               ; 080EC9B8
mov   r0,r2                     ; 080EC9BA
and   r0,r1                     ; 080EC9BC
orr   r0,r4                     ; 080EC9BE
add   r7,0x6                    ; 080EC9C0
add   r1,r3,r7                  ; 080EC9C2
strh  r0,[r1]                   ; 080EC9C4
ldrh  r1,[r5,0x8]               ; 080EC9C6
mov   r0,r2                     ; 080EC9C8
and   r0,r1                     ; 080EC9CA
orr   r0,r4                     ; 080EC9CC
add   r7,0x2                    ; 080EC9CE
add   r1,r3,r7                  ; 080EC9D0
strh  r0,[r1]                   ; 080EC9D2
ldrh  r1,[r5,0xA]               ; 080EC9D4
mov   r0,r2                     ; 080EC9D6
and   r0,r1                     ; 080EC9D8
orr   r0,r4                     ; 080EC9DA
add   r7,0x2                    ; 080EC9DC
add   r1,r3,r7                  ; 080EC9DE
strh  r0,[r1]                   ; 080EC9E0
ldrh  r1,[r5,0xC]               ; 080EC9E2
mov   r0,r2                     ; 080EC9E4
and   r0,r1                     ; 080EC9E6
orr   r0,r4                     ; 080EC9E8
add   r7,0x6                    ; 080EC9EA
add   r1,r3,r7                  ; 080EC9EC
strh  r0,[r1]                   ; 080EC9EE
ldrh  r1,[r5,0xE]               ; 080EC9F0
mov   r0,r2                     ; 080EC9F2
and   r0,r1                     ; 080EC9F4
orr   r0,r4                     ; 080EC9F6
add   r7,0x2                    ; 080EC9F8
add   r1,r3,r7                  ; 080EC9FA
strh  r0,[r1]                   ; 080EC9FC
ldrh  r0,[r5,0x10]              ; 080EC9FE
and   r2,r0                     ; 080ECA00
orr   r2,r4                     ; 080ECA02
ldr   r1,=0x0201101E            ; 080ECA04
add   r0,r3,r1                  ; 080ECA06
strh  r2,[r0]                   ; 080ECA08
ldr   r0,=0xFFFF                ; 080ECA0A
ldr   r2,=0x02011020            ; 080ECA0C
add   r3,r3,r2                  ; 080ECA0E
strh  r0,[r3]                   ; 080ECA10
add   r6,0xF                    ; 080ECA12
mov   r5,r8                     ; 080ECA14
strh  r6,[r5]                   ; 080ECA16
pop   {r3}                      ; 080ECA18
mov   r8,r3                     ; 080ECA1A
pop   {r4-r7}                   ; 080ECA1C
pop   {r0}                      ; 080ECA1E
bx    r0                        ; 080ECA20
.pool                           ; 080ECA22

Sub080ECA48:
push  {r4-r7,lr}                ; 080ECA48
mov   r7,r10                    ; 080ECA4A
mov   r6,r9                     ; 080ECA4C
mov   r5,r8                     ; 080ECA4E
push  {r5-r7}                   ; 080ECA50
mov   r9,r0                     ; 080ECA52
mov   r3,r9                     ; 080ECA54
add   r3,0x9C                   ; 080ECA56
ldrh  r7,[r3]                   ; 080ECA58
ldr   r0,=Data08196192          ; 080ECA5A
add   r0,r7,r0                  ; 080ECA5C
ldrb  r6,[r0]                   ; 080ECA5E
mov   r0,r6                     ; 080ECA60
mov   r8,r0                     ; 080ECA62
ldr   r0,=0x02011000            ; 080ECA64
ldrh  r7,[r0]                   ; 080ECA66
ldr   r2,=0xD0FE                ; 080ECA68
add   r2,r8                     ; 080ECA6A
lsl   r1,r7,0x1                 ; 080ECA6C
ldr   r4,=0x02011002            ; 080ECA6E
add   r0,r1,r4                  ; 080ECA70
strh  r2,[r0]                   ; 080ECA72
ldrh  r6,[r3]                   ; 080ECA74
add   r0,r6,0x1                 ; 080ECA76
lsl   r0,r0,0x12                ; 080ECA78
ldr   r2,=0xFFFF0000            ; 080ECA7A
add   r0,r0,r2                  ; 080ECA7C
lsr   r6,r0,0x10                ; 080ECA7E
mov   r3,0x80                   ; 080ECA80
lsl   r3,r3,0x7                 ; 080ECA82
mov   r0,r3                     ; 080ECA84
orr   r6,r0                     ; 080ECA86
ldr   r3,=0x02011004            ; 080ECA88
add   r0,r1,r3                  ; 080ECA8A
strh  r6,[r0]                   ; 080ECA8C
ldr   r6,=0x415F                ; 080ECA8E
ldr   r2,=0x02011006            ; 080ECA90
add   r1,r1,r2                  ; 080ECA92
strh  r6,[r1]                   ; 080ECA94
add   r0,r7,0x3                 ; 080ECA96
lsl   r0,r0,0x10                ; 080ECA98
lsr   r7,r0,0x10                ; 080ECA9A
mov   r5,0x0                    ; 080ECA9C
ldr   r0,=0x0201100A            ; 080ECA9E
mov   r10,r0                    ; 080ECAA0
@@Code080ECAA2:
mov   r12,r5                    ; 080ECAA2
lsl   r4,r5,0x13                ; 080ECAA4
lsr   r4,r4,0x10                ; 080ECAA6
mov   r1,r12                    ; 080ECAA8
add   r1,0x40                   ; 080ECAAA
lsl   r1,r1,0x1                 ; 080ECAAC
mov   r0,r9                     ; 080ECAAE
add   r0,0x2A                   ; 080ECAB0
add   r0,r0,r1                  ; 080ECAB2
ldrh  r5,[r0]                   ; 080ECAB4
ldr   r0,=0xD0BE                ; 080ECAB6
add   r0,r8                     ; 080ECAB8
lsl   r0,r0,0x10                ; 080ECABA
lsr   r6,r0,0x10                ; 080ECABC
add   r2,r6,r4                  ; 080ECABE
lsl   r1,r7,0x1                 ; 080ECAC0
ldr   r3,=0x02011002            ; 080ECAC2
add   r0,r1,r3                  ; 080ECAC4
strh  r2,[r0]                   ; 080ECAC6
mov   r6,0x3                    ; 080ECAC8
ldr   r2,=0x02011004            ; 080ECACA
add   r0,r1,r2                  ; 080ECACC
strh  r6,[r0]                   ; 080ECACE
lsl   r0,r5,0x2                 ; 080ECAD0
ldr   r3,=DataPtrs08196198      ; 080ECAD2
add   r0,r0,r3                  ; 080ECAD4
ldr   r3,[r0]                   ; 080ECAD6
ldrh  r6,[r3]                   ; 080ECAD8
ldr   r5,=0x02011006            ; 080ECADA
add   r0,r1,r5                  ; 080ECADC
strh  r6,[r0]                   ; 080ECADE
ldrh  r6,[r3,0x2]               ; 080ECAE0
add   r2,0x4                    ; 080ECAE2
add   r0,r1,r2                  ; 080ECAE4
strh  r6,[r0]                   ; 080ECAE6
ldrh  r6,[r3,0x4]               ; 080ECAE8
add   r1,r10                    ; 080ECAEA
strh  r6,[r1]                   ; 080ECAEC
add   r0,r7,0x5                 ; 080ECAEE
lsl   r0,r0,0x10                ; 080ECAF0
lsr   r7,r0,0x10                ; 080ECAF2
ldr   r0,=0xD0FE                ; 080ECAF4
add   r0,r8                     ; 080ECAF6
lsl   r0,r0,0x10                ; 080ECAF8
lsr   r6,r0,0x10                ; 080ECAFA
add   r2,r6,r4                  ; 080ECAFC
lsl   r1,r7,0x1                 ; 080ECAFE
sub   r5,0x4                    ; 080ECB00
add   r0,r1,r5                  ; 080ECB02
strh  r2,[r0]                   ; 080ECB04
mov   r6,0x3                    ; 080ECB06
ldr   r2,=0x02011004            ; 080ECB08
add   r0,r1,r2                  ; 080ECB0A
strh  r6,[r0]                   ; 080ECB0C
ldrh  r6,[r3,0x6]               ; 080ECB0E
add   r5,0x4                    ; 080ECB10
add   r0,r1,r5                  ; 080ECB12
strh  r6,[r0]                   ; 080ECB14
ldrh  r6,[r3,0x8]               ; 080ECB16
add   r2,0x4                    ; 080ECB18
add   r0,r1,r2                  ; 080ECB1A
strh  r6,[r0]                   ; 080ECB1C
ldrh  r6,[r3,0xA]               ; 080ECB1E
add   r1,r10                    ; 080ECB20
strh  r6,[r1]                   ; 080ECB22
add   r0,r7,0x5                 ; 080ECB24
lsl   r0,r0,0x10                ; 080ECB26
lsr   r7,r0,0x10                ; 080ECB28
ldr   r0,=0xD13E                ; 080ECB2A
add   r0,r8                     ; 080ECB2C
lsl   r0,r0,0x10                ; 080ECB2E
lsr   r6,r0,0x10                ; 080ECB30
add   r4,r6,r4                  ; 080ECB32
lsl   r1,r7,0x1                 ; 080ECB34
sub   r5,0x4                    ; 080ECB36
add   r0,r1,r5                  ; 080ECB38
strh  r4,[r0]                   ; 080ECB3A
mov   r6,0x3                    ; 080ECB3C
sub   r2,0x4                    ; 080ECB3E
add   r0,r1,r2                  ; 080ECB40
strh  r6,[r0]                   ; 080ECB42
ldrh  r6,[r3,0xC]               ; 080ECB44
add   r5,0x4                    ; 080ECB46
add   r0,r1,r5                  ; 080ECB48
strh  r6,[r0]                   ; 080ECB4A
ldrh  r6,[r3,0xE]               ; 080ECB4C
add   r2,0x4                    ; 080ECB4E
add   r0,r1,r2                  ; 080ECB50
strh  r6,[r0]                   ; 080ECB52
ldrh  r6,[r3,0x10]              ; 080ECB54
add   r1,r10                    ; 080ECB56
strh  r6,[r1]                   ; 080ECB58
add   r0,r7,0x5                 ; 080ECB5A
lsl   r0,r0,0x10                ; 080ECB5C
lsr   r7,r0,0x10                ; 080ECB5E
mov   r5,r12                    ; 080ECB60
mov   r0,r9                     ; 080ECB62
add   r0,0x9C                   ; 080ECB64
ldrh  r0,[r0]                   ; 080ECB66
cmp   r5,r0                     ; 080ECB68
beq   @@Code080ECBA4            ; 080ECB6A
add   r0,r5,0x1                 ; 080ECB6C
lsl   r0,r0,0x10                ; 080ECB6E
lsr   r5,r0,0x10                ; 080ECB70
b     @@Code080ECAA2            ; 080ECB72
.pool                           ; 080ECB74

@@Code080ECBA4:
lsl   r0,r7,0x1                 ; 080ECBA4
ldr   r3,=0x02011002            ; 080ECBA6
add   r0,r0,r3                  ; 080ECBA8
ldr   r5,=0xFFFF                ; 080ECBAA
mov   r1,r5                     ; 080ECBAC
strh  r1,[r0]                   ; 080ECBAE
ldr   r0,=0x02011000            ; 080ECBB0
strh  r7,[r0]                   ; 080ECBB2
pop   {r3-r5}                   ; 080ECBB4
mov   r8,r3                     ; 080ECBB6
mov   r9,r4                     ; 080ECBB8
mov   r10,r5                    ; 080ECBBA
pop   {r4-r7}                   ; 080ECBBC
pop   {r0}                      ; 080ECBBE
bx    r0                        ; 080ECBC0
.pool                           ; 080ECBC2

Sub080ECBD0:
push  {r4-r7,lr}                ; 080ECBD0
mov   r7,r10                    ; 080ECBD2
mov   r6,r9                     ; 080ECBD4
mov   r5,r8                     ; 080ECBD6
push  {r5-r7}                   ; 080ECBD8
add   sp,-0x4                   ; 080ECBDA
str   r0,[sp]                   ; 080ECBDC
mov   r3,r0                     ; 080ECBDE
add   r3,0x9C                   ; 080ECBE0
ldrh  r6,[r3]                   ; 080ECBE2
ldr   r0,=Data08196192          ; 080ECBE4
add   r0,r6,r0                  ; 080ECBE6
ldrb  r5,[r0]                   ; 080ECBE8
mov   r0,r5                     ; 080ECBEA
mov   r7,r0                     ; 080ECBEC
ldr   r0,=0x02011000            ; 080ECBEE
ldrh  r6,[r0]                   ; 080ECBF0
ldr   r0,=0xD0FE                ; 080ECBF2
add   r2,r7,r0                  ; 080ECBF4
lsl   r1,r6,0x1                 ; 080ECBF6
ldr   r4,=0x02011002            ; 080ECBF8
add   r0,r1,r4                  ; 080ECBFA
strh  r2,[r0]                   ; 080ECBFC
ldrh  r5,[r3]                   ; 080ECBFE
add   r0,r5,0x1                 ; 080ECC00
lsl   r0,r0,0x12                ; 080ECC02
ldr   r2,=0xFFFF0000            ; 080ECC04
add   r0,r0,r2                  ; 080ECC06
lsr   r5,r0,0x10                ; 080ECC08
mov   r2,0x80                   ; 080ECC0A
lsl   r2,r2,0x7                 ; 080ECC0C
mov   r0,r2                     ; 080ECC0E
orr   r5,r0                     ; 080ECC10
ldr   r3,=0x02011004            ; 080ECC12
add   r0,r1,r3                  ; 080ECC14
strh  r5,[r0]                   ; 080ECC16
ldr   r5,=0x415F                ; 080ECC18
ldr   r2,=0x02011006            ; 080ECC1A
add   r1,r1,r2                  ; 080ECC1C
strh  r5,[r1]                   ; 080ECC1E
add   r0,r6,0x3                 ; 080ECC20
lsl   r0,r0,0x10                ; 080ECC22
lsr   r6,r0,0x10                ; 080ECC24
mov   r5,0x0                    ; 080ECC26
mov   r12,r5                    ; 080ECC28
ldr   r4,=Data081960C0          ; 080ECC2A
mov   r10,r2                    ; 080ECC2C
ldr   r0,=0x02011008            ; 080ECC2E
mov   r9,r0                     ; 080ECC30
ldr   r1,=0x0201100A            ; 080ECC32
mov   r8,r1                     ; 080ECC34
@@Code080ECC36:
mov   r2,r12                    ; 080ECC36
lsl   r3,r2,0x13                ; 080ECC38
lsr   r3,r3,0x10                ; 080ECC3A
ldr   r5,=0xD0BE                ; 080ECC3C
add   r0,r7,r5                  ; 080ECC3E
lsl   r0,r0,0x10                ; 080ECC40
lsr   r5,r0,0x10                ; 080ECC42
add   r2,r5,r3                  ; 080ECC44
lsl   r1,r6,0x1                 ; 080ECC46
ldr   r5,=0x02011002            ; 080ECC48
add   r0,r1,r5                  ; 080ECC4A
strh  r2,[r0]                   ; 080ECC4C
mov   r5,0x3                    ; 080ECC4E
ldr   r2,=0x02011004            ; 080ECC50
add   r0,r1,r2                  ; 080ECC52
strh  r5,[r0]                   ; 080ECC54
ldrh  r5,[r4]                   ; 080ECC56
mov   r2,r10                    ; 080ECC58
add   r0,r1,r2                  ; 080ECC5A
strh  r5,[r0]                   ; 080ECC5C
ldrh  r5,[r4,0x2]               ; 080ECC5E
mov   r2,r9                     ; 080ECC60
add   r0,r1,r2                  ; 080ECC62
strh  r5,[r0]                   ; 080ECC64
ldrh  r5,[r4,0x4]               ; 080ECC66
add   r1,r8                     ; 080ECC68
strh  r5,[r1]                   ; 080ECC6A
add   r0,r6,0x5                 ; 080ECC6C
lsl   r0,r0,0x10                ; 080ECC6E
lsr   r6,r0,0x10                ; 080ECC70
ldr   r5,=0xD0FE                ; 080ECC72
add   r0,r7,r5                  ; 080ECC74
lsl   r0,r0,0x10                ; 080ECC76
lsr   r5,r0,0x10                ; 080ECC78
add   r2,r5,r3                  ; 080ECC7A
lsl   r1,r6,0x1                 ; 080ECC7C
ldr   r5,=0x02011002            ; 080ECC7E
add   r0,r1,r5                  ; 080ECC80
strh  r2,[r0]                   ; 080ECC82
mov   r5,0x3                    ; 080ECC84
ldr   r2,=0x02011004            ; 080ECC86
add   r0,r1,r2                  ; 080ECC88
strh  r5,[r0]                   ; 080ECC8A
ldrh  r5,[r4,0x6]               ; 080ECC8C
mov   r2,r10                    ; 080ECC8E
add   r0,r1,r2                  ; 080ECC90
strh  r5,[r0]                   ; 080ECC92
ldrh  r5,[r4,0x8]               ; 080ECC94
mov   r2,r9                     ; 080ECC96
add   r0,r1,r2                  ; 080ECC98
strh  r5,[r0]                   ; 080ECC9A
ldrh  r5,[r4,0xA]               ; 080ECC9C
add   r1,r8                     ; 080ECC9E
strh  r5,[r1]                   ; 080ECCA0
add   r0,r6,0x5                 ; 080ECCA2
lsl   r0,r0,0x10                ; 080ECCA4
lsr   r6,r0,0x10                ; 080ECCA6
ldr   r5,=0xD13E                ; 080ECCA8
add   r0,r7,r5                  ; 080ECCAA
lsl   r0,r0,0x10                ; 080ECCAC
lsr   r5,r0,0x10                ; 080ECCAE
add   r3,r5,r3                  ; 080ECCB0
lsl   r1,r6,0x1                 ; 080ECCB2
ldr   r2,=0x02011002            ; 080ECCB4
add   r0,r1,r2                  ; 080ECCB6
strh  r3,[r0]                   ; 080ECCB8
mov   r5,0x3                    ; 080ECCBA
add   r2,0x2                    ; 080ECCBC
add   r0,r1,r2                  ; 080ECCBE
strh  r5,[r0]                   ; 080ECCC0
ldrh  r5,[r4,0xC]               ; 080ECCC2
mov   r2,r10                    ; 080ECCC4
add   r0,r1,r2                  ; 080ECCC6
strh  r5,[r0]                   ; 080ECCC8
ldrh  r5,[r4,0xE]               ; 080ECCCA
mov   r2,r9                     ; 080ECCCC
add   r0,r1,r2                  ; 080ECCCE
strh  r5,[r0]                   ; 080ECCD0
ldrh  r5,[r4,0x10]              ; 080ECCD2
add   r1,r8                     ; 080ECCD4
strh  r5,[r1]                   ; 080ECCD6
add   r0,r6,0x5                 ; 080ECCD8
lsl   r0,r0,0x10                ; 080ECCDA
lsr   r6,r0,0x10                ; 080ECCDC
ldr   r0,[sp]                   ; 080ECCDE
add   r0,0x9C                   ; 080ECCE0
ldrh  r0,[r0]                   ; 080ECCE2
cmp   r12,r0                    ; 080ECCE4
beq   @@Code080ECD28            ; 080ECCE6
mov   r0,r12                    ; 080ECCE8
add   r0,0x1                    ; 080ECCEA
lsl   r0,r0,0x10                ; 080ECCEC
lsr   r0,r0,0x10                ; 080ECCEE
mov   r12,r0                    ; 080ECCF0
b     @@Code080ECC36            ; 080ECCF2
.pool                           ; 080ECCF4

@@Code080ECD28:
lsl   r0,r6,0x1                 ; 080ECD28
ldr   r5,=0x02011002            ; 080ECD2A
add   r0,r0,r5                  ; 080ECD2C
ldr   r2,=0xFFFF                ; 080ECD2E
mov   r1,r2                     ; 080ECD30
strh  r1,[r0]                   ; 080ECD32
ldr   r0,=0x02011000            ; 080ECD34
strh  r6,[r0]                   ; 080ECD36
add   sp,0x4                    ; 080ECD38
pop   {r3-r5}                   ; 080ECD3A
mov   r8,r3                     ; 080ECD3C
mov   r9,r4                     ; 080ECD3E
mov   r10,r5                    ; 080ECD40
pop   {r4-r7}                   ; 080ECD42
pop   {r0}                      ; 080ECD44
bx    r0                        ; 080ECD46
.pool                           ; 080ECD48

Sub080ECD54:
push  {r4-r7,lr}                ; 080ECD54
mov   r7,r8                     ; 080ECD56
push  {r7}                      ; 080ECD58
mov   r5,r0                     ; 080ECD5A
mov   r0,0xB6                   ; 080ECD5C
add   r0,r0,r5                  ; 080ECD5E
mov   r8,r0                     ; 080ECD60
ldrh  r2,[r0]                   ; 080ECD62
cmp   r2,0x0                    ; 080ECD64
beq   @@Code080ECD8A            ; 080ECD66
sub   r0,r2,0x1                 ; 080ECD68
mov   r1,r8                     ; 080ECD6A
strh  r0,[r1]                   ; 080ECD6C
lsl   r0,r0,0x10                ; 080ECD6E
lsr   r0,r0,0x10                ; 080ECD70
cmp   r0,0x0                    ; 080ECD72
bne   @@Code080ECD82            ; 080ECD74
mov   r1,r5                     ; 080ECD76
add   r1,0x9A                   ; 080ECD78
strh  r0,[r1]                   ; 080ECD7A
mov   r0,r5                     ; 080ECD7C
bl    Sub080ECA48               ; 080ECD7E
@@Code080ECD82:
mov   r0,r5                     ; 080ECD82
bl    Sub080EB7C0               ; 080ECD84
b     @@Code080ECEE6            ; 080ECD88
@@Code080ECD8A:
mov   r0,r5                     ; 080ECD8A
bl    Sub080EB32C               ; 080ECD8C
mov   r7,r5                     ; 080ECD90
add   r7,0x98                   ; 080ECD92
ldrh  r0,[r7]                   ; 080ECD94
sub   r0,0x1                    ; 080ECD96
strh  r0,[r7]                   ; 080ECD98
lsl   r0,r0,0x10                ; 080ECD9A
lsr   r4,r0,0x10                ; 080ECD9C
cmp   r4,0x0                    ; 080ECD9E
bne   @@Code080ECDCC            ; 080ECDA0
ldr   r1,=0x03006258            ; 080ECDA2
mov   r0,0x5D                   ; 080ECDA4
bl    PlayYISound               ; 080ECDA6
mov   r0,0x20                   ; 080ECDAA
mov   r2,r8                     ; 080ECDAC
strh  r0,[r2]                   ; 080ECDAE
mov   r0,r5                     ; 080ECDB0
add   r0,0xB8                   ; 080ECDB2
ldrh  r0,[r0]                   ; 080ECDB4
strh  r0,[r7]                   ; 080ECDB6
mov   r1,r5                     ; 080ECDB8
add   r1,0xBE                   ; 080ECDBA
mov   r0,0x48                   ; 080ECDBC
strh  r0,[r1]                   ; 080ECDBE
mov   r0,r5                     ; 080ECDC0
add   r0,0xBC                   ; 080ECDC2
strh  r4,[r0]                   ; 080ECDC4
b     @@Code080ECE32            ; 080ECDC6
.pool                           ; 080ECDC8

@@Code080ECDCC:
mov   r0,r5                     ; 080ECDCC
bl    Sub080EB7B0               ; 080ECDCE
mov   r4,r5                     ; 080ECDD2
add   r4,0x9A                   ; 080ECDD4
ldrh  r0,[r4]                   ; 080ECDD6
lsl   r3,r0,0x11                ; 080ECDD8
ldr   r1,=0x03002200            ; 080ECDDA
ldr   r2,=0x47C0                ; 080ECDDC
add   r0,r1,r2                  ; 080ECDDE
ldrh  r2,[r0]                   ; 080ECDE0
mov   r0,r2                     ; 080ECDE2
cmp   r0,0x0                    ; 080ECDE4
bne   @@Code080ECDEA            ; 080ECDE6
b     @@Code080ECEE6            ; 080ECDE8
@@Code080ECDEA:
cmp   r0,0x4                    ; 080ECDEA
beq   @@Code080ECEE6            ; 080ECDEC
mov   r0,0x8                    ; 080ECDEE
and   r0,r2                     ; 080ECDF0
lsl   r0,r0,0x10                ; 080ECDF2
lsr   r6,r0,0x10                ; 080ECDF4
cmp   r6,0x0                    ; 080ECDF6
bne   @@Code080ECEE6            ; 080ECDF8
mov   r0,r5                     ; 080ECDFA
add   r0,0xC2                   ; 080ECDFC
ldrh  r2,[r0]                   ; 080ECDFE
lsr   r0,r3,0x10                ; 080ECE00
add   r0,r5,r0                  ; 080ECE02
add   r0,0x9E                   ; 080ECE04
ldrh  r0,[r0]                   ; 080ECE06
cmp   r2,r0                     ; 080ECE08
beq   @@Code080ECE48            ; 080ECE0A
ldr   r0,=0x4058                ; 080ECE0C
add   r1,r1,r0                  ; 080ECE0E
mov   r0,0x5D                   ; 080ECE10
bl    PlayYISound               ; 080ECE12
mov   r0,0x20                   ; 080ECE16
mov   r1,r8                     ; 080ECE18
strh  r0,[r1]                   ; 080ECE1A
mov   r0,r5                     ; 080ECE1C
add   r0,0xB8                   ; 080ECE1E
ldrh  r0,[r0]                   ; 080ECE20
strh  r0,[r7]                   ; 080ECE22
mov   r1,r5                     ; 080ECE24
add   r1,0xBE                   ; 080ECE26
mov   r0,0x48                   ; 080ECE28
strh  r0,[r1]                   ; 080ECE2A
mov   r0,r5                     ; 080ECE2C
add   r0,0xBC                   ; 080ECE2E
strh  r6,[r0]                   ; 080ECE30
@@Code080ECE32:
mov   r0,r5                     ; 080ECE32
bl    Sub080EC44C               ; 080ECE34
b     @@Code080ECEE6            ; 080ECE38
.pool                           ; 080ECE3A

@@Code080ECE48:
ldr   r2,=0x4058                ; 080ECE48
add   r7,r1,r2                  ; 080ECE4A
mov   r0,0x45                   ; 080ECE4C
mov   r1,r7                     ; 080ECE4E
bl    PlayYISound               ; 080ECE50
ldrh  r0,[r4]                   ; 080ECE54
add   r0,0x1                    ; 080ECE56
strh  r0,[r4]                   ; 080ECE58
mov   r1,r5                     ; 080ECE5A
add   r1,0x9C                   ; 080ECE5C
ldrh  r2,[r1]                   ; 080ECE5E
lsl   r0,r0,0x10                ; 080ECE60
lsr   r0,r0,0x10                ; 080ECE62
cmp   r2,r0                     ; 080ECE64
blo   @@Code080ECE74            ; 080ECE66
mov   r0,r5                     ; 080ECE68
bl    Sub080EC908               ; 080ECE6A
b     @@Code080ECEE6            ; 080ECE6E
.pool                           ; 080ECE70

@@Code080ECE74:
ldr   r4,=0x03006D80            ; 080ECE74
ldr   r0,[r4]                   ; 080ECE76
asr   r0,r0,0x8                 ; 080ECE78
strh  r0,[r7]                   ; 080ECE7A
mov   r0,0xD                    ; 080ECE7C
mov   r1,r7                     ; 080ECE7E
bl    PlayYISound               ; 080ECE80
mov   r0,0x6E                   ; 080ECE84
mov   r1,r7                     ; 080ECE86
bl    PlayYISound               ; 080ECE88
ldrh  r0,[r4,0x2C]              ; 080ECE8C
strh  r0,[r7]                   ; 080ECE8E
mov   r0,0xD                    ; 080ECE90
mov   r1,r7                     ; 080ECE92
bl    PlayYISound               ; 080ECE94
ldr   r0,=0x03007240            ; 080ECE98  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080ECE9A
ldr   r0,=0x02BE                ; 080ECE9C
add   r2,r1,r0                  ; 080ECE9E
mov   r0,0x2                    ; 080ECEA0
strh  r0,[r2]                   ; 080ECEA2
mov   r0,0xED                   ; 080ECEA4
lsl   r0,r0,0x2                 ; 080ECEA6
add   r2,r1,r0                  ; 080ECEA8
add   r0,0x6A                   ; 080ECEAA
add   r1,r1,r0                  ; 080ECEAC
mov   r0,0x1                    ; 080ECEAE
strh  r0,[r1]                   ; 080ECEB0
mov   r0,r5                     ; 080ECEB2
add   r0,0x70                   ; 080ECEB4
strh  r6,[r0]                   ; 080ECEB6
add   r0,0x10                   ; 080ECEB8
strh  r6,[r0]                   ; 080ECEBA
mov   r0,0xFD                   ; 080ECEBC
lsl   r0,r0,0x8                 ; 080ECEBE
strh  r0,[r5,0x30]              ; 080ECEC0
strh  r0,[r5,0x34]              ; 080ECEC2
mov   r0,r5                     ; 080ECEC4
add   r0,0x50                   ; 080ECEC6
strh  r6,[r0]                   ; 080ECEC8
add   r0,0x4                    ; 080ECECA
strh  r6,[r0]                   ; 080ECECC
mov   r0,0x10                   ; 080ECECE
str   r0,[r2,0x8]               ; 080ECED0
mov   r0,r5                     ; 080ECED2
add   r0,0x64                   ; 080ECED4
strh  r6,[r0]                   ; 080ECED6
add   r0,0x30                   ; 080ECED8
strh  r6,[r0]                   ; 080ECEDA
add   r0,0x2                    ; 080ECEDC
strh  r6,[r0]                   ; 080ECEDE
mov   r0,r5                     ; 080ECEE0
bl    Sub080EC908               ; 080ECEE2
@@Code080ECEE6:
pop   {r3}                      ; 080ECEE6
mov   r8,r3                     ; 080ECEE8
pop   {r4-r7}                   ; 080ECEEA
pop   {r0}                      ; 080ECEEC
bx    r0                        ; 080ECEEE
.pool                           ; 080ECEF0

Sub080ECEFC:
push  {r4-r7,lr}                ; 080ECEFC
mov   r7,r10                    ; 080ECEFE
mov   r6,r9                     ; 080ECF00
mov   r5,r8                     ; 080ECF02
push  {r5-r7}                   ; 080ECF04
add   sp,-0x8                   ; 080ECF06
mov   r3,r1                     ; 080ECF08
ldr   r2,=0x03002200            ; 080ECF0A
ldr   r1,=0x4901                ; 080ECF0C
add   r0,r2,r1                  ; 080ECF0E
ldrb  r0,[r0]                   ; 080ECF10
lsr   r6,r0,0x1                 ; 080ECF12
mov   r0,0x1                    ; 080ECF14
and   r6,r0                     ; 080ECF16
lsl   r0,r6,0x1                 ; 080ECF18
add   r0,r0,r6                  ; 080ECF1A
lsl   r6,r0,0x1                 ; 080ECF1C
mov   r0,0x98                   ; 080ECF1E
lsl   r0,r0,0x8                 ; 080ECF20
str   r0,[r3,0x4]               ; 080ECF22
ldr   r0,[r3]                   ; 080ECF24
mov   r1,0x80                   ; 080ECF26
lsl   r1,r1,0x1                 ; 080ECF28
add   r0,r0,r1                  ; 080ECF2A
str   r0,[r3]                   ; 080ECF2C
ldr   r1,=0x00011FFF            ; 080ECF2E
mov   r10,r2                    ; 080ECF30
cmp   r0,r1                     ; 080ECF32
ble   @@Code080ECF3C            ; 080ECF34
mov   r0,0x90                   ; 080ECF36
lsl   r0,r0,0x9                 ; 080ECF38
str   r0,[r3]                   ; 080ECF3A
@@Code080ECF3C:
ldr   r0,[r3]                   ; 080ECF3C
lsl   r0,r0,0x8                 ; 080ECF3E
lsr   r0,r0,0x10                ; 080ECF40
str   r0,[sp]                   ; 080ECF42
ldr   r0,[r3,0x4]               ; 080ECF44
lsl   r0,r0,0x8                 ; 080ECF46
lsr   r0,r0,0x10                ; 080ECF48
str   r0,[sp,0x4]               ; 080ECF4A
mov   r2,0x0                    ; 080ECF4C
mov   r12,r2                    ; 080ECF4E
ldr   r2,=0x030021B0            ; 080ECF50
ldr   r4,=0x47D0                ; 080ECF52
add   r4,r10                    ; 080ECF54
ldrh  r0,[r4]                   ; 080ECF56
lsl   r0,r0,0x3                 ; 080ECF58
mov   r1,0xE0                   ; 080ECF5A
lsl   r1,r1,0x6                 ; 080ECF5C
add   r1,r10                    ; 080ECF5E
add   r0,r0,r1                  ; 080ECF60
str   r0,[r2]                   ; 080ECF62
ldr   r1,=Data081961B8          ; 080ECF64
lsl   r0,r6,0x1                 ; 080ECF66
add   r0,r0,r1                  ; 080ECF68
ldrh  r3,[r0]                   ; 080ECF6A
ldr   r0,=0xFFFF                ; 080ECF6C
mov   r9,r2                     ; 080ECF6E
cmp   r3,r0                     ; 080ECF70
beq   @@Code080ED024            ; 080ECF72
mov   r7,r9                     ; 080ECF74
mov   r8,r4                     ; 080ECF76
@@Code080ECF78:
ldr   r4,[r7]                   ; 080ECF78
ldr   r0,=0x03FF                ; 080ECF7A
and   r3,r0                     ; 080ECF7C
ldrh  r1,[r4,0x4]               ; 080ECF7E
ldr   r0,=0xFFFFFC00            ; 080ECF80
and   r0,r1                     ; 080ECF82
orr   r0,r3                     ; 080ECF84
strh  r0,[r4,0x4]               ; 080ECF86
mov   r1,r12                    ; 080ECF88
add   r5,r1,r6                  ; 080ECF8A
lsl   r3,r5,0x1                 ; 080ECF8C
ldr   r2,=Data081961DC          ; 080ECF8E
add   r0,r3,r2                  ; 080ECF90
ldrh  r1,[r0]                   ; 080ECF92
ldr   r0,[sp]                   ; 080ECF94
add   r1,r0,r1                  ; 080ECF96
ldr   r2,=0x01FF                ; 080ECF98
mov   r0,r2                     ; 080ECF9A
and   r1,r0                     ; 080ECF9C
ldrh  r2,[r4,0x2]               ; 080ECF9E
ldr   r0,=0xFFFFFE00            ; 080ECFA0
and   r0,r2                     ; 080ECFA2
orr   r0,r1                     ; 080ECFA4
strh  r0,[r4,0x2]               ; 080ECFA6
ldr   r0,=Data081961F4          ; 080ECFA8
add   r3,r3,r0                  ; 080ECFAA
ldrb  r0,[r3]                   ; 080ECFAC
ldr   r1,[sp,0x4]               ; 080ECFAE
add   r0,r0,r1                  ; 080ECFB0
strb  r0,[r4]                   ; 080ECFB2
ldr   r3,[r7]                   ; 080ECFB4
ldr   r2,=Data081961D0          ; 080ECFB6
add   r0,r5,r2                  ; 080ECFB8
ldrb  r1,[r0]                   ; 080ECFBA
lsl   r1,r1,0x6                 ; 080ECFBC
ldrb  r2,[r3,0x3]               ; 080ECFBE
mov   r0,0x3F                   ; 080ECFC0
and   r0,r2                     ; 080ECFC2
orr   r0,r1                     ; 080ECFC4
strb  r0,[r3,0x3]               ; 080ECFC6
ldr   r3,[r7]                   ; 080ECFC8
ldr   r0,=Data0819620C          ; 080ECFCA
add   r5,r5,r0                  ; 080ECFCC
ldrb  r1,[r5]                   ; 080ECFCE
mov   r0,0x1                    ; 080ECFD0
and   r1,r0                     ; 080ECFD2
lsl   r1,r1,0x4                 ; 080ECFD4
ldrb  r2,[r3,0x3]               ; 080ECFD6
mov   r0,0x11                   ; 080ECFD8
neg   r0,r0                     ; 080ECFDA
and   r0,r2                     ; 080ECFDC
orr   r0,r1                     ; 080ECFDE
strb  r0,[r3,0x3]               ; 080ECFE0
ldr   r2,[r7]                   ; 080ECFE2
ldrb  r0,[r2,0x5]               ; 080ECFE4
mov   r1,0xC                    ; 080ECFE6
orr   r0,r1                     ; 080ECFE8
strb  r0,[r2,0x5]               ; 080ECFEA
mov   r1,r8                     ; 080ECFEC
ldrh  r0,[r1]                   ; 080ECFEE
add   r0,0x4                    ; 080ECFF0
strh  r0,[r1]                   ; 080ECFF2
mov   r0,r12                    ; 080ECFF4
add   r0,0x1                    ; 080ECFF6
lsl   r0,r0,0x10                ; 080ECFF8
lsr   r0,r0,0x10                ; 080ECFFA
mov   r12,r0                    ; 080ECFFC
cmp   r0,0x5                    ; 080ECFFE
bhi   @@Code080ED024            ; 080ED000
ldrh  r0,[r1]                   ; 080ED002
lsl   r0,r0,0x3                 ; 080ED004
mov   r1,0xE0                   ; 080ED006
lsl   r1,r1,0x6                 ; 080ED008
add   r1,r10                    ; 080ED00A
add   r0,r0,r1                  ; 080ED00C
mov   r2,r9                     ; 080ED00E
str   r0,[r2]                   ; 080ED010
mov   r1,r12                    ; 080ED012
add   r0,r1,r6                  ; 080ED014
lsl   r0,r0,0x1                 ; 080ED016
ldr   r2,=Data081961B8          ; 080ED018
add   r0,r0,r2                  ; 080ED01A
ldrh  r3,[r0]                   ; 080ED01C
ldr   r0,=0xFFFF                ; 080ED01E
cmp   r3,r0                     ; 080ED020
bne   @@Code080ECF78            ; 080ED022
@@Code080ED024:
add   sp,0x8                    ; 080ED024
pop   {r3-r5}                   ; 080ED026
mov   r8,r3                     ; 080ED028
mov   r9,r4                     ; 080ED02A
mov   r10,r5                    ; 080ED02C
pop   {r4-r7}                   ; 080ED02E
pop   {r0}                      ; 080ED030
bx    r0                        ; 080ED032
.pool                           ; 080ED034

Sub080ED070:
push  {lr}                      ; 080ED070
bl    Sub080ED538               ; 080ED072
pop   {r0}                      ; 080ED076
bx    r0                        ; 080ED078
.pool                           ; 080ED07A

Sub080ED07C:
push  {r4-r7,lr}                ; 080ED07C
mov   r7,r10                    ; 080ED07E
mov   r6,r9                     ; 080ED080
mov   r5,r8                     ; 080ED082
push  {r5-r7}                   ; 080ED084
mov   r8,r0                     ; 080ED086
mov   r6,r1                     ; 080ED088
ldr   r4,=0x03007240            ; 080ED08A  Normal gameplay IWRAM (0300220C)
ldr   r1,[r4]                   ; 080ED08C
ldr   r0,=0x29D2                ; 080ED08E
add   r2,r1,r0                  ; 080ED090
mov   r3,0x0                    ; 080ED092
mov   r0,0x20                   ; 080ED094
strh  r0,[r2]                   ; 080ED096
ldr   r0,=0x29D6                ; 080ED098
add   r2,r1,r0                  ; 080ED09A
mov   r0,0x4                    ; 080ED09C
strh  r0,[r2]                   ; 080ED09E
ldr   r2,=0x29E6                ; 080ED0A0
add   r1,r1,r2                  ; 080ED0A2
strh  r3,[r1]                   ; 080ED0A4
mov   r0,r8                     ; 080ED0A6
mov   r1,0x2                    ; 080ED0A8
bl    Sub080EB2A4               ; 080ED0AA
ldr   r1,[r6,0x4]               ; 080ED0AE
ldr   r0,=0x97FF                ; 080ED0B0
cmp   r1,r0                     ; 080ED0B2
ble   @@Code080ED13C            ; 080ED0B4
add   r0,0x1                    ; 080ED0B6
str   r0,[r6,0x4]               ; 080ED0B8
ldr   r4,[r4]                   ; 080ED0BA
ldr   r0,=0x0514                ; 080ED0BC
add   r1,r4,r0                  ; 080ED0BE
ldr   r0,[r6]                   ; 080ED0C0
ldr   r2,=0xFFFFF600            ; 080ED0C2
add   r0,r0,r2                  ; 080ED0C4
str   r0,[r1]                   ; 080ED0C6
mov   r0,0xC1                   ; 080ED0C8
lsl   r0,r0,0x2                 ; 080ED0CA
add   r6,r4,r0                  ; 080ED0CC
ldr   r0,[r6,0x4]               ; 080ED0CE
ldr   r2,=0xFFFFF800            ; 080ED0D0
add   r0,r0,r2                  ; 080ED0D2
str   r0,[r1,0x4]               ; 080ED0D4
mov   r0,r8                     ; 080ED0D6
bl    Sub080EA0A4               ; 080ED0D8
ldr   r0,=0x03002200            ; 080ED0DC
ldr   r1,=0x4901                ; 080ED0DE
add   r0,r0,r1                  ; 080ED0E0
ldrb  r1,[r0]                   ; 080ED0E2
mov   r0,0x30                   ; 080ED0E4
and   r0,r1                     ; 080ED0E6
lsr   r5,r0,0x4                 ; 080ED0E8
ldr   r0,=Data08196218          ; 080ED0EA
add   r0,r5,r0                  ; 080ED0EC
ldrb  r7,[r0]                   ; 080ED0EE
mov   r1,r8                     ; 080ED0F0
add   r1,0x74                   ; 080ED0F2
ldrh  r0,[r1]                   ; 080ED0F4
sub   r0,0x1                    ; 080ED0F6
strh  r0,[r1]                   ; 080ED0F8
lsl   r0,r0,0x10                ; 080ED0FA
cmp   r0,0x0                    ; 080ED0FC
bne   @@Code080ED154            ; 080ED0FE
ldr   r2,=0x036E                ; 080ED100
add   r1,r4,r2                  ; 080ED102
mov   r0,0x5                    ; 080ED104
strh  r0,[r1]                   ; 080ED106
b     @@Code080ED154            ; 080ED108
.pool                           ; 080ED10A

@@Code080ED13C:
mov   r0,0x2                    ; 080ED13C
bl    Sub080EB27C               ; 080ED13E
mov   r4,r8                     ; 080ED142
ldrh  r0,[r4,0x32]              ; 080ED144
lsr   r0,r0,0x8                 ; 080ED146
add   r5,r0,0x2                 ; 080ED148
ldr   r0,=Data0819621C          ; 080ED14A
mov   r1,0xFF                   ; 080ED14C
and   r5,r1                     ; 080ED14E
add   r0,r5,r0                  ; 080ED150
ldrb  r7,[r0]                   ; 080ED152
@@Code080ED154:
ldr   r1,=0x03002200            ; 080ED154
ldr   r2,=0x47D0                ; 080ED156
add   r0,r1,r2                  ; 080ED158
ldrh  r5,[r0]                   ; 080ED15A
ldr   r0,=0x03007240            ; 080ED15C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080ED15E
mov   r4,0xC1                   ; 080ED160
lsl   r4,r4,0x2                 ; 080ED162
add   r6,r0,r4                  ; 080ED164
mov   r0,0x0                    ; 080ED166
mov   r12,r0                    ; 080ED168
ldr   r1,=0x030021B0            ; 080ED16A
mov   r8,r1                     ; 080ED16C
mov   r2,0x3F                   ; 080ED16E
mov   r9,r2                     ; 080ED170
ldr   r4,=0xFFFFFC00            ; 080ED172
mov   r10,r4                    ; 080ED174
@@Code080ED176:
lsr   r2,r5,0x2                 ; 080ED176
lsl   r2,r2,0x3                 ; 080ED178
ldr   r0,=0x03005A00            ; 080ED17A
add   r2,r2,r0                  ; 080ED17C
mov   r1,r8                     ; 080ED17E
str   r2,[r1]                   ; 080ED180
lsr   r3,r7,0x1                 ; 080ED182
lsl   r3,r3,0x1                 ; 080ED184
ldr   r4,=Data0819625E          ; 080ED186
add   r0,r3,r4                  ; 080ED188
mov   r4,0x0                    ; 080ED18A
ldsh  r1,[r0,r4]                ; 080ED18C
ldr   r0,[r6]                   ; 080ED18E
asr   r0,r0,0x8                 ; 080ED190
add   r4,r1,r0                  ; 080ED192
ldr   r1,=0x01FF                ; 080ED194
mov   r0,r1                     ; 080ED196
and   r4,r0                     ; 080ED198
ldrh  r1,[r2,0x2]               ; 080ED19A
ldr   r0,=0xFFFFFE00            ; 080ED19C
and   r0,r1                     ; 080ED19E
orr   r0,r4                     ; 080ED1A0
strh  r0,[r2,0x2]               ; 080ED1A2
ldr   r4,=Data08196222          ; 080ED1A4
add   r0,r3,r4                  ; 080ED1A6
mov   r4,0x0                    ; 080ED1A8
ldsh  r1,[r0,r4]                ; 080ED1AA
ldr   r0,[r6,0x4]               ; 080ED1AC
asr   r0,r0,0x8                 ; 080ED1AE
add   r4,r1,r0                  ; 080ED1B0
strb  r4,[r2]                   ; 080ED1B2
mov   r0,r8                     ; 080ED1B4
ldr   r4,[r0]                   ; 080ED1B6
ldr   r1,=Data0819629A          ; 080ED1B8
add   r0,r3,r1                  ; 080ED1BA
ldrh  r0,[r0]                   ; 080ED1BC
ldr   r1,=0x03FF                ; 080ED1BE
and   r1,r0                     ; 080ED1C0
ldrh  r2,[r4,0x4]               ; 080ED1C2
mov   r0,r10                    ; 080ED1C4
and   r0,r2                     ; 080ED1C6
orr   r0,r1                     ; 080ED1C8
strh  r0,[r4,0x4]               ; 080ED1CA
ldr   r2,=Data081962D6          ; 080ED1CC
add   r3,r3,r2                  ; 080ED1CE
ldrh  r1,[r3]                   ; 080ED1D0
lsl   r1,r1,0x6                 ; 080ED1D2
ldrb  r2,[r4,0x3]               ; 080ED1D4
mov   r0,r9                     ; 080ED1D6
and   r0,r2                     ; 080ED1D8
orr   r0,r1                     ; 080ED1DA
strb  r0,[r4,0x3]               ; 080ED1DC
mov   r4,r8                     ; 080ED1DE
ldr   r2,[r4]                   ; 080ED1E0
ldrb  r1,[r2,0x1]               ; 080ED1E2
mov   r0,r9                     ; 080ED1E4
and   r0,r1                     ; 080ED1E6
strb  r0,[r2,0x1]               ; 080ED1E8
add   r0,r7,0x2                 ; 080ED1EA
lsl   r0,r0,0x10                ; 080ED1EC
lsr   r7,r0,0x10                ; 080ED1EE
add   r0,r5,0x4                 ; 080ED1F0
lsl   r0,r0,0x10                ; 080ED1F2
lsr   r5,r0,0x10                ; 080ED1F4
mov   r0,r12                    ; 080ED1F6
add   r0,0x1                    ; 080ED1F8
lsl   r0,r0,0x10                ; 080ED1FA
lsr   r0,r0,0x10                ; 080ED1FC
mov   r12,r0                    ; 080ED1FE
cmp   r0,0x4                    ; 080ED200
bls   @@Code080ED176            ; 080ED202
ldr   r1,=0x03002200            ; 080ED204
ldr   r2,=0x47D0                ; 080ED206
add   r0,r1,r2                  ; 080ED208
strh  r5,[r0]                   ; 080ED20A
pop   {r3-r5}                   ; 080ED20C
mov   r8,r3                     ; 080ED20E
mov   r9,r4                     ; 080ED210
mov   r10,r5                    ; 080ED212
pop   {r4-r7}                   ; 080ED214
pop   {r0}                      ; 080ED216
bx    r0                        ; 080ED218
.pool                           ; 080ED21A

Sub080ED254:
push  {r4-r7,lr}                ; 080ED254
mov   r7,r10                    ; 080ED256
mov   r6,r9                     ; 080ED258
mov   r5,r8                     ; 080ED25A
push  {r5-r7}                   ; 080ED25C
mov   r5,r0                     ; 080ED25E
ldr   r0,=0x03007240            ; 080ED260  Normal gameplay IWRAM (0300220C)
ldr   r4,[r0]                   ; 080ED262
mov   r0,0xC1                   ; 080ED264
lsl   r0,r0,0x2                 ; 080ED266
add   r0,r0,r4                  ; 080ED268
mov   r8,r0                     ; 080ED26A
ldr   r2,=0x29D2                ; 080ED26C
add   r1,r4,r2                  ; 080ED26E
mov   r6,0x0                    ; 080ED270
mov   r0,0x20                   ; 080ED272
strh  r0,[r1]                   ; 080ED274
ldr   r0,=0x29D6                ; 080ED276
add   r1,r4,r0                  ; 080ED278
mov   r0,0x4                    ; 080ED27A
strh  r0,[r1]                   ; 080ED27C
ldr   r1,=0x29E6                ; 080ED27E
add   r0,r4,r1                  ; 080ED280
strh  r6,[r0]                   ; 080ED282
mov   r0,r5                     ; 080ED284
mov   r1,0x2                    ; 080ED286
bl    Sub080EB2A4               ; 080ED288
mov   r0,r8                     ; 080ED28C
ldrh  r2,[r0,0x4]               ; 080ED28E
ldr   r0,=0x97FF                ; 080ED290
cmp   r2,r0                     ; 080ED292
bls   @@Code080ED2B4            ; 080ED294
mov   r0,r5                     ; 080ED296
bl    Sub080EA550               ; 080ED298
mov   r2,0x98                   ; 080ED29C
lsl   r2,r2,0x8                 ; 080ED29E
mov   r1,r8                     ; 080ED2A0
str   r2,[r1,0x4]               ; 080ED2A2
ldr   r2,=0x036E                ; 080ED2A4
add   r0,r4,r2                  ; 080ED2A6
strh  r6,[r0]                   ; 080ED2A8
mov   r0,r5                     ; 080ED2AA
add   r0,0x72                   ; 080ED2AC
strh  r6,[r0]                   ; 080ED2AE
add   r0,0x10                   ; 080ED2B0
strh  r6,[r0]                   ; 080ED2B2
@@Code080ED2B4:
ldrh  r0,[r5,0x32]              ; 080ED2B4
lsr   r2,r0,0x8                 ; 080ED2B6
add   r2,0x3                    ; 080ED2B8
mov   r0,0xFF                   ; 080ED2BA
and   r2,r0                     ; 080ED2BC
ldr   r0,=Data08196312          ; 080ED2BE
add   r0,r2,r0                  ; 080ED2C0
ldrb  r7,[r0]                   ; 080ED2C2
ldr   r1,=0x03002200            ; 080ED2C4
ldr   r2,=0x47D0                ; 080ED2C6
add   r0,r1,r2                  ; 080ED2C8
ldrh  r6,[r0]                   ; 080ED2CA
mov   r0,0x0                    ; 080ED2CC
mov   r9,r0                     ; 080ED2CE
ldr   r1,=0x030021B0            ; 080ED2D0
mov   r12,r1                    ; 080ED2D2
mov   r2,0x3F                   ; 080ED2D4
mov   r10,r2                    ; 080ED2D6
@@Code080ED2D8:
lsr   r3,r6,0x2                 ; 080ED2D8
lsl   r3,r3,0x3                 ; 080ED2DA
ldr   r0,=0x03005A00            ; 080ED2DC
add   r3,r3,r0                  ; 080ED2DE
mov   r1,r12                    ; 080ED2E0
str   r3,[r1]                   ; 080ED2E2
lsr   r5,r7,0x1                 ; 080ED2E4
lsl   r4,r5,0x1                 ; 080ED2E6
ldr   r2,=Data08196342          ; 080ED2E8
add   r0,r4,r2                  ; 080ED2EA
mov   r2,0x0                    ; 080ED2EC
ldsh  r1,[r0,r2]                ; 080ED2EE
lsl   r1,r1,0x8                 ; 080ED2F0
mov   r2,r8                     ; 080ED2F2
ldr   r0,[r2]                   ; 080ED2F4
add   r1,r1,r0                  ; 080ED2F6
lsl   r1,r1,0xF                 ; 080ED2F8
lsr   r1,r1,0x17                ; 080ED2FA
ldrh  r2,[r3,0x2]               ; 080ED2FC
ldr   r0,=0xFFFFFE00            ; 080ED2FE
and   r0,r2                     ; 080ED300
orr   r0,r1                     ; 080ED302
strh  r0,[r3,0x2]               ; 080ED304
ldr   r1,=Data0819631A          ; 080ED306
add   r0,r4,r1                  ; 080ED308
mov   r2,0x0                    ; 080ED30A
ldsh  r1,[r0,r2]                ; 080ED30C
lsl   r1,r1,0x8                 ; 080ED30E
mov   r2,r8                     ; 080ED310
ldr   r0,[r2,0x4]               ; 080ED312
add   r1,r1,r0                  ; 080ED314
asr   r1,r1,0x8                 ; 080ED316
strb  r1,[r3]                   ; 080ED318
ldr   r0,=Data0819636A          ; 080ED31A
add   r4,r4,r0                  ; 080ED31C
ldrh  r2,[r4]                   ; 080ED31E
mov   r1,r12                    ; 080ED320
ldr   r3,[r1]                   ; 080ED322
ldr   r0,=0x03FF                ; 080ED324
and   r2,r0                     ; 080ED326
ldrh  r1,[r3,0x4]               ; 080ED328
ldr   r0,=0xFFFFFC00            ; 080ED32A
and   r0,r1                     ; 080ED32C
orr   r0,r2                     ; 080ED32E
strh  r0,[r3,0x4]               ; 080ED330
ldr   r1,=Data08196392          ; 080ED332
add   r5,r5,r1                  ; 080ED334
ldrb  r1,[r5]                   ; 080ED336
lsl   r1,r1,0x6                 ; 080ED338
ldrb  r2,[r3,0x3]               ; 080ED33A
mov   r0,r10                    ; 080ED33C
and   r0,r2                     ; 080ED33E
orr   r0,r1                     ; 080ED340
strb  r0,[r3,0x3]               ; 080ED342
mov   r0,r12                    ; 080ED344
ldr   r2,[r0]                   ; 080ED346
ldrb  r1,[r2,0x1]               ; 080ED348
mov   r0,r10                    ; 080ED34A
and   r0,r1                     ; 080ED34C
strb  r0,[r2,0x1]               ; 080ED34E
add   r0,r7,0x2                 ; 080ED350
lsl   r0,r0,0x10                ; 080ED352
lsr   r7,r0,0x10                ; 080ED354
add   r0,r6,0x4                 ; 080ED356
lsl   r0,r0,0x10                ; 080ED358
lsr   r6,r0,0x10                ; 080ED35A
mov   r0,r9                     ; 080ED35C
add   r0,0x1                    ; 080ED35E
lsl   r0,r0,0x10                ; 080ED360
lsr   r0,r0,0x10                ; 080ED362
mov   r9,r0                     ; 080ED364
cmp   r0,0x4                    ; 080ED366
bls   @@Code080ED2D8            ; 080ED368
ldr   r1,=0x03002200            ; 080ED36A
ldr   r2,=0x47D0                ; 080ED36C
add   r0,r1,r2                  ; 080ED36E
strh  r6,[r0]                   ; 080ED370
pop   {r3-r5}                   ; 080ED372
mov   r8,r3                     ; 080ED374
mov   r9,r4                     ; 080ED376
mov   r10,r5                    ; 080ED378
pop   {r4-r7}                   ; 080ED37A
pop   {r0}                      ; 080ED37C
bx    r0                        ; 080ED37E
.pool                           ; 080ED380

Sub080ED3C8:
push  {r4-r7,lr}                ; 080ED3C8
mov   r7,r8                     ; 080ED3CA
push  {r7}                      ; 080ED3CC
mov   r5,r0                     ; 080ED3CE
mov   r7,r1                     ; 080ED3D0
ldrh  r4,[r5,0x1C]              ; 080ED3D2
cmp   r4,0x0                    ; 080ED3D4
beq   @@Code080ED3DE            ; 080ED3D6
bl    Sub080EC6DC               ; 080ED3D8
b     @@Code080ED518            ; 080ED3DC
@@Code080ED3DE:
mov   r0,r5                     ; 080ED3DE
add   r0,0xB6                   ; 080ED3E0
ldrh  r1,[r0]                   ; 080ED3E2
mov   r8,r0                     ; 080ED3E4
cmp   r1,0x0                    ; 080ED3E6
beq   @@Code080ED40A            ; 080ED3E8
mov   r0,r5                     ; 080ED3EA
bl    Sub080EB7C0               ; 080ED3EC
mov   r1,r8                     ; 080ED3F0
ldrh  r0,[r1]                   ; 080ED3F2
sub   r0,0x1                    ; 080ED3F4
strh  r0,[r1]                   ; 080ED3F6
lsl   r0,r0,0x10                ; 080ED3F8
cmp   r0,0x0                    ; 080ED3FA
bne   @@Code080ED48A            ; 080ED3FC
mov   r0,r5                     ; 080ED3FE
add   r0,0x9A                   ; 080ED400
strh  r4,[r0]                   ; 080ED402
mov   r0,r5                     ; 080ED404
bl    Sub080EC610               ; 080ED406
@@Code080ED40A:
mov   r6,r5                     ; 080ED40A
add   r6,0x9A                   ; 080ED40C
ldrh  r0,[r6]                   ; 080ED40E
add   r0,0x3A                   ; 080ED410
lsl   r0,r0,0x1                 ; 080ED412
mov   r1,r5                     ; 080ED414
add   r1,0x2A                   ; 080ED416
add   r1,r1,r0                  ; 080ED418
ldrh  r4,[r1]                   ; 080ED41A
sub   r0,r4,0x1                 ; 080ED41C
lsl   r0,r0,0x10                ; 080ED41E
lsr   r4,r0,0x10                ; 080ED420
strh  r4,[r1]                   ; 080ED422
cmp   r4,0x0                    ; 080ED424
bne   @@Code080ED46C            ; 080ED426
bl    Sub08035648               ; 080ED428
ldr   r0,=0x03007240            ; 080ED42C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080ED42E
ldr   r2,=0x29CC                ; 080ED430
add   r0,r0,r2                  ; 080ED432
ldrb  r4,[r0]                   ; 080ED434
cmp   r4,0xF                    ; 080ED436
bhi   @@Code080ED458            ; 080ED438
mov   r0,0x20                   ; 080ED43A
mov   r1,r8                     ; 080ED43C
strh  r0,[r1]                   ; 080ED43E
ldr   r1,=0x03006258            ; 080ED440
mov   r0,0x5D                   ; 080ED442
bl    PlayYISound               ; 080ED444
b     @@Code080ED48A            ; 080ED448
.pool                           ; 080ED44A

@@Code080ED458:
ldrh  r0,[r6]                   ; 080ED458
add   r0,0x1                    ; 080ED45A
strh  r0,[r6]                   ; 080ED45C
ldr   r1,=0x03006258            ; 080ED45E
mov   r0,0x45                   ; 080ED460
bl    PlayYISound               ; 080ED462
mov   r0,r5                     ; 080ED466
bl    Sub080EC7E0               ; 080ED468
@@Code080ED46C:
mov   r1,r5                     ; 080ED46C
add   r1,0x92                   ; 080ED46E
ldrh  r0,[r1]                   ; 080ED470
sub   r0,0x1                    ; 080ED472
strh  r0,[r1]                   ; 080ED474
lsl   r0,r0,0x10                ; 080ED476
lsr   r6,r0,0x10                ; 080ED478
cmp   r6,0x0                    ; 080ED47A
beq   @@Code080ED498            ; 080ED47C
mov   r0,r5                     ; 080ED47E
bl    Sub080EB7B0               ; 080ED480
mov   r0,r5                     ; 080ED484
bl    Sub080EB32C               ; 080ED486
@@Code080ED48A:
mov   r0,r5                     ; 080ED48A
mov   r1,r7                     ; 080ED48C
bl    Sub080ED538               ; 080ED48E
b     @@Code080ED518            ; 080ED492
.pool                           ; 080ED494

@@Code080ED498:
ldr   r4,=0x03002200            ; 080ED498
ldr   r0,[r7]                   ; 080ED49A
asr   r0,r0,0x8                 ; 080ED49C
ldr   r2,=0x4058                ; 080ED49E
add   r4,r4,r2                  ; 080ED4A0
strh  r0,[r4]                   ; 080ED4A2
mov   r0,0xD                    ; 080ED4A4
mov   r1,r4                     ; 080ED4A6
bl    PlayYISound               ; 080ED4A8
mov   r0,0x6E                   ; 080ED4AC
mov   r1,r4                     ; 080ED4AE
bl    PlayYISound               ; 080ED4B0
ldr   r0,[r7]                   ; 080ED4B4
asr   r0,r0,0x8                 ; 080ED4B6
strh  r0,[r4]                   ; 080ED4B8
mov   r0,0x81                   ; 080ED4BA
mov   r1,r4                     ; 080ED4BC
bl    PlayYISound               ; 080ED4BE
ldr   r0,=0x03007240            ; 080ED4C2  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080ED4C4
mov   r4,0x2                    ; 080ED4C6
ldr   r2,=0x036E                ; 080ED4C8
add   r0,r1,r2                  ; 080ED4CA
strh  r4,[r0]                   ; 080ED4CC
mov   r4,0x1                    ; 080ED4CE
mov   r0,0xED                   ; 080ED4D0
lsl   r0,r0,0x2                 ; 080ED4D2
add   r7,r1,r0                  ; 080ED4D4
add   r2,0xB0                   ; 080ED4D6
add   r1,r1,r2                  ; 080ED4D8
strh  r4,[r1]                   ; 080ED4DA
mov   r0,r5                     ; 080ED4DC
add   r0,0x72                   ; 080ED4DE
strh  r6,[r0]                   ; 080ED4E0
add   r0,0x10                   ; 080ED4E2
strh  r6,[r0]                   ; 080ED4E4
mov   r0,0xFD                   ; 080ED4E6
lsl   r0,r0,0x8                 ; 080ED4E8
strh  r0,[r5,0x32]              ; 080ED4EA
strh  r0,[r5,0x34]              ; 080ED4EC
mov   r0,r5                     ; 080ED4EE
add   r0,0x52                   ; 080ED4F0
strh  r6,[r0]                   ; 080ED4F2
add   r0,0x2                    ; 080ED4F4
strh  r6,[r0]                   ; 080ED4F6
ldr   r0,=0xFFF0                ; 080ED4F8
str   r0,[r7,0x8]               ; 080ED4FA
mov   r0,r5                     ; 080ED4FC
add   r0,0x64                   ; 080ED4FE
strh  r6,[r0]                   ; 080ED500
add   r0,0x30                   ; 080ED502
strh  r6,[r0]                   ; 080ED504
add   r0,0x2                    ; 080ED506
strh  r6,[r0]                   ; 080ED508
mov   r0,r5                     ; 080ED50A
bl    Sub080EC7E0               ; 080ED50C
mov   r0,r5                     ; 080ED510
mov   r1,r7                     ; 080ED512
bl    Sub080ED538               ; 080ED514
@@Code080ED518:
pop   {r3}                      ; 080ED518
mov   r8,r3                     ; 080ED51A
pop   {r4-r7}                   ; 080ED51C
pop   {r0}                      ; 080ED51E
bx    r0                        ; 080ED520
.pool                           ; 080ED522

Sub080ED538:
push  {r4-r7,lr}                ; 080ED538
mov   r7,r10                    ; 080ED53A
mov   r6,r9                     ; 080ED53C
mov   r5,r8                     ; 080ED53E
push  {r5-r7}                   ; 080ED540
mov   r3,r0                     ; 080ED542
ldr   r0,=0x03007240            ; 080ED544  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080ED546
mov   r1,0xC1                   ; 080ED548
lsl   r1,r1,0x2                 ; 080ED54A
add   r1,r1,r0                  ; 080ED54C
mov   r9,r1                     ; 080ED54E
mov   r4,r3                     ; 080ED550
add   r4,0x82                   ; 080ED552
ldrh  r6,[r4]                   ; 080ED554
mov   r1,r3                     ; 080ED556
add   r1,0x72                   ; 080ED558
ldrh  r2,[r1]                   ; 080ED55A
cmp   r2,0x0                    ; 080ED55C
beq   @@Code080ED568            ; 080ED55E
sub   r0,r2,0x1                 ; 080ED560
b     @@Code080ED578            ; 080ED562
.pool                           ; 080ED564

@@Code080ED568:
add   r0,r6,0x1                 ; 080ED568
lsl   r0,r0,0x10                ; 080ED56A
lsr   r6,r0,0x10                ; 080ED56C
cmp   r6,0x3                    ; 080ED56E
bls   @@Code080ED574            ; 080ED570
mov   r6,0x0                    ; 080ED572
@@Code080ED574:
strh  r6,[r4]                   ; 080ED574
mov   r0,0x10                   ; 080ED576
@@Code080ED578:
strh  r0,[r1]                   ; 080ED578
lsl   r0,r6,0x12                ; 080ED57A
mov   r1,r3                     ; 080ED57C
add   r1,0x82                   ; 080ED57E
lsr   r0,r0,0x10                ; 080ED580
ldrh  r1,[r1]                   ; 080ED582
add   r0,r0,r1                  ; 080ED584
lsl   r0,r0,0x11                ; 080ED586
lsr   r7,r0,0x10                ; 080ED588
ldr   r1,=0x03002200            ; 080ED58A
ldr   r2,=0x47D0                ; 080ED58C
add   r0,r1,r2                  ; 080ED58E
ldrh  r6,[r0]                   ; 080ED590
mov   r0,0x0                    ; 080ED592
mov   r8,r0                     ; 080ED594
ldr   r1,=0x030021B0            ; 080ED596
mov   r12,r1                    ; 080ED598
mov   r2,0x3F                   ; 080ED59A
mov   r10,r2                    ; 080ED59C
@@Code080ED59E:
lsr   r3,r6,0x2                 ; 080ED59E
lsl   r3,r3,0x3                 ; 080ED5A0
ldr   r0,=0x03005A00            ; 080ED5A2
add   r3,r3,r0                  ; 080ED5A4
mov   r1,r12                    ; 080ED5A6
str   r3,[r1]                   ; 080ED5A8
lsr   r5,r7,0x1                 ; 080ED5AA
lsl   r4,r5,0x1                 ; 080ED5AC
ldr   r2,=Data081963E2          ; 080ED5AE
add   r0,r4,r2                  ; 080ED5B0
mov   r2,0x0                    ; 080ED5B2
ldsh  r1,[r0,r2]                ; 080ED5B4
lsl   r1,r1,0x8                 ; 080ED5B6
mov   r2,r9                     ; 080ED5B8
ldr   r0,[r2]                   ; 080ED5BA
add   r1,r1,r0                  ; 080ED5BC
lsl   r1,r1,0xF                 ; 080ED5BE
lsr   r1,r1,0x17                ; 080ED5C0
ldrh  r2,[r3,0x2]               ; 080ED5C2
ldr   r0,=0xFFFFFE00            ; 080ED5C4
and   r0,r2                     ; 080ED5C6
orr   r0,r1                     ; 080ED5C8
strh  r0,[r3,0x2]               ; 080ED5CA
ldr   r1,=Data0819640A          ; 080ED5CC
add   r0,r4,r1                  ; 080ED5CE
mov   r2,0x0                    ; 080ED5D0
ldsh  r1,[r0,r2]                ; 080ED5D2
lsl   r1,r1,0x8                 ; 080ED5D4
mov   r2,r9                     ; 080ED5D6
ldr   r0,[r2,0x4]               ; 080ED5D8
add   r1,r1,r0                  ; 080ED5DA
asr   r1,r1,0x8                 ; 080ED5DC
strb  r1,[r3]                   ; 080ED5DE
ldr   r0,=Data081963A6          ; 080ED5E0
add   r4,r4,r0                  ; 080ED5E2
ldrh  r2,[r4]                   ; 080ED5E4
mov   r1,r12                    ; 080ED5E6
ldr   r3,[r1]                   ; 080ED5E8
ldr   r0,=0x03FF                ; 080ED5EA
and   r2,r0                     ; 080ED5EC
ldrh  r1,[r3,0x4]               ; 080ED5EE
ldr   r0,=0xFFFFFC00            ; 080ED5F0
and   r0,r1                     ; 080ED5F2
orr   r0,r2                     ; 080ED5F4
strh  r0,[r3,0x4]               ; 080ED5F6
ldr   r1,=Data081963CE          ; 080ED5F8
add   r5,r5,r1                  ; 080ED5FA
ldrb  r1,[r5]                   ; 080ED5FC
lsl   r1,r1,0x6                 ; 080ED5FE
ldrb  r2,[r3,0x3]               ; 080ED600
mov   r0,r10                    ; 080ED602
and   r0,r2                     ; 080ED604
orr   r0,r1                     ; 080ED606
strb  r0,[r3,0x3]               ; 080ED608
mov   r0,r12                    ; 080ED60A
ldr   r2,[r0]                   ; 080ED60C
ldrb  r1,[r2,0x1]               ; 080ED60E
mov   r0,r10                    ; 080ED610
and   r0,r1                     ; 080ED612
strb  r0,[r2,0x1]               ; 080ED614
add   r0,r7,0x2                 ; 080ED616
lsl   r0,r0,0x10                ; 080ED618
lsr   r7,r0,0x10                ; 080ED61A
add   r0,r6,0x4                 ; 080ED61C
lsl   r0,r0,0x10                ; 080ED61E
lsr   r6,r0,0x10                ; 080ED620
mov   r0,r8                     ; 080ED622
add   r0,0x1                    ; 080ED624
lsl   r0,r0,0x10                ; 080ED626
lsr   r0,r0,0x10                ; 080ED628
mov   r8,r0                     ; 080ED62A
cmp   r0,0x4                    ; 080ED62C
bls   @@Code080ED59E            ; 080ED62E
ldr   r1,=0x03002200            ; 080ED630
ldr   r2,=0x47D0                ; 080ED632
add   r0,r1,r2                  ; 080ED634
strh  r6,[r0]                   ; 080ED636
pop   {r3-r5}                   ; 080ED638
mov   r8,r3                     ; 080ED63A
mov   r9,r4                     ; 080ED63C
mov   r10,r5                    ; 080ED63E
pop   {r4-r7}                   ; 080ED640
pop   {r0}                      ; 080ED642
bx    r0                        ; 080ED644
.pool                           ; 080ED646

Sub080ED674:
push  {lr}                      ; 080ED674
ldr   r1,=0x03007240            ; 080ED676  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080ED678
mov   r3,0xC1                   ; 080ED67A
lsl   r3,r3,0x2                 ; 080ED67C
add   r1,r2,r3                  ; 080ED67E
add   r3,0x6A                   ; 080ED680
add   r2,r2,r3                  ; 080ED682
ldrh  r2,[r2]                   ; 080ED684
ldr   r3,=CodePtrs08196434      ; 080ED686
lsl   r2,r2,0x2                 ; 080ED688
add   r2,r2,r3                  ; 080ED68A
ldr   r2,[r2]                   ; 080ED68C
bl    Sub_bx_r2                 ; 080ED68E  bx r2
pop   {r0}                      ; 080ED692
bx    r0                        ; 080ED694
.pool                           ; 080ED696

Return080ED6A0:
bx    lr                        ; 080ED6A0
.pool                           ; 080ED6A2

Sub080ED6A4:
push  {r4-r6,lr}                ; 080ED6A4
mov   r4,r0                     ; 080ED6A6
mov   r6,r1                     ; 080ED6A8
ldr   r0,=0x03007240            ; 080ED6AA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080ED6AC
ldr   r1,=0x0514                ; 080ED6AE
add   r5,r0,r1                  ; 080ED6B0
mov   r3,r4                     ; 080ED6B2
add   r3,0x80                   ; 080ED6B4
ldrh  r2,[r3]                   ; 080ED6B6
mov   r1,r4                     ; 080ED6B8
add   r1,0x70                   ; 080ED6BA
ldrh  r0,[r1]                   ; 080ED6BC
cmp   r0,0x0                    ; 080ED6BE
beq   @@Code080ED6D0            ; 080ED6C0
sub   r0,0x1                    ; 080ED6C2
b     @@Code080ED6E4            ; 080ED6C4
.pool                           ; 080ED6C6

@@Code080ED6D0:
add   r0,r2,0x1                 ; 080ED6D0
lsl   r0,r0,0x10                ; 080ED6D2
lsr   r2,r0,0x10                ; 080ED6D4
cmp   r2,0x10                   ; 080ED6D6
bls   @@Code080ED6DC            ; 080ED6D8
mov   r2,0x10                   ; 080ED6DA
@@Code080ED6DC:
strh  r2,[r3]                   ; 080ED6DC
ldr   r0,=Data0819648D          ; 080ED6DE
add   r0,r2,r0                  ; 080ED6E0
ldrb  r0,[r0]                   ; 080ED6E2
@@Code080ED6E4:
strh  r0,[r1]                   ; 080ED6E4
ldr   r0,=0x03006D80            ; 080ED6E6
ldr   r1,=Data0819647C          ; 080ED6E8
add   r1,r2,r1                  ; 080ED6EA
ldrb  r1,[r1]                   ; 080ED6EC
strh  r1,[r0,0x3C]              ; 080ED6EE
cmp   r2,0x10                   ; 080ED6F0
bne   @@Code080ED70E            ; 080ED6F2
ldr   r0,[r6]                   ; 080ED6F4
mov   r1,0xA0                   ; 080ED6F6
lsl   r1,r1,0x6                 ; 080ED6F8
add   r0,r0,r1                  ; 080ED6FA
str   r0,[r5]                   ; 080ED6FC
ldr   r0,[r6,0x4]               ; 080ED6FE
mov   r1,0x90                   ; 080ED700
lsl   r1,r1,0x6                 ; 080ED702
add   r0,r0,r1                  ; 080ED704
str   r0,[r5,0x4]               ; 080ED706
mov   r0,r4                     ; 080ED708
bl    Sub080EA0A4               ; 080ED70A
@@Code080ED70E:
pop   {r4-r6}                   ; 080ED70E
pop   {r0}                      ; 080ED710
bx    r0                        ; 080ED712
.pool                           ; 080ED714

Sub080ED720:
push  {r4-r6,lr}                ; 080ED720
mov   r4,r0                     ; 080ED722
mov   r5,r1                     ; 080ED724
ldr   r0,=0x03007240            ; 080ED726  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080ED728
ldr   r0,=0x29D2                ; 080ED72A
add   r2,r1,r0                  ; 080ED72C
mov   r6,0x0                    ; 080ED72E
mov   r0,0x20                   ; 080ED730
strh  r0,[r2]                   ; 080ED732
ldr   r0,=0x29D6                ; 080ED734
add   r2,r1,r0                  ; 080ED736
mov   r0,0x4                    ; 080ED738
strh  r0,[r2]                   ; 080ED73A
ldr   r0,=0x29E6                ; 080ED73C
add   r1,r1,r0                  ; 080ED73E
strh  r6,[r1]                   ; 080ED740
mov   r0,r4                     ; 080ED742
mov   r1,0x0                    ; 080ED744
bl    Sub080EB2A4               ; 080ED746
ldr   r1,[r5,0x4]               ; 080ED74A
ldr   r0,=0x6FFF                ; 080ED74C
cmp   r1,r0                     ; 080ED74E
ble   @@Code080ED76E            ; 080ED750
mov   r0,r4                     ; 080ED752
bl    Sub080EA550               ; 080ED754
mov   r1,0xE0                   ; 080ED758
lsl   r1,r1,0x7                 ; 080ED75A
str   r1,[r5,0x4]               ; 080ED75C
mov   r0,r5                     ; 080ED75E
add   r0,0x6A                   ; 080ED760
strh  r6,[r0]                   ; 080ED762
mov   r0,r4                     ; 080ED764
add   r0,0x80                   ; 080ED766
strh  r6,[r0]                   ; 080ED768
sub   r0,0x10                   ; 080ED76A
strh  r6,[r0]                   ; 080ED76C
@@Code080ED76E:
ldrh  r0,[r4,0x30]              ; 080ED76E
lsr   r1,r0,0x8                 ; 080ED770
mov   r0,0x80                   ; 080ED772
and   r0,r1                     ; 080ED774
mov   r1,0x7                    ; 080ED776
cmp   r0,0x0                    ; 080ED778
beq   @@Code080ED77E            ; 080ED77A
mov   r1,0x6                    ; 080ED77C
@@Code080ED77E:
ldr   r0,=0x03006D80            ; 080ED77E
strh  r1,[r0,0x3C]              ; 080ED780
pop   {r4-r6}                   ; 080ED782
pop   {r0}                      ; 080ED784
bx    r0                        ; 080ED786
.pool                           ; 080ED788

Sub080ED7A0:
push  {r4,lr}                   ; 080ED7A0
mov   r4,r0                     ; 080ED7A2
bl    Sub080ECD54               ; 080ED7A4
mov   r3,r4                     ; 080ED7A8
add   r3,0x80                   ; 080ED7AA
ldrh  r2,[r3]                   ; 080ED7AC
add   r4,0x70                   ; 080ED7AE
ldrh  r1,[r4]                   ; 080ED7B0
cmp   r1,0x0                    ; 080ED7B2
beq   @@Code080ED7BC            ; 080ED7B4
sub   r0,r1,0x1                 ; 080ED7B6
strh  r0,[r4]                   ; 080ED7B8
b     @@Code080ED7D2            ; 080ED7BA
@@Code080ED7BC:
add   r0,r2,0x1                 ; 080ED7BC
lsl   r0,r0,0x10                ; 080ED7BE
lsr   r2,r0,0x10                ; 080ED7C0
cmp   r2,0x3                    ; 080ED7C2
bls   @@Code080ED7C8            ; 080ED7C4
mov   r2,0x0                    ; 080ED7C6
@@Code080ED7C8:
strh  r2,[r3]                   ; 080ED7C8
ldr   r0,=Data081964A2          ; 080ED7CA
add   r0,r2,r0                  ; 080ED7CC
ldrb  r1,[r0]                   ; 080ED7CE
strh  r1,[r4]                   ; 080ED7D0
@@Code080ED7D2:
ldr   r0,=Data0819649E          ; 080ED7D2
add   r0,r2,r0                  ; 080ED7D4
ldrb  r1,[r0]                   ; 080ED7D6
ldr   r0,=0x03006D80            ; 080ED7D8
strh  r1,[r0,0x3C]              ; 080ED7DA
pop   {r4}                      ; 080ED7DC
pop   {r0}                      ; 080ED7DE
bx    r0                        ; 080ED7E0
.pool                           ; 080ED7E2

Sub080ED7F0:
push  {lr}                      ; 080ED7F0
bl    Sub08035648               ; 080ED7F2
bl    Sub080381E0               ; 080ED7F6
pop   {r0}                      ; 080ED7FA
bx    r0                        ; 080ED7FC
.pool                           ; 080ED7FE

Sub080ED800:
push  {lr}                      ; 080ED800
ldr   r1,=0x03007240            ; 080ED802  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080ED804
mov   r3,0x95                   ; 080ED806
lsl   r3,r3,0x2                 ; 080ED808
add   r1,r2,r3                  ; 080ED80A
add   r3,0x6A                   ; 080ED80C
add   r2,r2,r3                  ; 080ED80E
ldrh  r2,[r2]                   ; 080ED810
ldr   r3,=CodePtrs081964A8      ; 080ED812
lsl   r2,r2,0x2                 ; 080ED814
add   r2,r2,r3                  ; 080ED816
ldr   r2,[r2]                   ; 080ED818
bl    Sub_bx_r2                 ; 080ED81A  bx r2
pop   {r0}                      ; 080ED81E
bx    r0                        ; 080ED820
.pool                           ; 080ED822

Sub080ED82C:
push  {r4-r6,lr}                ; 080ED82C
mov   r5,r0                     ; 080ED82E
ldr   r4,=0x03007240            ; 080ED830  Normal gameplay IWRAM (0300220C)
ldr   r6,[r4]                   ; 080ED832
bl    Sub08002338               ; 080ED834
ldr   r0,[r4]                   ; 080ED838
ldr   r1,=0x29CE                ; 080ED83A
add   r0,r0,r1                  ; 080ED83C
mov   r2,0x0                    ; 080ED83E
strh  r2,[r0]                   ; 080ED840
ldr   r0,=0x03002200            ; 080ED842
ldr   r3,=0x47D0                ; 080ED844
add   r1,r0,r3                  ; 080ED846
strh  r2,[r1]                   ; 080ED848
ldr   r1,=0x47D2                ; 080ED84A
add   r0,r0,r1                  ; 080ED84C
strh  r2,[r0]                   ; 080ED84E
bl    Sub080EA5A4               ; 080ED850
mov   r0,r5                     ; 080ED854
bl    Sub080ED800               ; 080ED856
mov   r0,r5                     ; 080ED85A
bl    Sub080ED674               ; 080ED85C
ldr   r0,[r4]                   ; 080ED860
ldr   r2,=0x02BE                ; 080ED862
add   r0,r0,r2                  ; 080ED864
ldrh  r0,[r0]                   ; 080ED866
cmp   r0,0x4                    ; 080ED868
bne   @@Code080ED898            ; 080ED86A
bl    Sub08040A78               ; 080ED86C
bl    Sub08042FF8               ; 080ED870
bl    Sub0804F2F8               ; 080ED874
mov   r0,r5                     ; 080ED878
bl    Sub080EC424               ; 080ED87A
b     @@Code080ED8E4            ; 080ED87E
.pool                           ; 080ED880

@@Code080ED898:
mov   r3,0x87                   ; 080ED898
lsl   r3,r3,0x2                 ; 080ED89A
add   r0,r6,r3                  ; 080ED89C
ldrh  r0,[r0]                   ; 080ED89E
cmp   r0,0x0                    ; 080ED8A0
bne   @@Code080ED8C0            ; 080ED8A2
mov   r0,r5                     ; 080ED8A4
add   r0,0xC6                   ; 080ED8A6
ldrh  r0,[r0]                   ; 080ED8A8
cmp   r0,0x0                    ; 080ED8AA
bne   @@Code080ED8BA            ; 080ED8AC
mov   r0,r5                     ; 080ED8AE
bl    Sub080EA550               ; 080ED8B0
mov   r0,r5                     ; 080ED8B4
bl    Sub080EB930               ; 080ED8B6
@@Code080ED8BA:
mov   r0,r5                     ; 080ED8BA
bl    Sub080EC424               ; 080ED8BC
@@Code080ED8C0:
ldr   r0,=0x03007240            ; 080ED8C0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080ED8C2
cmp   r0,0x0                    ; 080ED8C4
beq   @@Code080ED8E4            ; 080ED8C6
ldr   r0,=0x03006D80            ; 080ED8C8
ldr   r1,=0x03002200            ; 080ED8CA
ldr   r2,=0x47D0                ; 080ED8CC
add   r1,r1,r2                  ; 080ED8CE
ldrh  r1,[r1]                   ; 080ED8D0
add   r0,0x94                   ; 080ED8D2
strh  r1,[r0]                   ; 080ED8D4
bl    Sub080EB498               ; 080ED8D6
ldrh  r0,[r5,0x22]              ; 080ED8DA
cmp   r0,0x0                    ; 080ED8DC
beq   @@Code080ED8E4            ; 080ED8DE
bl    Sub0804F2F8               ; 080ED8E0
@@Code080ED8E4:
pop   {r4-r6}                   ; 080ED8E4
pop   {r0}                      ; 080ED8E6
bx    r0                        ; 080ED8E8
.pool                           ; 080ED8EA

Sub080ED8FC:
push  {r4,lr}                   ; 080ED8FC
ldr   r0,=0x03007240            ; 080ED8FE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080ED900
mov   r1,0xED                   ; 080ED902
lsl   r1,r1,0x2                 ; 080ED904
add   r4,r0,r1                  ; 080ED906
mov   r0,r4                     ; 080ED908
bl    Sub0804AEDC               ; 080ED90A
lsl   r0,r0,0x18                ; 080ED90E
cmp   r0,0x0                    ; 080ED910
beq   @@Code080ED91C            ; 080ED912
ldr   r1,=Data0829E224          ; 080ED914
mov   r0,r4                     ; 080ED916
bl    Sub0804B4C4               ; 080ED918  Load 32x32 dynamic graphics
@@Code080ED91C:
pop   {r4}                      ; 080ED91C
pop   {r0}                      ; 080ED91E
bx    r0                        ; 080ED920
.pool                           ; 080ED922

Sub080ED92C:
push  {r4-r7,lr}                ; 080ED92C
mov   r7,r8                     ; 080ED92E
push  {r7}                      ; 080ED930
mov   r7,r0                     ; 080ED932
ldr   r0,=0x03007240            ; 080ED934  Normal gameplay IWRAM (0300220C)
mov   r8,r0                     ; 080ED936
ldr   r1,[r0]                   ; 080ED938
ldr   r2,=0x29D2                ; 080ED93A
add   r3,r1,r2                  ; 080ED93C
ldr   r0,=0x29D4                ; 080ED93E
add   r1,r1,r0                  ; 080ED940
ldrh  r2,[r1]                   ; 080ED942
mov   r0,r7                     ; 080ED944
add   r0,0x9C                   ; 080ED946
mov   r6,0x0                    ; 080ED948
strh  r2,[r0]                   ; 080ED94A
ldrh  r0,[r3]                   ; 080ED94C
strh  r0,[r7,0x1C]              ; 080ED94E
ldrh  r0,[r1]                   ; 080ED950
lsl   r0,r0,0x10                ; 080ED952
mov   r1,0xE0                   ; 080ED954
lsl   r1,r1,0xB                 ; 080ED956
add   r0,r0,r1                  ; 080ED958
lsr   r0,r0,0x10                ; 080ED95A
ldr   r4,=0x03002200            ; 080ED95C
ldr   r2,=0x4A14                ; 080ED95E
add   r1,r4,r2                  ; 080ED960
strb  r0,[r1]                   ; 080ED962
ldr   r5,=DataPtrs082272C0      ; 080ED964
ldmia r5!,{r0}                  ; 080ED966
ldr   r1,=0x06005000            ; 080ED968
bl    swi_LZ77_VRAM             ; 080ED96A  LZ77 decompress (VRAM)
ldr   r0,[r5]                   ; 080ED96E
ldr   r1,=0x06006000            ; 080ED970
bl    swi_LZ77_VRAM             ; 080ED972  LZ77 decompress (VRAM)
ldr   r3,=0x47E4                ; 080ED976
add   r0,r4,r3                  ; 080ED978
strh  r6,[r0]                   ; 080ED97A
ldr   r1,=0x47EC                ; 080ED97C
add   r0,r4,r1                  ; 080ED97E
strh  r6,[r0]                   ; 080ED980
ldr   r2,=0x47E6                ; 080ED982
add   r0,r4,r2                  ; 080ED984
strh  r6,[r0]                   ; 080ED986
add   r3,0xA                    ; 080ED988
add   r1,r4,r3                  ; 080ED98A
mov   r0,0x17                   ; 080ED98C
strh  r0,[r1]                   ; 080ED98E
ldr   r0,=0x47E8                ; 080ED990
add   r1,r4,r0                  ; 080ED992
ldr   r0,=0xFFFC                ; 080ED994
strh  r0,[r1]                   ; 080ED996
ldr   r1,=0x47F0                ; 080ED998
add   r4,r4,r1                  ; 080ED99A
strh  r6,[r4]                   ; 080ED99C
mov   r3,r8                     ; 080ED99E
ldr   r2,[r3]                   ; 080ED9A0
mov   r0,0x95                   ; 080ED9A2
lsl   r0,r0,0x2                 ; 080ED9A4
add   r5,r2,r0                  ; 080ED9A6
mov   r0,0xA0                   ; 080ED9A8
lsl   r0,r0,0x6                 ; 080ED9AA
str   r0,[r5]                   ; 080ED9AC
ldr   r1,=0x03006D80            ; 080ED9AE
mov   r0,0xC0                   ; 080ED9B0
lsl   r0,r0,0x6                 ; 080ED9B2
str   r0,[r1]                   ; 080ED9B4
mov   r0,0xE0                   ; 080ED9B6
lsl   r0,r0,0x7                 ; 080ED9B8
str   r0,[r5,0x4]               ; 080ED9BA
ldr   r3,=0x02BE                ; 080ED9BC
add   r0,r2,r3                  ; 080ED9BE
strh  r6,[r0]                   ; 080ED9C0
add   r1,0xA2                   ; 080ED9C2
mov   r0,0x30                   ; 080ED9C4
strh  r0,[r1]                   ; 080ED9C6
mov   r0,0xC1                   ; 080ED9C8
lsl   r0,r0,0x2                 ; 080ED9CA
add   r5,r2,r0                  ; 080ED9CC
mov   r0,0xD8                   ; 080ED9CE
lsl   r0,r0,0x8                 ; 080ED9D0
str   r0,[r5]                   ; 080ED9D2
mov   r0,0x98                   ; 080ED9D4
lsl   r0,r0,0x8                 ; 080ED9D6
str   r0,[r5,0x4]               ; 080ED9D8
mov   r1,0xED                   ; 080ED9DA
lsl   r1,r1,0x2                 ; 080ED9DC
add   r5,r2,r1                  ; 080ED9DE
mov   r0,0xB2                   ; 080ED9E0
lsl   r0,r0,0x7                 ; 080ED9E2
str   r0,[r5]                   ; 080ED9E4
ldr   r0,=0xFFFFFB00            ; 080ED9E6
str   r0,[r5,0x4]               ; 080ED9E8
mov   r0,0xC0                   ; 080ED9EA
strh  r0,[r7,0x2A]              ; 080ED9EC
strh  r0,[r7,0x2C]              ; 080ED9EE
mov   r1,r7                     ; 080ED9F0
add   r1,0x90                   ; 080ED9F2
strh  r0,[r1]                   ; 080ED9F4
strh  r6,[r7,0x2E]              ; 080ED9F6
ldr   r3,=0x041E                ; 080ED9F8
add   r2,r2,r3                  ; 080ED9FA
mov   r4,0x1                    ; 080ED9FC
strh  r4,[r2]                   ; 080ED9FE
strh  r6,[r7,0x34]              ; 080EDA00
mov   r0,r7                     ; 080EDA02
add   r0,0x54                   ; 080EDA04
strh  r6,[r0]                   ; 080EDA06
add   r0,0x10                   ; 080EDA08
strh  r6,[r0]                   ; 080EDA0A
bl    Sub08035648               ; 080EDA0C
mov   r1,r8                     ; 080EDA10
ldr   r0,[r1]                   ; 080EDA12
ldr   r2,=0x29CC                ; 080EDA14
add   r0,r0,r2                  ; 080EDA16
ldrh  r0,[r0]                   ; 080EDA18
lsr   r0,r0,0x1                 ; 080EDA1A
and   r0,r4                     ; 080EDA1C
cmp   r0,0x0                    ; 080EDA1E
bne   @@Code080EDA74            ; 080EDA20
mov   r0,0x10                   ; 080EDA22
b     @@Code080EDA76            ; 080EDA24
.pool                           ; 080EDA26

@@Code080EDA74:
ldr   r0,=0xFFF0                ; 080EDA74
@@Code080EDA76:
str   r0,[r5,0x8]               ; 080EDA76
ldr   r0,=0x03007240            ; 080EDA78  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EDA7A
ldr   r3,=0x036E                ; 080EDA7C
add   r0,r0,r3                  ; 080EDA7E
mov   r4,0x0                    ; 080EDA80
mov   r3,0x0                    ; 080EDA82
strh  r3,[r0]                   ; 080EDA84
mov   r0,0x1                    ; 080EDA86
strh  r0,[r7,0x20]              ; 080EDA88
ldr   r1,=0x0201068A            ; 080EDA8A
ldr   r2,=0x301F                ; 080EDA8C
mov   r0,r2                     ; 080EDA8E
strh  r0,[r1]                   ; 080EDA90
ldr   r1,=0x03002200            ; 080EDA92
mov   r0,0x91                   ; 080EDA94
lsl   r0,r0,0x7                 ; 080EDA96
add   r2,r1,r0                  ; 080EDA98
mov   r0,0x80                   ; 080EDA9A
lsl   r0,r0,0x1                 ; 080EDA9C
strh  r0,[r2]                   ; 080EDA9E
ldr   r2,=0x4882                ; 080EDAA0
add   r0,r1,r2                  ; 080EDAA2
strh  r3,[r0]                   ; 080EDAA4
ldr   r3,=0x4884                ; 080EDAA6
add   r1,r1,r3                  ; 080EDAA8
mov   r0,0x80                   ; 080EDAAA
lsl   r0,r0,0x2                 ; 080EDAAC
strh  r0,[r1]                   ; 080EDAAE
mov   r1,r7                     ; 080EDAB0
add   r1,0xB8                   ; 080EDAB2
mov   r0,0xB6                   ; 080EDAB4
strh  r0,[r1]                   ; 080EDAB6
add   r1,0x2                    ; 080EDAB8
mov   r0,0xA0                   ; 080EDABA
lsl   r0,r0,0x2                 ; 080EDABC
strh  r0,[r1]                   ; 080EDABE
mov   r0,r7                     ; 080EDAC0
bl    Sub080ED8FC               ; 080EDAC2
ldr   r0,=0x0201B800            ; 080EDAC6
strb  r4,[r0]                   ; 080EDAC8
mov   r2,0x0                    ; 080EDACA
ldr   r4,=0x03007010            ; 080EDACC  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x0                    ; 080EDACE
@@Code080EDAD0:
ldr   r0,[r4]                   ; 080EDAD0
lsl   r1,r2,0x1                 ; 080EDAD2
add   r0,r0,r1                  ; 080EDAD4
strh  r3,[r0]                   ; 080EDAD6
add   r0,r2,0x1                 ; 080EDAD8
lsl   r0,r0,0x10                ; 080EDADA
lsr   r2,r0,0x10                ; 080EDADC
cmp   r2,0xFF                   ; 080EDADE
bls   @@Code080EDAD0            ; 080EDAE0
mov   r2,0x0                    ; 080EDAE2
ldr   r4,=0x03007010            ; 080EDAE4  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x80                   ; 080EDAE6
lsl   r3,r3,0x1                 ; 080EDAE8
@@Code080EDAEA:
ldr   r0,[r4]                   ; 080EDAEA
mov   r1,r2                     ; 080EDAEC
add   r1,0x90                   ; 080EDAEE
lsl   r1,r1,0x1                 ; 080EDAF0
add   r0,r0,r1                  ; 080EDAF2
strh  r3,[r0]                   ; 080EDAF4
add   r0,r2,0x1                 ; 080EDAF6
lsl   r0,r0,0x10                ; 080EDAF8
lsr   r2,r0,0x10                ; 080EDAFA
cmp   r2,0xF                    ; 080EDAFC
bls   @@Code080EDAEA            ; 080EDAFE
mov   r2,0xB0                   ; 080EDB00
lsl   r2,r2,0x1                 ; 080EDB02
ldr   r4,=0x03007010            ; 080EDB04  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x80                   ; 080EDB06
lsl   r3,r3,0x1                 ; 080EDB08
@@Code080EDB0A:
ldr   r1,[r4]                   ; 080EDB0A
lsr   r0,r2,0x1                 ; 080EDB0C
lsl   r0,r0,0x1                 ; 080EDB0E
add   r0,r1,r0                  ; 080EDB10
strh  r3,[r0]                   ; 080EDB12
mov   r0,r2                     ; 080EDB14
add   r0,0x1C                   ; 080EDB16
asr   r0,r0,0x1                 ; 080EDB18
lsl   r0,r0,0x1                 ; 080EDB1A
add   r1,r1,r0                  ; 080EDB1C
strh  r3,[r1]                   ; 080EDB1E
mov   r0,r2                     ; 080EDB20
sub   r0,0x20                   ; 080EDB22
lsl   r0,r0,0x10                ; 080EDB24
lsr   r2,r0,0x10                ; 080EDB26
cmp   r2,0x0                    ; 080EDB28
bne   @@Code080EDB0A            ; 080EDB2A
pop   {r3}                      ; 080EDB2C
mov   r8,r3                     ; 080EDB2E
pop   {r4-r7}                   ; 080EDB30
pop   {r0}                      ; 080EDB32
bx    r0                        ; 080EDB34
.pool                           ; 080EDB36

Sub080EDB60:
push  {lr}                      ; 080EDB60
ldr   r1,=0x03007240            ; 080EDB62  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080EDB64
ldr   r1,=0x29D4                ; 080EDB66
add   r3,r2,r1                  ; 080EDB68
mov   r1,0x3                    ; 080EDB6A
strh  r1,[r3]                   ; 080EDB6C
ldr   r1,=0x29D2                ; 080EDB6E
add   r2,r2,r1                  ; 080EDB70
mov   r1,0x1                    ; 080EDB72
strh  r1,[r2]                   ; 080EDB74
bl    Sub080ED92C               ; 080EDB76
pop   {r0}                      ; 080EDB7A
bx    r0                        ; 080EDB7C
.pool                           ; 080EDB7E

Sub080EDB8C:
push  {r4,lr}                   ; 080EDB8C
ldr   r1,=0x03007240            ; 080EDB8E  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080EDB90
ldr   r1,=0x29D4                ; 080EDB92
add   r3,r2,r1                  ; 080EDB94
mov   r4,0x0                    ; 080EDB96
mov   r1,0x5                    ; 080EDB98
strh  r1,[r3]                   ; 080EDB9A
ldr   r1,=0x29D2                ; 080EDB9C
add   r2,r2,r1                  ; 080EDB9E
strh  r4,[r2]                   ; 080EDBA0
bl    Sub080ED92C               ; 080EDBA2
pop   {r4}                      ; 080EDBA6
pop   {r0}                      ; 080EDBA8
bx    r0                        ; 080EDBAA
.pool                           ; 080EDBAC

Sub080EDBB8:
push  {r4,lr}                   ; 080EDBB8
ldr   r1,=0x03007240            ; 080EDBBA  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080EDBBC
ldr   r1,=0x29D4                ; 080EDBBE
add   r3,r2,r1                  ; 080EDBC0
mov   r4,0x0                    ; 080EDBC2
mov   r1,0x4                    ; 080EDBC4
strh  r1,[r3]                   ; 080EDBC6
ldr   r1,=0x29D2                ; 080EDBC8
add   r2,r2,r1                  ; 080EDBCA
strh  r4,[r2]                   ; 080EDBCC
bl    Sub080ED92C               ; 080EDBCE
pop   {r4}                      ; 080EDBD2
pop   {r0}                      ; 080EDBD4
bx    r0                        ; 080EDBD6
.pool                           ; 080EDBD8

Sub080EDBE4:
push  {r4,lr}                   ; 080EDBE4
ldr   r1,=0x03007240            ; 080EDBE6  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080EDBE8
ldr   r1,=0x29D4                ; 080EDBEA
add   r3,r2,r1                  ; 080EDBEC
mov   r4,0x0                    ; 080EDBEE
mov   r1,0x3                    ; 080EDBF0
strh  r1,[r3]                   ; 080EDBF2
ldr   r1,=0x29D2                ; 080EDBF4
add   r2,r2,r1                  ; 080EDBF6
strh  r4,[r2]                   ; 080EDBF8
bl    Sub080ED92C               ; 080EDBFA
pop   {r4}                      ; 080EDBFE
pop   {r0}                      ; 080EDC00
bx    r0                        ; 080EDC02
.pool                           ; 080EDC04

Sub080EDC10:
push  {r4-r7,lr}                ; 080EDC10
mov   r7,r10                    ; 080EDC12
mov   r6,r9                     ; 080EDC14
mov   r5,r8                     ; 080EDC16
push  {r5-r7}                   ; 080EDC18
add   sp,-0x8                   ; 080EDC1A
mov   r5,r0                     ; 080EDC1C
ldr   r4,=0x03002200            ; 080EDC1E
ldr   r1,=0x489C                ; 080EDC20
add   r0,r4,r1                  ; 080EDC22
ldrh  r0,[r0]                   ; 080EDC24
ldrh  r2,[r5,0x12]              ; 080EDC26
add   r0,r0,r2                  ; 080EDC28
lsl   r0,r0,0x10                ; 080EDC2A
lsr   r7,r0,0x10                ; 080EDC2C
mov   r3,0xF                    ; 080EDC2E
mov   r1,r7                     ; 080EDC30
and   r1,r3                     ; 080EDC32
cmp   r1,0x9                    ; 080EDC34
bls   @@Code080EDC46            ; 080EDC36
mov   r1,r7                     ; 080EDC38
add   r1,0x10                   ; 080EDC3A
lsl   r1,r1,0x10                ; 080EDC3C
mov   r0,0xF0                   ; 080EDC3E
lsl   r0,r0,0x10                ; 080EDC40
and   r0,r1                     ; 080EDC42
lsr   r7,r0,0x10                ; 080EDC44
@@Code080EDC46:
mov   r2,r7                     ; 080EDC46
strh  r7,[r5,0x12]              ; 080EDC48
ldrh  r0,[r5,0x18]              ; 080EDC4A
sub   r0,0x1                    ; 080EDC4C
strh  r0,[r5,0x18]              ; 080EDC4E
lsl   r0,r0,0x10                ; 080EDC50
cmp   r0,0x0                    ; 080EDC52
bne   @@Code080EDCAC            ; 080EDC54
ldrh  r7,[r5,0x16]              ; 080EDC56
sub   r0,r7,0x1                 ; 080EDC58
lsl   r0,r0,0x10                ; 080EDC5A
lsr   r7,r0,0x10                ; 080EDC5C
mov   r1,r7                     ; 080EDC5E
and   r1,r3                     ; 080EDC60
cmp   r1,0xF                    ; 080EDC62
bne   @@Code080EDC6E            ; 080EDC64
mov   r0,0xF0                   ; 080EDC66
and   r7,r0                     ; 080EDC68
mov   r0,0x9                    ; 080EDC6A
orr   r7,r0                     ; 080EDC6C
@@Code080EDC6E:
strh  r7,[r5,0x16]              ; 080EDC6E
cmp   r7,0x0                    ; 080EDC70
bne   @@Code080EDC98            ; 080EDC72
mov   r1,0x0                    ; 080EDC74
lsl   r0,r2,0x10                ; 080EDC76
lsr   r0,r0,0x10                ; 080EDC78
ldrh  r3,[r5,0x14]              ; 080EDC7A
cmp   r0,r3                     ; 080EDC7C
bhs   @@Code080EDC82            ; 080EDC7E
mov   r1,0x1                    ; 080EDC80
@@Code080EDC82:
strh  r1,[r5,0x10]              ; 080EDC82
add   r0,r1,0x1                 ; 080EDC84
strh  r0,[r5,0x22]              ; 080EDC86
mov   r0,0x1                    ; 080EDC88
strh  r0,[r5,0xC]               ; 080EDC8A
b     @@Code080EDCAC            ; 080EDC8C
.pool                           ; 080EDC8E

@@Code080EDC98:
ldrh  r7,[r5,0x16]              ; 080EDC98
cmp   r7,0x5                    ; 080EDC9A
bhi   @@Code080EDCA8            ; 080EDC9C
ldr   r7,=0x4058                ; 080EDC9E
add   r1,r4,r7                  ; 080EDCA0
mov   r0,0x4A                   ; 080EDCA2
bl    PlayYISound               ; 080EDCA4
@@Code080EDCA8:
mov   r0,0x3F                   ; 080EDCA8
strh  r0,[r5,0x18]              ; 080EDCAA
@@Code080EDCAC:
ldr   r0,=0x02011000            ; 080EDCAC
ldrh  r6,[r0]                   ; 080EDCAE
mov   r1,0x0                    ; 080EDCB0
ldr   r4,=Data081964BC          ; 080EDCB2
ldr   r0,=Data081964E4          ; 080EDCB4
mov   r8,r0                     ; 080EDCB6
ldr   r3,=0x02011002            ; 080EDCB8
ldr   r2,=0xFFFF                ; 080EDCBA
@@Code080EDCBC:
lsl   r0,r1,0x1                 ; 080EDCBC
add   r0,r8                     ; 080EDCBE
ldrh  r7,[r0]                   ; 080EDCC0
lsl   r0,r6,0x1                 ; 080EDCC2
add   r0,r0,r3                  ; 080EDCC4
strh  r7,[r0]                   ; 080EDCC6
add   r0,r1,0x1                 ; 080EDCC8
lsl   r0,r0,0x10                ; 080EDCCA
lsr   r1,r0,0x10                ; 080EDCCC
add   r0,r6,0x1                 ; 080EDCCE
lsl   r0,r0,0x10                ; 080EDCD0
lsr   r6,r0,0x10                ; 080EDCD2
cmp   r7,r2                     ; 080EDCD4
bne   @@Code080EDCBC            ; 080EDCD6
sub   r0,r6,0x1                 ; 080EDCD8
ldr   r1,=0x02011000            ; 080EDCDA
strh  r0,[r1]                   ; 080EDCDC
ldrh  r6,[r1]                   ; 080EDCDE
lsl   r2,r6,0x1                 ; 080EDCE0
ldr   r3,=0x02011002            ; 080EDCE2
mov   r12,r3                    ; 080EDCE4
add   r1,r2,r3                  ; 080EDCE6
ldr   r7,=0xD0C6                ; 080EDCE8
mov   r0,r7                     ; 080EDCEA
strh  r0,[r1]                   ; 080EDCEC
ldr   r1,=0x02011004            ; 080EDCEE
add   r0,r2,r1                  ; 080EDCF0
ldr   r3,=0x8002                ; 080EDCF2
mov   r9,r3                     ; 080EDCF4
strh  r3,[r0]                   ; 080EDCF6
ldrh  r1,[r5,0x12]              ; 080EDCF8
mov   r3,0xF0                   ; 080EDCFA
mov   r0,r3                     ; 080EDCFC
and   r0,r1                     ; 080EDCFE
lsr   r7,r0,0x3                 ; 080EDD00
ldr   r0,=0x02011006            ; 080EDD02
mov   r10,r0                    ; 080EDD04
add   r1,r2,r0                  ; 080EDD06
lsl   r0,r7,0x1                 ; 080EDD08
add   r0,r0,r4                  ; 080EDD0A
ldrh  r0,[r0]                   ; 080EDD0C
strh  r0,[r1]                   ; 080EDD0E
ldr   r1,=0x02011008            ; 080EDD10
mov   r8,r1                     ; 080EDD12
add   r2,r8                     ; 080EDD14
add   r0,r7,0x1                 ; 080EDD16
lsl   r0,r0,0x1                 ; 080EDD18
add   r0,r0,r4                  ; 080EDD1A
ldrh  r0,[r0]                   ; 080EDD1C
strh  r0,[r2]                   ; 080EDD1E
add   r0,r6,0x4                 ; 080EDD20
lsl   r0,r0,0x10                ; 080EDD22
lsr   r6,r0,0x10                ; 080EDD24
lsl   r2,r6,0x1                 ; 080EDD26
mov   r7,r12                    ; 080EDD28
add   r1,r2,r7                  ; 080EDD2A
ldr   r7,=0xD0C8                ; 080EDD2C
mov   r0,r7                     ; 080EDD2E
strh  r0,[r1]                   ; 080EDD30
ldr   r1,=0x02011004            ; 080EDD32
add   r0,r2,r1                  ; 080EDD34
mov   r7,r9                     ; 080EDD36
strh  r7,[r0]                   ; 080EDD38
ldrh  r0,[r5,0x12]              ; 080EDD3A
mov   r7,0xF                    ; 080EDD3C
and   r7,r0                     ; 080EDD3E
lsl   r7,r7,0x1                 ; 080EDD40
mov   r0,r10                    ; 080EDD42
add   r1,r2,r0                  ; 080EDD44
lsl   r0,r7,0x1                 ; 080EDD46
add   r0,r0,r4                  ; 080EDD48
ldrh  r0,[r0]                   ; 080EDD4A
strh  r0,[r1]                   ; 080EDD4C
add   r2,r8                     ; 080EDD4E
add   r0,r7,0x1                 ; 080EDD50
lsl   r0,r0,0x1                 ; 080EDD52
add   r0,r0,r4                  ; 080EDD54
ldrh  r0,[r0]                   ; 080EDD56
strh  r0,[r2]                   ; 080EDD58
add   r0,r6,0x4                 ; 080EDD5A
lsl   r0,r0,0x10                ; 080EDD5C
lsr   r6,r0,0x10                ; 080EDD5E
lsl   r2,r6,0x1                 ; 080EDD60
mov   r7,r12                    ; 080EDD62
add   r1,r2,r7                  ; 080EDD64
ldr   r7,=0xD0DC                ; 080EDD66
mov   r0,r7                     ; 080EDD68
strh  r0,[r1]                   ; 080EDD6A
ldr   r1,=0x02011004            ; 080EDD6C
add   r0,r2,r1                  ; 080EDD6E
mov   r7,r9                     ; 080EDD70
strh  r7,[r0]                   ; 080EDD72
ldrh  r1,[r5,0x16]              ; 080EDD74
mov   r0,r3                     ; 080EDD76
and   r0,r1                     ; 080EDD78
lsr   r7,r0,0x3                 ; 080EDD7A
mov   r0,r10                    ; 080EDD7C
add   r1,r2,r0                  ; 080EDD7E
lsl   r0,r7,0x1                 ; 080EDD80
add   r0,r0,r4                  ; 080EDD82
ldrh  r0,[r0]                   ; 080EDD84
strh  r0,[r1]                   ; 080EDD86
add   r2,r8                     ; 080EDD88
add   r0,r7,0x1                 ; 080EDD8A
lsl   r0,r0,0x1                 ; 080EDD8C
add   r0,r0,r4                  ; 080EDD8E
ldrh  r0,[r0]                   ; 080EDD90
strh  r0,[r2]                   ; 080EDD92
add   r0,r6,0x4                 ; 080EDD94
lsl   r0,r0,0x10                ; 080EDD96
lsr   r6,r0,0x10                ; 080EDD98
lsl   r2,r6,0x1                 ; 080EDD9A
mov   r7,r12                    ; 080EDD9C
add   r1,r2,r7                  ; 080EDD9E
ldr   r7,=0xD0DE                ; 080EDDA0
mov   r0,r7                     ; 080EDDA2
strh  r0,[r1]                   ; 080EDDA4
ldr   r1,=0x02011004            ; 080EDDA6
add   r0,r2,r1                  ; 080EDDA8
mov   r7,r9                     ; 080EDDAA
strh  r7,[r0]                   ; 080EDDAC
ldrh  r0,[r5,0x16]              ; 080EDDAE
mov   r7,0xF                    ; 080EDDB0
and   r7,r0                     ; 080EDDB2
lsl   r7,r7,0x1                 ; 080EDDB4
mov   r0,r10                    ; 080EDDB6
add   r1,r2,r0                  ; 080EDDB8
lsl   r0,r7,0x1                 ; 080EDDBA
add   r0,r0,r4                  ; 080EDDBC
ldrh  r0,[r0]                   ; 080EDDBE
strh  r0,[r1]                   ; 080EDDC0
add   r2,r8                     ; 080EDDC2
add   r0,r7,0x1                 ; 080EDDC4
lsl   r0,r0,0x1                 ; 080EDDC6
add   r0,r0,r4                  ; 080EDDC8
ldrh  r0,[r0]                   ; 080EDDCA
strh  r0,[r2]                   ; 080EDDCC
add   r0,r6,0x4                 ; 080EDDCE
lsl   r0,r0,0x10                ; 080EDDD0
lsr   r6,r0,0x10                ; 080EDDD2
lsl   r2,r6,0x1                 ; 080EDDD4
mov   r7,r12                    ; 080EDDD6
add   r1,r2,r7                  ; 080EDDD8
ldr   r7,=0xD0F2                ; 080EDDDA
mov   r0,r7                     ; 080EDDDC
strh  r0,[r1]                   ; 080EDDDE
ldr   r1,=0x02011004            ; 080EDDE0
add   r0,r2,r1                  ; 080EDDE2
mov   r7,r9                     ; 080EDDE4
strh  r7,[r0]                   ; 080EDDE6
ldrh  r0,[r5,0x14]              ; 080EDDE8
and   r3,r0                     ; 080EDDEA
lsr   r7,r3,0x3                 ; 080EDDEC
mov   r0,r10                    ; 080EDDEE
add   r1,r2,r0                  ; 080EDDF0
lsl   r0,r7,0x1                 ; 080EDDF2
add   r0,r0,r4                  ; 080EDDF4
ldrh  r0,[r0]                   ; 080EDDF6
strh  r0,[r1]                   ; 080EDDF8
add   r2,r8                     ; 080EDDFA
add   r0,r7,0x1                 ; 080EDDFC
lsl   r0,r0,0x1                 ; 080EDDFE
add   r0,r0,r4                  ; 080EDE00
ldrh  r0,[r0]                   ; 080EDE02
strh  r0,[r2]                   ; 080EDE04
add   r0,r6,0x4                 ; 080EDE06
lsl   r0,r0,0x10                ; 080EDE08
lsr   r6,r0,0x10                ; 080EDE0A
lsl   r2,r6,0x1                 ; 080EDE0C
mov   r3,r12                    ; 080EDE0E
add   r1,r2,r3                  ; 080EDE10
ldr   r7,=0xD0F4                ; 080EDE12
mov   r0,r7                     ; 080EDE14
strh  r0,[r1]                   ; 080EDE16
ldr   r0,=0x02011004            ; 080EDE18
add   r0,r2,r0                  ; 080EDE1A
str   r0,[sp]                   ; 080EDE1C
mov   r1,r9                     ; 080EDE1E
strh  r1,[r0]                   ; 080EDE20
ldrh  r0,[r5,0x14]              ; 080EDE22
mov   r7,0xF                    ; 080EDE24
and   r7,r0                     ; 080EDE26
lsl   r7,r7,0x1                 ; 080EDE28
mov   r3,r10                    ; 080EDE2A
add   r3,r2,r3                  ; 080EDE2C
lsl   r0,r7,0x1                 ; 080EDE2E
add   r0,r0,r4                  ; 080EDE30
ldrh  r0,[r0]                   ; 080EDE32
strh  r0,[r3]                   ; 080EDE34
add   r2,r8                     ; 080EDE36
add   r0,r7,0x1                 ; 080EDE38
lsl   r0,r0,0x1                 ; 080EDE3A
add   r0,r0,r4                  ; 080EDE3C
ldrh  r0,[r0]                   ; 080EDE3E
strh  r0,[r2]                   ; 080EDE40
add   r0,r6,0x4                 ; 080EDE42
lsl   r0,r0,0x10                ; 080EDE44
lsr   r6,r0,0x10                ; 080EDE46
lsl   r0,r6,0x1                 ; 080EDE48
add   r0,r12                    ; 080EDE4A
ldr   r7,=0xFFFF                ; 080EDE4C
mov   r1,r7                     ; 080EDE4E
strh  r1,[r0]                   ; 080EDE50
ldr   r0,=0x02011000            ; 080EDE52
strh  r6,[r0]                   ; 080EDE54
add   sp,0x8                    ; 080EDE56
pop   {r3-r5}                   ; 080EDE58
mov   r8,r3                     ; 080EDE5A
mov   r9,r4                     ; 080EDE5C
mov   r10,r5                    ; 080EDE5E
pop   {r4-r7}                   ; 080EDE60
pop   {r0}                      ; 080EDE62
bx    r0                        ; 080EDE64
.pool                           ; 080EDE66

Sub080EDEA8:
push  {r4,lr}                   ; 080EDEA8
mov   r4,r0                     ; 080EDEAA
bl    Sub08040A78               ; 080EDEAC
bl    Sub0804F2F8               ; 080EDEB0
mov   r0,r4                     ; 080EDEB4
bl    Sub0805CFCC               ; 080EDEB6
mov   r0,r4                     ; 080EDEBA
bl    Sub080EA534               ; 080EDEBC
pop   {r4}                      ; 080EDEC0
pop   {r0}                      ; 080EDEC2
bx    r0                        ; 080EDEC4
.pool                           ; 080EDEC6

Sub080EDEC8:
push  {r4,lr}                   ; 080EDEC8
mov   r4,r0                     ; 080EDECA
bl    Sub0804F2F8               ; 080EDECC
bl    Sub08040A78               ; 080EDED0
ldrh  r0,[r4,0x24]              ; 080EDED4
cmp   r0,0x0                    ; 080EDED6
beq   @@Code080EDEE8            ; 080EDED8
ldr   r0,=0x03006D80            ; 080EDEDA
ldrh  r0,[r0,0x3E]              ; 080EDEDC
cmp   r0,0x0                    ; 080EDEDE
bne   @@Code080EDEE8            ; 080EDEE0
ldrh  r0,[r4,0x22]              ; 080EDEE2
add   r0,0x1                    ; 080EDEE4
strh  r0,[r4,0x22]              ; 080EDEE6
@@Code080EDEE8:
mov   r0,r4                     ; 080EDEE8
bl    Sub080EA534               ; 080EDEEA
pop   {r4}                      ; 080EDEEE
pop   {r0}                      ; 080EDEF0
bx    r0                        ; 080EDEF2
.pool                           ; 080EDEF4

Sub080EDEF8:
push  {r4-r7,lr}                ; 080EDEF8
mov   r5,r0                     ; 080EDEFA
ldr   r6,=0x03007240            ; 080EDEFC  Normal gameplay IWRAM (0300220C)
ldr   r4,[r6]                   ; 080EDEFE
bl    Sub08040A78               ; 080EDF00
bl    Sub0804F2F8               ; 080EDF04
mov   r0,0x87                   ; 080EDF08
lsl   r0,r0,0x2                 ; 080EDF0A
add   r4,r4,r0                  ; 080EDF0C
ldrh  r0,[r4]                   ; 080EDF0E
cmp   r0,0x0                    ; 080EDF10
bne   @@Code080EDFD4            ; 080EDF12
mov   r0,r5                     ; 080EDF14
bl    Sub080EDC10               ; 080EDF16
ldrh  r0,[r5,0x22]              ; 080EDF1A
cmp   r0,0x0                    ; 080EDF1C
beq   @@Code080EDFD4            ; 080EDF1E
mov   r4,0x0                    ; 080EDF20
mov   r7,r6                     ; 080EDF22
ldr   r6,=0x01B1                ; 080EDF24
@@Code080EDF26:
mov   r0,0xB0                   ; 080EDF26
mul   r0,r4                     ; 080EDF28
mov   r1,0x95                   ; 080EDF2A
lsl   r1,r1,0x2                 ; 080EDF2C
add   r0,r0,r1                  ; 080EDF2E
ldr   r1,[r7]                   ; 080EDF30
add   r1,r1,r0                  ; 080EDF32
ldrh  r0,[r1,0x24]              ; 080EDF34
cmp   r0,0x0                    ; 080EDF36
beq   @@Code080EDF86            ; 080EDF38
ldrh  r2,[r1,0x32]              ; 080EDF3A
mov   r3,r2                     ; 080EDF3C
cmp   r2,r6                     ; 080EDF3E
bne   @@Code080EDF58            ; 080EDF40
mov   r0,0x0                    ; 080EDF42
str   r0,[r1,0x8]               ; 080EDF44
str   r0,[r1,0xC]               ; 080EDF46
str   r0,[r1,0x14]              ; 080EDF48
str   r0,[r1,0x10]              ; 080EDF4A
b     @@Code080EDF86            ; 080EDF4C
.pool                           ; 080EDF4E

@@Code080EDF58:
mov   r0,0xD9                   ; 080EDF58
lsl   r0,r0,0x1                 ; 080EDF5A
cmp   r2,r0                     ; 080EDF5C
bne   @@Code080EDF68            ; 080EDF5E
mov   r0,r1                     ; 080EDF60
bl    Sub0804A6F8               ; 080EDF62
b     @@Code080EDF86            ; 080EDF66
@@Code080EDF68:
ldr   r0,=0x01B3                ; 080EDF68
cmp   r3,r0                     ; 080EDF6A
bne   @@Code080EDF86            ; 080EDF6C
ldrh  r0,[r5,0x22]              ; 080EDF6E
cmp   r0,0x1                    ; 080EDF70
beq   @@Code080EDF80            ; 080EDF72
mov   r0,r1                     ; 080EDF74
bl    Sub0805CF7C               ; 080EDF76
b     @@Code080EDF86            ; 080EDF7A
.pool                           ; 080EDF7C

@@Code080EDF80:
mov   r0,r1                     ; 080EDF80
bl    Sub0805CF54               ; 080EDF82
@@Code080EDF86:
add   r0,r4,0x1                 ; 080EDF86
lsl   r0,r0,0x10                ; 080EDF88
lsr   r4,r0,0x10                ; 080EDF8A
cmp   r4,0x17                   ; 080EDF8C
bls   @@Code080EDF26            ; 080EDF8E
ldrh  r0,[r5,0x16]              ; 080EDF90
cmp   r0,0x0                    ; 080EDF92
bne   @@Code080EDFD4            ; 080EDF94
ldrh  r0,[r5,0x10]              ; 080EDF96
cmp   r0,0x0                    ; 080EDF98
bne   @@Code080EDFD4            ; 080EDF9A
mov   r0,0x11                   ; 080EDF9C
bl    Sub0804A2AC               ; 080EDF9E
lsl   r0,r0,0x18                ; 080EDFA2
lsr   r2,r0,0x18                ; 080EDFA4
cmp   r0,0x0                    ; 080EDFA6
blt   @@Code080EDFD4            ; 080EDFA8
ldr   r1,=0x03007240            ; 080EDFAA  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080EDFAC
mul   r0,r2                     ; 080EDFAE
mov   r2,0x95                   ; 080EDFB0
lsl   r2,r2,0x2                 ; 080EDFB2
add   r0,r0,r2                  ; 080EDFB4
ldr   r1,[r1]                   ; 080EDFB6
add   r1,r1,r0                  ; 080EDFB8
ldr   r0,=0x03002200            ; 080EDFBA
ldr   r2,=0x4A14                ; 080EDFBC
add   r0,r0,r2                  ; 080EDFBE
ldrb  r0,[r0]                   ; 080EDFC0
mov   r2,r1                     ; 080EDFC2
add   r2,0x6A                   ; 080EDFC4
strh  r0,[r2]                   ; 080EDFC6
mov   r0,0x80                   ; 080EDFC8
lsl   r0,r0,0x8                 ; 080EDFCA
str   r0,[r1,0x4]               ; 080EDFCC
mov   r0,0xE0                   ; 080EDFCE
lsl   r0,r0,0x7                 ; 080EDFD0
str   r0,[r1]                   ; 080EDFD2
@@Code080EDFD4:
pop   {r4-r7}                   ; 080EDFD4
pop   {r0}                      ; 080EDFD6
bx    r0                        ; 080EDFD8
.pool                           ; 080EDFDA

Sub080EDFE8:
push  {r4-r6,lr}                ; 080EDFE8
mov   r6,r0                     ; 080EDFEA
bl    Sub08002338               ; 080EDFEC
ldr   r0,=0x03007240            ; 080EDFF0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EDFF2
ldr   r1,=0x29CE                ; 080EDFF4
add   r0,r0,r1                  ; 080EDFF6
mov   r5,0x0                    ; 080EDFF8
strh  r5,[r0]                   ; 080EDFFA
ldr   r4,=0x03002200            ; 080EDFFC
ldr   r1,=0x47D0                ; 080EDFFE
add   r0,r4,r1                  ; 080EE000
strh  r5,[r0]                   ; 080EE002
add   r1,0x2                    ; 080EE004
add   r0,r4,r1                  ; 080EE006
strh  r5,[r0]                   ; 080EE008
bl    Sub080EA5A4               ; 080EE00A
bl    Sub08042FF8               ; 080EE00E
ldr   r0,=0x489C                ; 080EE012
add   r4,r4,r0                  ; 080EE014
strh  r5,[r4]                   ; 080EE016
ldrh  r0,[r6,0x22]              ; 080EE018
ldr   r1,=CodePtrs08196614      ; 080EE01A
lsl   r0,r0,0x2                 ; 080EE01C
add   r0,r0,r1                  ; 080EE01E
ldr   r1,[r0]                   ; 080EE020
mov   r0,r6                     ; 080EE022
bl    Sub_bx_r1                 ; 080EE024  bx r1
pop   {r4-r6}                   ; 080EE028
pop   {r0}                      ; 080EE02A
bx    r0                        ; 080EE02C
.pool                           ; 080EE02E

Sub080EE048:
push  {r4-r6,lr}                ; 080EE048
mov   r5,r0                     ; 080EE04A
ldr   r1,=0x03002200            ; 080EE04C
ldr   r2,=0x47D4                ; 080EE04E
add   r0,r1,r2                  ; 080EE050
mov   r4,0x0                    ; 080EE052
mov   r2,0x0                    ; 080EE054
strh  r2,[r0]                   ; 080EE056
ldr   r3,=0x47DC                ; 080EE058
add   r0,r1,r3                  ; 080EE05A
mov   r3,0x40                   ; 080EE05C
strh  r3,[r0]                   ; 080EE05E
ldr   r6,=0x47E4                ; 080EE060
add   r0,r1,r6                  ; 080EE062
strh  r2,[r0]                   ; 080EE064
add   r6,0x8                    ; 080EE066
add   r0,r1,r6                  ; 080EE068
strh  r2,[r0]                   ; 080EE06A
sub   r6,0x6                    ; 080EE06C
add   r0,r1,r6                  ; 080EE06E
strh  r2,[r0]                   ; 080EE070
add   r6,0x8                    ; 080EE072
add   r0,r1,r6                  ; 080EE074
strh  r3,[r0]                   ; 080EE076
ldr   r3,=0x47E8                ; 080EE078
add   r0,r1,r3                  ; 080EE07A
strh  r2,[r0]                   ; 080EE07C
add   r6,0x2                    ; 080EE07E
add   r2,r1,r6                  ; 080EE080
mov   r0,0x8                    ; 080EE082
strh  r0,[r2]                   ; 080EE084
ldr   r2,=0x03006D80            ; 080EE086
mov   r0,0xB0                   ; 080EE088
lsl   r0,r0,0x8                 ; 080EE08A
str   r0,[r2,0x4]               ; 080EE08C
mov   r0,0xC0                   ; 080EE08E
lsl   r0,r0,0x6                 ; 080EE090
str   r0,[r2]                   ; 080EE092
ldr   r0,=0x0201B800            ; 080EE094
strb  r4,[r0]                   ; 080EE096
mov   r2,0x0                    ; 080EE098
mov   r4,r0                     ; 080EE09A
mov   r3,0x0                    ; 080EE09C
@@Code080EE09E:
add   r0,r2,r4                  ; 080EE09E
strb  r3,[r0]                   ; 080EE0A0
add   r2,0x1                    ; 080EE0A2
cmp   r2,0xFF                   ; 080EE0A4
bls   @@Code080EE09E            ; 080EE0A6
ldr   r2,=0x48CE                ; 080EE0A8
add   r0,r1,r2                  ; 080EE0AA
mov   r1,0x0                    ; 080EE0AC
strh  r1,[r0]                   ; 080EE0AE
mov   r0,0x30                   ; 080EE0B0
strh  r0,[r5,0x16]              ; 080EE0B2
mov   r0,0x1                    ; 080EE0B4
strh  r0,[r5,0x18]              ; 080EE0B6
strh  r1,[r5,0x12]              ; 080EE0B8
strh  r1,[r5,0x14]              ; 080EE0BA
mov   r2,0x0                    ; 080EE0BC
ldr   r4,=0x03007010            ; 080EE0BE  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x0                    ; 080EE0C0
@@Code080EE0C2:
ldr   r0,[r4]                   ; 080EE0C2
lsl   r1,r2,0x1                 ; 080EE0C4
add   r0,r0,r1                  ; 080EE0C6
strh  r3,[r0]                   ; 080EE0C8
add   r2,0x1                    ; 080EE0CA
cmp   r2,0xFF                   ; 080EE0CC
bls   @@Code080EE0C2            ; 080EE0CE
mov   r2,0x0                    ; 080EE0D0
ldr   r5,=0x03007010            ; 080EE0D2  Layer 1 tilemap EWRAM (0200000C)
mov   r4,0x80                   ; 080EE0D4
lsl   r4,r4,0x1                 ; 080EE0D6
mov   r3,0xD0                   ; 080EE0D8
lsl   r3,r3,0x1                 ; 080EE0DA
@@Code080EE0DC:
ldr   r1,[r5]                   ; 080EE0DC
lsl   r0,r2,0x1                 ; 080EE0DE
add   r0,r1,r0                  ; 080EE0E0
strh  r4,[r0]                   ; 080EE0E2
add   r1,r1,r3                  ; 080EE0E4
strh  r4,[r1]                   ; 080EE0E6
add   r3,0x2                    ; 080EE0E8
add   r2,0x1                    ; 080EE0EA
cmp   r2,0xF                    ; 080EE0EC
bls   @@Code080EE0DC            ; 080EE0EE
mov   r2,0xB0                   ; 080EE0F0
lsl   r2,r2,0x1                 ; 080EE0F2
ldr   r4,=0x03007010            ; 080EE0F4  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x80                   ; 080EE0F6
lsl   r3,r3,0x1                 ; 080EE0F8
@@Code080EE0FA:
ldr   r1,[r4]                   ; 080EE0FA
lsr   r0,r2,0x1                 ; 080EE0FC
lsl   r0,r0,0x1                 ; 080EE0FE
add   r0,r1,r0                  ; 080EE100
strh  r3,[r0]                   ; 080EE102
mov   r0,r2                     ; 080EE104
add   r0,0x1C                   ; 080EE106
asr   r0,r0,0x1                 ; 080EE108
lsl   r0,r0,0x1                 ; 080EE10A
add   r1,r1,r0                  ; 080EE10C
strh  r3,[r1]                   ; 080EE10E
mov   r0,r2                     ; 080EE110
sub   r0,0x20                   ; 080EE112
lsl   r0,r0,0x10                ; 080EE114
lsr   r2,r0,0x10                ; 080EE116
cmp   r2,0x0                    ; 080EE118
bne   @@Code080EE0FA            ; 080EE11A
bl    Sub08035648               ; 080EE11C
ldr   r0,=0x03007240            ; 080EE120  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EE122
ldr   r3,=0x29CC                ; 080EE124
add   r0,r0,r3                  ; 080EE126
ldrh  r1,[r0]                   ; 080EE128
mov   r0,0x1                    ; 080EE12A
and   r0,r1                     ; 080EE12C
ldr   r1,=Data08196620          ; 080EE12E
add   r0,r0,r1                  ; 080EE130
ldrb  r2,[r0]                   ; 080EE132
ldr   r0,=0x03002200            ; 080EE134
ldr   r6,=0x4A14                ; 080EE136
add   r0,r0,r6                  ; 080EE138
strb  r2,[r0]                   ; 080EE13A
ldr   r0,=0x01B3                ; 080EE13C
bl    Sub0804A23C               ; 080EE13E
ldr   r0,=0x01B1                ; 080EE142
bl    Sub0804A23C               ; 080EE144
bl    Sub0804F2F8               ; 080EE148
pop   {r4-r6}                   ; 080EE14C
pop   {r0}                      ; 080EE14E
bx    r0                        ; 080EE150
.pool                           ; 080EE152

Sub080EE190:
push  {r4-r7,lr}                ; 080EE190
mov   r5,r0                     ; 080EE192
lsl   r1,r1,0x10                ; 080EE194
lsr   r3,r1,0x10                ; 080EE196
mov   r4,0x17                   ; 080EE198
ldr   r0,=0x03007240            ; 080EE19A  Normal gameplay IWRAM (0300220C)
mov   r12,r0                    ; 080EE19C
ldr   r6,=0x01B7                ; 080EE19E
mov   r7,0xC0                   ; 080EE1A0
lsl   r7,r7,0x7                 ; 080EE1A2
@@Code080EE1A4:
mov   r0,0xB0                   ; 080EE1A4
mul   r0,r4                     ; 080EE1A6
mov   r1,0x95                   ; 080EE1A8
lsl   r1,r1,0x2                 ; 080EE1AA
add   r0,r0,r1                  ; 080EE1AC
mov   r2,r12                    ; 080EE1AE
ldr   r1,[r2]                   ; 080EE1B0
add   r1,r1,r0                  ; 080EE1B2
ldrh  r0,[r1,0x24]              ; 080EE1B4
cmp   r0,0x0                    ; 080EE1B6
beq   @@Code080EE1D8            ; 080EE1B8
ldrh  r0,[r1,0x32]              ; 080EE1BA
cmp   r0,r6                     ; 080EE1BC
bne   @@Code080EE1C8            ; 080EE1BE
cmp   r3,0x0                    ; 080EE1C0
bne   @@Code080EE1C8            ; 080EE1C2
mov   r0,0x7                    ; 080EE1C4
strh  r0,[r1,0x24]              ; 080EE1C6
@@Code080EE1C8:
ldrh  r0,[r1,0x28]              ; 080EE1C8
mov   r2,r7                     ; 080EE1CA
and   r2,r0                     ; 080EE1CC
cmp   r2,0x0                    ; 080EE1CE
bne   @@Code080EE1D8            ; 080EE1D0
str   r2,[r1,0x8]               ; 080EE1D2
str   r2,[r1,0x14]              ; 080EE1D4
str   r2,[r1,0x10]              ; 080EE1D6
@@Code080EE1D8:
add   r1,0x7A                   ; 080EE1D8
mov   r0,0x0                    ; 080EE1DA
strh  r0,[r1]                   ; 080EE1DC
sub   r0,r4,0x1                 ; 080EE1DE
lsl   r0,r0,0x10                ; 080EE1E0
lsr   r4,r0,0x10                ; 080EE1E2
cmp   r0,0x0                    ; 080EE1E4
bge   @@Code080EE1A4            ; 080EE1E6
cmp   r3,0x0                    ; 080EE1E8
bne   @@Code080EE226            ; 080EE1EA
ldrh  r0,[r5,0x1C]              ; 080EE1EC
cmp   r0,0x0                    ; 080EE1EE
bne   @@Code080EE226            ; 080EE1F0
mov   r0,0x11                   ; 080EE1F2
bl    Sub0804A2AC               ; 080EE1F4
lsl   r0,r0,0x18                ; 080EE1F8
lsr   r0,r0,0x18                ; 080EE1FA
ldr   r2,=0x03007240            ; 080EE1FC  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 080EE1FE
mul   r0,r1                     ; 080EE200
mov   r1,0x95                   ; 080EE202
lsl   r1,r1,0x2                 ; 080EE204
add   r0,r0,r1                  ; 080EE206
ldr   r1,[r2]                   ; 080EE208
add   r1,r1,r0                  ; 080EE20A
ldr   r0,=0x03002200            ; 080EE20C
ldr   r2,=0x4A14                ; 080EE20E
add   r0,r0,r2                  ; 080EE210
ldrb  r0,[r0]                   ; 080EE212
mov   r2,r1                     ; 080EE214
add   r2,0x6A                   ; 080EE216
strh  r0,[r2]                   ; 080EE218
mov   r0,0x98                   ; 080EE21A
lsl   r0,r0,0x8                 ; 080EE21C
str   r0,[r1,0x4]               ; 080EE21E
mov   r0,0xF0                   ; 080EE220
lsl   r0,r0,0x7                 ; 080EE222
str   r0,[r1]                   ; 080EE224
@@Code080EE226:
pop   {r4-r7}                   ; 080EE226
pop   {r0}                      ; 080EE228
bx    r0                        ; 080EE22A
.pool                           ; 080EE22C

Sub080EE23C:
push  {lr}                      ; 080EE23C
ldr   r0,=0x03006D80            ; 080EE23E
ldr   r1,[r0,0x4]               ; 080EE240
ldr   r0,=0x5FFF                ; 080EE242
cmp   r1,r0                     ; 080EE244
bgt   @@Code080EE270            ; 080EE246
ldr   r2,=0x03002200            ; 080EE248
ldr   r0,=0x47EC                ; 080EE24A
add   r1,r2,r0                  ; 080EE24C
ldrh  r0,[r1]                   ; 080EE24E
sub   r0,0x2                    ; 080EE250
strh  r0,[r1]                   ; 080EE252
lsl   r0,r0,0x10                ; 080EE254
cmp   r0,0x0                    ; 080EE256
bge   @@Code080EE28E            ; 080EE258
mov   r0,0x0                    ; 080EE25A
b     @@Code080EE28C            ; 080EE25C
.pool                           ; 080EE25E

@@Code080EE270:
ldr   r0,=0x7FFF                ; 080EE270
cmp   r1,r0                     ; 080EE272
ble   @@Code080EE296            ; 080EE274
ldr   r2,=0x03002200            ; 080EE276
ldr   r0,=0x47EC                ; 080EE278
add   r1,r2,r0                  ; 080EE27A
ldrh  r0,[r1]                   ; 080EE27C
add   r0,0x3                    ; 080EE27E
strh  r0,[r1]                   ; 080EE280
lsl   r0,r0,0x10                ; 080EE282
lsr   r0,r0,0x10                ; 080EE284
cmp   r0,0x3F                   ; 080EE286
bls   @@Code080EE28E            ; 080EE288
mov   r0,0x40                   ; 080EE28A
@@Code080EE28C:
strh  r0,[r1]                   ; 080EE28C
@@Code080EE28E:
ldrh  r1,[r1]                   ; 080EE28E
ldr   r3,=0x47DC                ; 080EE290
add   r0,r2,r3                  ; 080EE292
strh  r1,[r0]                   ; 080EE294
@@Code080EE296:
pop   {r0}                      ; 080EE296
bx    r0                        ; 080EE298
.pool                           ; 080EE29A

Sub080EE2AC:
push  {lr}                      ; 080EE2AC
mov   r2,r0                     ; 080EE2AE
ldrh  r0,[r2,0x1E]              ; 080EE2B0
cmp   r0,0x0                    ; 080EE2B2
bne   @@Code080EE31C            ; 080EE2B4
ldr   r0,=0x03002200            ; 080EE2B6
ldr   r1,=0x48A2                ; 080EE2B8
add   r0,r0,r1                  ; 080EE2BA
ldrh  r1,[r0]                   ; 080EE2BC
mov   r0,0xF                    ; 080EE2BE
and   r0,r1                     ; 080EE2C0
cmp   r0,0x0                    ; 080EE2C2
bne   @@Code080EE31C            ; 080EE2C4
mov   r3,r2                     ; 080EE2C6
add   r3,0x66                   ; 080EE2C8
ldrh  r0,[r3]                   ; 080EE2CA
cmp   r0,0x0                    ; 080EE2CC
beq   @@Code080EE2F8            ; 080EE2CE
mov   r1,r2                     ; 080EE2D0
add   r1,0x60                   ; 080EE2D2
ldrh  r0,[r1]                   ; 080EE2D4
add   r0,0x1                    ; 080EE2D6
strh  r0,[r1]                   ; 080EE2D8
add   r2,0x62                   ; 080EE2DA
ldrh  r0,[r2]                   ; 080EE2DC
sub   r0,0x1                    ; 080EE2DE
strh  r0,[r2]                   ; 080EE2E0
ldrh  r1,[r1]                   ; 080EE2E2
mov   r0,0x80                   ; 080EE2E4
lsl   r0,r0,0x1                 ; 080EE2E6
cmp   r1,r0                     ; 080EE2E8
bls   @@Code080EE31C            ; 080EE2EA
b     @@Code080EE314            ; 080EE2EC
.pool                           ; 080EE2EE

@@Code080EE2F8:
mov   r1,r2                     ; 080EE2F8
add   r1,0x60                   ; 080EE2FA
ldrh  r0,[r1]                   ; 080EE2FC
sub   r0,0x1                    ; 080EE2FE
strh  r0,[r1]                   ; 080EE300
add   r1,0x2                    ; 080EE302
ldrh  r0,[r1]                   ; 080EE304
add   r0,0x1                    ; 080EE306
strh  r0,[r1]                   ; 080EE308
lsl   r0,r0,0x10                ; 080EE30A
mov   r1,0x80                   ; 080EE30C
lsl   r1,r1,0x11                ; 080EE30E
cmp   r0,r1                     ; 080EE310
bls   @@Code080EE31C            ; 080EE312
@@Code080EE314:
ldrh  r0,[r3]                   ; 080EE314
mov   r1,0x1                    ; 080EE316
eor   r0,r1                     ; 080EE318
strh  r0,[r3]                   ; 080EE31A
@@Code080EE31C:
pop   {r0}                      ; 080EE31C
bx    r0                        ; 080EE31E

Sub080EE320:
push  {r4-r7,lr}                ; 080EE320
mov   r7,r8                     ; 080EE322
push  {r7}                      ; 080EE324
lsl   r0,r0,0x10                ; 080EE326
lsr   r0,r0,0x10                ; 080EE328
mov   r12,r0                    ; 080EE32A
lsl   r1,r1,0x10                ; 080EE32C
lsr   r1,r1,0x10                ; 080EE32E
mov   r8,r1                     ; 080EE330
lsl   r2,r2,0x10                ; 080EE332
lsr   r2,r2,0x10                ; 080EE334
mov   r4,r2                     ; 080EE336
ldr   r1,=0x03007240            ; 080EE338  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080EE33A
mov   r3,r8                     ; 080EE33C
mul   r3,r0                     ; 080EE33E
mov   r0,r3                     ; 080EE340
mov   r7,0x95                   ; 080EE342
lsl   r7,r7,0x2                 ; 080EE344
add   r0,r0,r7                  ; 080EE346
ldr   r1,[r1]                   ; 080EE348
add   r5,r1,r0                  ; 080EE34A
ldr   r0,[r5]                   ; 080EE34C
ldr   r1,=0xFFFFF400            ; 080EE34E
add   r0,r0,r1                  ; 080EE350
lsl   r0,r0,0x10                ; 080EE352
lsr   r1,r0,0x10                ; 080EE354
ldr   r6,=0x03006D80            ; 080EE356
ldr   r3,[r6]                   ; 080EE358
cmp   r1,r3                     ; 080EE35A
bge   @@Code080EE37A            ; 080EE35C
mov   r7,0xA0                   ; 080EE35E
lsl   r7,r7,0x6                 ; 080EE360
add   r0,r1,r7                  ; 080EE362
cmp   r0,r3                     ; 080EE364
blt   @@Code080EE37A            ; 080EE366
ldr   r0,[r5,0x4]               ; 080EE368
asr   r0,r0,0x8                 ; 080EE36A
sub   r0,0x20                   ; 080EE36C
lsl   r0,r0,0x10                ; 080EE36E
lsr   r1,r0,0x10                ; 080EE370
ldr   r0,[r6,0x4]               ; 080EE372
asr   r3,r0,0x8                 ; 080EE374
cmp   r1,r3                     ; 080EE376
blt   @@Code080EE38C            ; 080EE378
@@Code080EE37A:
mov   r0,r2                     ; 080EE37A
b     @@Code080EE398            ; 080EE37C
.pool                           ; 080EE37E

@@Code080EE38C:
mov   r2,r12                    ; 080EE38C
add   r0,r1,r2                  ; 080EE38E
cmp   r0,r3                     ; 080EE390
blt   @@Code080EE396            ; 080EE392
mov   r4,r8                     ; 080EE394
@@Code080EE396:
mov   r0,r4                     ; 080EE396
@@Code080EE398:
pop   {r3}                      ; 080EE398
mov   r8,r3                     ; 080EE39A
pop   {r4-r7}                   ; 080EE39C
pop   {r1}                      ; 080EE39E
bx    r1                        ; 080EE3A0
.pool                           ; 080EE3A2

Sub080EE3A4:
push  {r4-r6,lr}                ; 080EE3A4
mov   r6,r0                     ; 080EE3A6
lsl   r1,r1,0x10                ; 080EE3A8
lsr   r5,r1,0x10                ; 080EE3AA
mov   r2,0x0                    ; 080EE3AC
mov   r4,0x0                    ; 080EE3AE
@@Code080EE3B0:
add   r4,0x1                    ; 080EE3B0
lsl   r1,r4,0x1                 ; 080EE3B2
mov   r0,r6                     ; 080EE3B4
add   r0,0x2A                   ; 080EE3B6
add   r0,r0,r1                  ; 080EE3B8
ldrh  r1,[r0]                   ; 080EE3BA
mov   r0,r5                     ; 080EE3BC
bl    Sub080EE320               ; 080EE3BE
lsl   r0,r0,0x10                ; 080EE3C2
lsr   r2,r0,0x10                ; 080EE3C4
lsl   r4,r4,0x10                ; 080EE3C6
lsr   r4,r4,0x10                ; 080EE3C8
cmp   r4,0x1                    ; 080EE3CA
bls   @@Code080EE3B0            ; 080EE3CC
mov   r0,r2                     ; 080EE3CE
pop   {r4-r6}                   ; 080EE3D0
pop   {r1}                      ; 080EE3D2
bx    r1                        ; 080EE3D4
.pool                           ; 080EE3D6

Sub080EE3D8:
push  {lr}                      ; 080EE3D8
mov   r2,r0                     ; 080EE3DA
ldr   r1,=0x03006D80            ; 080EE3DC
ldr   r0,[r1,0xC]               ; 080EE3DE
cmp   r0,0x0                    ; 080EE3E0
blt   @@Code080EE43E            ; 080EE3E2
mov   r0,r1                     ; 080EE3E4
add   r0,0x52                   ; 080EE3E6
ldrh  r0,[r0]                   ; 080EE3E8
cmp   r0,0x0                    ; 080EE3EA
bne   @@Code080EE3F8            ; 080EE3EC
mov   r0,r2                     ; 080EE3EE
mov   r1,0x4                    ; 080EE3F0
b     @@Code080EE3FC            ; 080EE3F2
.pool                           ; 080EE3F4

@@Code080EE3F8:
mov   r0,r2                     ; 080EE3F8
mov   r1,0x8                    ; 080EE3FA
@@Code080EE3FC:
bl    Sub080EE3A4               ; 080EE3FC
lsl   r0,r0,0x10                ; 080EE400
lsr   r2,r0,0x10                ; 080EE402
cmp   r2,0x0                    ; 080EE404
beq   @@Code080EE43E            ; 080EE406
ldr   r1,=0x03007240            ; 080EE408  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080EE40A
mul   r0,r2                     ; 080EE40C
mov   r2,0x95                   ; 080EE40E
lsl   r2,r2,0x2                 ; 080EE410
add   r0,r0,r2                  ; 080EE412
ldr   r1,[r1]                   ; 080EE414
add   r1,r1,r0                  ; 080EE416
ldr   r2,=0x03006D80            ; 080EE418
ldr   r0,[r1,0x4]               ; 080EE41A
ldr   r3,=0xFFFFE000            ; 080EE41C
add   r0,r0,r3                  ; 080EE41E
str   r0,[r2,0x4]               ; 080EE420
mov   r0,0x2E                   ; 080EE422
ldsh  r1,[r1,r0]                ; 080EE424
lsl   r1,r1,0x8                 ; 080EE426
ldr   r0,[r2]                   ; 080EE428
add   r0,r0,r1                  ; 080EE42A
str   r0,[r2]                   ; 080EE42C
mov   r3,0xD7                   ; 080EE42E
lsl   r3,r3,0x1                 ; 080EE430
add   r1,r2,r3                  ; 080EE432
mov   r0,0x1                    ; 080EE434
strh  r0,[r1]                   ; 080EE436
mov   r0,0x80                   ; 080EE438
lsl   r0,r0,0x3                 ; 080EE43A
str   r0,[r2,0xC]               ; 080EE43C
@@Code080EE43E:
pop   {r0}                      ; 080EE43E
bx    r0                        ; 080EE440
.pool                           ; 080EE442

Sub080EE450:
push  {lr}                      ; 080EE450
ldr   r1,=0x03006D80            ; 080EE452
ldr   r0,[r1,0x4]               ; 080EE454
lsl   r0,r0,0x8                 ; 080EE456
lsr   r2,r0,0x10                ; 080EE458
cmp   r0,0x0                    ; 080EE45A
bge   @@Code080EE48E            ; 080EE45C
ldr   r0,=0xFFEF                ; 080EE45E
cmp   r2,r0                     ; 080EE460
bhi   @@Code080EE48E            ; 080EE462
ldr   r0,[r1]                   ; 080EE464
lsl   r0,r0,0x8                 ; 080EE466
lsr   r2,r0,0x10                ; 080EE468
cmp   r2,0x2F                   ; 080EE46A
bhi   @@Code080EE480            ; 080EE46C
mov   r0,0x0                    ; 080EE46E
str   r0,[r1,0x8]               ; 080EE470
mov   r2,0x30                   ; 080EE472
b     @@Code080EE48A            ; 080EE474
.pool                           ; 080EE476

@@Code080EE480:
cmp   r2,0xC0                   ; 080EE480
bls   @@Code080EE48A            ; 080EE482
mov   r0,0x0                    ; 080EE484
str   r0,[r1,0x8]               ; 080EE486
mov   r2,0xC0                   ; 080EE488
@@Code080EE48A:
lsl   r0,r2,0x8                 ; 080EE48A
str   r0,[r1]                   ; 080EE48C
@@Code080EE48E:
pop   {r0}                      ; 080EE48E
bx    r0                        ; 080EE490
.pool                           ; 080EE492

Sub080EE494:
push  {r4-r6,lr}                ; 080EE494
mov   r5,r0                     ; 080EE496
ldr   r4,=0x03007240            ; 080EE498  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080EE49A
mov   r1,0xE0                   ; 080EE49C
lsl   r1,r1,0x1                 ; 080EE49E
add   r6,r0,r1                  ; 080EE4A0
bl    Sub08002338               ; 080EE4A2
ldr   r0,[r4]                   ; 080EE4A6
ldr   r2,=0x29CE                ; 080EE4A8
add   r0,r0,r2                  ; 080EE4AA
mov   r2,0x0                    ; 080EE4AC
strh  r2,[r0]                   ; 080EE4AE
ldr   r0,=0x03002200            ; 080EE4B0
ldr   r3,=0x47D0                ; 080EE4B2
add   r1,r0,r3                  ; 080EE4B4
strh  r2,[r1]                   ; 080EE4B6
ldr   r1,=0x47D2                ; 080EE4B8
add   r0,r0,r1                  ; 080EE4BA
strh  r2,[r0]                   ; 080EE4BC
ldr   r2,=0x03006D80            ; 080EE4BE
ldr   r0,[r2]                   ; 080EE4C0
asr   r0,r0,0x8                 ; 080EE4C2
str   r0,[r5]                   ; 080EE4C4
ldr   r0,[r2,0x4]               ; 080EE4C6
asr   r0,r0,0x8                 ; 080EE4C8
str   r0,[r5,0x4]               ; 080EE4CA
ldrh  r0,[r5,0x30]              ; 080EE4CC
cmp   r0,0x0                    ; 080EE4CE
beq   @@Code080EE542            ; 080EE4D0
mov   r0,r2                     ; 080EE4D2
add   r0,0x7A                   ; 080EE4D4
ldrh  r1,[r0]                   ; 080EE4D6
mov   r0,0x7                    ; 080EE4D8
and   r0,r1                     ; 080EE4DA
cmp   r0,0x0                    ; 080EE4DC
beq   @@Code080EE4E8            ; 080EE4DE
ldr   r0,[r2,0xC]               ; 080EE4E0
mov   r2,0x0                    ; 080EE4E2
cmp   r0,0x0                    ; 080EE4E4
beq   @@Code080EE4EA            ; 080EE4E6
@@Code080EE4E8:
mov   r2,0x1                    ; 080EE4E8
@@Code080EE4EA:
cmp   r2,0x0                    ; 080EE4EA
beq   @@Code080EE530            ; 080EE4EC
ldr   r0,=0x03002200            ; 080EE4EE
ldr   r3,=0x47BE                ; 080EE4F0
add   r2,r0,r3                  ; 080EE4F2
mov   r1,0x0                    ; 080EE4F4
strh  r1,[r2]                   ; 080EE4F6
ldr   r2,=0x47C0                ; 080EE4F8
add   r0,r0,r2                  ; 080EE4FA
strh  r1,[r0]                   ; 080EE4FC
mov   r0,r5                     ; 080EE4FE
add   r0,0xC2                   ; 080EE500
strh  r1,[r0]                   ; 080EE502
add   r0,0x2                    ; 080EE504
strh  r1,[r0]                   ; 080EE506
ldr   r1,=0x03006D80            ; 080EE508
mov   r0,0x6B                   ; 080EE50A
strh  r0,[r1,0x3C]              ; 080EE50C
b     @@Code080EE542            ; 080EE50E
.pool                           ; 080EE510

@@Code080EE530:
strh  r2,[r5,0x30]              ; 080EE530
ldr   r1,=0x03006D80            ; 080EE532
mov   r0,0xE9                   ; 080EE534
lsl   r0,r0,0x1                 ; 080EE536
add   r3,r1,r0                  ; 080EE538
mov   r0,0x96                   ; 080EE53A
strh  r0,[r3]                   ; 080EE53C
str   r2,[r1,0x8]               ; 080EE53E
str   r2,[r1,0x28]              ; 080EE540
@@Code080EE542:
ldr   r0,=0x03006D80            ; 080EE542
mov   r2,0xE9                   ; 080EE544
lsl   r2,r2,0x1                 ; 080EE546
add   r1,r0,r2                  ; 080EE548
ldrh  r0,[r1]                   ; 080EE54A
cmp   r0,0x7F                   ; 080EE54C
bhi   @@Code080EE554            ; 080EE54E
mov   r0,0x0                    ; 080EE550
strh  r0,[r1]                   ; 080EE552
@@Code080EE554:
bl    Sub080EA5A4               ; 080EE554
bl    Sub08042FF8               ; 080EE558
ldrh  r0,[r5,0x1E]              ; 080EE55C
cmp   r0,0x0                    ; 080EE55E
bne   @@Code080EE570            ; 080EE560
bl    Sub080EE450               ; 080EE562
bl    Sub08040A78               ; 080EE566
b     @@Code080EE57A            ; 080EE56A
.pool                           ; 080EE56C

@@Code080EE570:
mov   r0,r5                     ; 080EE570
bl    Sub0805CFCC               ; 080EE572
bl    Sub08040A78               ; 080EE576
@@Code080EE57A:
ldrh  r0,[r5,0x30]              ; 080EE57A
cmp   r0,0x0                    ; 080EE57C
bne   @@Code080EE586            ; 080EE57E
mov   r0,r5                     ; 080EE580
bl    Sub080EE3D8               ; 080EE582
@@Code080EE586:
mov   r4,r6                     ; 080EE586
add   r4,0x5C                   ; 080EE588
ldrh  r0,[r4]                   ; 080EE58A
cmp   r0,0x0                    ; 080EE58C
bne   @@Code080EE59A            ; 080EE58E
bl    Sub0804F2F8               ; 080EE590
mov   r0,r5                     ; 080EE594
bl    Sub080EE2AC               ; 080EE596
@@Code080EE59A:
ldr   r1,=Data0817D00C          ; 080EE59A
ldr   r0,=0x03002200            ; 080EE59C
ldr   r3,=0x4A09                ; 080EE59E
add   r0,r0,r3                  ; 080EE5A0
ldrb  r2,[r0]                   ; 080EE5A2
sub   r0,r2,0x1                 ; 080EE5A4
lsl   r0,r0,0x1                 ; 080EE5A6
add   r0,r0,r1                  ; 080EE5A8
ldrh  r0,[r0]                   ; 080EE5AA
ldrh  r6,[r6,0xC]               ; 080EE5AC
cmp   r0,r6                     ; 080EE5AE
bne   @@Code080EE5C6            ; 080EE5B0
cmp   r2,0x0                    ; 080EE5B2
beq   @@Code080EE5C6            ; 080EE5B4
ldrh  r0,[r4]                   ; 080EE5B6
cmp   r0,0x0                    ; 080EE5B8
beq   @@Code080EE5C6            ; 080EE5BA
bl    Sub0804F2F8               ; 080EE5BC
mov   r0,r5                     ; 080EE5C0
bl    Sub080EE2AC               ; 080EE5C2
@@Code080EE5C6:
bl    Sub080EE23C               ; 080EE5C6
pop   {r4-r6}                   ; 080EE5CA
pop   {r0}                      ; 080EE5CC
bx    r0                        ; 080EE5CE
.pool                           ; 080EE5D0

Sub080EE5DC:
push  {lr}                      ; 080EE5DC
mov   r0,r1                     ; 080EE5DE
ldr   r1,=Data0829E224          ; 080EE5E0
bl    Sub0804B4C4               ; 080EE5E2  Load 32x32 dynamic graphics
ldr   r1,=0x03002200            ; 080EE5E6
ldr   r0,=0x4876                ; 080EE5E8
add   r1,r1,r0                  ; 080EE5EA
ldrh  r0,[r1]                   ; 080EE5EC
add   r0,0x1                    ; 080EE5EE
strh  r0,[r1]                   ; 080EE5F0
pop   {r0}                      ; 080EE5F2
bx    r0                        ; 080EE5F4
.pool                           ; 080EE5F6

Sub080EE604:
push  {r4-r7,lr}                ; 080EE604
mov   r7,r8                     ; 080EE606
push  {r7}                      ; 080EE608
mov   r12,r0                    ; 080EE60A
lsl   r1,r1,0x10                ; 080EE60C
lsr   r2,r1,0x10                ; 080EE60E
add   r0,0x68                   ; 080EE610
mov   r4,0x0                    ; 080EE612
mov   r3,0x0                    ; 080EE614
strh  r2,[r0]                   ; 080EE616
ldr   r1,=Data08196624          ; 080EE618
lsl   r0,r2,0x1                 ; 080EE61A
add   r0,r0,r1                  ; 080EE61C
ldrh  r2,[r0]                   ; 080EE61E
ldr   r1,=0x03002200            ; 080EE620
ldr   r5,=0x4A14                ; 080EE622
add   r0,r1,r5                  ; 080EE624
strb  r2,[r0]                   ; 080EE626
ldr   r2,=0x47D4                ; 080EE628
add   r0,r1,r2                  ; 080EE62A
strh  r3,[r0]                   ; 080EE62C
ldr   r5,=0x47DC                ; 080EE62E
add   r0,r1,r5                  ; 080EE630
mov   r2,0x40                   ; 080EE632
strh  r2,[r0]                   ; 080EE634
add   r5,0x8                    ; 080EE636
add   r0,r1,r5                  ; 080EE638
strh  r3,[r0]                   ; 080EE63A
ldr   r3,=0x47EC                ; 080EE63C
add   r0,r1,r3                  ; 080EE63E
strh  r2,[r0]                   ; 080EE640
add   r5,0x2                    ; 080EE642
add   r0,r1,r5                  ; 080EE644
mov   r3,0x8                    ; 080EE646
strh  r3,[r0]                   ; 080EE648
add   r5,0x8                    ; 080EE64A
add   r0,r1,r5                  ; 080EE64C
strh  r2,[r0]                   ; 080EE64E
ldr   r2,=0x47E8                ; 080EE650
add   r0,r1,r2                  ; 080EE652
strh  r3,[r0]                   ; 080EE654
ldr   r3,=0x47F0                ; 080EE656
add   r1,r1,r3                  ; 080EE658
mov   r0,0x30                   ; 080EE65A
strh  r0,[r1]                   ; 080EE65C
ldr   r1,=0x03006D80            ; 080EE65E
mov   r0,0xB0                   ; 080EE660
lsl   r0,r0,0x8                 ; 080EE662
str   r0,[r1,0x4]               ; 080EE664
mov   r0,0x80                   ; 080EE666
lsl   r0,r0,0x6                 ; 080EE668
str   r0,[r1]                   ; 080EE66A
mov   r0,0xB0                   ; 080EE66C
mov   r5,r12                    ; 080EE66E
str   r0,[r5,0x4]               ; 080EE670
mov   r0,0x20                   ; 080EE672
str   r0,[r5]                   ; 080EE674
ldr   r0,=0x0201B800            ; 080EE676
strb  r4,[r0]                   ; 080EE678
mov   r2,0x0                    ; 080EE67A
ldr   r0,=0x03007010            ; 080EE67C  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r0                     ; 080EE67E
mov   r4,r8                     ; 080EE680
mov   r3,0x0                    ; 080EE682
@@Code080EE684:
ldr   r0,[r4]                   ; 080EE684
lsl   r1,r2,0x1                 ; 080EE686
add   r0,r0,r1                  ; 080EE688
strh  r3,[r0]                   ; 080EE68A
add   r0,r2,0x1                 ; 080EE68C
lsl   r0,r0,0x10                ; 080EE68E
lsr   r2,r0,0x10                ; 080EE690
cmp   r2,0xFF                   ; 080EE692
bls   @@Code080EE684            ; 080EE694
mov   r2,0x0                    ; 080EE696
mov   r5,r12                    ; 080EE698
add   r5,0x5E                   ; 080EE69A
mov   r6,r12                    ; 080EE69C
add   r6,0x60                   ; 080EE69E
mov   r7,r12                    ; 080EE6A0
add   r7,0x62                   ; 080EE6A2
ldr   r4,=0x03007010            ; 080EE6A4  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x80                   ; 080EE6A6
lsl   r3,r3,0x1                 ; 080EE6A8
@@Code080EE6AA:
ldr   r0,[r4]                   ; 080EE6AA
mov   r1,r2                     ; 080EE6AC
add   r1,0xD0                   ; 080EE6AE
lsl   r1,r1,0x1                 ; 080EE6B0
add   r0,r0,r1                  ; 080EE6B2
strh  r3,[r0]                   ; 080EE6B4
add   r0,r2,0x1                 ; 080EE6B6
lsl   r0,r0,0x10                ; 080EE6B8
lsr   r2,r0,0x10                ; 080EE6BA
cmp   r2,0xF                    ; 080EE6BC
bls   @@Code080EE6AA            ; 080EE6BE
mov   r2,0xB0                   ; 080EE6C0
lsl   r2,r2,0x1                 ; 080EE6C2
ldr   r4,=0x03007010            ; 080EE6C4  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0x80                   ; 080EE6C6
lsl   r3,r3,0x1                 ; 080EE6C8
@@Code080EE6CA:
ldr   r1,[r4]                   ; 080EE6CA
lsr   r0,r2,0x1                 ; 080EE6CC
lsl   r0,r0,0x1                 ; 080EE6CE
add   r0,r1,r0                  ; 080EE6D0
strh  r3,[r0]                   ; 080EE6D2
mov   r0,r2                     ; 080EE6D4
add   r0,0x1C                   ; 080EE6D6
asr   r0,r0,0x1                 ; 080EE6D8
lsl   r0,r0,0x1                 ; 080EE6DA
add   r1,r1,r0                  ; 080EE6DC
strh  r3,[r1]                   ; 080EE6DE
mov   r0,r2                     ; 080EE6E0
sub   r0,0x20                   ; 080EE6E2
lsl   r0,r0,0x10                ; 080EE6E4
lsr   r2,r0,0x10                ; 080EE6E6
cmp   r2,0x0                    ; 080EE6E8
bne   @@Code080EE6CA            ; 080EE6EA
mov   r2,0x3                    ; 080EE6EC
ldr   r4,=0x03007010            ; 080EE6EE  Layer 1 tilemap EWRAM (0200000C)
mov   r3,0xE0                   ; 080EE6F0
lsl   r3,r3,0x6                 ; 080EE6F2
@@Code080EE6F4:
ldr   r0,[r4]                   ; 080EE6F4
mov   r1,r2                     ; 080EE6F6
add   r1,0x50                   ; 080EE6F8
lsl   r1,r1,0x1                 ; 080EE6FA
add   r0,r0,r1                  ; 080EE6FC
strh  r3,[r0]                   ; 080EE6FE
add   r0,r2,0x1                 ; 080EE700
lsl   r0,r0,0x10                ; 080EE702
lsr   r2,r0,0x10                ; 080EE704
cmp   r2,0xB                    ; 080EE706
bls   @@Code080EE6F4            ; 080EE708
mov   r1,r8                     ; 080EE70A
ldr   r0,[r1]                   ; 080EE70C
mov   r1,0x80                   ; 080EE70E
lsl   r1,r1,0x1                 ; 080EE710
strh  r1,[r0,0x2]               ; 080EE712
strh  r1,[r0,0x4]               ; 080EE714
strh  r1,[r0,0x1A]              ; 080EE716
strh  r1,[r0,0x1C]              ; 080EE718
mov   r4,0xDA                   ; 080EE71A
lsl   r4,r4,0x1                 ; 080EE71C
mov   r0,r4                     ; 080EE71E
bl    Sub0804A2AC               ; 080EE720
mov   r0,r4                     ; 080EE724
bl    Sub0804A2AC               ; 080EE726
mov   r4,0xA                    ; 080EE72A
@@Code080EE72C:
mov   r0,0xDB                   ; 080EE72C
lsl   r0,r0,0x1                 ; 080EE72E
bl    Sub0804A2AC               ; 080EE730
sub   r0,r4,0x1                 ; 080EE734
lsl   r0,r0,0x10                ; 080EE736
lsr   r4,r0,0x10                ; 080EE738
cmp   r4,0x0                    ; 080EE73A
bne   @@Code080EE72C            ; 080EE73C
ldr   r0,=0x01B5                ; 080EE73E
bl    Sub0804A2AC               ; 080EE740
strh  r4,[r5]                   ; 080EE744
mov   r0,0x80                   ; 080EE746
lsl   r0,r0,0x1                 ; 080EE748
strh  r0,[r6]                   ; 080EE74A
strh  r0,[r7]                   ; 080EE74C
bl    Sub0804F2F8               ; 080EE74E
pop   {r3}                      ; 080EE752
mov   r8,r3                     ; 080EE754
pop   {r4-r7}                   ; 080EE756
pop   {r0}                      ; 080EE758
bx    r0                        ; 080EE75A
.pool                           ; 080EE75C

Sub080EE78C:
push  {lr}                      ; 080EE78C
mov   r1,0x1                    ; 080EE78E
bl    Sub080EE604               ; 080EE790
pop   {r0}                      ; 080EE794
bx    r0                        ; 080EE796

Sub080EE798:
push  {lr}                      ; 080EE798
mov   r1,0x0                    ; 080EE79A
bl    Sub080EE604               ; 080EE79C
pop   {r0}                      ; 080EE7A0
bx    r0                        ; 080EE7A2

Sub080EE7A4:
push  {r4-r7,lr}                ; 080EE7A4
mov   r6,r0                     ; 080EE7A6
ldr   r0,=0x03002200            ; 080EE7A8
ldr   r1,=0x4B67                ; 080EE7AA
add   r2,r0,r1                  ; 080EE7AC
ldrb  r0,[r2]                   ; 080EE7AE
cmp   r0,0x0                    ; 080EE7B0
beq   @@Code080EE7CA            ; 080EE7B2
lsl   r1,r0,0x1                 ; 080EE7B4
ldrh  r0,[r6,0x2C]              ; 080EE7B6
sub   r0,r0,r1                  ; 080EE7B8
lsl   r0,r0,0x10                ; 080EE7BA
lsr   r1,r0,0x10                ; 080EE7BC
cmp   r0,0x0                    ; 080EE7BE
bge   @@Code080EE7C4            ; 080EE7C0
mov   r1,0x0                    ; 080EE7C2
@@Code080EE7C4:
mov   r0,0x0                    ; 080EE7C4
strh  r1,[r6,0x2C]              ; 080EE7C6
strb  r0,[r2]                   ; 080EE7C8
@@Code080EE7CA:
ldr   r0,=0x02011000            ; 080EE7CA
ldrh  r5,[r0]                   ; 080EE7CC
mov   r2,0x0                    ; 080EE7CE
ldr   r7,=Data0819662C          ; 080EE7D0
ldr   r4,=0x02011002            ; 080EE7D2
ldr   r3,=0xFFFF                ; 080EE7D4
@@Code080EE7D6:
lsl   r0,r2,0x1                 ; 080EE7D6
add   r0,r0,r7                  ; 080EE7D8
ldrh  r1,[r0]                   ; 080EE7DA
lsl   r0,r5,0x1                 ; 080EE7DC
add   r0,r0,r4                  ; 080EE7DE
strh  r1,[r0]                   ; 080EE7E0
add   r0,r2,0x1                 ; 080EE7E2
lsl   r0,r0,0x10                ; 080EE7E4
lsr   r2,r0,0x10                ; 080EE7E6
add   r0,r5,0x1                 ; 080EE7E8
lsl   r0,r0,0x10                ; 080EE7EA
lsr   r5,r0,0x10                ; 080EE7EC
cmp   r1,r3                     ; 080EE7EE
bne   @@Code080EE7D6            ; 080EE7F0
sub   r0,r5,0x1                 ; 080EE7F2
lsl   r0,r0,0x10                ; 080EE7F4
lsr   r5,r0,0x10                ; 080EE7F6
mov   r2,0x0                    ; 080EE7F8
ldr   r7,=Data0819668E          ; 080EE7FA
ldr   r4,=0x02011002            ; 080EE7FC
ldr   r3,=0xFFFF                ; 080EE7FE
@@Code080EE800:
lsl   r0,r2,0x1                 ; 080EE800
add   r0,r0,r7                  ; 080EE802
ldrh  r1,[r0]                   ; 080EE804
lsl   r0,r5,0x1                 ; 080EE806
add   r0,r0,r4                  ; 080EE808
strh  r1,[r0]                   ; 080EE80A
add   r0,r2,0x1                 ; 080EE80C
lsl   r0,r0,0x10                ; 080EE80E
lsr   r2,r0,0x10                ; 080EE810
add   r0,r5,0x1                 ; 080EE812
lsl   r0,r0,0x10                ; 080EE814
lsr   r5,r0,0x10                ; 080EE816
cmp   r1,r3                     ; 080EE818
bne   @@Code080EE800            ; 080EE81A
sub   r0,r5,0x1                 ; 080EE81C
lsl   r0,r0,0x10                ; 080EE81E
lsr   r5,r0,0x10                ; 080EE820
ldrh  r0,[r6,0x2C]              ; 080EE822
lsr   r1,r0,0x1                 ; 080EE824
mov   r0,0xB                    ; 080EE826
mul   r0,r1                     ; 080EE828
lsl   r0,r0,0x10                ; 080EE82A
lsr   r2,r0,0x10                ; 080EE82C
ldr   r7,=Data081966F4          ; 080EE82E
ldr   r4,=0x02011002            ; 080EE830
ldr   r3,=0xFFFF                ; 080EE832
@@Code080EE834:
lsl   r0,r2,0x1                 ; 080EE834
add   r0,r0,r7                  ; 080EE836
ldrh  r1,[r0]                   ; 080EE838
lsl   r0,r5,0x1                 ; 080EE83A
add   r0,r0,r4                  ; 080EE83C
strh  r1,[r0]                   ; 080EE83E
add   r0,r2,0x1                 ; 080EE840
lsl   r0,r0,0x10                ; 080EE842
lsr   r2,r0,0x10                ; 080EE844
add   r0,r5,0x1                 ; 080EE846
lsl   r0,r0,0x10                ; 080EE848
lsr   r5,r0,0x10                ; 080EE84A
cmp   r1,r3                     ; 080EE84C
bne   @@Code080EE834            ; 080EE84E
sub   r0,r5,0x1                 ; 080EE850
lsl   r0,r0,0x10                ; 080EE852
lsr   r5,r0,0x10                ; 080EE854
ldrh  r0,[r6,0x2E]              ; 080EE856
lsr   r1,r0,0x1                 ; 080EE858
mov   r0,0xB                    ; 080EE85A
mul   r0,r1                     ; 080EE85C
lsl   r0,r0,0x10                ; 080EE85E
lsr   r2,r0,0x10                ; 080EE860
ldr   r7,=Data08196762          ; 080EE862
ldr   r4,=0x02011002            ; 080EE864
ldr   r3,=0xFFFF                ; 080EE866
@@Code080EE868:
lsl   r0,r2,0x1                 ; 080EE868
add   r0,r0,r7                  ; 080EE86A
ldrh  r1,[r0]                   ; 080EE86C
lsl   r0,r5,0x1                 ; 080EE86E
add   r0,r0,r4                  ; 080EE870
strh  r1,[r0]                   ; 080EE872
add   r0,r2,0x1                 ; 080EE874
lsl   r0,r0,0x10                ; 080EE876
lsr   r2,r0,0x10                ; 080EE878
add   r0,r5,0x1                 ; 080EE87A
lsl   r0,r0,0x10                ; 080EE87C
lsr   r5,r0,0x10                ; 080EE87E
cmp   r1,r3                     ; 080EE880
bne   @@Code080EE868            ; 080EE882
sub   r0,r5,0x1                 ; 080EE884
ldr   r1,=0x02011000            ; 080EE886
strh  r0,[r1]                   ; 080EE888
mov   r5,0x2                    ; 080EE88A
ldrh  r0,[r6,0x2C]              ; 080EE88C
cmp   r0,0x0                    ; 080EE88E
beq   @@Code080EE89A            ; 080EE890
ldrh  r0,[r6,0x2E]              ; 080EE892
cmp   r0,0x0                    ; 080EE894
bne   @@Code080EE8D8            ; 080EE896
mov   r5,0x0                    ; 080EE898
@@Code080EE89A:
lsr   r4,r5,0x1                 ; 080EE89A
mov   r7,0x0                    ; 080EE89C
strh  r4,[r6,0x10]              ; 080EE89E
ldr   r0,=Data08196628          ; 080EE8A0
lsl   r4,r4,0x10                ; 080EE8A2
lsr   r4,r4,0xF                 ; 080EE8A4
add   r0,r4,r0                  ; 080EE8A6
ldrh  r1,[r0]                   ; 080EE8A8
mov   r0,r1                     ; 080EE8AA
bl    Sub0812C3B4               ; 080EE8AC  Change music (YI)
ldr   r0,=Data081966F0          ; 080EE8B0
add   r4,r4,r0                  ; 080EE8B2
ldrh  r0,[r4]                   ; 080EE8B4
strh  r0,[r6,0x22]              ; 080EE8B6
cmp   r0,0x2                    ; 080EE8B8
bne   @@Code080EE8C6            ; 080EE8BA
mov   r0,r6                     ; 080EE8BC
add   r0,0x80                   ; 080EE8BE
strh  r7,[r0]                   ; 080EE8C0
sub   r0,0x10                   ; 080EE8C2
strh  r7,[r0]                   ; 080EE8C4
@@Code080EE8C6:
mov   r0,0x80                   ; 080EE8C6
lsl   r0,r0,0x2                 ; 080EE8C8
strh  r0,[r6,0x3A]              ; 080EE8CA
mov   r0,r6                     ; 080EE8CC
mov   r1,r5                     ; 080EE8CE
bl    Sub080EE190               ; 080EE8D0
mov   r0,0x1                    ; 080EE8D4
strh  r0,[r6,0xC]               ; 080EE8D6
@@Code080EE8D8:
pop   {r4-r7}                   ; 080EE8D8
pop   {r0}                      ; 080EE8DA
bx    r0                        ; 080EE8DC
.pool                           ; 080EE8DE

Sub080EE90C:
push  {r4,lr}                   ; 080EE90C
mov   r4,r0                     ; 080EE90E
bl    Sub08040A78               ; 080EE910
bl    Sub0804F2F8               ; 080EE914
ldrh  r0,[r4,0x1A]              ; 080EE918
sub   r0,0x1                    ; 080EE91A
strh  r0,[r4,0x1A]              ; 080EE91C
lsl   r0,r0,0x10                ; 080EE91E
cmp   r0,0x0                    ; 080EE920
bne   @@Code080EE928            ; 080EE922
bl    Sub080EA100               ; 080EE924
@@Code080EE928:
mov   r0,r4                     ; 080EE928
bl    Sub0805CFCC               ; 080EE92A
mov   r0,r4                     ; 080EE92E
bl    Sub080EA534               ; 080EE930
pop   {r4}                      ; 080EE934
pop   {r0}                      ; 080EE936
bx    r0                        ; 080EE938
.pool                           ; 080EE93A

Sub080EE93C:
push  {r4,lr}                   ; 080EE93C
mov   r4,r0                     ; 080EE93E
bl    Sub08040A78               ; 080EE940
bl    Sub0804F2F8               ; 080EE944
mov   r0,r4                     ; 080EE948
bl    Sub080EA534               ; 080EE94A
pop   {r4}                      ; 080EE94E
pop   {r0}                      ; 080EE950
bx    r0                        ; 080EE952

Sub080EE954:
push  {r4-r5,lr}                ; 080EE954
mov   r5,r0                     ; 080EE956
ldr   r0,=0x03007240            ; 080EE958  Normal gameplay IWRAM (0300220C)
ldr   r4,[r0]                   ; 080EE95A
bl    Sub08040A78               ; 080EE95C
mov   r0,0x87                   ; 080EE960
lsl   r0,r0,0x2                 ; 080EE962
add   r4,r4,r0                  ; 080EE964
ldrh  r0,[r4]                   ; 080EE966
cmp   r0,0x0                    ; 080EE968
bne   @@Code080EE976            ; 080EE96A
bl    Sub0804F2F8               ; 080EE96C
mov   r0,r5                     ; 080EE970
bl    Sub080EE7A4               ; 080EE972
@@Code080EE976:
pop   {r4-r5}                   ; 080EE976
pop   {r0}                      ; 080EE978
bx    r0                        ; 080EE97A
.pool                           ; 080EE97C

Sub080EE980:
push  {lr}                      ; 080EE980
ldr   r0,=0x03006D80            ; 080EE982
ldr   r1,[r0,0x4]               ; 080EE984
ldr   r0,=0x5FFF                ; 080EE986
cmp   r1,r0                     ; 080EE988
bgt   @@Code080EE9B4            ; 080EE98A
ldr   r2,=0x03002200            ; 080EE98C
ldr   r0,=0x47EC                ; 080EE98E
add   r1,r2,r0                  ; 080EE990
ldrh  r0,[r1]                   ; 080EE992
sub   r0,0x2                    ; 080EE994
strh  r0,[r1]                   ; 080EE996
lsl   r0,r0,0x10                ; 080EE998
cmp   r0,0x0                    ; 080EE99A
bge   @@Code080EE9D2            ; 080EE99C
mov   r0,0x0                    ; 080EE99E
b     @@Code080EE9D0            ; 080EE9A0
.pool                           ; 080EE9A2

@@Code080EE9B4:
ldr   r0,=0x7FFF                ; 080EE9B4
cmp   r1,r0                     ; 080EE9B6
ble   @@Code080EE9DA            ; 080EE9B8
ldr   r2,=0x03002200            ; 080EE9BA
ldr   r0,=0x47EC                ; 080EE9BC
add   r1,r2,r0                  ; 080EE9BE
ldrh  r0,[r1]                   ; 080EE9C0
add   r0,0x3                    ; 080EE9C2
strh  r0,[r1]                   ; 080EE9C4
lsl   r0,r0,0x10                ; 080EE9C6
lsr   r0,r0,0x10                ; 080EE9C8
cmp   r0,0x3F                   ; 080EE9CA
bls   @@Code080EE9D2            ; 080EE9CC
mov   r0,0x40                   ; 080EE9CE
@@Code080EE9D0:
strh  r0,[r1]                   ; 080EE9D0
@@Code080EE9D2:
ldrh  r1,[r1]                   ; 080EE9D2
ldr   r3,=0x47DC                ; 080EE9D4
add   r0,r2,r3                  ; 080EE9D6
strh  r1,[r0]                   ; 080EE9D8
@@Code080EE9DA:
pop   {r0}                      ; 080EE9DA
bx    r0                        ; 080EE9DC
.pool                           ; 080EE9DE

Sub080EE9F0:
push  {r4-r6,lr}                ; 080EE9F0
mov   r5,r0                     ; 080EE9F2
ldr   r1,=0x03006D80            ; 080EE9F4
ldr   r0,[r1]                   ; 080EE9F6
lsl   r0,r0,0x8                 ; 080EE9F8
lsr   r0,r0,0x10                ; 080EE9FA
mov   r4,r0                     ; 080EE9FC
ldr   r0,=0x03007240            ; 080EE9FE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EEA00
ldr   r2,=0x2A64                ; 080EEA02
add   r0,r0,r2                  ; 080EEA04
ldrh  r2,[r0]                   ; 080EEA06
mov   r3,r2                     ; 080EEA08
mov   r6,r1                     ; 080EEA0A
cmp   r4,0x8                    ; 080EEA0C
bhi   @@Code080EEA18            ; 080EEA0E
mov   r0,0x20                   ; 080EEA10
and   r2,r0                     ; 080EEA12
cmp   r2,0x0                    ; 080EEA14
bne   @@Code080EEA38            ; 080EEA16
@@Code080EEA18:
cmp   r4,0xD7                   ; 080EEA18
bls   @@Code080EEA24            ; 080EEA1A
mov   r0,0x10                   ; 080EEA1C
and   r3,r0                     ; 080EEA1E
cmp   r3,0x0                    ; 080EEA20
bne   @@Code080EEA38            ; 080EEA22
@@Code080EEA24:
mov   r1,r5                     ; 080EEA24
add   r1,0x6E                   ; 080EEA26
mov   r0,0x0                    ; 080EEA28
b     @@Code080EEA56            ; 080EEA2A
.pool                           ; 080EEA2C

@@Code080EEA38:
mov   r1,r5                     ; 080EEA38
add   r1,0x6E                   ; 080EEA3A
ldrh  r0,[r1]                   ; 080EEA3C
cmp   r0,0xF                    ; 080EEA3E
bls   @@Code080EEA54            ; 080EEA40
mov   r0,0xDE                   ; 080EEA42
lsl   r0,r0,0x1                 ; 080EEA44
add   r1,r6,r0                  ; 080EEA46
ldrh  r0,[r1]                   ; 080EEA48
add   r0,0x1                    ; 080EEA4A
strh  r0,[r1]                   ; 080EEA4C
mov   r1,r6                     ; 080EEA4E
add   r1,0x5A                   ; 080EEA50
ldrh  r0,[r1]                   ; 080EEA52
@@Code080EEA54:
add   r0,0x1                    ; 080EEA54
@@Code080EEA56:
strh  r0,[r1]                   ; 080EEA56
pop   {r4-r6}                   ; 080EEA58
pop   {r0}                      ; 080EEA5A
bx    r0                        ; 080EEA5C
.pool                           ; 080EEA5E

Sub080EEA60:
push  {r4-r6,lr}                ; 080EEA60
mov   r6,r0                     ; 080EEA62
bl    Sub08002338               ; 080EEA64
ldr   r0,=0x03007240            ; 080EEA68  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EEA6A
ldr   r1,=0x29CE                ; 080EEA6C
add   r0,r0,r1                  ; 080EEA6E
mov   r5,0x0                    ; 080EEA70
strh  r5,[r0]                   ; 080EEA72
ldr   r4,=0x03002200            ; 080EEA74
ldr   r1,=0x47D0                ; 080EEA76
add   r0,r4,r1                  ; 080EEA78
strh  r5,[r0]                   ; 080EEA7A
add   r1,0x2                    ; 080EEA7C
add   r0,r4,r1                  ; 080EEA7E
strh  r5,[r0]                   ; 080EEA80
ldr   r0,=0x03006D80            ; 080EEA82
add   r0,0xA2                   ; 080EEA84
mov   r1,0x30                   ; 080EEA86
strh  r1,[r0]                   ; 080EEA88
bl    Sub080EA5A4               ; 080EEA8A
mov   r0,r6                     ; 080EEA8E
bl    Sub080EE9F0               ; 080EEA90
bl    Sub08042FF8               ; 080EEA94
ldr   r0,=0x489C                ; 080EEA98
add   r4,r4,r0                  ; 080EEA9A
strh  r5,[r4]                   ; 080EEA9C
ldrh  r0,[r6,0x22]              ; 080EEA9E
ldr   r1,=CodePtrs081967D0      ; 080EEAA0
lsl   r0,r0,0x2                 ; 080EEAA2
add   r0,r0,r1                  ; 080EEAA4
ldr   r1,[r0]                   ; 080EEAA6
mov   r0,r6                     ; 080EEAA8
bl    Sub_bx_r1                 ; 080EEAAA  bx r1
bl    Sub080EE980               ; 080EEAAE
pop   {r4-r6}                   ; 080EEAB2
pop   {r0}                      ; 080EEAB4
bx    r0                        ; 080EEAB6
.pool                           ; 080EEAB8

Sub080EEAD4:
push  {r4-r7,lr}                ; 080EEAD4
mov   r7,r10                    ; 080EEAD6
mov   r6,r9                     ; 080EEAD8
mov   r5,r8                     ; 080EEADA
push  {r5-r7}                   ; 080EEADC
ldr   r1,=0x03007240            ; 080EEADE  Normal gameplay IWRAM (0300220C)
mov   r9,r1                     ; 080EEAE0
ldr   r4,[r1]                   ; 080EEAE2
ldr   r7,=0x03002200            ; 080EEAE4
ldr   r2,=0x47D4                ; 080EEAE6
add   r1,r7,r2                  ; 080EEAE8
mov   r3,0x0                    ; 080EEAEA
mov   r8,r3                     ; 080EEAEC
mov   r5,0x0                    ; 080EEAEE
strh  r5,[r1]                   ; 080EEAF0
ldr   r6,=0x47DC                ; 080EEAF2
add   r1,r7,r6                  ; 080EEAF4
mov   r2,0x40                   ; 080EEAF6
strh  r2,[r1]                   ; 080EEAF8
ldr   r3,=0x47E4                ; 080EEAFA
add   r1,r7,r3                  ; 080EEAFC
strh  r5,[r1]                   ; 080EEAFE
add   r6,0x10                   ; 080EEB00
add   r1,r7,r6                  ; 080EEB02
strh  r2,[r1]                   ; 080EEB04
add   r3,0x2                    ; 080EEB06
add   r1,r7,r3                  ; 080EEB08
mov   r3,0x8                    ; 080EEB0A
strh  r3,[r1]                   ; 080EEB0C
add   r6,0x2                    ; 080EEB0E
add   r1,r7,r6                  ; 080EEB10
strh  r2,[r1]                   ; 080EEB12
ldr   r2,=0x47E8                ; 080EEB14
add   r1,r7,r2                  ; 080EEB16
strh  r5,[r1]                   ; 080EEB18
add   r6,0x2                    ; 080EEB1A
add   r1,r7,r6                  ; 080EEB1C
strh  r3,[r1]                   ; 080EEB1E
ldr   r2,=0x03006D80            ; 080EEB20
mov   r1,0xB0                   ; 080EEB22
lsl   r1,r1,0x8                 ; 080EEB24
str   r1,[r2,0x4]               ; 080EEB26
mov   r1,0xC0                   ; 080EEB28
lsl   r1,r1,0x6                 ; 080EEB2A
mov   r10,r1                    ; 080EEB2C
str   r1,[r2]                   ; 080EEB2E
ldr   r1,=0x0201B800            ; 080EEB30
mov   r2,r8                     ; 080EEB32
strb  r2,[r1]                   ; 080EEB34
add   r6,0xDE                   ; 080EEB36
add   r1,r7,r6                  ; 080EEB38
strh  r5,[r1]                   ; 080EEB3A
ldr   r2,=0x4B67                ; 080EEB3C
add   r1,r7,r2                  ; 080EEB3E
mov   r6,r8                     ; 080EEB40
strb  r6,[r1]                   ; 080EEB42
strh  r3,[r0,0x2C]              ; 080EEB44
strh  r3,[r0,0x2E]              ; 080EEB46
mov   r0,0xA6                   ; 080EEB48
lsl   r0,r0,0x6                 ; 080EEB4A
add   r1,r4,r0                  ; 080EEB4C
ldr   r0,=0xFFFF                ; 080EEB4E
strh  r0,[r1]                   ; 080EEB50
ldr   r2,=0x2984                ; 080EEB52
add   r1,r4,r2                  ; 080EEB54
mov   r0,0x1                    ; 080EEB56
neg   r0,r0                     ; 080EEB58
strh  r0,[r1]                   ; 080EEB5A
ldr   r3,=0x2988                ; 080EEB5C
add   r1,r4,r3                  ; 080EEB5E
strh  r0,[r1]                   ; 080EEB60
ldr   r6,=0x2B08                ; 080EEB62
add   r1,r4,r6                  ; 080EEB64
ldr   r0,=Data081EC259          ; 080EEB66
str   r0,[r1]                   ; 080EEB68
ldr   r0,=0x2992                ; 080EEB6A
add   r1,r4,r0                  ; 080EEB6C
mov   r0,0x1                    ; 080EEB6E
strh  r0,[r1]                   ; 080EEB70
strh  r5,[r4,0x36]              ; 080EEB72
bl    Sub08035648               ; 080EEB74
mov   r1,r9                     ; 080EEB78
ldr   r0,[r1]                   ; 080EEB7A
ldr   r2,=0x29CC                ; 080EEB7C
add   r0,r0,r2                  ; 080EEB7E
ldrh  r0,[r0]                   ; 080EEB80
mov   r1,0x3                    ; 080EEB82
and   r1,r0                     ; 080EEB84
cmp   r1,0x2                    ; 080EEB86
bls   @@Code080EEB8C            ; 080EEB88
mov   r1,0x0                    ; 080EEB8A
@@Code080EEB8C:
add   r1,0x7                    ; 080EEB8C
ldr   r3,=0x4A14                ; 080EEB8E
add   r0,r7,r3                  ; 080EEB90
strb  r1,[r0]                   ; 080EEB92
ldr   r0,=0x01B7                ; 080EEB94
bl    Sub0804A23C               ; 080EEB96
mov   r6,0xDC                   ; 080EEB9A
lsl   r6,r6,0x1                 ; 080EEB9C
mov   r8,r6                     ; 080EEB9E
mov   r0,r8                     ; 080EEBA0
bl    Sub0804A23C               ; 080EEBA2
lsl   r0,r0,0x18                ; 080EEBA6
lsr   r0,r0,0x18                ; 080EEBA8
mov   r6,0xB0                   ; 080EEBAA
mul   r0,r6                     ; 080EEBAC
mov   r5,0x95                   ; 080EEBAE
lsl   r5,r5,0x2                 ; 080EEBB0
add   r0,r0,r5                  ; 080EEBB2
mov   r2,r9                     ; 080EEBB4
ldr   r1,[r2]                   ; 080EEBB6
add   r1,r1,r0                  ; 080EEBB8
mov   r3,r10                    ; 080EEBBA
str   r3,[r1]                   ; 080EEBBC
mov   r0,0xA0                   ; 080EEBBE
lsl   r0,r0,0x7                 ; 080EEBC0
str   r0,[r1,0x4]               ; 080EEBC2
mov   r0,r8                     ; 080EEBC4
bl    Sub0804A23C               ; 080EEBC6
lsl   r0,r0,0x18                ; 080EEBCA
lsr   r0,r0,0x18                ; 080EEBCC
mul   r0,r6                     ; 080EEBCE
add   r0,r0,r5                  ; 080EEBD0
mov   r2,r9                     ; 080EEBD2
ldr   r1,[r2]                   ; 080EEBD4
add   r1,r1,r0                  ; 080EEBD6
mov   r0,0xA0                   ; 080EEBD8
lsl   r0,r0,0x8                 ; 080EEBDA
str   r0,[r1]                   ; 080EEBDC
mov   r0,0x80                   ; 080EEBDE
lsl   r0,r0,0x7                 ; 080EEBE0
str   r0,[r1,0x4]               ; 080EEBE2
mov   r0,r8                     ; 080EEBE4
bl    Sub0804A23C               ; 080EEBE6
lsl   r0,r0,0x18                ; 080EEBEA
lsr   r0,r0,0x18                ; 080EEBEC
mul   r0,r6                     ; 080EEBEE
add   r0,r0,r5                  ; 080EEBF0
mov   r3,r9                     ; 080EEBF2
ldr   r1,[r3]                   ; 080EEBF4
add   r1,r1,r0                  ; 080EEBF6
mov   r0,0x80                   ; 080EEBF8
lsl   r0,r0,0x6                 ; 080EEBFA
str   r0,[r1]                   ; 080EEBFC
mov   r4,0x90                   ; 080EEBFE
lsl   r4,r4,0x8                 ; 080EEC00
str   r4,[r1,0x4]               ; 080EEC02
mov   r0,r8                     ; 080EEC04
bl    Sub0804A23C               ; 080EEC06
lsl   r0,r0,0x18                ; 080EEC0A
lsr   r0,r0,0x18                ; 080EEC0C
mul   r0,r6                     ; 080EEC0E
add   r0,r0,r5                  ; 080EEC10
mov   r2,r9                     ; 080EEC12
ldr   r1,[r2]                   ; 080EEC14
add   r1,r1,r0                  ; 080EEC16
str   r4,[r1]                   ; 080EEC18
mov   r4,0x80                   ; 080EEC1A
lsl   r4,r4,0x8                 ; 080EEC1C
str   r4,[r1,0x4]               ; 080EEC1E
mov   r0,r8                     ; 080EEC20
bl    Sub0804A23C               ; 080EEC22
lsl   r0,r0,0x18                ; 080EEC26
lsr   r0,r0,0x18                ; 080EEC28
mul   r0,r6                     ; 080EEC2A
add   r0,r0,r5                  ; 080EEC2C
mov   r3,r9                     ; 080EEC2E
ldr   r1,[r3]                   ; 080EEC30
add   r1,r1,r0                  ; 080EEC32
str   r4,[r1]                   ; 080EEC34
mov   r4,0xC0                   ; 080EEC36
lsl   r4,r4,0x8                 ; 080EEC38
str   r4,[r1,0x4]               ; 080EEC3A
mov   r0,r8                     ; 080EEC3C
bl    Sub0804A23C               ; 080EEC3E
lsl   r0,r0,0x18                ; 080EEC42
lsr   r0,r0,0x18                ; 080EEC44
mul   r0,r6                     ; 080EEC46
add   r0,r0,r5                  ; 080EEC48
mov   r6,r9                     ; 080EEC4A
ldr   r1,[r6]                   ; 080EEC4C
add   r1,r1,r0                  ; 080EEC4E
mov   r0,0xD0                   ; 080EEC50
lsl   r0,r0,0x8                 ; 080EEC52
str   r0,[r1]                   ; 080EEC54
str   r4,[r1,0x4]               ; 080EEC56
bl    Sub0804F2F8               ; 080EEC58
bl    Sub08017488               ; 080EEC5C
pop   {r3-r5}                   ; 080EEC60
mov   r8,r3                     ; 080EEC62
mov   r9,r4                     ; 080EEC64
mov   r10,r5                    ; 080EEC66
pop   {r4-r7}                   ; 080EEC68
pop   {r0}                      ; 080EEC6A
bx    r0                        ; 080EEC6C
.pool                           ; 080EEC6E

Sub080EECB8:
push  {r4-r7,lr}                ; 080EECB8
mov   r7,r10                    ; 080EECBA
mov   r6,r9                     ; 080EECBC
mov   r5,r8                     ; 080EECBE
push  {r5-r7}                   ; 080EECC0
lsl   r0,r0,0x10                ; 080EECC2
lsr   r7,r0,0x10                ; 080EECC4
lsl   r1,r1,0x10                ; 080EECC6
lsr   r1,r1,0x10                ; 080EECC8
lsl   r2,r2,0x10                ; 080EECCA
lsr   r6,r2,0x10                ; 080EECCC
lsl   r3,r3,0x10                ; 080EECCE
lsr   r5,r3,0x10                ; 080EECD0
cmp   r5,0x0                    ; 080EECD2
beq   @@Code080EED5C            ; 080EECD4
lsl   r1,r1,0x2                 ; 080EECD6
ldr   r0,=0x02011400            ; 080EECD8
add   r4,r1,r0                  ; 080EECDA
add   r0,0x4                    ; 080EECDC
add   r3,r1,r0                  ; 080EECDE
cmp   r6,0x0                    ; 080EECE0
beq   @@Code080EECEC            ; 080EECE2
sub   r0,0x2                    ; 080EECE4
add   r4,r1,r0                  ; 080EECE6
add   r0,0x4                    ; 080EECE8
add   r3,r1,r0                  ; 080EECEA
@@Code080EECEC:
ldr   r1,=Data081AF2CC          ; 080EECEC
lsl   r0,r5,0x1                 ; 080EECEE
add   r0,r0,r1                  ; 080EECF0
ldrh  r0,[r0]                   ; 080EECF2
mov   r9,r0                     ; 080EECF4
mov   r6,0x0                    ; 080EECF6
mov   r12,r5                    ; 080EECF8
ldr   r1,=Data081967DC          ; 080EECFA
mov   r10,r1                    ; 080EECFC
mov   r0,0xFF                   ; 080EECFE
mov   r8,r0                     ; 080EED00
@@Code080EED02:
lsr   r0,r6,0x8                 ; 080EED02
mov   r1,r8                     ; 080EED04
and   r0,r1                     ; 080EED06
lsl   r0,r0,0x1                 ; 080EED08
add   r0,r10                    ; 080EED0A
ldrh  r2,[r0]                   ; 080EED0C
mov   r0,r12                    ; 080EED0E
mul   r0,r2                     ; 080EED10
lsl   r0,r0,0x10                ; 080EED12
lsr   r0,r0,0x18                ; 080EED14
and   r0,r1                     ; 080EED16
mov   r1,r0                     ; 080EED18
sub   r0,r7,r1                  ; 080EED1A
lsl   r0,r0,0x10                ; 080EED1C
lsr   r2,r0,0x10                ; 080EED1E
cmp   r2,r7                     ; 080EED20
bls   @@Code080EED26            ; 080EED22
mov   r2,0x0                    ; 080EED24
@@Code080EED26:
lsl   r0,r2,0x8                 ; 080EED26
strh  r0,[r4]                   ; 080EED28
strh  r0,[r3]                   ; 080EED2A
add   r0,r7,r1                  ; 080EED2C
lsl   r0,r0,0x10                ; 080EED2E
lsr   r2,r0,0x10                ; 080EED30
cmp   r2,0xF0                   ; 080EED32
bls   @@Code080EED38            ; 080EED34
mov   r2,0xF0                   ; 080EED36
@@Code080EED38:
ldrh  r1,[r4]                   ; 080EED38
mov   r0,r2                     ; 080EED3A
orr   r0,r1                     ; 080EED3C
strh  r0,[r4]                   ; 080EED3E
ldrh  r0,[r3]                   ; 080EED40
orr   r2,r0                     ; 080EED42
strh  r2,[r3]                   ; 080EED44
sub   r4,0x4                    ; 080EED46
add   r3,0x4                    ; 080EED48
mov   r1,r9                     ; 080EED4A
add   r0,r6,r1                  ; 080EED4C
lsl   r0,r0,0x10                ; 080EED4E
lsr   r6,r0,0x10                ; 080EED50
sub   r0,r5,0x1                 ; 080EED52
lsl   r0,r0,0x10                ; 080EED54
lsr   r5,r0,0x10                ; 080EED56
cmp   r5,0x0                    ; 080EED58
bne   @@Code080EED02            ; 080EED5A
@@Code080EED5C:
pop   {r3-r5}                   ; 080EED5C
mov   r8,r3                     ; 080EED5E
mov   r9,r4                     ; 080EED60
mov   r10,r5                    ; 080EED62
pop   {r4-r7}                   ; 080EED64
pop   {r0}                      ; 080EED66
bx    r0                        ; 080EED68
.pool                           ; 080EED6A

Sub080EED78:
push  {r4-r6,lr}                ; 080EED78
mov   r2,r0                     ; 080EED7A
mov   r4,r2                     ; 080EED7C
add   r4,0x50                   ; 080EED7E
mov   r0,0x0                    ; 080EED80
strh  r0,[r4]                   ; 080EED82
mov   r0,r2                     ; 080EED84
add   r0,0x52                   ; 080EED86
ldrh  r1,[r0]                   ; 080EED88
mov   r5,r2                     ; 080EED8A
add   r5,0x54                   ; 080EED8C
ldr   r0,=Data081969DC          ; 080EED8E
lsl   r3,r1,0x1                 ; 080EED90
add   r0,r3,r0                  ; 080EED92
ldrh  r1,[r5]                   ; 080EED94
ldrh  r0,[r0]                   ; 080EED96
cmp   r1,r0                     ; 080EED98
beq   @@Code080EEDAC            ; 080EED9A
mov   r0,0x1                    ; 080EED9C
strh  r0,[r4]                   ; 080EED9E
ldr   r0,=Data081969E0          ; 080EEDA0
add   r0,r3,r0                  ; 080EEDA2
ldrh  r0,[r0]                   ; 080EEDA4
ldrh  r1,[r5]                   ; 080EEDA6
add   r0,r0,r1                  ; 080EEDA8
strh  r0,[r5]                   ; 080EEDAA
@@Code080EEDAC:
mov   r6,r2                     ; 080EEDAC
add   r6,0x56                   ; 080EEDAE
ldrh  r0,[r6]                   ; 080EEDB0
mov   r4,r2                     ; 080EEDB2
add   r4,0x58                   ; 080EEDB4
ldrh  r1,[r4]                   ; 080EEDB6
sub   r1,0x8                    ; 080EEDB8
lsl   r1,r1,0x10                ; 080EEDBA
lsr   r1,r1,0x10                ; 080EEDBC
ldrh  r3,[r5]                   ; 080EEDBE
mov   r2,0x0                    ; 080EEDC0
bl    Sub080EECB8               ; 080EEDC2
ldrh  r0,[r6]                   ; 080EEDC6
add   r0,0xD0                   ; 080EEDC8
lsl   r0,r0,0x10                ; 080EEDCA
lsr   r0,r0,0x10                ; 080EEDCC
ldrh  r1,[r4]                   ; 080EEDCE
sub   r1,0x8                    ; 080EEDD0
lsl   r1,r1,0x10                ; 080EEDD2
lsr   r1,r1,0x10                ; 080EEDD4
ldrh  r3,[r5]                   ; 080EEDD6
mov   r2,0x1                    ; 080EEDD8
bl    Sub080EECB8               ; 080EEDDA
ldr   r1,=0x03002200            ; 080EEDDE
ldr   r0,=0x02011400            ; 080EEDE0
ldrh  r2,[r0]                   ; 080EEDE2
ldr   r3,=0x488E                ; 080EEDE4
add   r0,r1,r3                  ; 080EEDE6
strh  r2,[r0]                   ; 080EEDE8
ldr   r0,=0x02011402            ; 080EEDEA
ldrh  r0,[r0]                   ; 080EEDEC
ldr   r2,=0x4892                ; 080EEDEE
add   r1,r1,r2                  ; 080EEDF0
strh  r0,[r1]                   ; 080EEDF2
pop   {r4-r6}                   ; 080EEDF4
pop   {r0}                      ; 080EEDF6
bx    r0                        ; 080EEDF8
.pool                           ; 080EEDFA

Sub080EEE18:
push  {lr}                      ; 080EEE18
ldr   r0,=0x04000006            ; 080EEE1A
ldrh  r0,[r0]                   ; 080EEE1C
cmp   r0,0x9F                   ; 080EEE1E
bhi   @@Code080EEE3A            ; 080EEE20
lsl   r1,r0,0x11                ; 080EEE22
ldr   r2,=0x04000040            ; 080EEE24
lsr   r1,r1,0xF                 ; 080EEE26
ldr   r3,=0x02011400            ; 080EEE28
add   r0,r1,r3                  ; 080EEE2A
ldrh  r0,[r0]                   ; 080EEE2C
strh  r0,[r2]                   ; 080EEE2E
add   r2,0x2                    ; 080EEE30
ldr   r0,=0x02011402            ; 080EEE32
add   r1,r1,r0                  ; 080EEE34
ldrh  r0,[r1]                   ; 080EEE36
strh  r0,[r2]                   ; 080EEE38
@@Code080EEE3A:
pop   {r0}                      ; 080EEE3A
bx    r0                        ; 080EEE3C
.pool                           ; 080EEE3E

Sub080EEE50:
push  {r4-r5,lr}                ; 080EEE50
mov   r5,r0                     ; 080EEE52
mov   r0,0x22                   ; 080EEE54
mov   r1,0x4                    ; 080EEE56
bl    Sub0804A2EC               ; 080EEE58
ldr   r0,=0x03007240            ; 080EEE5C  Normal gameplay IWRAM (0300220C)
ldr   r4,[r0]                   ; 080EEE5E
ldr   r0,=0x0514                ; 080EEE60
add   r3,r4,r0                  ; 080EEE62
str   r3,[r5,0x4]               ; 080EEE64
ldr   r2,=0x03006D80            ; 080EEE66
ldr   r0,[r2]                   ; 080EEE68
lsl   r0,r0,0x8                 ; 080EEE6A
ldr   r1,=Data081969E4          ; 080EEE6C
lsr   r0,r0,0x10                ; 080EEE6E
ldrh  r1,[r1]                   ; 080EEE70
add   r0,r0,r1                  ; 080EEE72
lsl   r0,r0,0x10                ; 080EEE74
asr   r0,r0,0x8                 ; 080EEE76
str   r0,[r3]                   ; 080EEE78
ldr   r0,[r2,0x4]               ; 080EEE7A
lsl   r0,r0,0x8                 ; 080EEE7C
ldr   r1,=Data081969F6          ; 080EEE7E
lsr   r0,r0,0x10                ; 080EEE80
ldrh  r1,[r1]                   ; 080EEE82
add   r0,r0,r1                  ; 080EEE84
lsl   r0,r0,0x10                ; 080EEE86
asr   r0,r0,0x8                 ; 080EEE88
str   r0,[r3,0x4]               ; 080EEE8A
mov   r2,0x0                    ; 080EEE8C
str   r2,[r3,0x8]               ; 080EEE8E
str   r2,[r3,0xC]               ; 080EEE90
mov   r0,0xB5                   ; 080EEE92
lsl   r0,r0,0x3                 ; 080EEE94
add   r1,r4,r0                  ; 080EEE96
mov   r0,0x1                    ; 080EEE98
strb  r0,[r1]                   ; 080EEE9A
mov   r0,0x20                   ; 080EEE9C
strh  r0,[r3,0x2C]              ; 080EEE9E
ldr   r0,=0x058A                ; 080EEEA0
add   r4,r4,r0                  ; 080EEEA2
strh  r2,[r4]                   ; 080EEEA4
pop   {r4-r5}                   ; 080EEEA6
pop   {r0}                      ; 080EEEA8
bx    r0                        ; 080EEEAA
.pool                           ; 080EEEAC

Sub080EEEC4:
push  {r4-r6,lr}                ; 080EEEC4
lsl   r0,r0,0x10                ; 080EEEC6
lsr   r6,r0,0x10                ; 080EEEC8
mov   r2,0x0                    ; 080EEECA
ldr   r5,=0x03002200            ; 080EEECC
ldr   r0,=0x408A                ; 080EEECE
add   r1,r5,r0                  ; 080EEED0
mov   r4,r1                     ; 080EEED2
@@Code080EEED4:
add   r0,r2,r1                  ; 080EEED4
ldrb  r0,[r0]                   ; 080EEED6
cmp   r0,0x0                    ; 080EEED8
beq   @@Code080EEF18            ; 080EEEDA
add   r0,r2,0x1                 ; 080EEEDC
lsl   r0,r0,0x10                ; 080EEEDE
lsr   r2,r0,0x10                ; 080EEEE0
cmp   r2,0x1B                   ; 080EEEE2
bne   @@Code080EEED4            ; 080EEEE4
mov   r2,0x0                    ; 080EEEE6
mov   r3,0x1                    ; 080EEEE8
ldr   r0,=0x40A4                ; 080EEEEA
add   r5,r5,r0                  ; 080EEEEC
@@Code080EEEEE:
add   r1,r2,r4                  ; 080EEEEE
add   r0,r3,r4                  ; 080EEEF0
ldrb  r0,[r0]                   ; 080EEEF2
strb  r0,[r1]                   ; 080EEEF4
add   r0,r2,0x1                 ; 080EEEF6
lsl   r0,r0,0x10                ; 080EEEF8
lsr   r2,r0,0x10                ; 080EEEFA
add   r0,r3,0x1                 ; 080EEEFC
lsl   r0,r0,0x10                ; 080EEEFE
lsr   r3,r0,0x10                ; 080EEF00
cmp   r2,0x1A                   ; 080EEF02
bne   @@Code080EEEEE            ; 080EEF04
strb  r6,[r5]                   ; 080EEF06
b     @@Code080EEF1C            ; 080EEF08
.pool                           ; 080EEF0A

@@Code080EEF18:
add   r0,r2,r1                  ; 080EEF18
strb  r6,[r0]                   ; 080EEF1A
@@Code080EEF1C:
pop   {r4-r6}                   ; 080EEF1C
pop   {r0}                      ; 080EEF1E
bx    r0                        ; 080EEF20
.pool                           ; 080EEF22

Sub080EEF24:
push  {lr}                      ; 080EEF24
bl    Sub08035648               ; 080EEF26
ldr   r0,=0x03007240            ; 080EEF2A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EEF2C
ldr   r1,=0x29CC                ; 080EEF2E
add   r0,r0,r1                  ; 080EEF30
ldrb  r1,[r0]                   ; 080EEF32
lsl   r0,r1,0x3                 ; 080EEF34
add   r0,r0,r1                  ; 080EEF36
lsr   r0,r0,0x8                 ; 080EEF38
pop   {r1}                      ; 080EEF3A
bx    r1                        ; 080EEF3C
.pool                           ; 080EEF3E

Sub080EEF48:
push  {r4-r7,lr}                ; 080EEF48
mov   r7,r10                    ; 080EEF4A
mov   r6,r9                     ; 080EEF4C
mov   r5,r8                     ; 080EEF4E
push  {r5-r7}                   ; 080EEF50
mov   r7,r0                     ; 080EEF52
bl    Sub080EEF24               ; 080EEF54
lsl   r0,r0,0x18                ; 080EEF58
lsr   r6,r0,0x18                ; 080EEF5A
@@Code080EEF5C:
bl    Sub080EEF24               ; 080EEF5C
lsl   r0,r0,0x18                ; 080EEF60
lsr   r2,r0,0x18                ; 080EEF62
cmp   r2,r6                     ; 080EEF64
beq   @@Code080EEF5C            ; 080EEF66
mov   r3,r2                     ; 080EEF68
mov   r5,0x0                    ; 080EEF6A
mov   r4,0x0                    ; 080EEF6C
mov   r0,0xC8                   ; 080EEF6E
add   r0,r0,r7                  ; 080EEF70
mov   r8,r0                     ; 080EEF72
add   r7,0xD5                   ; 080EEF74
mov   r9,r7                     ; 080EEF76
ldr   r1,=Data08196A4C          ; 080EEF78
mov   r12,r1                    ; 080EEF7A
ldr   r2,=0x0300702C            ; 080EEF7C  Sprite RAM structs (03002460)
mov   r10,r2                    ; 080EEF7E
@@Code080EEF80:
cmp   r5,r6                     ; 080EEF80
beq   @@Code080EEFAA            ; 080EEF82
cmp   r5,r3                     ; 080EEF84
beq   @@Code080EEFAA            ; 080EEF86
mov   r7,r12                    ; 080EEF88
add   r0,r5,r7                  ; 080EEF8A
ldrb  r2,[r0]                   ; 080EEF8C
mov   r0,r10                    ; 080EEF8E
ldr   r1,[r0]                   ; 080EEF90
lsl   r0,r4,0x1                 ; 080EEF92
ldr   r7,=0x153E                ; 080EEF94
add   r1,r1,r7                  ; 080EEF96
add   r0,r1,r0                  ; 080EEF98
strh  r2,[r0]                   ; 080EEF9A
add   r0,r4,0x1                 ; 080EEF9C
lsl   r0,r0,0x1                 ; 080EEF9E
add   r1,r1,r0                  ; 080EEFA0
strh  r2,[r1]                   ; 080EEFA2
add   r0,r4,0x2                 ; 080EEFA4
lsl   r0,r0,0x10                ; 080EEFA6
lsr   r4,r0,0x10                ; 080EEFA8
@@Code080EEFAA:
add   r0,r5,0x1                 ; 080EEFAA
lsl   r0,r0,0x10                ; 080EEFAC
lsr   r5,r0,0x10                ; 080EEFAE
cmp   r4,0xE                    ; 080EEFB0
bne   @@Code080EEF80            ; 080EEFB2
mov   r5,0x0                    ; 080EEFB4
mov   r6,0xE                    ; 080EEFB6
@@Code080EEFB8:
bl    Sub08035648               ; 080EEFB8
ldr   r0,=0x03007240            ; 080EEFBC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EEFBE
ldr   r1,=0x29CC                ; 080EEFC0
add   r0,r0,r1                  ; 080EEFC2
ldrb  r0,[r0]                   ; 080EEFC4
mul   r0,r6                     ; 080EEFC6
lsl   r0,r0,0x10                ; 080EEFC8
lsr   r4,r0,0x18                ; 080EEFCA
mov   r0,0xF                    ; 080EEFCC
and   r4,r0                     ; 080EEFCE
mov   r7,r8                     ; 080EEFD0
add   r2,r7,r5                  ; 080EEFD2
ldr   r3,=0x0300702C            ; 080EEFD4  Sprite RAM structs (03002460)
ldr   r0,[r3]                   ; 080EEFD6
lsl   r1,r4,0x1                 ; 080EEFD8
ldr   r7,=0x153E                ; 080EEFDA
add   r0,r0,r7                  ; 080EEFDC
add   r0,r0,r1                  ; 080EEFDE
ldrh  r0,[r0]                   ; 080EEFE0
strb  r0,[r2]                   ; 080EEFE2
add   r0,r5,0x1                 ; 080EEFE4
lsl   r0,r0,0x10                ; 080EEFE6
lsr   r5,r0,0x10                ; 080EEFE8
cmp   r5,0xD                    ; 080EEFEA
beq   @@Code080EF02C            ; 080EEFEC
sub   r0,r6,0x1                 ; 080EEFEE
lsl   r0,r0,0x10                ; 080EEFF0
lsr   r6,r0,0x10                ; 080EEFF2
cmp   r4,r6                     ; 080EEFF4
beq   @@Code080EEFB8            ; 080EEFF6
mov   r12,r3                    ; 080EEFF8
@@Code080EEFFA:
mov   r1,r12                    ; 080EEFFA
ldr   r0,[r1]                   ; 080EEFFC
lsl   r3,r4,0x1                 ; 080EEFFE
add   r0,r0,r7                  ; 080EF000
add   r3,r0,r3                  ; 080EF002
add   r2,r4,0x1                 ; 080EF004
lsl   r1,r2,0x1                 ; 080EF006
add   r0,r0,r1                  ; 080EF008
ldrh  r0,[r0]                   ; 080EF00A
strh  r0,[r3]                   ; 080EF00C
lsl   r2,r2,0x10                ; 080EF00E
lsr   r4,r2,0x10                ; 080EF010
cmp   r4,r6                     ; 080EF012
bne   @@Code080EEFFA            ; 080EF014
b     @@Code080EEFB8            ; 080EF016
.pool                           ; 080EF018

@@Code080EF02C:
mov   r0,0x1                    ; 080EF02C
eor   r4,r0                     ; 080EF02E
ldr   r0,=0x0300702C            ; 080EF030  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080EF032
lsl   r1,r4,0x1                 ; 080EF034
ldr   r2,=0x153E                ; 080EF036
add   r0,r0,r2                  ; 080EF038
add   r0,r0,r1                  ; 080EF03A
ldrh  r0,[r0]                   ; 080EF03C
mov   r7,r9                     ; 080EF03E
strb  r0,[r7]                   ; 080EF040
pop   {r3-r5}                   ; 080EF042
mov   r8,r3                     ; 080EF044
mov   r9,r4                     ; 080EF046
mov   r10,r5                    ; 080EF048
pop   {r4-r7}                   ; 080EF04A
pop   {r0}                      ; 080EF04C
bx    r0                        ; 080EF04E
.pool                           ; 080EF050

Sub080EF058:
push  {r4-r7,lr}                ; 080EF058
mov   r7,r9                     ; 080EF05A
mov   r6,r8                     ; 080EF05C
push  {r6-r7}                   ; 080EF05E
mov   r8,r0                     ; 080EF060
lsl   r1,r1,0x10                ; 080EF062
lsr   r4,r1,0x10                ; 080EF064
lsl   r2,r2,0x18                ; 080EF066
lsr   r2,r2,0x18                ; 080EF068
mov   r9,r2                     ; 080EF06A
@@Code080EF06C:
bl    Sub08035648               ; 080EF06C
add   r0,r4,0x1                 ; 080EF070
lsl   r0,r0,0x10                ; 080EF072
lsr   r1,r0,0x10                ; 080EF074
ldr   r0,=0x03007240            ; 080EF076  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080EF078
ldr   r2,=0x29CC                ; 080EF07A
add   r0,r0,r2                  ; 080EF07C
ldrb  r0,[r0]                   ; 080EF07E
mul   r0,r1                     ; 080EF080
lsl   r0,r0,0x10                ; 080EF082
lsr   r2,r0,0x18                ; 080EF084
ldr   r0,=0x0300702C            ; 080EF086  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080EF088
lsl   r1,r2,0x1                 ; 080EF08A
ldr   r3,=0x153E                ; 080EF08C
add   r0,r0,r3                  ; 080EF08E
add   r0,r0,r1                  ; 080EF090
ldrh  r1,[r0]                   ; 080EF092
mov   r0,r9                     ; 080EF094
cmp   r0,0x1                    ; 080EF096
bne   @@Code080EF0B0            ; 080EF098
mov   r0,r8                     ; 080EF09A
add   r0,0x8E                   ; 080EF09C
b     @@Code080EF0B4            ; 080EF09E
.pool                           ; 080EF0A0

@@Code080EF0B0:
mov   r0,r8                     ; 080EF0B0
add   r0,0x9B                   ; 080EF0B2
@@Code080EF0B4:
add   r0,r0,r4                  ; 080EF0B4
strb  r1,[r0]                   ; 080EF0B6
sub   r5,r4,0x1                 ; 080EF0B8
cmp   r4,r2                     ; 080EF0BA
beq   @@Code080EF0DC            ; 080EF0BC
ldr   r7,=0x0300702C            ; 080EF0BE  Sprite RAM structs (03002460)
ldr   r6,=0x153E                ; 080EF0C0
@@Code080EF0C2:
ldr   r0,[r7]                   ; 080EF0C2
lsl   r3,r2,0x1                 ; 080EF0C4
add   r0,r0,r6                  ; 080EF0C6
add   r3,r0,r3                  ; 080EF0C8
add   r2,0x1                    ; 080EF0CA
lsl   r1,r2,0x1                 ; 080EF0CC
add   r0,r0,r1                  ; 080EF0CE
ldrh  r0,[r0]                   ; 080EF0D0
strh  r0,[r3]                   ; 080EF0D2
lsl   r2,r2,0x10                ; 080EF0D4
lsr   r2,r2,0x10                ; 080EF0D6
cmp   r4,r2                     ; 080EF0D8
bne   @@Code080EF0C2            ; 080EF0DA
@@Code080EF0DC:
lsl   r0,r5,0x10                ; 080EF0DC
lsr   r4,r0,0x10                ; 080EF0DE
cmp   r4,0x0                    ; 080EF0E0
bne   @@Code080EF06C            ; 080EF0E2
ldr   r0,=0x0300702C            ; 080EF0E4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080EF0E6
ldr   r1,=0x153E                ; 080EF0E8
add   r0,r0,r1                  ; 080EF0EA
ldrh  r1,[r0]                   ; 080EF0EC
mov   r2,r9                     ; 080EF0EE
cmp   r2,0x1                    ; 080EF0F0
bne   @@Code080EF104            ; 080EF0F2
mov   r0,r8                     ; 080EF0F4
add   r0,0x8E                   ; 080EF0F6
b     @@Code080EF108            ; 080EF0F8
.pool                           ; 080EF0FA

@@Code080EF104:
mov   r0,r8                     ; 080EF104
add   r0,0x9B                   ; 080EF106
@@Code080EF108:
strb  r1,[r0]                   ; 080EF108
pop   {r3-r4}                   ; 080EF10A
mov   r8,r3                     ; 080EF10C
mov   r9,r4                     ; 080EF10E
pop   {r4-r7}                   ; 080EF110
pop   {r0}                      ; 080EF112
bx    r0                        ; 080EF114
.pool                           ; 080EF116

Sub080EF118:
push  {r4-r7,lr}                ; 080EF118
mov   r7,r10                    ; 080EF11A
mov   r6,r9                     ; 080EF11C
mov   r5,r8                     ; 080EF11E
push  {r5-r7}                   ; 080EF120
ldr   r1,=0x030069D0            ; 080EF122
ldrh  r4,[r1]                   ; 080EF124
lsr   r4,r4,0x2                 ; 080EF126
ldr   r3,=0x030021B0            ; 080EF128
lsl   r1,r4,0x3                 ; 080EF12A
ldr   r2,=0x03005A00            ; 080EF12C
add   r1,r1,r2                  ; 080EF12E
str   r1,[r3]                   ; 080EF130
ldrb  r2,[r1,0x3]               ; 080EF132
mov   r5,0x3F                   ; 080EF134
mov   r0,r5                     ; 080EF136
and   r0,r2                     ; 080EF138
mov   r7,0x80                   ; 080EF13A
orr   r0,r7                     ; 080EF13C
strb  r0,[r1,0x3]               ; 080EF13E
ldr   r2,[r3]                   ; 080EF140
ldrb  r1,[r2,0x1]               ; 080EF142
mov   r0,r5                     ; 080EF144
and   r0,r1                     ; 080EF146
orr   r0,r7                     ; 080EF148
strb  r0,[r2,0x1]               ; 080EF14A
ldr   r1,[r3]                   ; 080EF14C
ldrh  r2,[r1,0x4]               ; 080EF14E
ldr   r0,=0xFFFFFC00            ; 080EF150
mov   r10,r0                    ; 080EF152
and   r0,r2                     ; 080EF154
mov   r2,0x1D                   ; 080EF156
orr   r0,r2                     ; 080EF158
strh  r0,[r1,0x4]               ; 080EF15A
ldrb  r2,[r1,0x1]               ; 080EF15C
mov   r0,0x21                   ; 080EF15E
neg   r0,r0                     ; 080EF160
mov   r12,r0                    ; 080EF162
and   r0,r2                     ; 080EF164
strb  r0,[r1,0x1]               ; 080EF166
ldr   r2,[r3]                   ; 080EF168
ldrb  r1,[r2,0x5]               ; 080EF16A
mov   r0,0xF                    ; 080EF16C
mov   r8,r0                     ; 080EF16E
and   r0,r1                     ; 080EF170
mov   r1,0x70                   ; 080EF172
orr   r0,r1                     ; 080EF174
strb  r0,[r2,0x5]               ; 080EF176
ldr   r1,[r3]                   ; 080EF178
ldrh  r2,[r1,0x2]               ; 080EF17A
ldr   r6,=0xFFFFFE00            ; 080EF17C
mov   r0,r6                     ; 080EF17E
and   r0,r2                     ; 080EF180
strh  r0,[r1,0x2]               ; 080EF182
mov   r2,0x70                   ; 080EF184
neg   r2,r2                     ; 080EF186
strb  r2,[r1]                   ; 080EF188
ldr   r2,[r3]                   ; 080EF18A
ldrb  r1,[r2,0x5]               ; 080EF18C
mov   r0,0xD                    ; 080EF18E
neg   r0,r0                     ; 080EF190
mov   r9,r0                     ; 080EF192
and   r0,r1                     ; 080EF194
mov   r1,0x4                    ; 080EF196
orr   r0,r1                     ; 080EF198
strb  r0,[r2,0x5]               ; 080EF19A
add   r4,0x1                    ; 080EF19C
lsl   r1,r4,0x3                 ; 080EF19E
ldr   r2,=0x03005A00            ; 080EF1A0
add   r1,r1,r2                  ; 080EF1A2
str   r1,[r3]                   ; 080EF1A4
ldrb  r2,[r1,0x3]               ; 080EF1A6
mov   r0,r5                     ; 080EF1A8
and   r0,r2                     ; 080EF1AA
orr   r0,r7                     ; 080EF1AC
strb  r0,[r1,0x3]               ; 080EF1AE
ldr   r2,[r3]                   ; 080EF1B0
ldrb  r1,[r2,0x1]               ; 080EF1B2
mov   r0,r5                     ; 080EF1B4
and   r0,r1                     ; 080EF1B6
orr   r0,r7                     ; 080EF1B8
strb  r0,[r2,0x1]               ; 080EF1BA
ldr   r1,[r3]                   ; 080EF1BC
ldrh  r2,[r1,0x4]               ; 080EF1BE
mov   r0,r10                    ; 080EF1C0
and   r0,r2                     ; 080EF1C2
mov   r2,0x1D                   ; 080EF1C4
orr   r0,r2                     ; 080EF1C6
strh  r0,[r1,0x4]               ; 080EF1C8
ldrb  r2,[r1,0x1]               ; 080EF1CA
mov   r0,r12                    ; 080EF1CC
and   r0,r2                     ; 080EF1CE
strb  r0,[r1,0x1]               ; 080EF1D0
ldr   r2,[r3]                   ; 080EF1D2
ldrb  r1,[r2,0x5]               ; 080EF1D4
mov   r0,r8                     ; 080EF1D6
and   r0,r1                     ; 080EF1D8
mov   r1,0x70                   ; 080EF1DA
orr   r0,r1                     ; 080EF1DC
strb  r0,[r2,0x5]               ; 080EF1DE
ldr   r2,[r3]                   ; 080EF1E0
ldrh  r1,[r2,0x2]               ; 080EF1E2
mov   r0,r6                     ; 080EF1E4
and   r0,r1                     ; 080EF1E6
mov   r1,0x10                   ; 080EF1E8
orr   r0,r1                     ; 080EF1EA
strh  r0,[r2,0x2]               ; 080EF1EC
mov   r0,0x70                   ; 080EF1EE
neg   r0,r0                     ; 080EF1F0
strb  r0,[r2]                   ; 080EF1F2
ldr   r1,[r3]                   ; 080EF1F4
ldrb  r0,[r1,0x3]               ; 080EF1F6
mov   r2,0x10                   ; 080EF1F8
orr   r0,r2                     ; 080EF1FA
strb  r0,[r1,0x3]               ; 080EF1FC
ldr   r2,[r3]                   ; 080EF1FE
ldrb  r1,[r2,0x5]               ; 080EF200
mov   r0,r9                     ; 080EF202
and   r0,r1                     ; 080EF204
mov   r1,0x4                    ; 080EF206
orr   r0,r1                     ; 080EF208
strb  r0,[r2,0x5]               ; 080EF20A
add   r4,0x1                    ; 080EF20C
lsl   r1,r4,0x3                 ; 080EF20E
ldr   r2,=0x03005A00            ; 080EF210
add   r1,r1,r2                  ; 080EF212
str   r1,[r3]                   ; 080EF214
ldrb  r2,[r1,0x3]               ; 080EF216
mov   r0,r5                     ; 080EF218
and   r0,r2                     ; 080EF21A
orr   r0,r7                     ; 080EF21C
strb  r0,[r1,0x3]               ; 080EF21E
ldr   r2,[r3]                   ; 080EF220
ldrb  r1,[r2,0x1]               ; 080EF222
mov   r0,r5                     ; 080EF224
and   r0,r1                     ; 080EF226
orr   r0,r7                     ; 080EF228
strb  r0,[r2,0x1]               ; 080EF22A
ldr   r1,[r3]                   ; 080EF22C
ldrh  r2,[r1,0x4]               ; 080EF22E
mov   r0,r10                    ; 080EF230
and   r0,r2                     ; 080EF232
mov   r2,0x1D                   ; 080EF234
orr   r0,r2                     ; 080EF236
strh  r0,[r1,0x4]               ; 080EF238
ldrb  r2,[r1,0x1]               ; 080EF23A
mov   r0,r12                    ; 080EF23C
and   r0,r2                     ; 080EF23E
strb  r0,[r1,0x1]               ; 080EF240
ldr   r2,[r3]                   ; 080EF242
ldrb  r1,[r2,0x5]               ; 080EF244
mov   r0,r8                     ; 080EF246
and   r0,r1                     ; 080EF248
mov   r1,0x70                   ; 080EF24A
orr   r0,r1                     ; 080EF24C
strb  r0,[r2,0x5]               ; 080EF24E
ldr   r2,[r3]                   ; 080EF250
ldrh  r1,[r2,0x2]               ; 080EF252
mov   r0,r6                     ; 080EF254
and   r0,r1                     ; 080EF256
mov   r1,0xD0                   ; 080EF258
orr   r0,r1                     ; 080EF25A
strh  r0,[r2,0x2]               ; 080EF25C
mov   r0,0x70                   ; 080EF25E
neg   r0,r0                     ; 080EF260
strb  r0,[r2]                   ; 080EF262
ldr   r2,[r3]                   ; 080EF264
ldrb  r1,[r2,0x5]               ; 080EF266
mov   r0,r9                     ; 080EF268
and   r0,r1                     ; 080EF26A
mov   r1,0x4                    ; 080EF26C
orr   r0,r1                     ; 080EF26E
strb  r0,[r2,0x5]               ; 080EF270
add   r4,0x1                    ; 080EF272
lsl   r4,r4,0x10                ; 080EF274
lsr   r4,r4,0x10                ; 080EF276
lsl   r1,r4,0x3                 ; 080EF278
ldr   r2,=0x03005A00            ; 080EF27A
add   r1,r1,r2                  ; 080EF27C
str   r1,[r3]                   ; 080EF27E
ldrb  r2,[r1,0x3]               ; 080EF280
mov   r0,r5                     ; 080EF282
and   r0,r2                     ; 080EF284
orr   r0,r7                     ; 080EF286
strb  r0,[r1,0x3]               ; 080EF288
ldr   r1,[r3]                   ; 080EF28A
ldrb  r0,[r1,0x1]               ; 080EF28C
and   r5,r0                     ; 080EF28E
orr   r5,r7                     ; 080EF290
strb  r5,[r1,0x1]               ; 080EF292
ldr   r0,[r3]                   ; 080EF294
ldrh  r1,[r0,0x4]               ; 080EF296
mov   r2,r10                    ; 080EF298
and   r2,r1                     ; 080EF29A
mov   r1,0x1D                   ; 080EF29C
orr   r2,r1                     ; 080EF29E
strh  r2,[r0,0x4]               ; 080EF2A0
ldrb  r1,[r0,0x1]               ; 080EF2A2
mov   r2,r12                    ; 080EF2A4
and   r2,r1                     ; 080EF2A6
strb  r2,[r0,0x1]               ; 080EF2A8
ldr   r1,[r3]                   ; 080EF2AA
ldrb  r0,[r1,0x5]               ; 080EF2AC
mov   r2,r8                     ; 080EF2AE
and   r2,r0                     ; 080EF2B0
mov   r0,0x70                   ; 080EF2B2
orr   r2,r0                     ; 080EF2B4
strb  r2,[r1,0x5]               ; 080EF2B6
ldr   r1,[r3]                   ; 080EF2B8
ldrh  r0,[r1,0x2]               ; 080EF2BA
and   r6,r0                     ; 080EF2BC
mov   r0,0xE0                   ; 080EF2BE
orr   r6,r0                     ; 080EF2C0
strh  r6,[r1,0x2]               ; 080EF2C2
mov   r2,0x70                   ; 080EF2C4
neg   r2,r2                     ; 080EF2C6
strb  r2,[r1]                   ; 080EF2C8
ldr   r1,[r3]                   ; 080EF2CA
ldrb  r0,[r1,0x3]               ; 080EF2CC
mov   r2,0x10                   ; 080EF2CE
orr   r0,r2                     ; 080EF2D0
strb  r0,[r1,0x3]               ; 080EF2D2
ldr   r1,[r3]                   ; 080EF2D4
ldrb  r0,[r1,0x5]               ; 080EF2D6
mov   r2,r9                     ; 080EF2D8
and   r2,r0                     ; 080EF2DA
mov   r0,0x4                    ; 080EF2DC
orr   r2,r0                     ; 080EF2DE
strb  r2,[r1,0x5]               ; 080EF2E0
add   r4,0x1                    ; 080EF2E2
lsl   r4,r4,0x2                 ; 080EF2E4
ldr   r1,=0x030069D0            ; 080EF2E6
strh  r4,[r1]                   ; 080EF2E8
pop   {r3-r5}                   ; 080EF2EA
mov   r8,r3                     ; 080EF2EC
mov   r9,r4                     ; 080EF2EE
mov   r10,r5                    ; 080EF2F0
pop   {r4-r7}                   ; 080EF2F2
pop   {r0}                      ; 080EF2F4
bx    r0                        ; 080EF2F6
.pool                           ; 080EF2F8

Sub080EF30C:
push  {r4-r7,lr}                ; 080EF30C
mov   r4,r0                     ; 080EF30E
ldr   r0,=0x03002200            ; 080EF310
ldr   r2,=0x4901                ; 080EF312
add   r1,r0,r2                  ; 080EF314
ldrb  r1,[r1]                   ; 080EF316
mov   r3,0x7                    ; 080EF318
and   r3,r1                     ; 080EF31A
mov   r7,r0                     ; 080EF31C
cmp   r3,0x0                    ; 080EF31E
bne   @@Code080EF3A0            ; 080EF320
ldrh  r0,[r4,0x14]              ; 080EF322
add   r0,0x1                    ; 080EF324
strh  r0,[r4,0x14]              ; 080EF326
lsl   r0,r0,0x11                ; 080EF328
lsr   r2,r0,0x10                ; 080EF32A
cmp   r2,0x12                   ; 080EF32C
bne   @@Code080EF334            ; 080EF32E
strh  r3,[r4,0x14]              ; 080EF330
mov   r2,0x0                    ; 080EF332
@@Code080EF334:
mov   r3,0x10                   ; 080EF334
ldr   r6,=Data08196A80          ; 080EF336
ldr   r5,=0x02010426            ; 080EF338
@@Code080EF33A:
lsr   r1,r3,0x1                 ; 080EF33A
lsl   r1,r1,0x1                 ; 080EF33C
add   r1,r1,r5                  ; 080EF33E
lsr   r0,r2,0x1                 ; 080EF340
lsl   r0,r0,0x1                 ; 080EF342
add   r0,r0,r6                  ; 080EF344
ldrh  r0,[r0]                   ; 080EF346
strh  r0,[r1]                   ; 080EF348
add   r0,r2,0x2                 ; 080EF34A
lsl   r0,r0,0x10                ; 080EF34C
lsr   r2,r0,0x10                ; 080EF34E
cmp   r2,0x12                   ; 080EF350
bne   @@Code080EF356            ; 080EF352
mov   r2,0x0                    ; 080EF354
@@Code080EF356:
sub   r0,r3,0x2                 ; 080EF356
lsl   r0,r0,0x10                ; 080EF358
lsr   r3,r0,0x10                ; 080EF35A
cmp   r0,0x0                    ; 080EF35C
bge   @@Code080EF33A            ; 080EF35E
ldrh  r0,[r4,0x16]              ; 080EF360
add   r0,0x1                    ; 080EF362
strh  r0,[r4,0x16]              ; 080EF364
mov   r1,0x3                    ; 080EF366
and   r0,r1                     ; 080EF368
lsl   r2,r0,0x1                 ; 080EF36A
mov   r3,0x6                    ; 080EF36C
ldr   r4,=Data08196A78          ; 080EF36E
@@Code080EF370:
lsr   r1,r3,0x1                 ; 080EF370
lsl   r1,r1,0x1                 ; 080EF372
ldr   r0,=0x02010438            ; 080EF374
add   r1,r1,r0                  ; 080EF376
lsr   r0,r2,0x1                 ; 080EF378
lsl   r0,r0,0x1                 ; 080EF37A
add   r0,r0,r4                  ; 080EF37C
ldrh  r0,[r0]                   ; 080EF37E
strh  r0,[r1]                   ; 080EF380
sub   r0,r2,0x2                 ; 080EF382
lsl   r0,r0,0x10                ; 080EF384
lsr   r2,r0,0x10                ; 080EF386
cmp   r0,0x0                    ; 080EF388
bge   @@Code080EF38E            ; 080EF38A
mov   r2,0x6                    ; 080EF38C
@@Code080EF38E:
sub   r0,r3,0x2                 ; 080EF38E
lsl   r0,r0,0x10                ; 080EF390
lsr   r3,r0,0x10                ; 080EF392
cmp   r0,0x0                    ; 080EF394
bge   @@Code080EF370            ; 080EF396
ldr   r2,=0x4967                ; 080EF398
add   r1,r7,r2                  ; 080EF39A
mov   r0,0x1                    ; 080EF39C
strb  r0,[r1]                   ; 080EF39E
@@Code080EF3A0:
pop   {r4-r7}                   ; 080EF3A0
pop   {r0}                      ; 080EF3A2
bx    r0                        ; 080EF3A4
.pool                           ; 080EF3A6

GoalMinigameMain:
; Game state 1D: Goal minigame
push  {r4-r5,lr}                ; 080EF3C4
bl    Sub08002338               ; 080EF3C6
ldr   r5,=0x03007240            ; 080EF3CA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]                   ; 080EF3CC
ldr   r1,=0x29CE                ; 080EF3CE
add   r0,r0,r1                  ; 080EF3D0
mov   r1,0x0                    ; 080EF3D2
strh  r1,[r0]                   ; 080EF3D4
ldr   r4,=0x03002200            ; 080EF3D6
ldr   r2,=0x47D0                ; 080EF3D8
add   r0,r4,r2                  ; 080EF3DA
strh  r1,[r0]                   ; 080EF3DC
add   r2,0x2                    ; 080EF3DE
add   r0,r4,r2                  ; 080EF3E0
strh  r1,[r0]                   ; 080EF3E2
bl    Sub080EA5A4               ; 080EF3E4
bl    Sub08042FF8               ; 080EF3E8
bl    Sub080EF118               ; 080EF3EC
ldr   r0,=0x48AA                ; 080EF3F0
add   r4,r4,r0                  ; 080EF3F2
ldrh  r0,[r4]                   ; 080EF3F4
ldr   r4,[r5]                   ; 080EF3F6
ldr   r1,=0x27D0                ; 080EF3F8
add   r4,r4,r1                  ; 080EF3FA
ldr   r1,=CodePtrs08196A60      ; 080EF3FC
lsr   r0,r0,0x1                 ; 080EF3FE
lsl   r0,r0,0x2                 ; 080EF400
add   r0,r0,r1                  ; 080EF402
ldr   r1,[r0]                   ; 080EF404
mov   r0,r4                     ; 080EF406
bl    Sub_bx_r1                 ; 080EF408  bx r1
mov   r0,r4                     ; 080EF40C
bl    Sub080EF30C               ; 080EF40E
mov   r0,r4                     ; 080EF412
bl    Sub080EFF78               ; 080EF414
pop   {r4-r5}                   ; 080EF418
pop   {r0}                      ; 080EF41A
bx    r0                        ; 080EF41C
.pool                           ; 080EF41E

Sub080EF43C:
push  {r4-r6,lr}                ; 080EF43C
ldr   r0,=0x03002200            ; 080EF43E
ldr   r1,=0x48AA                ; 080EF440
add   r0,r0,r1                  ; 080EF442
ldrh  r1,[r0]                   ; 080EF444
lsl   r0,r1,0x11                ; 080EF446
lsr   r4,r0,0x10                ; 080EF448
mov   r6,r4                     ; 080EF44A
ldr   r0,=0x02011000            ; 080EF44C
ldrh  r5,[r0]                   ; 080EF44E
cmp   r1,0x2                    ; 080EF450
beq   @@Code080EF54C            ; 080EF452
cmp   r1,0x8                    ; 080EF454
beq   @@Code080EF4D4            ; 080EF456
lsl   r2,r5,0x1                 ; 080EF458
ldr   r3,=0x02011002            ; 080EF45A
add   r1,r2,r3                  ; 080EF45C
ldr   r3,=0xA0A0                ; 080EF45E
mov   r0,r3                     ; 080EF460
strh  r0,[r1]                   ; 080EF462
ldr   r0,=0x02011004            ; 080EF464
add   r1,r2,r0                  ; 080EF466
mov   r0,0x4                    ; 080EF468
strh  r0,[r1]                   ; 080EF46A
ldr   r1,=0x02011006            ; 080EF46C
add   r3,r2,r1                  ; 080EF46E
ldr   r1,=Data08196A92          ; 080EF470
lsl   r0,r4,0x1                 ; 080EF472
add   r0,r0,r1                  ; 080EF474
ldrh  r0,[r0]                   ; 080EF476
strh  r0,[r3]                   ; 080EF478
ldr   r0,=0x02011008            ; 080EF47A
add   r3,r2,r0                  ; 080EF47C
add   r0,r4,0x1                 ; 080EF47E
lsl   r0,r0,0x1                 ; 080EF480
add   r0,r0,r1                  ; 080EF482
ldrh  r0,[r0]                   ; 080EF484
strh  r0,[r3]                   ; 080EF486
ldr   r0,=0x0201100A            ; 080EF488
add   r3,r2,r0                  ; 080EF48A
add   r0,r4,0x2                 ; 080EF48C
lsl   r0,r0,0x1                 ; 080EF48E
add   r0,r0,r1                  ; 080EF490
ldrh  r0,[r0]                   ; 080EF492
strh  r0,[r3]                   ; 080EF494
ldr   r3,=0x0201100C            ; 080EF496
add   r2,r2,r3                  ; 080EF498
add   r0,r4,0x3                 ; 080EF49A
lsl   r0,r0,0x1                 ; 080EF49C
add   r0,r0,r1                  ; 080EF49E
ldrh  r0,[r0]                   ; 080EF4A0
strh  r0,[r2]                   ; 080EF4A2
add   r0,r5,0x6                 ; 080EF4A4
b     @@Code080EF538            ; 080EF4A6
.pool                           ; 080EF4A8

@@Code080EF4D4:
lsl   r2,r5,0x1                 ; 080EF4D4
ldr   r0,=0x02011002            ; 080EF4D6
add   r1,r2,r0                  ; 080EF4D8
ldr   r3,=0xA09E                ; 080EF4DA
mov   r0,r3                     ; 080EF4DC
strh  r0,[r1]                   ; 080EF4DE
ldr   r0,=0x02011004            ; 080EF4E0
add   r1,r2,r0                  ; 080EF4E2
mov   r0,0x6                    ; 080EF4E4
strh  r0,[r1]                   ; 080EF4E6
ldr   r1,=0x02011006            ; 080EF4E8
add   r3,r2,r1                  ; 080EF4EA
ldr   r1,=Data08196A92          ; 080EF4EC
lsl   r0,r6,0x1                 ; 080EF4EE
add   r0,r0,r1                  ; 080EF4F0
ldrh  r0,[r0]                   ; 080EF4F2
strh  r0,[r3]                   ; 080EF4F4
ldr   r0,=0x02011008            ; 080EF4F6
add   r3,r2,r0                  ; 080EF4F8
add   r0,r6,0x1                 ; 080EF4FA
lsl   r0,r0,0x1                 ; 080EF4FC
add   r0,r0,r1                  ; 080EF4FE
ldrh  r0,[r0]                   ; 080EF500
strh  r0,[r3]                   ; 080EF502
ldr   r0,=0x0201100A            ; 080EF504
add   r3,r2,r0                  ; 080EF506
add   r0,r6,0x2                 ; 080EF508
lsl   r0,r0,0x1                 ; 080EF50A
add   r0,r0,r1                  ; 080EF50C
ldrh  r0,[r0]                   ; 080EF50E
strh  r0,[r3]                   ; 080EF510
ldr   r0,=0x0201100C            ; 080EF512
add   r3,r2,r0                  ; 080EF514
add   r0,r6,0x3                 ; 080EF516
lsl   r0,r0,0x1                 ; 080EF518
add   r0,r0,r1                  ; 080EF51A
ldrh  r0,[r0]                   ; 080EF51C
strh  r0,[r3]                   ; 080EF51E
ldr   r3,=0x0201100E            ; 080EF520
add   r1,r2,r3                  ; 080EF522
ldr   r3,=0x71BD                ; 080EF524
mov   r0,r3                     ; 080EF526
strh  r0,[r1]                   ; 080EF528
ldr   r0,=0x02011010            ; 080EF52A
add   r2,r2,r0                  ; 080EF52C
ldr   r1,=0x71BE                ; 080EF52E
mov   r0,r1                     ; 080EF530
strh  r0,[r2]                   ; 080EF532
mov   r0,r5                     ; 080EF534
add   r0,0x8                    ; 080EF536
@@Code080EF538:
lsl   r0,r0,0x10                ; 080EF538
lsr   r5,r0,0x10                ; 080EF53A
lsl   r0,r5,0x1                 ; 080EF53C
ldr   r2,=0x02011002            ; 080EF53E
add   r0,r0,r2                  ; 080EF540
ldr   r3,=0xFFFF                ; 080EF542
mov   r1,r3                     ; 080EF544
strh  r1,[r0]                   ; 080EF546
ldr   r0,=0x02011000            ; 080EF548
strh  r5,[r0]                   ; 080EF54A
@@Code080EF54C:
pop   {r4-r6}                   ; 080EF54C
pop   {r0}                      ; 080EF54E
bx    r0                        ; 080EF550
.pool                           ; 080EF552

Sub080EF58C:
push  {r4-r6,lr}                ; 080EF58C
lsl   r0,r0,0x10                ; 080EF58E
lsr   r5,r0,0x10                ; 080EF590
mov   r0,0xC0                   ; 080EF592
lsl   r0,r0,0x13                ; 080EF594
add   r4,r5,r0                  ; 080EF596
ldr   r6,=0x03007240            ; 080EF598  Normal gameplay IWRAM (0300220C)
ldr   r2,[r6]                   ; 080EF59A
ldr   r0,=0x29D6                ; 080EF59C
add   r1,r2,r0                  ; 080EF59E
ldrh  r0,[r1]                   ; 080EF5A0
cmp   r0,0x0                    ; 080EF5A2
beq   @@Code080EF63C            ; 080EF5A4
ldr   r3,=Data08196ADC          ; 080EF5A6
lsl   r0,r0,0x1                 ; 080EF5A8
add   r0,r0,r3                  ; 080EF5AA
ldrh  r0,[r0]                   ; 080EF5AC
strh  r0,[r4]                   ; 080EF5AE
ldr   r2,=0x06000040            ; 080EF5B0
add   r1,r5,r2                  ; 080EF5B2
ldr   r2,[r6]                   ; 080EF5B4
ldr   r4,=0x29D6                ; 080EF5B6
add   r0,r2,r4                  ; 080EF5B8
ldrh  r0,[r0]                   ; 080EF5BA
add   r0,0x1                    ; 080EF5BC
lsl   r0,r0,0x1                 ; 080EF5BE
add   r0,r0,r3                  ; 080EF5C0
ldrh  r0,[r0]                   ; 080EF5C2
strh  r0,[r1]                   ; 080EF5C4
ldr   r0,=0x06000002            ; 080EF5C6
add   r4,r5,r0                  ; 080EF5C8
ldr   r1,=0x29D4                ; 080EF5CA
add   r2,r2,r1                  ; 080EF5CC
ldrh  r0,[r2]                   ; 080EF5CE
lsl   r0,r0,0x1                 ; 080EF5D0
add   r0,r0,r3                  ; 080EF5D2
ldrh  r0,[r0]                   ; 080EF5D4
strh  r0,[r4]                   ; 080EF5D6
ldr   r2,=0x06000042            ; 080EF5D8
add   r4,r5,r2                  ; 080EF5DA
ldr   r2,[r6]                   ; 080EF5DC
add   r1,r2,r1                  ; 080EF5DE
ldrh  r0,[r1]                   ; 080EF5E0
add   r0,0x1                    ; 080EF5E2
lsl   r0,r0,0x1                 ; 080EF5E4
add   r0,r0,r3                  ; 080EF5E6
ldrh  r0,[r0]                   ; 080EF5E8
strh  r0,[r4]                   ; 080EF5EA
ldr   r0,=0x06000004            ; 080EF5EC
add   r4,r5,r0                  ; 080EF5EE
ldr   r1,=0x29D2                ; 080EF5F0
add   r2,r2,r1                  ; 080EF5F2
ldrh  r0,[r2]                   ; 080EF5F4
lsl   r0,r0,0x1                 ; 080EF5F6
add   r0,r0,r3                  ; 080EF5F8
ldrh  r0,[r0]                   ; 080EF5FA
strh  r0,[r4]                   ; 080EF5FC
ldr   r4,=0x06000044            ; 080EF5FE
add   r2,r5,r4                  ; 080EF600
ldr   r0,[r6]                   ; 080EF602
add   r0,r0,r1                  ; 080EF604
ldrh  r0,[r0]                   ; 080EF606
add   r0,0x1                    ; 080EF608
lsl   r0,r0,0x1                 ; 080EF60A
add   r0,r0,r3                  ; 080EF60C
ldrh  r0,[r0]                   ; 080EF60E
strh  r0,[r2]                   ; 080EF610
b     @@Code080EF6EA            ; 080EF612
.pool                           ; 080EF614

@@Code080EF63C:
ldr   r0,=0x29D4                ; 080EF63C
add   r1,r2,r0                  ; 080EF63E
ldrh  r0,[r1]                   ; 080EF640
cmp   r0,0x0                    ; 080EF642
beq   @@Code080EF6A8            ; 080EF644
ldr   r2,=Data08196ADC          ; 080EF646
lsl   r0,r0,0x1                 ; 080EF648
add   r0,r0,r2                  ; 080EF64A
ldrh  r0,[r0]                   ; 080EF64C
strh  r0,[r4]                   ; 080EF64E
ldr   r4,=0x06000040            ; 080EF650
add   r3,r5,r4                  ; 080EF652
ldr   r1,[r6]                   ; 080EF654
ldr   r4,=0x29D4                ; 080EF656
add   r0,r1,r4                  ; 080EF658
ldrh  r0,[r0]                   ; 080EF65A
add   r0,0x1                    ; 080EF65C
lsl   r0,r0,0x1                 ; 080EF65E
add   r0,r0,r2                  ; 080EF660
ldrh  r0,[r0]                   ; 080EF662
strh  r0,[r3]                   ; 080EF664
ldr   r0,=0x06000002            ; 080EF666
add   r4,r5,r0                  ; 080EF668
ldr   r3,=0x29D2                ; 080EF66A
add   r1,r1,r3                  ; 080EF66C
ldrh  r0,[r1]                   ; 080EF66E
lsl   r0,r0,0x1                 ; 080EF670
add   r0,r0,r2                  ; 080EF672
ldrh  r0,[r0]                   ; 080EF674
strh  r0,[r4]                   ; 080EF676
ldr   r0,=0x06000042            ; 080EF678
add   r1,r5,r0                  ; 080EF67A
ldr   r0,[r6]                   ; 080EF67C
add   r0,r0,r3                  ; 080EF67E
ldrh  r0,[r0]                   ; 080EF680
add   r0,0x1                    ; 080EF682
lsl   r0,r0,0x1                 ; 080EF684
add   r0,r0,r2                  ; 080EF686
ldrh  r0,[r0]                   ; 080EF688
strh  r0,[r1]                   ; 080EF68A
b     @@Code080EF6DC            ; 080EF68C
.pool                           ; 080EF68E

@@Code080EF6A8:
ldr   r3,=Data08196ADC          ; 080EF6A8
ldr   r1,=0x29D2                ; 080EF6AA
add   r0,r2,r1                  ; 080EF6AC
ldrh  r0,[r0]                   ; 080EF6AE
lsl   r0,r0,0x1                 ; 080EF6B0
add   r0,r0,r3                  ; 080EF6B2
ldrh  r0,[r0]                   ; 080EF6B4
strh  r0,[r4]                   ; 080EF6B6
ldr   r4,=0x06000040            ; 080EF6B8
add   r2,r5,r4                  ; 080EF6BA
ldr   r0,[r6]                   ; 080EF6BC
add   r0,r0,r1                  ; 080EF6BE
ldrh  r0,[r0]                   ; 080EF6C0
add   r0,0x1                    ; 080EF6C2
lsl   r0,r0,0x1                 ; 080EF6C4
add   r0,r0,r3                  ; 080EF6C6
ldrh  r0,[r0]                   ; 080EF6C8
strh  r0,[r2]                   ; 080EF6CA
ldr   r0,=0x06000002            ; 080EF6CC
add   r4,r5,r0                  ; 080EF6CE
ldr   r2,=0x707D                ; 080EF6D0
mov   r1,r2                     ; 080EF6D2
strh  r1,[r4]                   ; 080EF6D4
ldr   r2,=0x06000042            ; 080EF6D6
add   r0,r5,r2                  ; 080EF6D8
strh  r1,[r0]                   ; 080EF6DA
@@Code080EF6DC:
add   r4,0x2                    ; 080EF6DC
ldr   r0,=0x707D                ; 080EF6DE
mov   r1,r0                     ; 080EF6E0
strh  r1,[r4]                   ; 080EF6E2
mov   r0,r4                     ; 080EF6E4
add   r0,0x40                   ; 080EF6E6
strh  r1,[r0]                   ; 080EF6E8
@@Code080EF6EA:
pop   {r4-r6}                   ; 080EF6EA
pop   {r0}                      ; 080EF6EC
bx    r0                        ; 080EF6EE
.pool                           ; 080EF6F0

Sub080EF708:
push  {r4-r7,lr}                ; 080EF708
ldr   r1,=0x03002200            ; 080EF70A
ldr   r2,=0x48AA                ; 080EF70C
add   r0,r1,r2                  ; 080EF70E
ldrh  r4,[r0]                   ; 080EF710
mov   r5,r1                     ; 080EF712
cmp   r4,0x8                    ; 080EF714
bne   @@Code080EF72C            ; 080EF716
ldr   r1,=0x4905                ; 080EF718
add   r0,r5,r1                  ; 080EF71A
ldrb  r0,[r0]                   ; 080EF71C
cmp   r0,0x1C                   ; 080EF71E
bne   @@Code080EF72C            ; 080EF720
ldr   r2,=0x407E                ; 080EF722
add   r1,r5,r2                  ; 080EF724
ldrh  r0,[r1]                   ; 080EF726
sub   r0,0x1                    ; 080EF728
strh  r0,[r1]                   ; 080EF72A
@@Code080EF72C:
ldr   r1,=0x407E                ; 080EF72C
add   r0,r5,r1                  ; 080EF72E
ldrh  r4,[r0]                   ; 080EF730
ldr   r3,=0x03007240            ; 080EF732  Normal gameplay IWRAM (0300220C)
ldr   r0,[r3]                   ; 080EF734
ldr   r2,=0x29D4                ; 080EF736
add   r1,r0,r2                  ; 080EF738
mov   r2,0x0                    ; 080EF73A
strh  r2,[r1]                   ; 080EF73C
ldr   r1,=0x29D6                ; 080EF73E
add   r0,r0,r1                  ; 080EF740
strh  r2,[r0]                   ; 080EF742
mov   r6,r3                     ; 080EF744
ldr   r7,=Data08196B04          ; 080EF746
cmp   r4,0x63                   ; 080EF748
bls   @@Code080EF764            ; 080EF74A
mov   r2,r1                     ; 080EF74C
@@Code080EF74E:
ldr   r0,[r3]                   ; 080EF74E
add   r0,r0,r2                  ; 080EF750
ldrh  r1,[r0]                   ; 080EF752
add   r1,0x2                    ; 080EF754
strh  r1,[r0]                   ; 080EF756
mov   r0,r4                     ; 080EF758
sub   r0,0x64                   ; 080EF75A
lsl   r0,r0,0x10                ; 080EF75C
lsr   r4,r0,0x10                ; 080EF75E
cmp   r4,0x63                   ; 080EF760
bhi   @@Code080EF74E            ; 080EF762
@@Code080EF764:
cmp   r4,0x9                    ; 080EF764
bls   @@Code080EF782            ; 080EF766
ldr   r3,=0x03007240            ; 080EF768  Normal gameplay IWRAM (0300220C)
ldr   r2,=0x29D4                ; 080EF76A
@@Code080EF76C:
ldr   r0,[r3]                   ; 080EF76C
add   r0,r0,r2                  ; 080EF76E
ldrh  r1,[r0]                   ; 080EF770
add   r1,0x2                    ; 080EF772
strh  r1,[r0]                   ; 080EF774
mov   r0,r4                     ; 080EF776
sub   r0,0xA                    ; 080EF778
lsl   r0,r0,0x10                ; 080EF77A
lsr   r4,r0,0x10                ; 080EF77C
cmp   r4,0x9                    ; 080EF77E
bhi   @@Code080EF76C            ; 080EF780
@@Code080EF782:
ldr   r0,[r6]                   ; 080EF782
lsl   r1,r4,0x1                 ; 080EF784
ldr   r2,=0x29D2                ; 080EF786
add   r0,r0,r2                  ; 080EF788
strh  r1,[r0]                   ; 080EF78A
ldr   r1,=0x48AA                ; 080EF78C
add   r0,r5,r1                  ; 080EF78E
ldrh  r0,[r0]                   ; 080EF790
lsr   r0,r0,0x1                 ; 080EF792
lsl   r0,r0,0x1                 ; 080EF794
add   r0,r0,r7                  ; 080EF796
ldrh  r4,[r0]                   ; 080EF798
mov   r0,r4                     ; 080EF79A
bl    Sub080EF58C               ; 080EF79C
pop   {r4-r7}                   ; 080EF7A0
pop   {r0}                      ; 080EF7A2
bx    r0                        ; 080EF7A4
.pool                           ; 080EF7A6

GoalMinigameInit:
; Game state 1C: Goal minigame init
push  {r4-r7,lr}                ; 080EF7CC
mov   r7,r9                     ; 080EF7CE
mov   r6,r8                     ; 080EF7D0
push  {r6-r7}                   ; 080EF7D2
add   sp,-0xC                   ; 080EF7D4
bl    Sub08002534               ; 080EF7D6
ldr   r6,=0x03002200            ; 080EF7DA
ldr   r0,=0x48F6                ; 080EF7DC
add   r1,r6,r0                  ; 080EF7DE
mov   r2,0x0                    ; 080EF7E0
mov   r8,r2                     ; 080EF7E2
mov   r0,0x1                    ; 080EF7E4
strb  r0,[r1]                   ; 080EF7E6
ldr   r3,=0x4B65                ; 080EF7E8
add   r0,r6,r3                  ; 080EF7EA
mov   r4,r8                     ; 080EF7EC
strb  r4,[r0]                   ; 080EF7EE
ldr   r2,=0x04000200            ; 080EF7F0
ldr   r5,=0x47C2                ; 080EF7F2
add   r1,r6,r5                  ; 080EF7F4
ldr   r0,=0x2001                ; 080EF7F6
strh  r0,[r1]                   ; 080EF7F8
strh  r0,[r2]                   ; 080EF7FA
ldr   r2,=0x04000004            ; 080EF7FC
ldr   r0,=0x47C4                ; 080EF7FE
add   r1,r6,r0                  ; 080EF800
mov   r0,0x8                    ; 080EF802
strh  r0,[r1]                   ; 080EF804
strh  r0,[r2]                   ; 080EF806
add   r2,0x4C                   ; 080EF808
ldr   r3,=0x4888                ; 080EF80A
add   r1,r6,r3                  ; 080EF80C
mov   r0,0xFF                   ; 080EF80E
strh  r0,[r1]                   ; 080EF810
strh  r0,[r2]                   ; 080EF812
ldr   r1,=0x04000052            ; 080EF814
ldr   r4,=0x488A                ; 080EF816
add   r0,r6,r4                  ; 080EF818
mov   r5,r8                     ; 080EF81A
strh  r5,[r0]                   ; 080EF81C
strh  r5,[r1]                   ; 080EF81E
ldr   r3,=0x04000054            ; 080EF820
ldr   r1,=0x488C                ; 080EF822
add   r0,r6,r1                  ; 080EF824
mov   r2,0x10                   ; 080EF826
mov   r1,0x10                   ; 080EF828
strh  r1,[r0]                   ; 080EF82A
add   r4,0x70                   ; 080EF82C
add   r0,r6,r4                  ; 080EF82E
strb  r2,[r0]                   ; 080EF830
strh  r1,[r3]                   ; 080EF832
bl    Sub0802E020               ; 080EF834
ldr   r5,=0x03007240            ; 080EF838  Normal gameplay IWRAM (0300220C)
mov   r9,r5                     ; 080EF83A
mov   r1,0xAD                   ; 080EF83C
lsl   r1,r1,0x6                 ; 080EF83E  r1 = 2B40
mov   r0,r6                     ; 080EF840
bl    DynamicAllocate           ; 080EF842
str   r0,[r5]                   ; 080EF846
ldr   r5,=0x03007010            ; 080EF848  Layer 1 tilemap EWRAM (0200000C)
mov   r4,0x80                   ; 080EF84A
lsl   r4,r4,0x12                ; 080EF84C  r4 = 02000000
ldr   r1,=0x862C                ; 080EF84E
mov   r0,r4                     ; 080EF850
bl    DynamicAllocate           ; 080EF852
str   r0,[r5]                   ; 080EF856
ldr   r5,=0x03006D6C            ; 080EF858
ldr   r1,=0x1118                ; 080EF85A
mov   r0,r4                     ; 080EF85C
bl    DynamicAllocate           ; 080EF85E
str   r0,[r5]                   ; 080EF862
ldr   r5,=0x030021A0            ; 080EF864  Score calc layer 3 buffer (02009758)
mov   r1,0x90                   ; 080EF866
lsl   r1,r1,0x3                 ; 080EF868
mov   r0,r4                     ; 080EF86A
bl    DynamicAllocate           ; 080EF86C
str   r0,[r5]                   ; 080EF870
ldr   r5,=0x030021B4            ; 080EF872
mov   r1,0xC0                   ; 080EF874
lsl   r1,r1,0x6                 ; 080EF876
mov   r0,r4                     ; 080EF878
bl    DynamicAllocate           ; 080EF87A
str   r0,[r5]                   ; 080EF87E
bl    Sub080FCBC4               ; 080EF880 for text
mov   r0,r8                     ; 080EF884
str   r0,[sp]                   ; 080EF886
mov   r2,r9                     ; 080EF888
ldr   r1,[r2]                   ; 080EF88A
ldr   r2,=0x05000AD0            ; 080EF88C
mov   r0,sp                     ; 080EF88E
bl    swi_MemoryCopy4or2        ; 080EF890  Memory copy/fill, 4- or 2-byte blocks
mov   r3,r9                     ; 080EF894
ldr   r0,[r3]                   ; 080EF896
bl    Sub0802BB74               ; 080EF898
mov   r4,r8                     ; 080EF89C
str   r4,[sp,0x4]               ; 080EF89E
add   r0,sp,0x4                 ; 080EF8A0
mov   r1,0xC0                   ; 080EF8A2
lsl   r1,r1,0x13                ; 080EF8A4
ldr   r2,=0x05004000            ; 080EF8A6
bl    swi_MemoryCopy4or2        ; 080EF8A8  Memory copy/fill, 4- or 2-byte blocks
bl    Sub0804C9A4               ; 080EF8AC
str   r4,[sp,0x8]               ; 080EF8B0
add   r0,sp,0x8                 ; 080EF8B2
ldr   r4,=0x0300702C            ; 080EF8B4  Sprite RAM structs (03002460)
ldr   r1,[r4]                   ; 080EF8B6
ldr   r2,=0x05000628            ; 080EF8B8
bl    swi_MemoryCopy4or2        ; 080EF8BA  Memory copy/fill, 4- or 2-byte blocks
bl    Sub08002338               ; 080EF8BE
mov   r5,r9                     ; 080EF8C2
ldr   r0,[r5]                   ; 080EF8C4
mov   r1,0x95                   ; 080EF8C6
lsl   r1,r1,0x2                 ; 080EF8C8
add   r0,r0,r1                  ; 080EF8CA
str   r0,[r4]                   ; 080EF8CC
ldr   r1,=0x03006D80            ; 080EF8CE
mov   r2,0xD3                   ; 080EF8D0
lsl   r2,r2,0x1                 ; 080EF8D2
add   r0,r1,r2                  ; 080EF8D4
mov   r3,r8                     ; 080EF8D6
strh  r3,[r0]                   ; 080EF8D8
mov   r4,0xD4                   ; 080EF8DA
lsl   r4,r4,0x1                 ; 080EF8DC
add   r0,r1,r4                  ; 080EF8DE
strh  r3,[r0]                   ; 080EF8E0
ldr   r5,=0x020A                ; 080EF8E2
add   r0,r1,r5                  ; 080EF8E4
strh  r3,[r0]                   ; 080EF8E6
add   r2,0x62                   ; 080EF8E8
add   r0,r1,r2                  ; 080EF8EA
strh  r3,[r0]                   ; 080EF8EC
mov   r2,0x0                    ; 080EF8EE
ldr   r4,=0x4960                ; 080EF8F0
add   r3,r6,r4                  ; 080EF8F2
mov   r1,0x0                    ; 080EF8F4
@@Code080EF8F6:
add   r0,r2,r3                  ; 080EF8F6
strb  r1,[r0]                   ; 080EF8F8
add   r0,r2,0x1                 ; 080EF8FA
lsl   r0,r0,0x10                ; 080EF8FC
lsr   r2,r0,0x10                ; 080EF8FE
cmp   r2,0x2                    ; 080EF900
bls   @@Code080EF8F6            ; 080EF902
ldr   r5,=0x48AA                ; 080EF904
add   r0,r6,r5                  ; 080EF906
ldrh  r7,[r0]                   ; 080EF908
ldr   r5,=0x03007240            ; 080EF90A  Normal gameplay IWRAM (0300220C)
ldr   r4,[r5]                   ; 080EF90C
ldr   r0,=0x27D0                ; 080EF90E
add   r0,r0,r4                  ; 080EF910
mov   r8,r0                     ; 080EF912
bl    Sub080EFC34               ; 080EF914
bl    Sub080EFD54               ; 080EF918
ldr   r2,=0x47C6                ; 080EF91C
add   r1,r6,r2                  ; 080EF91E
mov   r2,0x0                    ; 080EF920
mov   r0,0xFC                   ; 080EF922
lsl   r0,r0,0x7                 ; 080EF924
strh  r0,[r1]                   ; 080EF926
ldr   r3,=0x2826                ; 080EF928
add   r1,r4,r3                  ; 080EF92A
mov   r0,0x10                   ; 080EF92C
strh  r0,[r1]                   ; 080EF92E
ldr   r0,=0x2828                ; 080EF930
add   r1,r4,r0                  ; 080EF932
mov   r0,0x94                   ; 080EF934
strh  r0,[r1]                   ; 080EF936
ldr   r1,=0x2822                ; 080EF938
add   r4,r4,r1                  ; 080EF93A
mov   r0,0x1                    ; 080EF93C
strh  r0,[r4]                   ; 080EF93E
mov   r0,0x18                   ; 080EF940
mov   r3,r8                     ; 080EF942
strh  r0,[r3,0x12]              ; 080EF944
ldr   r4,=0x47E4                ; 080EF946
add   r0,r6,r4                  ; 080EF948
strh  r2,[r0]                   ; 080EF94A
ldr   r1,=0x47E6                ; 080EF94C
add   r0,r6,r1                  ; 080EF94E
strh  r2,[r0]                   ; 080EF950
ldr   r3,=0x47E8                ; 080EF952
add   r0,r6,r3                  ; 080EF954
strh  r2,[r0]                   ; 080EF956
add   r4,0x8                    ; 080EF958
add   r0,r6,r4                  ; 080EF95A
mov   r1,0x80                   ; 080EF95C
lsl   r1,r1,0x1                 ; 080EF95E
strh  r1,[r0]                   ; 080EF960
add   r3,0x6                    ; 080EF962
add   r0,r6,r3                  ; 080EF964
strh  r1,[r0]                   ; 080EF966
add   r4,0x4                    ; 080EF968
add   r0,r6,r4                  ; 080EF96A
strh  r2,[r0]                   ; 080EF96C
mov   r0,r8                     ; 080EF96E
strh  r2,[r0,0x10]              ; 080EF970
ldr   r1,=0x03006D80            ; 080EF972
mov   r0,r1                     ; 080EF974
add   r0,0x76                   ; 080EF976
strh  r2,[r0]                   ; 080EF978
ldr   r0,=Data08196B60          ; 080EF97A
ldrh  r0,[r0]                   ; 080EF97C
strh  r0,[r1,0x3C]              ; 080EF97E
ldr   r0,=Data08196BB8          ; 080EF980
ldrh  r0,[r0]                   ; 080EF982
mov   r3,0xE7                   ; 080EF984
lsl   r3,r3,0x1                 ; 080EF986
add   r2,r1,r3                  ; 080EF988
strh  r0,[r2]                   ; 080EF98A
mov   r0,0xD8                   ; 080EF98C
lsl   r0,r0,0x8                 ; 080EF98E
str   r0,[r1]                   ; 080EF990
mov   r0,0xF0                   ; 080EF992
lsl   r0,r0,0x7                 ; 080EF994
str   r0,[r1,0x4]               ; 080EF996
add   r1,0x42                   ; 080EF998
mov   r0,0x2                    ; 080EF99A
strh  r0,[r1]                   ; 080EF99C
mov   r2,0x0                    ; 080EF99E
mov   r4,0xA6                   ; 080EF9A0
lsl   r4,r4,0x6                 ; 080EF9A2
ldr   r0,=0xFFFF                ; 080EF9A4
mov   r3,r0                     ; 080EF9A6
@@Code080EF9A8:
ldr   r1,[r5]                   ; 080EF9A8
lsl   r0,r2,0x1                 ; 080EF9AA
add   r1,r1,r4                  ; 080EF9AC
add   r1,r1,r0                  ; 080EF9AE
ldrh  r0,[r1]                   ; 080EF9B0
orr   r0,r3                     ; 080EF9B2
strh  r0,[r1]                   ; 080EF9B4
add   r0,r2,0x1                 ; 080EF9B6
lsl   r0,r0,0x10                ; 080EF9B8
lsr   r2,r0,0x10                ; 080EF9BA
cmp   r2,0x5                    ; 080EF9BC
bls   @@Code080EF9A8            ; 080EF9BE
mov   r0,0x61                   ; 080EF9C0
mov   r1,0x0                    ; 080EF9C2
bl    Sub0804A1A0               ; 080EF9C4  Spawn sprite in lowest slot (max r1)
lsl   r0,r0,0x18                ; 080EF9C8
lsr   r2,r0,0x18                ; 080EF9CA
ldr   r1,=0x03007240            ; 080EF9CC  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080EF9CE
mul   r0,r2                     ; 080EF9D0
mov   r2,0x95                   ; 080EF9D2
lsl   r2,r2,0x2                 ; 080EF9D4
add   r0,r0,r2                  ; 080EF9D6
ldr   r1,[r1]                   ; 080EF9D8
add   r1,r1,r0                  ; 080EF9DA
mov   r3,r8                     ; 080EF9DC
str   r1,[r3]                   ; 080EF9DE
mov   r4,r1                     ; 080EF9E0
add   r4,0x6E                   ; 080EF9E2
mov   r3,0x0                    ; 080EF9E4
mov   r2,0x0                    ; 080EF9E6
mov   r0,0x4                    ; 080EF9E8
strh  r0,[r4]                   ; 080EF9EA
ldr   r0,=0x03006D80            ; 080EF9EC
mov   r5,0xD5                   ; 080EF9EE
lsl   r5,r5,0x1                 ; 080EF9F0
add   r4,r0,r5                  ; 080EF9F2
mov   r0,0x80                   ; 080EF9F4
lsl   r0,r0,0x6                 ; 080EF9F6
strh  r0,[r4]                   ; 080EF9F8
strh  r2,[r1,0x38]              ; 080EF9FA
mov   r0,0x80                   ; 080EF9FC
lsl   r0,r0,0x4                 ; 080EF9FE
str   r0,[r1]                   ; 080EFA00
mov   r0,0x88                   ; 080EFA02
lsl   r0,r0,0x8                 ; 080EFA04
str   r0,[r1,0x4]               ; 080EFA06
mov   r0,0x2                    ; 080EFA08
strh  r0,[r1,0x36]              ; 080EFA0A
mov   r0,0x3A                   ; 080EFA0C
strh  r0,[r1,0x2C]              ; 080EFA0E
ldr   r0,=Data08196B10          ; 080EFA10
ldrb  r1,[r0]                   ; 080EFA12
mov   r0,r8                     ; 080EFA14
add   r0,0x80                   ; 080EFA16
strb  r1,[r0]                   ; 080EFA18
ldr   r0,=Data08196B13          ; 080EFA1A
ldrb  r0,[r0]                   ; 080EFA1C
mov   r1,r8                     ; 080EFA1E
add   r1,0x81                   ; 080EFA20
strb  r0,[r1]                   ; 080EFA22
mov   r0,r8                     ; 080EFA24
add   r0,0x83                   ; 080EFA26
strb  r3,[r0]                   ; 080EFA28
add   r0,0x1                    ; 080EFA2A
strb  r3,[r0]                   ; 080EFA2C
add   r0,0x1                    ; 080EFA2E
strb  r3,[r0]                   ; 080EFA30
add   r0,0x1                    ; 080EFA32
strb  r3,[r0]                   ; 080EFA34
add   r0,0x1                    ; 080EFA36
strb  r3,[r0]                   ; 080EFA38
add   r0,0x1                    ; 080EFA3A
strb  r3,[r0]                   ; 080EFA3C
add   r0,0x1                    ; 080EFA3E
strb  r3,[r0]                   ; 080EFA40
ldr   r1,=0x03002200            ; 080EFA42
ldr   r4,=0x47D4                ; 080EFA44
add   r0,r1,r4                  ; 080EFA46
strh  r2,[r0]                   ; 080EFA48
ldr   r5,=0x47DC                ; 080EFA4A
add   r0,r1,r5                  ; 080EFA4C
strh  r2,[r0]                   ; 080EFA4E
ldr   r2,=0x4967                ; 080EFA50
add   r0,r1,r2                  ; 080EFA52
strb  r3,[r0]                   ; 080EFA54
ldr   r4,=0x4A48                ; 080EFA56
add   r1,r1,r4                  ; 080EFA58
ldrb  r2,[r1]                   ; 080EFA5A
mov   r0,0x5                    ; 080EFA5C
neg   r0,r0                     ; 080EFA5E
and   r0,r2                     ; 080EFA60
strb  r0,[r1]                   ; 080EFA62
mov   r0,r8                     ; 080EFA64
add   r0,0xF0                   ; 080EFA66
strb  r3,[r0]                   ; 080EFA68
mov   r2,0x0                    ; 080EFA6A
lsr   r6,r7,0x1                 ; 080EFA6C
ldr   r4,=0x02011400            ; 080EFA6E
ldr   r1,=0x0141                ; 080EFA70
@@Code080EFA72:
lsl   r0,r2,0x1                 ; 080EFA72
add   r0,r0,r4                  ; 080EFA74
strh  r3,[r0]                   ; 080EFA76
add   r0,r2,0x1                 ; 080EFA78
lsl   r0,r0,0x10                ; 080EFA7A
lsr   r2,r0,0x10                ; 080EFA7C
cmp   r2,r1                     ; 080EFA7E
bls   @@Code080EFA72            ; 080EFA80
ldr   r4,=0x03002200            ; 080EFA82
ldr   r5,=0x4A03                ; 080EFA84
add   r0,r4,r5                  ; 080EFA86
mov   r5,0x18                   ; 080EFA88
strb  r5,[r0]                   ; 080EFA8A
ldr   r1,=0x4A04                ; 080EFA8C
add   r0,r4,r1                  ; 080EFA8E
strb  r5,[r0]                   ; 080EFA90
ldr   r2,=0x48CC                ; 080EFA92
add   r1,r4,r2                  ; 080EFA94
mov   r0,0x3F                   ; 080EFA96
strh  r0,[r1]                   ; 080EFA98
ldr   r0,=0x02011400            ; 080EFA9A
ldrh  r1,[r0]                   ; 080EFA9C
ldr   r3,=0x488E                ; 080EFA9E
add   r0,r4,r3                  ; 080EFAA0
strh  r1,[r0]                   ; 080EFAA2
ldr   r0,=0x02011402            ; 080EFAA4
ldrh  r1,[r0]                   ; 080EFAA6
sub   r2,0x3A                   ; 080EFAA8
add   r0,r4,r2                  ; 080EFAAA
strh  r1,[r0]                   ; 080EFAAC
add   r3,0x2                    ; 080EFAAE
add   r0,r4,r3                  ; 080EFAB0
mov   r1,0xFF                   ; 080EFAB2
strh  r1,[r0]                   ; 080EFAB4
add   r2,0x2                    ; 080EFAB6
add   r0,r4,r2                  ; 080EFAB8
strh  r1,[r0]                   ; 080EFABA
ldr   r1,=0x030021C0            ; 080EFABC
ldr   r0,=Sub080EEE18+1         ; 080EFABE
str   r0,[r1,0x10]              ; 080EFAC0
bl    Sub080EF708               ; 080EFAC2
ldr   r1,=CodePtrs08196AC4      ; 080EFAC6
lsl   r0,r6,0x2                 ; 080EFAC8
add   r0,r0,r1                  ; 080EFACA
ldr   r1,[r0]                   ; 080EFACC
mov   r0,r8                     ; 080EFACE
bl    Sub_bx_r1                 ; 080EFAD0  bx r1
bl    Sub080EF43C               ; 080EFAD4
mov   r0,0x22                   ; 080EFAD8  22: Goal minigame
bl    Sub0812C3B4               ; 080EFADA  Change music (YI)
mov   r3,0x1                    ; 080EFADE
ldr   r2,=0x0400000A            ; 080EFAE0
ldr   r0,=0x47CA                ; 080EFAE2
add   r1,r4,r0                  ; 080EFAE4
ldr   r0,=0xB401                ; 080EFAE6
strh  r0,[r1]                   ; 080EFAE8
strh  r0,[r2]                   ; 080EFAEA
add   r2,0x2                    ; 080EFAEC
ldr   r0,=0x47CC                ; 080EFAEE
add   r1,r4,r0                  ; 080EFAF0
ldr   r0,=0xB602                ; 080EFAF2
strh  r0,[r1]                   ; 080EFAF4
strh  r0,[r2]                   ; 080EFAF6
add   r2,0x2                    ; 080EFAF8
ldr   r0,=0x47CE                ; 080EFAFA
add   r1,r4,r0                  ; 080EFAFC
ldr   r0,=0x7A07                ; 080EFAFE
strh  r0,[r1]                   ; 080EFB00
strh  r0,[r2]                   ; 080EFB02
ldr   r2,=0x4905                ; 080EFB04
add   r1,r4,r2                  ; 080EFB06
ldrb  r0,[r1]                   ; 080EFB08
add   r0,0x1                    ; 080EFB0A
strb  r0,[r1]                   ; 080EFB0C
ldr   r0,=0x47C2                ; 080EFB0E
add   r1,r4,r0                  ; 080EFB10
ldr   r0,=0x2003                ; 080EFB12
strh  r0,[r1]                   ; 080EFB14
ldr   r1,=0x47C4                ; 080EFB16
add   r4,r4,r1                  ; 080EFB18
strh  r5,[r4]                   ; 080EFB1A
ldr   r0,=0x04000208            ; 080EFB1C
strh  r3,[r0]                   ; 080EFB1E
add   sp,0xC                    ; 080EFB20
pop   {r3-r4}                   ; 080EFB22
mov   r8,r3                     ; 080EFB24
mov   r9,r4                     ; 080EFB26
pop   {r4-r7}                   ; 080EFB28
pop   {r0}                      ; 080EFB2A
bx    r0                        ; 080EFB2C
.pool                           ; 080EFB2E

Sub080EFC34:
; subroutine: Load goal minigame graphics/tilemaps
push  {r4,lr}                   ; 080EFC34
ldr   r0,=0x03002200            ; 080EFC36
ldr   r1,=0x48AA                ; 080EFC38
add   r0,r0,r1                  ; 080EFC3A
ldrh  r4,[r0]                   ; 080EFC3C
lsr   r4,r4,0x1                 ; 080EFC3E
ldr   r0,=DataPtrs08196B18      ; 080EFC40
lsl   r4,r4,0x2                 ; 080EFC42
add   r0,r4,r0                  ; 080EFC44
ldr   r0,[r0]                   ; 080EFC46
ldr   r1,=0x0600A000            ; 080EFC48
bl    swi_LZ77_VRAM             ; 080EFC4A  LZ77 decompress (VRAM)
ldr   r0,=Data08196B30          ; 080EFC4E
add   r4,r4,r0                  ; 080EFC50
ldr   r0,[r4]                   ; 080EFC52
ldr   r1,=0x0600B000            ; 080EFC54
bl    swi_LZ77_VRAM             ; 080EFC56  LZ77 decompress (VRAM)
ldr   r0,=Data0824B6B0          ; 080EFC5A
ldr   r1,=0x0600D000            ; 080EFC5C
bl    swi_LZ77_VRAM             ; 080EFC5E  LZ77 decompress (VRAM)
ldr   r4,=DataPtrs0824ACB0      ; 080EFC62
ldmia r4!,{r0}                  ; 080EFC64
mov   r1,0xC0                   ; 080EFC66
lsl   r1,r1,0x13                ; 080EFC68
bl    swi_LZ77_VRAM             ; 080EFC6A  LZ77 decompress (VRAM)
ldmia r4!,{r0}                  ; 080EFC6E
ldr   r1,=0x06001000            ; 080EFC70
bl    swi_LZ77_VRAM             ; 080EFC72  LZ77 decompress (VRAM)
ldmia r4!,{r0}                  ; 080EFC76
ldr   r1,=0x06004000            ; 080EFC78
bl    swi_LZ77_VRAM             ; 080EFC7A  LZ77 decompress (VRAM)
ldr   r0,[r4]                   ; 080EFC7E
ldr   r1,=0x06005000            ; 080EFC80
bl    swi_LZ77_VRAM             ; 080EFC82  LZ77 decompress (VRAM)
ldr   r4,=Data0826DC74          ; 080EFC86
ldr   r0,[r4]                   ; 080EFC88
ldr   r1,=0x06007000            ; 080EFC8A
bl    swi_LZ77_VRAM             ; 080EFC8C  LZ77 decompress (VRAM)
ldr   r4,=DataPtrs082741F0      ; 080EFC90
ldr   r0,[r4]                   ; 080EFC92
ldr   r1,=0x06008000            ; 080EFC94
bl    swi_LZ77_VRAM             ; 080EFC96  LZ77 decompress (VRAM)
ldr   r0,=Data08245CD0          ; 080EFC9A  goal minigame 06002000 graphics
ldr   r4,=0x0201FC00            ; 080EFC9C  decompressed graphics buffer
mov   r1,r4                     ; 080EFC9E
bl    swi_LZ77_WRAM             ; 080EFCA0  LZ77 decompress (WRAM)
ldr   r1,=0x06002000            ; 080EFCA4
mov   r2,0x80                   ; 080EFCA6
lsl   r2,r2,0x4                 ; 080EFCA8
mov   r0,r4                     ; 080EFCAA
bl    swi_MemoryCopy32          ; 080EFCAC  Memory copy/fill, 32-byte blocks
ldr   r0,=Data082AF690          ; 080EFCB0  global sprite graphics
mov   r1,r4                     ; 080EFCB2
bl    swi_LZ77_WRAM             ; 080EFCB4  LZ77 decompress (WRAM)
mov   r4,0x0                    ; 080EFCB8
@@Code080EFCBA:
lsl   r1,r4,0xA                 ; 080EFCBA
ldr   r2,=0x0201FC00            ; 080EFCBC  decompressed graphics buffer
add   r0,r1,r2                  ; 080EFCBE
ldr   r2,=0x06010000            ; 080EFCC0
add   r1,r1,r2                  ; 080EFCC2
mov   r2,0x80                   ; 080EFCC4
bl    swi_MemoryCopy32          ; 080EFCC6  Memory copy/fill, 32-byte blocks
add   r0,r4,0x1                 ; 080EFCCA
lsl   r0,r0,0x10                ; 080EFCCC
lsr   r4,r0,0x10                ; 080EFCCE
cmp   r4,0xF                    ; 080EFCD0
bls   @@Code080EFCBA            ; 080EFCD2
mov   r4,0x0                    ; 080EFCD4
@@Code080EFCD6:
lsl   r0,r4,0x9                 ; 080EFCD6
ldr   r1,=Data0827E87C          ; 080EFCD8
add   r0,r0,r1                  ; 080EFCDA
lsl   r1,r4,0xA                 ; 080EFCDC
ldr   r2,=0x06010200            ; 080EFCDE
add   r1,r1,r2                  ; 080EFCE0
mov   r2,0x80                   ; 080EFCE2
bl    swi_MemoryCopy32          ; 080EFCE4  Memory copy/fill, 32-byte blocks
add   r0,r4,0x1                 ; 080EFCE8
lsl   r0,r0,0x10                ; 080EFCEA
lsr   r4,r0,0x10                ; 080EFCEC
cmp   r4,0x7                    ; 080EFCEE
bls   @@Code080EFCD6            ; 080EFCF0
pop   {r4}                      ; 080EFCF2
pop   {r0}                      ; 080EFCF4
bx    r0                        ; 080EFCF6
.pool                           ; 080EFCF8

Sub080EFD54:
push  {r4,lr}                   ; 080EFD54
ldr   r0,=0x03002200            ; 080EFD56
ldr   r1,=0x48AA                ; 080EFD58
add   r0,r0,r1                  ; 080EFD5A
ldrh  r0,[r0]                   ; 080EFD5C
lsr   r0,r0,0x1                 ; 080EFD5E
ldr   r1,=Data08196B48          ; 080EFD60
lsl   r0,r0,0x2                 ; 080EFD62
add   r0,r0,r1                  ; 080EFD64
ldr   r4,[r0]                   ; 080EFD66
ldr   r1,=0x02010400            ; 080EFD68
mov   r0,r4                     ; 080EFD6A
mov   r2,0x80                   ; 080EFD6C
bl    swi_MemoryCopy32          ; 080EFD6E  Memory copy/fill, 32-byte blocks
mov   r1,0xA0                   ; 080EFD72
lsl   r1,r1,0x13                ; 080EFD74
mov   r0,r4                     ; 080EFD76
mov   r2,0x80                   ; 080EFD78
bl    swi_MemoryCopy32          ; 080EFD7A  Memory copy/fill, 32-byte blocks
ldr   r4,=Data082D55FC          ; 080EFD7E
ldr   r1,=0x02010600            ; 080EFD80
mov   r0,r4                     ; 080EFD82
mov   r2,0x80                   ; 080EFD84
bl    swi_MemoryCopy32          ; 080EFD86  Memory copy/fill, 32-byte blocks
ldr   r1,=0x05000200            ; 080EFD8A
mov   r0,r4                     ; 080EFD8C
mov   r2,0x80                   ; 080EFD8E
bl    swi_MemoryCopy32          ; 080EFD90  Memory copy/fill, 32-byte blocks
pop   {r4}                      ; 080EFD94
pop   {r0}                      ; 080EFD96
bx    r0                        ; 080EFD98
.pool                           ; 080EFD9A

Sub080EFDB8:
lsl   r0,r0,0x10                ; 080EFDB8
ldr   r2,=0x03006D80            ; 080EFDBA
lsr   r0,r0,0xF                 ; 080EFDBC
mov   r1,r2                     ; 080EFDBE
add   r1,0x76                   ; 080EFDC0
strh  r0,[r1]                   ; 080EFDC2
ldr   r1,=Data08196B60          ; 080EFDC4
add   r1,r0,r1                  ; 080EFDC6
ldrh  r1,[r1]                   ; 080EFDC8
strh  r1,[r2,0x3C]              ; 080EFDCA
ldr   r1,=Data08196BB8          ; 080EFDCC
add   r0,r0,r1                  ; 080EFDCE
ldrh  r0,[r0]                   ; 080EFDD0
mov   r3,0xE7                   ; 080EFDD2
lsl   r3,r3,0x1                 ; 080EFDD4
add   r1,r2,r3                  ; 080EFDD6
strh  r0,[r1]                   ; 080EFDD8
bx    lr                        ; 080EFDDA
.pool                           ; 080EFDDC

Sub080EFDE8:
push  {lr}                      ; 080EFDE8
mov   r2,r0                     ; 080EFDEA
ldr   r3,=0x03006D80            ; 080EFDEC
mov   r0,0xE7                   ; 080EFDEE
lsl   r0,r0,0x1                 ; 080EFDF0
add   r1,r3,r0                  ; 080EFDF2
ldrh  r0,[r1]                   ; 080EFDF4
sub   r0,0x1                    ; 080EFDF6
strh  r0,[r1]                   ; 080EFDF8
lsl   r0,r0,0x10                ; 080EFDFA
cmp   r0,0x0                    ; 080EFDFC
bne   @@Code080EFE24            ; 080EFDFE
ldrh  r1,[r2,0x1C]              ; 080EFE00
mov   r0,r3                     ; 080EFE02
add   r0,0x76                   ; 080EFE04
ldrh  r0,[r0]                   ; 080EFE06
lsr   r2,r0,0x1                 ; 080EFE08
add   r2,0x1                    ; 080EFE0A
ldr   r0,=Data08196BAC          ; 080EFE0C
lsl   r1,r1,0x1                 ; 080EFE0E
add   r0,r1,r0                  ; 080EFE10
ldrh  r0,[r0]                   ; 080EFE12
cmp   r2,r0                     ; 080EFE14
bne   @@Code080EFE1E            ; 080EFE16
ldr   r0,=Data08196BA0          ; 080EFE18
add   r0,r1,r0                  ; 080EFE1A
ldrh  r2,[r0]                   ; 080EFE1C
@@Code080EFE1E:
mov   r0,r2                     ; 080EFE1E
bl    Sub080EFDB8               ; 080EFE20
@@Code080EFE24:
pop   {r0}                      ; 080EFE24
bx    r0                        ; 080EFE26
.pool                           ; 080EFE28

Sub080EFE34:
push  {r4-r5,lr}                ; 080EFE34
mov   r4,r0                     ; 080EFE36
ldr   r2,=0x03006D80            ; 080EFE38
mov   r0,0xE7                   ; 080EFE3A
lsl   r0,r0,0x1                 ; 080EFE3C
add   r1,r2,r0                  ; 080EFE3E
ldrh  r0,[r1]                   ; 080EFE40
sub   r0,0x1                    ; 080EFE42
strh  r0,[r1]                   ; 080EFE44
lsl   r0,r0,0x10                ; 080EFE46
lsr   r5,r0,0x10                ; 080EFE48
cmp   r5,0x0                    ; 080EFE4A
bne   @@Code080EFE94            ; 080EFE4C
ldrh  r1,[r4,0x1C]              ; 080EFE4E
mov   r0,r2                     ; 080EFE50
add   r0,0x76                   ; 080EFE52
ldrh  r0,[r0]                   ; 080EFE54
lsr   r0,r0,0x1                 ; 080EFE56
add   r2,r0,0x1                 ; 080EFE58
ldr   r0,=Data08196BAC          ; 080EFE5A
lsl   r1,r1,0x1                 ; 080EFE5C
add   r1,r1,r0                  ; 080EFE5E
ldrh  r1,[r1]                   ; 080EFE60
cmp   r2,r1                     ; 080EFE62
beq   @@Code080EFE78            ; 080EFE64
mov   r0,r2                     ; 080EFE66
bl    Sub080EFDB8               ; 080EFE68
b     @@Code080EFE94            ; 080EFE6C
.pool                           ; 080EFE6E

@@Code080EFE78:
ldr   r1,=0x03002200            ; 080EFE78
ldr   r0,[r4,0x4]               ; 080EFE7A
ldr   r0,[r0]                   ; 080EFE7C
asr   r0,r0,0x8                 ; 080EFE7E
ldr   r2,=0x4058                ; 080EFE80
add   r1,r1,r2                  ; 080EFE82
strh  r0,[r1]                   ; 080EFE84
mov   r0,0x84                   ; 080EFE86
bl    PlayYISound               ; 080EFE88
strh  r5,[r4,0x1C]              ; 080EFE8C
mov   r0,0x0                    ; 080EFE8E
bl    Sub080EFDB8               ; 080EFE90
@@Code080EFE94:
pop   {r4-r5}                   ; 080EFE94
pop   {r0}                      ; 080EFE96
bx    r0                        ; 080EFE98
.pool                           ; 080EFE9A

Sub080EFEA4:
push  {r4-r5,lr}                ; 080EFEA4
mov   r4,r0                     ; 080EFEA6
ldr   r1,=0x03006D80            ; 080EFEA8
mov   r0,0xE7                   ; 080EFEAA
lsl   r0,r0,0x1                 ; 080EFEAC
add   r2,r1,r0                  ; 080EFEAE
ldrh  r0,[r2]                   ; 080EFEB0
sub   r0,0x1                    ; 080EFEB2
strh  r0,[r2]                   ; 080EFEB4
lsl   r0,r0,0x10                ; 080EFEB6
mov   r3,r1                     ; 080EFEB8
cmp   r0,0x0                    ; 080EFEBA
bne   @@Code080EFF2A            ; 080EFEBC
ldrh  r1,[r4,0x1C]              ; 080EFEBE
mov   r5,r3                     ; 080EFEC0
add   r5,0x76                   ; 080EFEC2
ldrh  r0,[r5]                   ; 080EFEC4
lsr   r2,r0,0x1                 ; 080EFEC6
add   r2,0x1                    ; 080EFEC8
ldr   r0,=Data08196BAC          ; 080EFECA
lsl   r1,r1,0x1                 ; 080EFECC
add   r0,r1,r0                  ; 080EFECE
ldrh  r0,[r0]                   ; 080EFED0
cmp   r2,r0                     ; 080EFED2
blo   @@Code080EFEDC            ; 080EFED4
ldr   r0,=Data08196BA0          ; 080EFED6
add   r0,r1,r0                  ; 080EFED8
ldrh  r2,[r0]                   ; 080EFEDA
@@Code080EFEDC:
lsl   r0,r2,0x1                 ; 080EFEDC
strh  r0,[r5]                   ; 080EFEDE
mov   r5,r0                     ; 080EFEE0
cmp   r2,0x13                   ; 080EFEE2
bne   @@Code080EFF10            ; 080EFEE4
ldr   r0,=0xFFFFFC00            ; 080EFEE6
str   r0,[r3,0xC]               ; 080EFEE8
ldrh  r0,[r3,0x3E]              ; 080EFEEA
add   r0,0x1                    ; 080EFEEC
strh  r0,[r3,0x3E]              ; 080EFEEE
add   r4,0xF0                   ; 080EFEF0
ldrb  r0,[r4]                   ; 080EFEF2
cmp   r0,0x0                    ; 080EFEF4
bne   @@Code080EFF10            ; 080EFEF6
ldr   r1,=0x03002200            ; 080EFEF8
ldr   r0,[r3]                   ; 080EFEFA
asr   r0,r0,0x8                 ; 080EFEFC
ldr   r2,=0x4058                ; 080EFEFE
add   r1,r1,r2                  ; 080EFF00
strh  r0,[r1]                   ; 080EFF02
mov   r0,0x0                    ; 080EFF04
bl    PlayYISound               ; 080EFF06
ldrb  r0,[r4]                   ; 080EFF0A
add   r0,0x1                    ; 080EFF0C
strb  r0,[r4]                   ; 080EFF0E
@@Code080EFF10:
ldr   r1,=0x03006D80            ; 080EFF10
ldr   r0,=Data08196B60          ; 080EFF12
add   r0,r5,r0                  ; 080EFF14
ldrh  r0,[r0]                   ; 080EFF16
strh  r0,[r1,0x3C]              ; 080EFF18
ldr   r0,=Data08196BB8          ; 080EFF1A
add   r0,r5,r0                  ; 080EFF1C
ldrh  r0,[r0]                   ; 080EFF1E
mov   r3,0xE7                   ; 080EFF20
lsl   r3,r3,0x1                 ; 080EFF22
add   r2,r1,r3                  ; 080EFF24
strh  r0,[r2]                   ; 080EFF26
mov   r3,r1                     ; 080EFF28
@@Code080EFF2A:
ldrh  r0,[r3,0x3E]              ; 080EFF2A
cmp   r0,0x0                    ; 080EFF2C
beq   @@Code080EFF4C            ; 080EFF2E
ldr   r0,[r3,0xC]               ; 080EFF30
add   r0,0x40                   ; 080EFF32
str   r0,[r3,0xC]               ; 080EFF34
ldr   r1,[r3,0x4]               ; 080EFF36
add   r1,r1,r0                  ; 080EFF38
str   r1,[r3,0x4]               ; 080EFF3A
ldr   r0,=0x77FF                ; 080EFF3C
cmp   r1,r0                     ; 080EFF3E
ble   @@Code080EFF4C            ; 080EFF40
mov   r0,0x0                    ; 080EFF42
strh  r0,[r3,0x3E]              ; 080EFF44
mov   r0,0xF0                   ; 080EFF46
lsl   r0,r0,0x7                 ; 080EFF48
str   r0,[r3,0x4]               ; 080EFF4A
@@Code080EFF4C:
pop   {r4-r5}                   ; 080EFF4C
pop   {r0}                      ; 080EFF4E
bx    r0                        ; 080EFF50
.pool                           ; 080EFF52

Sub080EFF78:
push  {r4,lr}                   ; 080EFF78
mov   r4,r0                     ; 080EFF7A
ldr   r0,=0x03006D80            ; 080EFF7C
add   r0,0xA2                   ; 080EFF7E
mov   r1,0x30                   ; 080EFF80
strh  r1,[r0]                   ; 080EFF82
ldr   r1,=CodePtrs08196C00      ; 080EFF84
ldrh  r0,[r4,0x1C]              ; 080EFF86
lsl   r0,r0,0x2                 ; 080EFF88
add   r0,r0,r1                  ; 080EFF8A
ldr   r1,[r0]                   ; 080EFF8C
mov   r0,r4                     ; 080EFF8E
bl    Sub_bx_r1                 ; 080EFF90  bx r1
ldr   r4,[r4]                   ; 080EFF94
ldr   r0,=0x03002200            ; 080EFF96
ldr   r1,=0x4901                ; 080EFF98
add   r0,r0,r1                  ; 080EFF9A
ldrb  r2,[r0]                   ; 080EFF9C
mov   r0,0x7                    ; 080EFF9E
and   r0,r2                     ; 080EFFA0
cmp   r0,0x0                    ; 080EFFA2
bne   @@Code080EFFB4            ; 080EFFA4
ldr   r0,=Data08196BF8          ; 080EFFA6
mov   r1,0x18                   ; 080EFFA8
and   r1,r2                     ; 080EFFAA
lsr   r1,r1,0x2                 ; 080EFFAC
add   r1,r1,r0                  ; 080EFFAE
ldrh  r0,[r1]                   ; 080EFFB0
strh  r0,[r4,0x38]              ; 080EFFB2
@@Code080EFFB4:
ldr   r0,=0x0300702C            ; 080EFFB4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080EFFB6
ldr   r1,=0x156E                ; 080EFFB8
add   r0,r0,r1                  ; 080EFFBA
mov   r1,0x0                    ; 080EFFBC
strb  r1,[r0]                   ; 080EFFBE
mov   r0,r4                     ; 080EFFC0
bl    BabyMario_main               ; 080EFFC2
bl    Sub08049E80               ; 080EFFC6
pop   {r4}                      ; 080EFFCA
pop   {r0}                      ; 080EFFCC
bx    r0                        ; 080EFFCE
.pool                           ; 080EFFD0

Sub080EFFEC:
push  {lr}                      ; 080EFFEC
mov   r1,r0                     ; 080EFFEE
ldrh  r0,[r1,0x12]              ; 080EFFF0
sub   r0,0x1                    ; 080EFFF2
strh  r0,[r1,0x12]              ; 080EFFF4
lsl   r0,r0,0x10                ; 080EFFF6
lsr   r2,r0,0x10                ; 080EFFF8
cmp   r2,0x0                    ; 080EFFFA
bne   @@Code080F000A            ; 080EFFFC
ldrh  r0,[r1,0x10]              ; 080EFFFE
add   r0,0x1                    ; 080F0000
strh  r0,[r1,0x10]              ; 080F0002
mov   r0,r1                     ; 080F0004
add   r0,0x52                   ; 080F0006
strh  r2,[r0]                   ; 080F0008
@@Code080F000A:
pop   {r0}                      ; 080F000A
bx    r0                        ; 080F000C
.pool                           ; 080F000E

Sub080F0010:
push  {r4,lr}                   ; 080F0010
mov   r4,r0                     ; 080F0012
bl    Sub080EED78               ; 080F0014
mov   r0,r4                     ; 080F0018
add   r0,0x50                   ; 080F001A
ldrh  r0,[r0]                   ; 080F001C
cmp   r0,0x0                    ; 080F001E
bne   @@Code080F002C            ; 080F0020
mov   r0,0x30                   ; 080F0022
strh  r0,[r4,0x12]              ; 080F0024
ldrh  r0,[r4,0x10]              ; 080F0026
add   r0,0x1                    ; 080F0028
strh  r0,[r4,0x10]              ; 080F002A
@@Code080F002C:
pop   {r4}                      ; 080F002C
pop   {r0}                      ; 080F002E
bx    r0                        ; 080F0030
.pool                           ; 080F0032

Sub080F0034:
push  {r4-r7,lr}                ; 080F0034
add   sp,-0x4                   ; 080F0036
mov   r7,r0                     ; 080F0038
ldrh  r0,[r7,0x12]              ; 080F003A
sub   r0,0x1                    ; 080F003C
strh  r0,[r7,0x12]              ; 080F003E
lsl   r0,r0,0x10                ; 080F0040
lsr   r6,r0,0x10                ; 080F0042
cmp   r6,0x0                    ; 080F0044
bne   @@Code080F008C            ; 080F0046
ldr   r4,=0x03006210            ; 080F0048
ldrb  r0,[r4,0x1E]              ; 080F004A
mov   r5,0x1                    ; 080F004C
strb  r5,[r4,0x1E]              ; 080F004E
mov   r0,r4                     ; 080F0050
bl    Sub0810B394               ; 080F0052
mov   r0,sp                     ; 080F0056
strh  r6,[r0]                   ; 080F0058
ldr   r1,=0x02027F94            ; 080F005A
ldr   r2,=0x01000142            ; 080F005C
bl    swi_MemoryCopy4or2        ; 080F005E  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x03007240            ; 080F0062  Normal gameplay IWRAM (0300220C)
ldr   r3,[r0]                   ; 080F0064
mov   r0,0xE0                   ; 080F0066
lsl   r0,r0,0x1                 ; 080F0068  1C0
add   r2,r3,r0                  ; 080F006A  [03007240]+1C0 (030023CC)
ldr   r1,=Data08196C18          ; 080F006C  table of message IDs
ldr   r0,=0x089A                ; 080F006E
add   r4,r4,r0                  ; 080F0070  03006AAA
ldrh  r0,[r4]                   ; 080F0072  goal minigame ID *2
lsr   r0,r0,0x1                 ; 080F0074
lsl   r0,r0,0x1                 ; 080F0076
add   r0,r0,r1                  ; 080F0078  offset table with goal minigame ID *2
ldrh  r0,[r0]                   ; 080F007A  message ID from table
strh  r0,[r2,0xC]               ; 080F007C  set message ID
mov   r1,0x87                   ; 080F007E
lsl   r1,r1,0x2                 ; 080F0080  21C
add   r0,r3,r1                  ; 080F0082  [03007240]+21C (03002428)
strh  r5,[r0]                   ; 080F0084  activate message
ldrh  r0,[r7,0x10]              ; 080F0086
add   r0,0x1                    ; 080F0088
strh  r0,[r7,0x10]              ; 080F008A
@@Code080F008C:
add   sp,0x4                    ; 080F008C
pop   {r4-r7}                   ; 080F008E
pop   {r0}                      ; 080F0090
bx    r0                        ; 080F0092
.pool                           ; 080F0094

Sub080F00AC:
push  {r4-r7,lr}                ; 080F00AC
mov   r6,r0                     ; 080F00AE
mov   r0,0x1                    ; 080F00B0
bl    Sub080E9DC8               ; 080F00B2
mov   r4,0x0                    ; 080F00B6
ldr   r0,=Data081969DC          ; 080F00B8
ldrh  r0,[r0]                   ; 080F00BA
add   r0,0x1                    ; 080F00BC
lsl   r0,r0,0x2                 ; 080F00BE
mov   r1,0xA1                   ; 080F00C0
lsl   r1,r1,0x1                 ; 080F00C2
sub   r1,r1,r0                  ; 080F00C4
cmp   r4,r1                     ; 080F00C6
bge   @@Code080F010C            ; 080F00C8
ldr   r0,=0xFFFE                ; 080F00CA
mov   r12,r0                    ; 080F00CC
ldr   r5,=0x02011400            ; 080F00CE
ldr   r7,=0x02027F94            ; 080F00D0
@@Code080F00D2:
mov   r0,r4                     ; 080F00D2
mov   r2,r12                    ; 080F00D4
and   r0,r2                     ; 080F00D6
lsl   r0,r0,0x1                 ; 080F00D8
add   r0,r0,r7                  ; 080F00DA
ldrh  r3,[r0]                   ; 080F00DC
mov   r2,r3                     ; 080F00DE
cmp   r2,0x0                    ; 080F00E0
beq   @@Code080F00FC            ; 080F00E2
lsl   r0,r4,0x1                 ; 080F00E4
add   r0,r0,r5                  ; 080F00E6
strh  r3,[r0]                   ; 080F00E8
b     @@Code080F0102            ; 080F00EA
.pool                           ; 080F00EC

@@Code080F00FC:
lsl   r0,r4,0x1                 ; 080F00FC
add   r0,r0,r5                  ; 080F00FE
strh  r2,[r0]                   ; 080F0100
@@Code080F0102:
add   r0,r4,0x1                 ; 080F0102
lsl   r0,r0,0x10                ; 080F0104
lsr   r4,r0,0x10                ; 080F0106
cmp   r4,r1                     ; 080F0108
blt   @@Code080F00D2            ; 080F010A
@@Code080F010C:
mov   r0,r6                     ; 080F010C
bl    Sub080EED78               ; 080F010E
ldr   r0,=0x03007240            ; 080F0112  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F0114
mov   r1,0x87                   ; 080F0116
lsl   r1,r1,0x2                 ; 080F0118
add   r0,r0,r1                  ; 080F011A
ldrh  r0,[r0]                   ; 080F011C
cmp   r0,0x0                    ; 080F011E
bne   @@Code080F0128            ; 080F0120
ldrh  r0,[r6,0x10]              ; 080F0122
add   r0,0x1                    ; 080F0124
strh  r0,[r6,0x10]              ; 080F0126
@@Code080F0128:
pop   {r4-r7}                   ; 080F0128
pop   {r0}                      ; 080F012A
bx    r0                        ; 080F012C
.pool                           ; 080F012E

Sub080F0134:
push  {r4-r5,lr}                ; 080F0134
mov   r5,r0                     ; 080F0136
ldr   r0,=0x03002200            ; 080F0138
ldr   r2,=0x48AA                ; 080F013A
add   r1,r0,r2                  ; 080F013C
ldrh  r1,[r1]                   ; 080F013E
mov   r3,r0                     ; 080F0140
cmp   r1,0x8                    ; 080F0142
bne   @@Code080F0194            ; 080F0144
ldr   r4,=0x407E                ; 080F0146
add   r2,r3,r4                  ; 080F0148
ldrh  r4,[r2]                   ; 080F014A
cmp   r4,0x0                    ; 080F014C
bne   @@Code080F0194            ; 080F014E
mov   r1,0x0                    ; 080F0150
mov   r0,0x1                    ; 080F0152
strh  r0,[r2]                   ; 080F0154
ldr   r2,=0x48FA                ; 080F0156
add   r0,r3,r2                  ; 080F0158
strb  r1,[r0]                   ; 080F015A
ldr   r0,=0x4905                ; 080F015C
add   r1,r3,r0                  ; 080F015E
ldrb  r0,[r1]                   ; 080F0160
add   r0,0x1                    ; 080F0162
strb  r0,[r1]                   ; 080F0164
ldr   r0,=0x03007240            ; 080F0166  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F0168
ldr   r1,=0x266C                ; 080F016A
add   r0,r0,r1                  ; 080F016C
strh  r4,[r0,0x6]               ; 080F016E
mov   r0,0x10                   ; 080F0170
bl    Sub0812C458               ; 080F0172
b     @@Code080F01F0            ; 080F0176
.pool                           ; 080F0178

@@Code080F0194:
ldr   r2,=0x4901                ; 080F0194
add   r0,r3,r2                  ; 080F0196
ldrb  r1,[r0]                   ; 080F0198
mov   r2,0x1                    ; 080F019A
mov   r0,r2                     ; 080F019C
and   r0,r1                     ; 080F019E
cmp   r0,0x0                    ; 080F01A0
bne   @@Code080F01F0            ; 080F01A2
ldr   r4,=0x488C                ; 080F01A4
add   r0,r3,r4                  ; 080F01A6
ldrh  r1,[r0]                   ; 080F01A8
sub   r1,0x1                    ; 080F01AA
strh  r1,[r0]                   ; 080F01AC
add   r4,0x6E                   ; 080F01AE
add   r0,r3,r4                  ; 080F01B0
strb  r1,[r0]                   ; 080F01B2
lsl   r1,r1,0x10                ; 080F01B4
cmp   r1,0x0                    ; 080F01B6
bne   @@Code080F01F0            ; 080F01B8
mov   r0,r5                     ; 080F01BA
add   r0,0xC5                   ; 080F01BC
strb  r2,[r0]                   ; 080F01BE
ldr   r0,=0x48CC                ; 080F01C0
add   r1,r3,r0                  ; 080F01C2
mov   r0,0x1F                   ; 080F01C4
strh  r0,[r1]                   ; 080F01C6
ldr   r1,=0x47C2                ; 080F01C8
add   r2,r3,r1                  ; 080F01CA
ldrh  r0,[r2]                   ; 080F01CC
mov   r1,0x2                    ; 080F01CE
eor   r0,r1                     ; 080F01D0
strh  r0,[r2]                   ; 080F01D2
ldr   r4,=0x47C4                ; 080F01D4
add   r2,r3,r4                  ; 080F01D6
ldrh  r0,[r2]                   ; 080F01D8
mov   r1,0x10                   ; 080F01DA
eor   r0,r1                     ; 080F01DC
strh  r0,[r2]                   ; 080F01DE
ldr   r0,=0x4058                ; 080F01E0
add   r1,r3,r0                  ; 080F01E2
mov   r0,0x32                   ; 080F01E4
bl    PlayYISound               ; 080F01E6
ldrh  r0,[r5,0x10]              ; 080F01EA
add   r0,0x1                    ; 080F01EC
strh  r0,[r5,0x10]              ; 080F01EE
@@Code080F01F0:
pop   {r4-r5}                   ; 080F01F0
pop   {r0}                      ; 080F01F2
bx    r0                        ; 080F01F4
.pool                           ; 080F01F6

Sub080F0210:
push  {lr}                      ; 080F0210
mov   r1,r0                     ; 080F0212
ldr   r0,=0x03002200            ; 080F0214
ldr   r2,=0x48AA                ; 080F0216
add   r0,r0,r2                  ; 080F0218
ldrh  r0,[r0]                   ; 080F021A
cmp   r0,0xA                    ; 080F021C
bne   @@Code080F0226            ; 080F021E
mov   r0,r1                     ; 080F0220
bl    Sub080F5170               ; 080F0222
@@Code080F0226:
pop   {r0}                      ; 080F0226
bx    r0                        ; 080F0228
.pool                           ; 080F022A

Sub080F0234:
push  {r4-r6,lr}                ; 080F0234
mov   r3,r0                     ; 080F0236
ldr   r2,=0x03002200            ; 080F0238
ldr   r0,=0x47EC                ; 080F023A
add   r4,r2,r0                  ; 080F023C
ldrh  r1,[r4]                   ; 080F023E
mov   r0,r1                     ; 080F0240
sub   r0,0x8                    ; 080F0242
mov   r5,0x0                    ; 080F0244
strh  r0,[r4]                   ; 080F0246
ldr   r6,=0x47EE                ; 080F0248
add   r2,r2,r6                  ; 080F024A
strh  r0,[r2]                   ; 080F024C
sub   r1,0x9                    ; 080F024E
lsl   r1,r1,0x10                ; 080F0250
ldr   r0,=0x7FFE0000            ; 080F0252
cmp   r1,r0                     ; 080F0254
bls   @@Code080F026A            ; 080F0256
strh  r5,[r4]                   ; 080F0258
strh  r5,[r2]                   ; 080F025A
ldrh  r0,[r3,0x10]              ; 080F025C
add   r0,0x1                    ; 080F025E
strh  r0,[r3,0x10]              ; 080F0260
strh  r5,[r3,0x18]              ; 080F0262
ldr   r0,=Data08196C24          ; 080F0264
ldr   r0,[r0]                   ; 080F0266
str   r0,[r3,0x8]               ; 080F0268
@@Code080F026A:
mov   r0,r3                     ; 080F026A
bl    Sub080F0210               ; 080F026C
pop   {r4-r6}                   ; 080F0270
pop   {r0}                      ; 080F0272
bx    r0                        ; 080F0274
.pool                           ; 080F0276

Sub080F028C:
push  {r4-r6,lr}                ; 080F028C
mov   r2,r0                     ; 080F028E
ldr   r1,[r2,0x8]               ; 080F0290
ldr   r0,=0xFFFF8000            ; 080F0292
add   r1,r1,r0                  ; 080F0294
str   r1,[r2,0x8]               ; 080F0296
ldr   r0,[r2,0xC]               ; 080F0298
add   r0,r0,r1                  ; 080F029A
str   r0,[r2,0xC]               ; 080F029C
ldr   r0,=0x03002200            ; 080F029E
ldr   r3,=0x47EC                ; 080F02A0
add   r4,r0,r3                  ; 080F02A2
lsr   r1,r1,0x10                ; 080F02A4
ldrh  r6,[r4]                   ; 080F02A6
add   r1,r1,r6                  ; 080F02A8
mov   r3,0x0                    ; 080F02AA
strh  r1,[r4]                   ; 080F02AC
ldr   r6,=0x47EE                ; 080F02AE
add   r5,r0,r6                  ; 080F02B0
strh  r1,[r5]                   ; 080F02B2
sub   r1,0x1                    ; 080F02B4
lsl   r1,r1,0x10                ; 080F02B6
ldr   r0,=0x7FFE0000            ; 080F02B8
cmp   r1,r0                     ; 080F02BA
bls   @@Code080F0300            ; 080F02BC
str   r3,[r2,0xC]               ; 080F02BE
strh  r3,[r4]                   ; 080F02C0
strh  r3,[r5]                   ; 080F02C2
ldrh  r0,[r2,0x18]              ; 080F02C4
add   r0,0x1                    ; 080F02C6
strh  r0,[r2,0x18]              ; 080F02C8
lsl   r0,r0,0x10                ; 080F02CA
lsr   r0,r0,0x10                ; 080F02CC
cmp   r0,0x4                    ; 080F02CE
bls   @@Code080F02F4            ; 080F02D0
ldrh  r0,[r2,0x10]              ; 080F02D2
add   r0,0x1                    ; 080F02D4
strh  r0,[r2,0x10]              ; 080F02D6
mov   r0,0x30                   ; 080F02D8
strh  r0,[r2,0x12]              ; 080F02DA
b     @@Code080F0300            ; 080F02DC
.pool                           ; 080F02DE

@@Code080F02F4:
ldr   r0,=Data08196C24          ; 080F02F4
ldrh  r1,[r2,0x18]              ; 080F02F6
lsl   r1,r1,0x2                 ; 080F02F8
add   r1,r1,r0                  ; 080F02FA
ldr   r0,[r1]                   ; 080F02FC
str   r0,[r2,0x8]               ; 080F02FE
@@Code080F0300:
mov   r0,r2                     ; 080F0300
bl    Sub080F0210               ; 080F0302
pop   {r4-r6}                   ; 080F0306
pop   {r0}                      ; 080F0308
bx    r0                        ; 080F030A
.pool                           ; 080F030C

Sub080F0310:
push  {lr}                      ; 080F0310
mov   r2,r0                     ; 080F0312
ldrh  r0,[r2,0x12]              ; 080F0314
sub   r0,0x1                    ; 080F0316
strh  r0,[r2,0x12]              ; 080F0318
lsl   r0,r0,0x10                ; 080F031A
cmp   r0,0x0                    ; 080F031C
bne   @@Code080F033A            ; 080F031E
ldr   r1,=Data08196C38          ; 080F0320
ldr   r0,=0x03002200            ; 080F0322
ldr   r3,=0x48AA                ; 080F0324
add   r0,r0,r3                  ; 080F0326
ldrh  r0,[r0]                   ; 080F0328
lsr   r0,r0,0x1                 ; 080F032A
lsl   r0,r0,0x1                 ; 080F032C
add   r0,r0,r1                  ; 080F032E
ldrh  r0,[r0]                   ; 080F0330
strh  r0,[r2,0x12]              ; 080F0332
ldrh  r0,[r2,0x10]              ; 080F0334
add   r0,0x1                    ; 080F0336
strh  r0,[r2,0x10]              ; 080F0338
@@Code080F033A:
mov   r0,r2                     ; 080F033A
bl    Sub080F0210               ; 080F033C
pop   {r0}                      ; 080F0340
bx    r0                        ; 080F0342
.pool                           ; 080F0344

Sub080F0350:
push  {r4-r6,lr}                ; 080F0350
mov   r4,r0                     ; 080F0352
bl    Sub080F1ABC               ; 080F0354
ldr   r3,=0x03002200            ; 080F0358
ldr   r1,=0x47C0                ; 080F035A
add   r0,r3,r1                  ; 080F035C
ldrh  r0,[r0]                   ; 080F035E
cmp   r0,0x0                    ; 080F0360
beq   @@Code080F0368            ; 080F0362
mov   r0,0x0                    ; 080F0364
strh  r0,[r4,0x12]              ; 080F0366
@@Code080F0368:
ldrh  r0,[r4,0x12]              ; 080F0368
mov   r5,r0                     ; 080F036A
cmp   r5,0x0                    ; 080F036C
beq   @@Code080F0380            ; 080F036E
sub   r0,0x1                    ; 080F0370
strh  r0,[r4,0x12]              ; 080F0372
b     @@Code080F03C0            ; 080F0374
.pool                           ; 080F0376

@@Code080F0380:
ldr   r6,=0x4888                ; 080F0380
add   r1,r3,r6                  ; 080F0382
mov   r2,0x0                    ; 080F0384
mov   r0,0xFF                   ; 080F0386
strh  r0,[r1]                   ; 080F0388
ldr   r1,=0x48FA                ; 080F038A
add   r0,r3,r1                  ; 080F038C
strb  r2,[r0]                   ; 080F038E
sub   r6,0xC2                   ; 080F0390
add   r2,r3,r6                  ; 080F0392
ldrh  r0,[r2]                   ; 080F0394
mov   r6,0xC0                   ; 080F0396
lsl   r6,r6,0x7                 ; 080F0398
mov   r1,r6                     ; 080F039A
eor   r0,r1                     ; 080F039C
strh  r0,[r2]                   ; 080F039E
ldr   r0,=0x4905                ; 080F03A0
add   r1,r3,r0                  ; 080F03A2
mov   r0,0x1E                   ; 080F03A4
strb  r0,[r1]                   ; 080F03A6
ldr   r6,=0x48F6                ; 080F03A8
add   r1,r3,r6                  ; 080F03AA
mov   r0,0x1                    ; 080F03AC
strb  r0,[r1]                   ; 080F03AE
ldr   r0,=0x03007240            ; 080F03B0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F03B2
ldr   r1,=0x266C                ; 080F03B4
add   r0,r0,r1                  ; 080F03B6
strh  r5,[r0,0x6]               ; 080F03B8
mov   r0,0x10                   ; 080F03BA
bl    Sub0812C458               ; 080F03BC
@@Code080F03C0:
ldr   r0,=0x03002200            ; 080F03C0
ldr   r6,=0x48AA                ; 080F03C2
add   r0,r0,r6                  ; 080F03C4
ldrh  r0,[r0]                   ; 080F03C6
cmp   r0,0xA                    ; 080F03C8
bne   @@Code080F03D2            ; 080F03CA
mov   r0,r4                     ; 080F03CC
bl    Sub080F5170               ; 080F03CE
@@Code080F03D2:
pop   {r4-r6}                   ; 080F03D2
pop   {r0}                      ; 080F03D4
bx    r0                        ; 080F03D6
.pool                           ; 080F03D8

GoalMinigameEnd:
; Game state 1E: Goal minigame end
push  {r4-r7,lr}                ; 080F03F8
mov   r7,r10                    ; 080F03FA
mov   r6,r9                     ; 080F03FC
mov   r5,r8                     ; 080F03FE
push  {r5-r7}                   ; 080F0400
mov   r6,0x0                    ; 080F0402
ldr   r0,=0x03002200            ; 080F0404
mov   r8,r0                     ; 080F0406
mov   r7,0x80                   ; 080F0408
lsl   r7,r7,0x8                 ; 080F040A
mov   r1,0xF8                   ; 080F040C
lsl   r1,r1,0x2                 ; 080F040E
mov   r10,r1                    ; 080F0410
mov   r4,0xF8                   ; 080F0412
lsl   r4,r4,0x7                 ; 080F0414
mov   r9,r4                     ; 080F0416
ldr   r0,=0x01FF                ; 080F0418
mov   r12,r0                    ; 080F041A
@@Code080F041C:
lsl   r0,r6,0x1                 ; 080F041C
ldr   r1,=0x02010400            ; 080F041E
add   r5,r0,r1                  ; 080F0420
ldrh  r4,[r5]                   ; 080F0422
mov   r0,0x1F                   ; 080F0424
and   r0,r4                     ; 080F0426
sub   r0,0x2                    ; 080F0428
lsl   r0,r0,0x10                ; 080F042A
lsr   r3,r0,0x10                ; 080F042C
mov   r0,r3                     ; 080F042E
and   r0,r7                     ; 080F0430
cmp   r0,0x0                    ; 080F0432
beq   @@Code080F0438            ; 080F0434
mov   r3,0x0                    ; 080F0436
@@Code080F0438:
mov   r2,r10                    ; 080F0438
and   r2,r4                     ; 080F043A
mov   r0,r2                     ; 080F043C
sub   r0,0x40                   ; 080F043E
lsl   r0,r0,0x10                ; 080F0440
lsr   r2,r0,0x10                ; 080F0442
mov   r0,r2                     ; 080F0444
and   r0,r7                     ; 080F0446
cmp   r0,0x0                    ; 080F0448
beq   @@Code080F044E            ; 080F044A
mov   r2,0x0                    ; 080F044C
@@Code080F044E:
mov   r1,r9                     ; 080F044E
and   r1,r4                     ; 080F0450
ldr   r4,=0xFFFFF800            ; 080F0452
add   r0,r1,r4                  ; 080F0454
lsl   r0,r0,0x10                ; 080F0456
lsr   r1,r0,0x10                ; 080F0458
mov   r0,r1                     ; 080F045A
and   r0,r7                     ; 080F045C
cmp   r0,0x0                    ; 080F045E
beq   @@Code080F0464            ; 080F0460
mov   r1,0x0                    ; 080F0462
@@Code080F0464:
orr   r1,r2                     ; 080F0464
orr   r3,r1                     ; 080F0466
strh  r3,[r5]                   ; 080F0468
add   r0,r6,0x1                 ; 080F046A
lsl   r0,r0,0x10                ; 080F046C
lsr   r6,r0,0x10                ; 080F046E
cmp   r6,r12                    ; 080F0470
bls   @@Code080F041C            ; 080F0472
mov   r2,r8                     ; 080F0474
ldr   r0,=0x4967                ; 080F0476
add   r1,r2,r0                  ; 080F0478
mov   r0,0x3                    ; 080F047A
strb  r0,[r1]                   ; 080F047C
ldr   r1,=0x48FA                ; 080F047E
add   r4,r2,r1                  ; 080F0480
ldrb  r0,[r4]                   ; 080F0482
cmp   r0,0xF                    ; 080F0484
bhi   @@Code080F04B4            ; 080F0486
add   r0,0x1                    ; 080F0488
strb  r0,[r4]                   ; 080F048A
lsl   r0,r0,0x18                ; 080F048C
lsr   r0,r0,0x18                ; 080F048E
cmp   r0,0xE                    ; 080F0490
bne   @@Code080F0520            ; 080F0492
bl    Sub0812C28C               ; 080F0494
b     @@Code080F0520            ; 080F0498
.pool                           ; 080F049A

@@Code080F04B4:
bl    Sub0812C2A0               ; 080F04B4
lsl   r0,r0,0x18                ; 080F04B8
lsr   r0,r0,0x18                ; 080F04BA
cmp   r0,0x1                    ; 080F04BC
beq   @@Code080F0520            ; 080F04BE
ldrb  r1,[r4]                   ; 080F04C0
ldr   r0,=0x488C                ; 080F04C2
add   r0,r8                     ; 080F04C4
strh  r1,[r0]                   ; 080F04C6
ldr   r1,=0x48FB                ; 080F04C8
add   r1,r8                     ; 080F04CA
mov   r0,0x1                    ; 080F04CC
strb  r0,[r1]                   ; 080F04CE
ldr   r2,=0x47C6                ; 080F04D0
add   r2,r8                     ; 080F04D2
ldrh  r1,[r2]                   ; 080F04D4
ldr   r0,=0x9FFF                ; 080F04D6
and   r0,r1                     ; 080F04D8
strh  r0,[r2]                   ; 080F04DA
ldr   r1,=0x4905                ; 080F04DC
add   r1,r8                     ; 080F04DE
mov   r0,0x33                   ; 080F04E0
strb  r0,[r1]                   ; 080F04E2
ldr   r0,=0x413E                ; 080F04E4
add   r0,r8                     ; 080F04E6
ldrh  r0,[r0]                   ; 080F04E8
cmp   r0,0x14                   ; 080F04EA
bne   @@Code080F0512            ; 080F04EC
ldr   r2,=0x4A48                ; 080F04EE
add   r2,r8                     ; 080F04F0
ldrb  r1,[r2]                   ; 080F04F2
mov   r0,0x4                    ; 080F04F4
and   r0,r1                     ; 080F04F6
cmp   r0,0x0                    ; 080F04F8
beq   @@Code080F0512            ; 080F04FA
mov   r0,0x5                    ; 080F04FC
neg   r0,r0                     ; 080F04FE
and   r0,r1                     ; 080F0500
strb  r0,[r2]                   ; 080F0502
bl    Sub080FAA64               ; 080F0504
ldr   r0,=0x4B64                ; 080F0508
add   r0,r8                     ; 080F050A
ldrb  r0,[r0]                   ; 080F050C
cmp   r0,0x3                    ; 080F050E
beq   @@Code080F0520            ; 080F0510
@@Code080F0512:
bl    Sub0802E020               ; 080F0512
ldr   r0,=0x03002200            ; 080F0516
ldr   r4,=0x48F6                ; 080F0518
add   r0,r0,r4                  ; 080F051A
mov   r1,0x0                    ; 080F051C
strb  r1,[r0]                   ; 080F051E
@@Code080F0520:
pop   {r3-r5}                   ; 080F0520
mov   r8,r3                     ; 080F0522
mov   r9,r4                     ; 080F0524
mov   r10,r5                    ; 080F0526
pop   {r4-r7}                   ; 080F0528
pop   {r0}                      ; 080F052A
bx    r0                        ; 080F052C
.pool                           ; 080F052E

Sub080F0558:
push  {r4-r7,lr}                ; 080F0558
mov   r6,0x3                    ; 080F055A
ldr   r0,=Data08196E1A          ; 080F055C
ldrh  r5,[r0,0x8]               ; 080F055E
ldr   r0,=0x02011000            ; 080F0560
ldrh  r3,[r0]                   ; 080F0562
ldr   r4,=0x61A2                ; 080F0564
@@Code080F0566:
lsl   r1,r3,0x1                 ; 080F0566
ldr   r7,=0x02011002            ; 080F0568
add   r0,r1,r7                  ; 080F056A
strh  r5,[r0]                   ; 080F056C
ldr   r0,=0x02011004            ; 080F056E
add   r2,r1,r0                  ; 080F0570
mov   r0,0x3                    ; 080F0572
strh  r0,[r2]                   ; 080F0574
ldr   r2,=0x02011006            ; 080F0576
add   r0,r1,r2                  ; 080F0578
strh  r4,[r0]                   ; 080F057A
ldr   r0,=0x02011008            ; 080F057C
add   r2,r1,r0                  ; 080F057E
add   r0,r4,0x1                 ; 080F0580
strh  r0,[r2]                   ; 080F0582
ldr   r2,=0x0201100A            ; 080F0584
add   r1,r1,r2                  ; 080F0586
add   r0,r4,0x2                 ; 080F0588
strh  r0,[r1]                   ; 080F058A
add   r0,r3,0x5                 ; 080F058C
lsl   r0,r0,0x10                ; 080F058E
lsr   r3,r0,0x10                ; 080F0590
mov   r0,r5                     ; 080F0592
add   r0,0x40                   ; 080F0594
lsl   r0,r0,0x10                ; 080F0596
lsr   r5,r0,0x10                ; 080F0598
add   r0,r4,0x3                 ; 080F059A
lsl   r0,r0,0x10                ; 080F059C
lsr   r4,r0,0x10                ; 080F059E
sub   r0,r6,0x1                 ; 080F05A0
lsl   r0,r0,0x10                ; 080F05A2
lsr   r6,r0,0x10                ; 080F05A4
cmp   r6,0x0                    ; 080F05A6
bne   @@Code080F0566            ; 080F05A8
lsl   r0,r3,0x1                 ; 080F05AA
add   r0,r0,r7                  ; 080F05AC
ldr   r2,=0xFFFF                ; 080F05AE
mov   r1,r2                     ; 080F05B0
strh  r1,[r0]                   ; 080F05B2
ldr   r0,=0x02011000            ; 080F05B4
strh  r3,[r0]                   ; 080F05B6
pop   {r4-r7}                   ; 080F05B8
pop   {r0}                      ; 080F05BA
bx    r0                        ; 080F05BC
.pool                           ; 080F05BE

Sub080F05E4:
push  {r4,lr}                   ; 080F05E4
mov   r4,r0                     ; 080F05E6
bl    Sub080F1ABC               ; 080F05E8
ldrh  r1,[r4,0x1E]              ; 080F05EC
mov   r0,0x80                   ; 080F05EE
lsl   r0,r0,0x1                 ; 080F05F0  100
cmp   r1,r0                     ; 080F05F2
bne   @@Code080F0624            ; 080F05F4
bl    Sub080F0558               ; 080F05F6
ldr   r0,=0x03007240            ; 080F05FA  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080F05FC
mov   r0,0xE0                   ; 080F05FE
lsl   r0,r0,0x1                 ; 080F0600  1C0
add   r1,r2,r0                  ; 080F0602  [03007240]+1C0 (030023CC)
mov   r0,0x29                   ; 080F0604  29: Flip Cards exit choice
strh  r0,[r1,0xC]               ; 080F0606  set message ID
mov   r0,0x87                   ; 080F0608
lsl   r0,r0,0x2                 ; 080F060A  21C
add   r1,r2,r0                  ; 080F060C  [03007240]+21C (03002428)
ldrh  r0,[r1]                   ; 080F060E
add   r0,0x1                    ; 080F0610  activate message
strh  r0,[r1]                   ; 080F0612
mov   r0,0xC                    ; 080F0614
strh  r0,[r4,0x10]              ; 080F0616
mov   r0,0x1                    ; 080F0618
strh  r0,[r4,0x12]              ; 080F061A
b     @@Code080F0630            ; 080F061C
.pool                           ; 080F061E

@@Code080F0624:
mov   r0,r4                     ; 080F0624
bl    Sub080F166C               ; 080F0626
ldrh  r0,[r4,0x1E]              ; 080F062A
add   r0,0x10                   ; 080F062C
strh  r0,[r4,0x1E]              ; 080F062E
@@Code080F0630:
pop   {r4}                      ; 080F0630
pop   {r0}                      ; 080F0632
bx    r0                        ; 080F0634
.pool                           ; 080F0636

Sub080F0638:
push  {r4,lr}                   ; 080F0638
mov   r4,r0                     ; 080F063A
bl    Sub080F1ABC               ; 080F063C
mov   r0,r4                     ; 080F0640
bl    Sub080F166C               ; 080F0642
ldrh  r0,[r4,0x1E]              ; 080F0646
cmp   r0,0xC0                   ; 080F0648
bne   @@Code080F0654            ; 080F064A
ldrh  r0,[r4,0x10]              ; 080F064C
add   r0,0x1                    ; 080F064E
strh  r0,[r4,0x10]              ; 080F0650
b     @@Code080F0658            ; 080F0652
@@Code080F0654:
sub   r0,0x20                   ; 080F0654
strh  r0,[r4,0x1E]              ; 080F0656
@@Code080F0658:
pop   {r4}                      ; 080F0658
pop   {r0}                      ; 080F065A
bx    r0                        ; 080F065C
.pool                           ; 080F065E

Sub080F0660:
push  {r4-r7,lr}                ; 080F0660
ldr   r2,=0x03002200            ; 080F0662
ldr   r1,=0x47D0                ; 080F0664
add   r1,r1,r2                  ; 080F0666
mov   r12,r1                    ; 080F0668
ldrh  r1,[r1]                   ; 080F066A
lsr   r7,r1,0x2                 ; 080F066C
ldr   r6,[r0,0x4]               ; 080F066E
ldrh  r0,[r0,0x3C]              ; 080F0670
mov   r5,0x0                    ; 080F0672
cmp   r0,0x4                    ; 080F0674
bne   @@Code080F067A            ; 080F0676
mov   r5,0x1                    ; 080F0678
@@Code080F067A:
ldr   r4,=0x030021B0            ; 080F067A
lsl   r3,r7,0x3                 ; 080F067C
mov   r1,0xE0                   ; 080F067E
lsl   r1,r1,0x6                 ; 080F0680
add   r0,r2,r1                  ; 080F0682
add   r3,r3,r0                  ; 080F0684
str   r3,[r4]                   ; 080F0686
ldrb  r1,[r3,0x3]               ; 080F0688
mov   r2,0x3F                   ; 080F068A
mov   r0,r2                     ; 080F068C
and   r0,r1                     ; 080F068E
mov   r1,0x80                   ; 080F0690
orr   r0,r1                     ; 080F0692
strb  r0,[r3,0x3]               ; 080F0694
ldr   r1,[r4]                   ; 080F0696
ldrb  r0,[r1,0x1]               ; 080F0698
and   r2,r0                     ; 080F069A
strb  r2,[r1,0x1]               ; 080F069C
ldr   r3,[r4]                   ; 080F069E
ldr   r1,=Data08196C4A          ; 080F06A0
lsl   r0,r5,0x1                 ; 080F06A2
add   r0,r0,r1                  ; 080F06A4
ldrh  r0,[r0]                   ; 080F06A6
ldr   r1,=0x03FF                ; 080F06A8
and   r1,r0                     ; 080F06AA
ldrh  r2,[r3,0x4]               ; 080F06AC
ldr   r0,=0xFFFFFC00            ; 080F06AE
and   r0,r2                     ; 080F06B0
orr   r0,r1                     ; 080F06B2
strh  r0,[r3,0x4]               ; 080F06B4
ldrb  r1,[r3,0x1]               ; 080F06B6
mov   r0,0x21                   ; 080F06B8
neg   r0,r0                     ; 080F06BA
and   r0,r1                     ; 080F06BC
strb  r0,[r3,0x1]               ; 080F06BE
ldr   r2,[r4]                   ; 080F06C0
ldrb  r1,[r2,0x5]               ; 080F06C2
mov   r0,0xF                    ; 080F06C4
and   r0,r1                     ; 080F06C6
mov   r1,0x30                   ; 080F06C8
orr   r0,r1                     ; 080F06CA
strb  r0,[r2,0x5]               ; 080F06CC
ldr   r3,[r4]                   ; 080F06CE
ldr   r1,[r6]                   ; 080F06D0
lsl   r1,r1,0xF                 ; 080F06D2
lsr   r1,r1,0x17                ; 080F06D4
ldrh  r2,[r3,0x2]               ; 080F06D6
ldr   r0,=0xFFFFFE00            ; 080F06D8
and   r0,r2                     ; 080F06DA
orr   r0,r1                     ; 080F06DC
strh  r0,[r3,0x2]               ; 080F06DE
ldr   r0,[r6,0x4]               ; 080F06E0
asr   r0,r0,0x8                 ; 080F06E2
strb  r0,[r3]                   ; 080F06E4
add   r0,r7,0x1                 ; 080F06E6
lsl   r0,r0,0x2                 ; 080F06E8
mov   r3,r12                    ; 080F06EA
strh  r0,[r3]                   ; 080F06EC
pop   {r4-r7}                   ; 080F06EE
pop   {r0}                      ; 080F06F0
bx    r0                        ; 080F06F2
.pool                           ; 080F06F4

Sub080F0710:
push  {r4-r5,lr}                ; 080F0710
mov   r5,r0                     ; 080F0712
ldr   r4,[r5,0x4]               ; 080F0714
ldr   r1,[r4]                   ; 080F0716
cmp   r1,0x0                    ; 080F0718
bge   @@Code080F0738            ; 080F071A
ldr   r0,=0xFFFFE000            ; 080F071C
cmp   r1,r0                     ; 080F071E
blt   @@Code080F0738            ; 080F0720
ldr   r0,=0xFFFFF000            ; 080F0722
cmp   r1,r0                     ; 080F0724
bge   @@Code080F0738            ; 080F0726
ldrh  r0,[r5,0x3C]              ; 080F0728
add   r0,0x1                    ; 080F072A
strh  r0,[r5,0x3C]              ; 080F072C
b     @@Code080F075A            ; 080F072E
.pool                           ; 080F0730

@@Code080F0738:
mov   r0,r5                     ; 080F0738
mov   r1,r4                     ; 080F073A
bl    Sub080F07E8               ; 080F073C
mov   r0,r5                     ; 080F0740
mov   r1,r4                     ; 080F0742
bl    Sub080F07CC               ; 080F0744
mov   r0,r4                     ; 080F0748
bl    Sub080F0810               ; 080F074A
mov   r0,r4                     ; 080F074E
bl    Sub080F0804               ; 080F0750
mov   r0,r5                     ; 080F0754
bl    Sub080F0660               ; 080F0756
@@Code080F075A:
pop   {r4-r5}                   ; 080F075A
pop   {r0}                      ; 080F075C
bx    r0                        ; 080F075E

Sub080F0760:
push  {r4-r5,lr}                ; 080F0760
mov   r5,r0                     ; 080F0762
ldr   r4,[r5,0x4]               ; 080F0764
mov   r0,r4                     ; 080F0766
add   r0,0x6A                   ; 080F0768
ldrh  r1,[r0]                   ; 080F076A
sub   r1,0x1                    ; 080F076C
strh  r1,[r0]                   ; 080F076E
ldr   r4,[r5,0x4]               ; 080F0770
mov   r0,r4                     ; 080F0772
add   r0,0x6A                   ; 080F0774
mov   r1,0x0                    ; 080F0776
ldsh  r0,[r0,r1]                ; 080F0778
cmp   r0,0x0                    ; 080F077A
bge   @@Code080F07A4            ; 080F077C
mov   r0,0x10                   ; 080F077E
neg   r0,r0                     ; 080F0780
str   r0,[r4,0x8]               ; 080F0782
mov   r0,0x80                   ; 080F0784
lsl   r0,r0,0x2                 ; 080F0786
str   r0,[r4,0xC]               ; 080F0788
ldr   r1,=0x03006258            ; 080F078A
mov   r0,0x28                   ; 080F078C
bl    PlayYISound               ; 080F078E
ldrh  r0,[r5,0x3C]              ; 080F0792
add   r0,0x1                    ; 080F0794
strh  r0,[r5,0x3C]              ; 080F0796
mov   r0,r5                     ; 080F0798
bl    Sub080F0660               ; 080F079A
b     @@Code080F07C6            ; 080F079E
.pool                           ; 080F07A0

@@Code080F07A4:
mov   r0,r5                     ; 080F07A4
mov   r1,r4                     ; 080F07A6
bl    Sub080F07E8               ; 080F07A8
mov   r0,r5                     ; 080F07AC
mov   r1,r4                     ; 080F07AE
bl    Sub080F07CC               ; 080F07B0
mov   r0,r4                     ; 080F07B4
bl    Sub080F0810               ; 080F07B6
mov   r0,r4                     ; 080F07BA
bl    Sub080F0804               ; 080F07BC
mov   r0,r5                     ; 080F07C0
bl    Sub080F0660               ; 080F07C2
@@Code080F07C6:
pop   {r4-r5}                   ; 080F07C6
pop   {r0}                      ; 080F07C8
bx    r0                        ; 080F07CA

Sub080F07CC:
ldrh  r0,[r0,0x3C]              ; 080F07CC
sub   r0,0x2                    ; 080F07CE
lsl   r0,r0,0x10                ; 080F07D0
ldr   r2,=Data08196C4E          ; 080F07D2
lsr   r0,r0,0xF                 ; 080F07D4
add   r0,r0,r2                  ; 080F07D6
mov   r3,0x0                    ; 080F07D8
ldsh  r2,[r0,r3]                ; 080F07DA
ldr   r0,[r1,0xC]               ; 080F07DC
add   r0,r0,r2                  ; 080F07DE
str   r0,[r1,0xC]               ; 080F07E0
bx    lr                        ; 080F07E2
.pool                           ; 080F07E4

Sub080F07E8:
ldrh  r0,[r0,0x3C]              ; 080F07E8
sub   r0,0x2                    ; 080F07EA
lsl   r0,r0,0x10                ; 080F07EC
ldr   r2,=Data08196C54          ; 080F07EE
lsr   r0,r0,0xF                 ; 080F07F0
add   r0,r0,r2                  ; 080F07F2
mov   r3,0x0                    ; 080F07F4
ldsh  r2,[r0,r3]                ; 080F07F6
ldr   r0,[r1,0x8]               ; 080F07F8
add   r0,r0,r2                  ; 080F07FA
str   r0,[r1,0x8]               ; 080F07FC
bx    lr                        ; 080F07FE
.pool                           ; 080F0800

Sub080F0804:
ldr   r1,[r0,0x4]               ; 080F0804
ldr   r2,[r0,0xC]               ; 080F0806
add   r1,r1,r2                  ; 080F0808
str   r1,[r0,0x4]               ; 080F080A
bx    lr                        ; 080F080C
.pool                           ; 080F080E

Sub080F0810:
ldr   r1,[r0]                   ; 080F0810
ldr   r2,[r0,0x8]               ; 080F0812
add   r1,r1,r2                  ; 080F0814
str   r1,[r0]                   ; 080F0816
bx    lr                        ; 080F0818
.pool                           ; 080F081A

Sub080F081C:
push  {r4-r5,lr}                ; 080F081C
mov   r5,r0                     ; 080F081E
ldr   r4,[r5,0x4]               ; 080F0820
mov   r1,r4                     ; 080F0822
bl    Sub080F07E8               ; 080F0824
mov   r0,r5                     ; 080F0828
mov   r1,r4                     ; 080F082A
bl    Sub080F07CC               ; 080F082C
mov   r1,0x8                    ; 080F0830
ldsh  r0,[r4,r1]                ; 080F0832
cmp   r0,0x0                    ; 080F0834
bge   @@Code080F0848            ; 080F0836
mov   r0,0x20                   ; 080F0838
str   r0,[r4,0x8]               ; 080F083A
mov   r0,0x40                   ; 080F083C
str   r0,[r4,0xC]               ; 080F083E
ldrh  r0,[r5,0x3C]              ; 080F0840
add   r0,0x1                    ; 080F0842
strh  r0,[r5,0x3C]              ; 080F0844
b     @@Code080F0854            ; 080F0846
@@Code080F0848:
mov   r0,r4                     ; 080F0848
bl    Sub080F0810               ; 080F084A
mov   r0,r4                     ; 080F084E
bl    Sub080F0804               ; 080F0850
@@Code080F0854:
mov   r0,r5                     ; 080F0854
bl    Sub080F0660               ; 080F0856
pop   {r4-r5}                   ; 080F085A
pop   {r0}                      ; 080F085C
bx    r0                        ; 080F085E

Sub080F0860:
push  {r4,lr}                   ; 080F0860
mov   r4,r0                     ; 080F0862
ldr   r3,[r4,0x4]               ; 080F0864
mov   r1,r3                     ; 080F0866
add   r1,0x94                   ; 080F0868
mov   r0,0xFF                   ; 080F086A
strb  r0,[r1]                   ; 080F086C
mov   r0,0x0                    ; 080F086E
strh  r0,[r3,0x24]              ; 080F0870
mov   r0,r4                     ; 080F0872
add   r0,0x7E                   ; 080F0874
ldrb  r2,[r0]                   ; 080F0876
ldr   r0,=Data08196C5A          ; 080F0878
lsl   r2,r2,0x1                 ; 080F087A
add   r0,r2,r0                  ; 080F087C
ldrh  r0,[r0]                   ; 080F087E
str   r0,[r3]                   ; 080F0880
ldr   r1,=0xFFFFE000            ; 080F0882
add   r0,r0,r1                  ; 080F0884
mov   r1,r4                     ; 080F0886
add   r1,0x40                   ; 080F0888
strh  r0,[r1]                   ; 080F088A
ldr   r0,=Data08196C6C          ; 080F088C
add   r2,r2,r0                  ; 080F088E
mov   r1,0x0                    ; 080F0890
ldsh  r0,[r2,r1]                ; 080F0892
str   r0,[r3,0x4]               ; 080F0894
mov   r0,0xA0                   ; 080F0896
lsl   r0,r0,0x3                 ; 080F0898
str   r0,[r3,0x8]               ; 080F089A
ldr   r0,=0xFFFFFD00            ; 080F089C
str   r0,[r3,0xC]               ; 080F089E
ldr   r3,[r4]                   ; 080F08A0
mov   r1,r3                     ; 080F08A2
add   r1,0x6A                   ; 080F08A4
mov   r0,0x20                   ; 080F08A6
strh  r0,[r1]                   ; 080F08A8
mov   r0,r4                     ; 080F08AA
bl    Sub080F0660               ; 080F08AC
ldrh  r0,[r4,0x3C]              ; 080F08B0
add   r0,0x1                    ; 080F08B2
strh  r0,[r4,0x3C]              ; 080F08B4
pop   {r4}                      ; 080F08B6
pop   {r0}                      ; 080F08B8
bx    r0                        ; 080F08BA
.pool                           ; 080F08BC

Sub080F08CC:
push  {lr}                      ; 080F08CC
ldrh  r1,[r0,0x3C]              ; 080F08CE
ldr   r2,=CodePtrs08196C80      ; 080F08D0
lsl   r1,r1,0x2                 ; 080F08D2
add   r1,r1,r2                  ; 080F08D4
ldr   r1,[r1]                   ; 080F08D6
bl    Sub_bx_r1                 ; 080F08D8  bx r1
pop   {r0}                      ; 080F08DC
bx    r0                        ; 080F08DE
.pool                           ; 080F08E0

Sub080F08E4:
push  {r4-r7,lr}                ; 080F08E4
mov   r7,r10                    ; 080F08E6
mov   r6,r9                     ; 080F08E8
mov   r5,r8                     ; 080F08EA
push  {r5-r7}                   ; 080F08EC
add   sp,-0xC                   ; 080F08EE
ldrh  r1,[r0,0x3A]              ; 080F08F0
mov   r9,r1                     ; 080F08F2
mov   r2,0x1                    ; 080F08F4
neg   r2,r2                     ; 080F08F6
add   r9,r2                     ; 080F08F8
mov   r3,r9                     ; 080F08FA
lsl   r3,r3,0x10                ; 080F08FC
lsr   r3,r3,0x12                ; 080F08FE
mov   r9,r3                     ; 080F0900
mov   r1,0x11                   ; 080F0902
add   r9,r1                     ; 080F0904
mov   r1,r0                     ; 080F0906
add   r1,0x7E                   ; 080F0908
ldrb  r2,[r1]                   ; 080F090A
ldr   r1,=Data08196CB9          ; 080F090C
add   r1,r2,r1                  ; 080F090E
ldrb  r6,[r1]                   ; 080F0910
sub   r6,0x10                   ; 080F0912
lsl   r6,r6,0x10                ; 080F0914
lsr   r6,r6,0x10                ; 080F0916
mov   r3,r9                     ; 080F0918
sub   r1,r6,r3                  ; 080F091A
lsl   r1,r1,0x10                ; 080F091C
lsr   r1,r1,0x10                ; 080F091E
str   r1,[sp,0x4]               ; 080F0920
add   r1,r6,r3                  ; 080F0922
lsl   r1,r1,0x10                ; 080F0924
lsr   r1,r1,0x10                ; 080F0926
str   r1,[sp,0x8]               ; 080F0928
ldr   r1,=Data08196CC2          ; 080F092A
add   r2,r2,r1                  ; 080F092C
ldrb  r2,[r2]                   ; 080F092E
str   r2,[sp]                   ; 080F0930
sub   r2,r2,r3                  ; 080F0932
lsl   r2,r2,0x10                ; 080F0934
lsr   r2,r2,0x10                ; 080F0936
mov   r10,r2                    ; 080F0938
ldr   r1,[sp]                   ; 080F093A
add   r9,r1                     ; 080F093C
ldr   r2,=0x030021B0            ; 080F093E
mov   r8,r2                     ; 080F0940
ldr   r1,=0x03002200            ; 080F0942
ldr   r3,=0x47D0                ; 080F0944
add   r5,r1,r3                  ; 080F0946
ldrh  r3,[r5]                   ; 080F0948
lsl   r3,r3,0x3                 ; 080F094A
ldr   r1,=0x03005A00            ; 080F094C
add   r3,r3,r1                  ; 080F094E
str   r3,[r2]                   ; 080F0950
ldrh  r1,[r0,0x3A]              ; 080F0952
sub   r1,0x1                    ; 080F0954
ldr   r2,=Data08196CA2          ; 080F0956
add   r1,r1,r2                  ; 080F0958
ldrb  r1,[r1]                   ; 080F095A
lsl   r1,r1,0x1                 ; 080F095C
ldr   r2,=Data08196C98          ; 080F095E
add   r1,r1,r2                  ; 080F0960
ldrh  r1,[r1]                   ; 080F0962
ldr   r2,=0x03FF                ; 080F0964
and   r2,r1                     ; 080F0966
ldrh  r4,[r3,0x4]               ; 080F0968
ldr   r1,=0xFFFFFC00            ; 080F096A
and   r1,r4                     ; 080F096C
orr   r1,r2                     ; 080F096E
strh  r1,[r3,0x4]               ; 080F0970
ldrb  r2,[r3,0x5]               ; 080F0972
mov   r1,0xF                    ; 080F0974
and   r1,r2                     ; 080F0976
mov   r7,0x60                   ; 080F0978
orr   r1,r7                     ; 080F097A
strb  r1,[r3,0x5]               ; 080F097C
mov   r3,r8                     ; 080F097E
ldr   r2,[r3]                   ; 080F0980
ldr   r1,[sp,0x4]               ; 080F0982
ldr   r3,=0x01FF                ; 080F0984
and   r1,r3                     ; 080F0986
str   r1,[sp,0x4]               ; 080F0988
ldrh  r3,[r2,0x2]               ; 080F098A
ldr   r1,=0xFFFFFE00            ; 080F098C
mov   r12,r1                    ; 080F098E
and   r1,r3                     ; 080F0990
ldr   r3,[sp,0x4]               ; 080F0992
orr   r1,r3                     ; 080F0994
strh  r1,[r2,0x2]               ; 080F0996
mov   r1,r10                    ; 080F0998
strb  r1,[r2]                   ; 080F099A
ldrh  r1,[r5]                   ; 080F099C
add   r1,0x1                    ; 080F099E
strh  r1,[r5]                   ; 080F09A0
ldrh  r3,[r5]                   ; 080F09A2
lsl   r3,r3,0x3                 ; 080F09A4
ldr   r2,=0x03005A00            ; 080F09A6
add   r3,r3,r2                  ; 080F09A8
mov   r1,r8                     ; 080F09AA
str   r3,[r1]                   ; 080F09AC
ldrh  r1,[r0,0x3A]              ; 080F09AE
sub   r1,0x1                    ; 080F09B0
ldr   r2,=Data08196CA2          ; 080F09B2
add   r1,r1,r2                  ; 080F09B4
ldrb  r1,[r1]                   ; 080F09B6
lsl   r1,r1,0x1                 ; 080F09B8
ldr   r2,=Data08196C98          ; 080F09BA
add   r1,r1,r2                  ; 080F09BC
ldrh  r1,[r1]                   ; 080F09BE
ldr   r2,=0x03FF                ; 080F09C0
and   r2,r1                     ; 080F09C2
ldrh  r4,[r3,0x4]               ; 080F09C4
ldr   r1,=0xFFFFFC00            ; 080F09C6
and   r1,r4                     ; 080F09C8
orr   r1,r2                     ; 080F09CA
strh  r1,[r3,0x4]               ; 080F09CC
ldrb  r2,[r3,0x5]               ; 080F09CE
mov   r1,0xF                    ; 080F09D0
and   r1,r2                     ; 080F09D2
orr   r1,r7                     ; 080F09D4
strb  r1,[r3,0x5]               ; 080F09D6
mov   r3,r8                     ; 080F09D8
ldr   r2,[r3]                   ; 080F09DA
ldr   r1,=0x01FF                ; 080F09DC
and   r6,r1                     ; 080F09DE
ldrh  r3,[r2,0x2]               ; 080F09E0
mov   r1,r12                    ; 080F09E2
and   r1,r3                     ; 080F09E4
orr   r1,r6                     ; 080F09E6
strh  r1,[r2,0x2]               ; 080F09E8
mov   r3,r10                    ; 080F09EA
strb  r3,[r2]                   ; 080F09EC
ldrh  r1,[r5]                   ; 080F09EE
add   r1,0x1                    ; 080F09F0
strh  r1,[r5]                   ; 080F09F2
ldrh  r3,[r5]                   ; 080F09F4
lsl   r3,r3,0x3                 ; 080F09F6
ldr   r1,=0x03005A00            ; 080F09F8
add   r3,r3,r1                  ; 080F09FA
mov   r2,r8                     ; 080F09FC
str   r3,[r2]                   ; 080F09FE
ldrh  r1,[r0,0x3A]              ; 080F0A00
sub   r1,0x1                    ; 080F0A02
ldr   r2,=Data08196CA2          ; 080F0A04
add   r1,r1,r2                  ; 080F0A06
ldrb  r1,[r1]                   ; 080F0A08
lsl   r1,r1,0x1                 ; 080F0A0A
ldr   r2,=Data08196C98          ; 080F0A0C
add   r1,r1,r2                  ; 080F0A0E
ldrh  r1,[r1]                   ; 080F0A10
ldr   r2,=0x03FF                ; 080F0A12
and   r2,r1                     ; 080F0A14
ldrh  r4,[r3,0x4]               ; 080F0A16
ldr   r1,=0xFFFFFC00            ; 080F0A18
and   r1,r4                     ; 080F0A1A
orr   r1,r2                     ; 080F0A1C
strh  r1,[r3,0x4]               ; 080F0A1E
ldrb  r2,[r3,0x5]               ; 080F0A20
mov   r1,0xF                    ; 080F0A22
and   r1,r2                     ; 080F0A24
orr   r1,r7                     ; 080F0A26
strb  r1,[r3,0x5]               ; 080F0A28
mov   r3,r8                     ; 080F0A2A
ldr   r2,[r3]                   ; 080F0A2C
ldr   r1,[sp,0x8]               ; 080F0A2E
ldr   r3,=0x01FF                ; 080F0A30
and   r1,r3                     ; 080F0A32
str   r1,[sp,0x8]               ; 080F0A34
ldrh  r3,[r2,0x2]               ; 080F0A36
mov   r1,r12                    ; 080F0A38
and   r1,r3                     ; 080F0A3A
ldr   r3,[sp,0x8]               ; 080F0A3C
orr   r1,r3                     ; 080F0A3E
strh  r1,[r2,0x2]               ; 080F0A40
mov   r1,r10                    ; 080F0A42
strb  r1,[r2]                   ; 080F0A44
ldrh  r1,[r5]                   ; 080F0A46
add   r1,0x1                    ; 080F0A48
strh  r1,[r5]                   ; 080F0A4A
ldrh  r3,[r5]                   ; 080F0A4C
lsl   r3,r3,0x3                 ; 080F0A4E
ldr   r2,=0x03005A00            ; 080F0A50
add   r3,r3,r2                  ; 080F0A52
mov   r1,r8                     ; 080F0A54
str   r3,[r1]                   ; 080F0A56
ldrh  r1,[r0,0x3A]              ; 080F0A58
sub   r1,0x1                    ; 080F0A5A
ldr   r2,=Data08196CA2          ; 080F0A5C
add   r1,r1,r2                  ; 080F0A5E
ldrb  r1,[r1]                   ; 080F0A60
lsl   r1,r1,0x1                 ; 080F0A62
ldr   r2,=Data08196C98          ; 080F0A64
add   r1,r1,r2                  ; 080F0A66
ldrh  r1,[r1]                   ; 080F0A68
ldr   r2,=0x03FF                ; 080F0A6A
and   r2,r1                     ; 080F0A6C
ldrh  r4,[r3,0x4]               ; 080F0A6E
ldr   r1,=0xFFFFFC00            ; 080F0A70
and   r1,r4                     ; 080F0A72
orr   r1,r2                     ; 080F0A74
strh  r1,[r3,0x4]               ; 080F0A76
ldrb  r2,[r3,0x5]               ; 080F0A78
mov   r1,0xF                    ; 080F0A7A
and   r1,r2                     ; 080F0A7C
orr   r1,r7                     ; 080F0A7E
strb  r1,[r3,0x5]               ; 080F0A80
mov   r3,r8                     ; 080F0A82
ldr   r2,[r3]                   ; 080F0A84
ldrh  r3,[r2,0x2]               ; 080F0A86
mov   r1,r12                    ; 080F0A88
and   r1,r3                     ; 080F0A8A
ldr   r3,[sp,0x4]               ; 080F0A8C
orr   r1,r3                     ; 080F0A8E
strh  r1,[r2,0x2]               ; 080F0A90
mov   r1,sp                     ; 080F0A92
ldrb  r1,[r1]                   ; 080F0A94
strb  r1,[r2]                   ; 080F0A96
ldrh  r1,[r5]                   ; 080F0A98
add   r1,0x1                    ; 080F0A9A
strh  r1,[r5]                   ; 080F0A9C
ldrh  r3,[r5]                   ; 080F0A9E
lsl   r3,r3,0x3                 ; 080F0AA0
ldr   r2,=0x03005A00            ; 080F0AA2
add   r3,r3,r2                  ; 080F0AA4
mov   r1,r8                     ; 080F0AA6
str   r3,[r1]                   ; 080F0AA8
ldrh  r1,[r0,0x3A]              ; 080F0AAA
sub   r1,0x1                    ; 080F0AAC
ldr   r2,=Data08196CA2          ; 080F0AAE
add   r1,r1,r2                  ; 080F0AB0
ldrb  r1,[r1]                   ; 080F0AB2
lsl   r1,r1,0x1                 ; 080F0AB4
ldr   r2,=Data08196C98          ; 080F0AB6
add   r1,r1,r2                  ; 080F0AB8
ldrh  r1,[r1]                   ; 080F0ABA
ldr   r2,=0x03FF                ; 080F0ABC
and   r2,r1                     ; 080F0ABE
ldrh  r4,[r3,0x4]               ; 080F0AC0
ldr   r1,=0xFFFFFC00            ; 080F0AC2
and   r1,r4                     ; 080F0AC4
orr   r1,r2                     ; 080F0AC6
strh  r1,[r3,0x4]               ; 080F0AC8
ldrb  r2,[r3,0x5]               ; 080F0ACA
mov   r1,0xF                    ; 080F0ACC
and   r1,r2                     ; 080F0ACE
orr   r1,r7                     ; 080F0AD0
strb  r1,[r3,0x5]               ; 080F0AD2
mov   r3,r8                     ; 080F0AD4
ldr   r2,[r3]                   ; 080F0AD6
ldrh  r3,[r2,0x2]               ; 080F0AD8
mov   r1,r12                    ; 080F0ADA
and   r1,r3                     ; 080F0ADC
ldr   r3,[sp,0x8]               ; 080F0ADE
orr   r1,r3                     ; 080F0AE0
strh  r1,[r2,0x2]               ; 080F0AE2
mov   r1,sp                     ; 080F0AE4
ldrb  r1,[r1]                   ; 080F0AE6
strb  r1,[r2]                   ; 080F0AE8
ldrh  r1,[r5]                   ; 080F0AEA
add   r1,0x1                    ; 080F0AEC
strh  r1,[r5]                   ; 080F0AEE
ldrh  r3,[r5]                   ; 080F0AF0
lsl   r3,r3,0x3                 ; 080F0AF2
ldr   r2,=0x03005A00            ; 080F0AF4
add   r3,r3,r2                  ; 080F0AF6
mov   r1,r8                     ; 080F0AF8
str   r3,[r1]                   ; 080F0AFA
ldrh  r1,[r0,0x3A]              ; 080F0AFC
sub   r1,0x1                    ; 080F0AFE
ldr   r2,=Data08196CA2          ; 080F0B00
add   r1,r1,r2                  ; 080F0B02
ldrb  r1,[r1]                   ; 080F0B04
lsl   r1,r1,0x1                 ; 080F0B06
ldr   r2,=Data08196C98          ; 080F0B08
add   r1,r1,r2                  ; 080F0B0A
ldrh  r1,[r1]                   ; 080F0B0C
ldr   r2,=0x03FF                ; 080F0B0E
and   r2,r1                     ; 080F0B10
ldrh  r4,[r3,0x4]               ; 080F0B12
ldr   r1,=0xFFFFFC00            ; 080F0B14
and   r1,r4                     ; 080F0B16
orr   r1,r2                     ; 080F0B18
strh  r1,[r3,0x4]               ; 080F0B1A
ldrb  r2,[r3,0x5]               ; 080F0B1C
mov   r1,0xF                    ; 080F0B1E
and   r1,r2                     ; 080F0B20
orr   r1,r7                     ; 080F0B22
strb  r1,[r3,0x5]               ; 080F0B24
mov   r3,r8                     ; 080F0B26
ldr   r2,[r3]                   ; 080F0B28
ldrh  r3,[r2,0x2]               ; 080F0B2A
mov   r1,r12                    ; 080F0B2C
and   r1,r3                     ; 080F0B2E
ldr   r3,[sp,0x4]               ; 080F0B30
orr   r1,r3                     ; 080F0B32
strh  r1,[r2,0x2]               ; 080F0B34
mov   r1,r9                     ; 080F0B36
strb  r1,[r2]                   ; 080F0B38
ldrh  r1,[r5]                   ; 080F0B3A
add   r1,0x1                    ; 080F0B3C
strh  r1,[r5]                   ; 080F0B3E
ldrh  r3,[r5]                   ; 080F0B40
lsl   r3,r3,0x3                 ; 080F0B42
ldr   r2,=0x03005A00            ; 080F0B44
add   r3,r3,r2                  ; 080F0B46
mov   r1,r8                     ; 080F0B48
str   r3,[r1]                   ; 080F0B4A
ldrh  r1,[r0,0x3A]              ; 080F0B4C
sub   r1,0x1                    ; 080F0B4E
ldr   r2,=Data08196CA2          ; 080F0B50
add   r1,r1,r2                  ; 080F0B52
ldrb  r1,[r1]                   ; 080F0B54
lsl   r1,r1,0x1                 ; 080F0B56
ldr   r2,=Data08196C98          ; 080F0B58
add   r1,r1,r2                  ; 080F0B5A
ldrh  r1,[r1]                   ; 080F0B5C
ldr   r2,=0x03FF                ; 080F0B5E
and   r2,r1                     ; 080F0B60
ldrh  r4,[r3,0x4]               ; 080F0B62
ldr   r1,=0xFFFFFC00            ; 080F0B64
and   r1,r4                     ; 080F0B66
orr   r1,r2                     ; 080F0B68
strh  r1,[r3,0x4]               ; 080F0B6A
ldrb  r2,[r3,0x5]               ; 080F0B6C
mov   r1,0xF                    ; 080F0B6E
and   r1,r2                     ; 080F0B70
orr   r1,r7                     ; 080F0B72
strb  r1,[r3,0x5]               ; 080F0B74
mov   r3,r8                     ; 080F0B76
ldr   r2,[r3]                   ; 080F0B78
ldrh  r3,[r2,0x2]               ; 080F0B7A
mov   r1,r12                    ; 080F0B7C
and   r1,r3                     ; 080F0B7E
orr   r1,r6                     ; 080F0B80
strh  r1,[r2,0x2]               ; 080F0B82
mov   r1,r9                     ; 080F0B84
strb  r1,[r2]                   ; 080F0B86
ldrh  r1,[r5]                   ; 080F0B88
add   r1,0x1                    ; 080F0B8A
strh  r1,[r5]                   ; 080F0B8C
ldrh  r1,[r5]                   ; 080F0B8E
lsl   r1,r1,0x3                 ; 080F0B90
ldr   r2,=0x03005A00            ; 080F0B92
add   r1,r1,r2                  ; 080F0B94
mov   r3,r8                     ; 080F0B96
str   r1,[r3]                   ; 080F0B98
ldrh  r0,[r0,0x3A]              ; 080F0B9A
sub   r0,0x1                    ; 080F0B9C
ldr   r2,=Data08196CA2          ; 080F0B9E
add   r0,r0,r2                  ; 080F0BA0
ldrb  r0,[r0]                   ; 080F0BA2
lsl   r0,r0,0x1                 ; 080F0BA4
ldr   r3,=Data08196C98          ; 080F0BA6
add   r0,r0,r3                  ; 080F0BA8
ldrh  r0,[r0]                   ; 080F0BAA
ldr   r2,=0x03FF                ; 080F0BAC
and   r2,r0                     ; 080F0BAE
ldrh  r0,[r1,0x4]               ; 080F0BB0
ldr   r3,=0xFFFFFC00            ; 080F0BB2
and   r3,r0                     ; 080F0BB4
orr   r3,r2                     ; 080F0BB6
strh  r3,[r1,0x4]               ; 080F0BB8
ldrb  r0,[r1,0x5]               ; 080F0BBA
mov   r2,0xF                    ; 080F0BBC
and   r2,r0                     ; 080F0BBE
orr   r2,r7                     ; 080F0BC0
strb  r2,[r1,0x5]               ; 080F0BC2
mov   r1,r8                     ; 080F0BC4
ldr   r0,[r1]                   ; 080F0BC6
ldrh  r1,[r0,0x2]               ; 080F0BC8
mov   r2,r12                    ; 080F0BCA
and   r2,r1                     ; 080F0BCC
ldr   r3,[sp,0x8]               ; 080F0BCE
orr   r2,r3                     ; 080F0BD0
strh  r2,[r0,0x2]               ; 080F0BD2
mov   r1,r9                     ; 080F0BD4
strb  r1,[r0]                   ; 080F0BD6
ldrh  r0,[r5]                   ; 080F0BD8
add   r0,0x1                    ; 080F0BDA
strh  r0,[r5]                   ; 080F0BDC
add   sp,0xC                    ; 080F0BDE
pop   {r3-r5}                   ; 080F0BE0
mov   r8,r3                     ; 080F0BE2
mov   r9,r4                     ; 080F0BE4
mov   r10,r5                    ; 080F0BE6
pop   {r4-r7}                   ; 080F0BE8
pop   {r0}                      ; 080F0BEA
bx    r0                        ; 080F0BEC
.pool                           ; 080F0BEE

Sub080F0C20:
push  {r4,lr}                   ; 080F0C20
mov   r4,r0                     ; 080F0C22
ldrh  r0,[r4,0x3A]              ; 080F0C24
cmp   r0,0x0                    ; 080F0C26
beq   @@Code080F0C3A            ; 080F0C28
cmp   r0,0x17                   ; 080F0C2A
bhi   @@Code080F0C3A            ; 080F0C2C
mov   r0,r4                     ; 080F0C2E
bl    Sub080F08E4               ; 080F0C30
ldrh  r0,[r4,0x3A]              ; 080F0C34
add   r0,0x1                    ; 080F0C36
strh  r0,[r4,0x3A]              ; 080F0C38
@@Code080F0C3A:
pop   {r4}                      ; 080F0C3A
pop   {r0}                      ; 080F0C3C
bx    r0                        ; 080F0C3E

Return080F0C40:
bx    lr                        ; 080F0C40
.pool                           ; 080F0C42

Sub080F0C44:
push  {lr}                      ; 080F0C44
mov   r2,r0                     ; 080F0C46
ldrh  r0,[r2,0x1E]              ; 080F0C48
cmp   r0,0xFF                   ; 080F0C4A
bhi   @@Code080F0C66            ; 080F0C4C
mov   r0,r2                     ; 080F0C4E
add   r0,0x44                   ; 080F0C50
ldrh  r1,[r0]                   ; 080F0C52
mov   r0,0x3                    ; 080F0C54
and   r0,r1                     ; 080F0C56
ldr   r1,=CodePtrs08196CCC      ; 080F0C58
lsl   r0,r0,0x2                 ; 080F0C5A
add   r0,r0,r1                  ; 080F0C5C
ldr   r1,[r0]                   ; 080F0C5E
mov   r0,r2                     ; 080F0C60
bl    Sub_bx_r1                 ; 080F0C62  bx r1
@@Code080F0C66:
pop   {r0}                      ; 080F0C66
bx    r0                        ; 080F0C68
.pool                           ; 080F0C6A

Sub080F0C70:
push  {r4,lr}                   ; 080F0C70
mov   r4,r0                     ; 080F0C72
mov   r1,r4                     ; 080F0C74
add   r1,0x42                   ; 080F0C76
ldrh  r0,[r1]                   ; 080F0C78
cmp   r0,0x8                    ; 080F0C7A
beq   @@Code080F0C82            ; 080F0C7C
sub   r0,0x4                    ; 080F0C7E
strh  r0,[r1]                   ; 080F0C80
@@Code080F0C82:
mov   r0,r4                     ; 080F0C82
add   r0,0x44                   ; 080F0C84
ldrh  r1,[r0]                   ; 080F0C86
add   r1,0x1                    ; 080F0C88
strh  r1,[r0]                   ; 080F0C8A
mov   r0,0x1                    ; 080F0C8C
and   r1,r0                     ; 080F0C8E
cmp   r1,0x0                    ; 080F0C90
bne   @@Code080F0C9C            ; 080F0C92
ldr   r1,=0x03006258            ; 080F0C94
mov   r0,0x9C                   ; 080F0C96
bl    PlayYISound               ; 080F0C98
@@Code080F0C9C:
mov   r0,r4                     ; 080F0C9C
bl    Sub080F0C44               ; 080F0C9E
pop   {r4}                      ; 080F0CA2
pop   {r0}                      ; 080F0CA4
bx    r0                        ; 080F0CA6
.pool                           ; 080F0CA8

Sub080F0CAC:
push  {r4,lr}                   ; 080F0CAC
mov   r2,r0                     ; 080F0CAE
add   r0,0x44                   ; 080F0CB0
ldrh  r4,[r0]                   ; 080F0CB2
mov   r0,0x1                    ; 080F0CB4
and   r0,r4                     ; 080F0CB6
cmp   r0,0x0                    ; 080F0CB8
beq   @@Code080F0D0A            ; 080F0CBA
mov   r3,r2                     ; 080F0CBC
add   r3,0x42                   ; 080F0CBE
ldrh  r0,[r2,0x1E]              ; 080F0CC0
ldrh  r1,[r3]                   ; 080F0CC2
sub   r0,r0,r1                  ; 080F0CC4
lsl   r0,r0,0x10                ; 080F0CC6
lsr   r1,r0,0x10                ; 080F0CC8
cmp   r0,0x0                    ; 080F0CCA
blt   @@Code080F0CD8            ; 080F0CCC
strh  r1,[r2,0x1E]              ; 080F0CCE
mov   r0,r2                     ; 080F0CD0
bl    Sub080F0C44               ; 080F0CD2
b     @@Code080F0D2E            ; 080F0CD6
@@Code080F0CD8:
mov   r0,0x3                    ; 080F0CD8
and   r0,r4                     ; 080F0CDA
cmp   r0,0x1                    ; 080F0CDC
bne   @@Code080F0D04            ; 080F0CDE
ldrh  r0,[r3]                   ; 080F0CE0
cmp   r0,0x8                    ; 080F0CE2
bne   @@Code080F0D04            ; 080F0CE4
mov   r0,0x0                    ; 080F0CE6
strh  r0,[r2,0x30]              ; 080F0CE8
mov   r1,r2                     ; 080F0CEA
add   r1,0x83                   ; 080F0CEC
ldrb  r0,[r1]                   ; 080F0CEE
add   r0,0x10                   ; 080F0CF0
strb  r0,[r1]                   ; 080F0CF2
mov   r0,0xD                    ; 080F0CF4
strh  r0,[r2,0x10]              ; 080F0CF6
mov   r0,0x90                   ; 080F0CF8
strh  r0,[r2,0x12]              ; 080F0CFA
mov   r0,r2                     ; 080F0CFC
bl    Sub080F1188               ; 080F0CFE
b     @@Code080F0D2E            ; 080F0D02
@@Code080F0D04:
neg   r0,r1                     ; 080F0D04
strh  r0,[r2,0x1E]              ; 080F0D06
b     @@Code080F0D1E            ; 080F0D08
@@Code080F0D0A:
mov   r0,r2                     ; 080F0D0A
add   r0,0x42                   ; 080F0D0C
ldrh  r0,[r0]                   ; 080F0D0E
ldrh  r1,[r2,0x1E]              ; 080F0D10
add   r0,r0,r1                  ; 080F0D12
lsl   r0,r0,0x10                ; 080F0D14
lsr   r1,r0,0x10                ; 080F0D16
cmp   r1,0xFF                   ; 080F0D18
bls   @@Code080F0D26            ; 080F0D1A
strh  r1,[r2,0x1E]              ; 080F0D1C
@@Code080F0D1E:
mov   r0,r2                     ; 080F0D1E
bl    Sub080F0C70               ; 080F0D20
b     @@Code080F0D2E            ; 080F0D24
@@Code080F0D26:
strh  r1,[r2,0x1E]              ; 080F0D26
mov   r0,r2                     ; 080F0D28
bl    Sub080F0C44               ; 080F0D2A
@@Code080F0D2E:
pop   {r4}                      ; 080F0D2E
pop   {r0}                      ; 080F0D30
bx    r0                        ; 080F0D32

Sub080F0D34:
push  {r4,lr}                   ; 080F0D34
mov   r4,r0                     ; 080F0D36
ldr   r0,[r4,0x4]               ; 080F0D38
ldrh  r1,[r0]                   ; 080F0D3A
mov   r0,r4                     ; 080F0D3C
add   r0,0x40                   ; 080F0D3E
ldrh  r0,[r0]                   ; 080F0D40
cmp   r1,r0                     ; 080F0D42
bhs   @@Code080F0D7C            ; 080F0D44
mov   r1,r4                     ; 080F0D46
add   r1,0x7F                   ; 080F0D48
mov   r2,0x0                    ; 080F0D4A
mov   r0,0x4                    ; 080F0D4C
strb  r0,[r1]                   ; 080F0D4E
add   r1,0xD                    ; 080F0D50
mov   r0,0xA                    ; 080F0D52
strb  r0,[r1]                   ; 080F0D54
ldr   r0,[r4]                   ; 080F0D56
add   r0,0x6A                   ; 080F0D58
strh  r2,[r0]                   ; 080F0D5A
sub   r1,0x4A                   ; 080F0D5C
mov   r0,0x60                   ; 080F0D5E
strh  r0,[r1]                   ; 080F0D60
mov   r0,r4                     ; 080F0D62
add   r0,0x44                   ; 080F0D64
strh  r2,[r0]                   ; 080F0D66
mov   r0,r4                     ; 080F0D68
bl    Sub080F14F0               ; 080F0D6A
ldr   r1,=0x03006258            ; 080F0D6E
mov   r0,0x2B                   ; 080F0D70
bl    PlayYISound               ; 080F0D72
ldrh  r0,[r4,0x38]              ; 080F0D76
add   r0,0x1                    ; 080F0D78
strh  r0,[r4,0x38]              ; 080F0D7A
@@Code080F0D7C:
pop   {r4}                      ; 080F0D7C
pop   {r0}                      ; 080F0D7E
bx    r0                        ; 080F0D80
.pool                           ; 080F0D82

Sub080F0D88:
push  {r4-r7,lr}                ; 080F0D88
mov   r7,r10                    ; 080F0D8A
mov   r6,r9                     ; 080F0D8C
mov   r5,r8                     ; 080F0D8E
push  {r5-r7}                   ; 080F0D90
ldr   r1,=0x03002200            ; 080F0D92
mov   r9,r1                     ; 080F0D94
ldr   r2,=0x030069D2            ; 080F0D96
ldrh  r2,[r2]                   ; 080F0D98
mov   r10,r2                    ; 080F0D9A
ldr   r7,=0x47D0                ; 080F0D9C
add   r7,r9                     ; 080F0D9E
ldrh  r6,[r7]                   ; 080F0DA0
lsr   r6,r6,0x2                 ; 080F0DA2
mov   r1,r0                     ; 080F0DA4
add   r1,0x7E                   ; 080F0DA6
ldrb  r1,[r1]                   ; 080F0DA8
mov   r8,r1                     ; 080F0DAA
ldr   r5,=0x030021B0            ; 080F0DAC
lsl   r4,r6,0x3                 ; 080F0DAE
mov   r1,0xE0                   ; 080F0DB0
lsl   r1,r1,0x6                 ; 080F0DB2
add   r9,r1                     ; 080F0DB4
add   r4,r9                     ; 080F0DB6
str   r4,[r5]                   ; 080F0DB8
ldrb  r2,[r4,0x3]               ; 080F0DBA
mov   r3,0x3F                   ; 080F0DBC
mov   r1,r3                     ; 080F0DBE
and   r1,r2                     ; 080F0DC0
mov   r2,0x80                   ; 080F0DC2
orr   r1,r2                     ; 080F0DC4
strb  r1,[r4,0x3]               ; 080F0DC6
ldr   r2,[r5]                   ; 080F0DC8
ldrb  r1,[r2,0x1]               ; 080F0DCA
and   r3,r1                     ; 080F0DCC
strb  r3,[r2,0x1]               ; 080F0DCE
ldr   r3,[r5]                   ; 080F0DD0
ldrh  r2,[r3,0x4]               ; 080F0DD2
ldr   r1,=0xFFFFFC00            ; 080F0DD4
and   r1,r2                     ; 080F0DD6
mov   r4,0x80                   ; 080F0DD8
lsl   r4,r4,0x2                 ; 080F0DDA
mov   r2,r4                     ; 080F0DDC
orr   r1,r2                     ; 080F0DDE
strh  r1,[r3,0x4]               ; 080F0DE0
ldrb  r2,[r3,0x1]               ; 080F0DE2
mov   r1,0x21                   ; 080F0DE4
neg   r1,r1                     ; 080F0DE6
and   r1,r2                     ; 080F0DE8
strb  r1,[r3,0x1]               ; 080F0DEA
ldr   r4,[r5]                   ; 080F0DEC
ldr   r1,=Data08196E10          ; 080F0DEE
add   r1,r8                     ; 080F0DF0
ldrb  r2,[r1]                   ; 080F0DF2
lsl   r2,r2,0x4                 ; 080F0DF4
ldrb  r3,[r4,0x5]               ; 080F0DF6
mov   r1,0xF                    ; 080F0DF8
and   r1,r3                     ; 080F0DFA
orr   r1,r2                     ; 080F0DFC
strb  r1,[r4,0x5]               ; 080F0DFE
ldr   r3,[r5]                   ; 080F0E00
ldr   r1,=Data08196DFE          ; 080F0E02
add   r1,r8                     ; 080F0E04
ldrb  r4,[r1]                   ; 080F0E06
ldrh  r2,[r3,0x2]               ; 080F0E08
ldr   r1,=0xFFFFFE00            ; 080F0E0A
and   r1,r2                     ; 080F0E0C
orr   r1,r4                     ; 080F0E0E
strh  r1,[r3,0x2]               ; 080F0E10
ldr   r1,=Data08196E07          ; 080F0E12
add   r8,r1                     ; 080F0E14
mov   r2,r8                     ; 080F0E16
ldrb  r1,[r2]                   ; 080F0E18
sub   r1,0x10                   ; 080F0E1A
mov   r4,0x0                    ; 080F0E1C
mov   r8,r4                     ; 080F0E1E
strb  r1,[r3]                   ; 080F0E20
ldr   r3,[r5]                   ; 080F0E22
ldrb  r2,[r3,0x1]               ; 080F0E24
mov   r1,0x4                    ; 080F0E26
neg   r1,r1                     ; 080F0E28
and   r1,r2                     ; 080F0E2A
mov   r2,0x1                    ; 080F0E2C
orr   r1,r2                     ; 080F0E2E
strb  r1,[r3,0x1]               ; 080F0E30
ldr   r4,[r5]                   ; 080F0E32
mov   r1,0x7                    ; 080F0E34
mov   r2,r10                    ; 080F0E36
and   r2,r1                     ; 080F0E38
lsl   r2,r2,0x1                 ; 080F0E3A
ldrb  r3,[r4,0x3]               ; 080F0E3C
mov   r1,0xF                    ; 080F0E3E
neg   r1,r1                     ; 080F0E40
and   r1,r3                     ; 080F0E42
orr   r1,r2                     ; 080F0E44
strb  r1,[r4,0x3]               ; 080F0E46
mov   r2,r10                    ; 080F0E48
lsl   r1,r2,0x5                 ; 080F0E4A
add   r1,r9                     ; 080F0E4C
str   r1,[r5]                   ; 080F0E4E
ldr   r1,=Data081AF2CC          ; 080F0E50
ldrh  r0,[r0,0x1E]              ; 080F0E52
lsl   r0,r0,0x1                 ; 080F0E54
add   r0,r0,r1                  ; 080F0E56
ldrh  r1,[r0]                   ; 080F0E58
ldr   r0,=0x030021A8            ; 080F0E5A
strh  r1,[r0]                   ; 080F0E5C
strh  r1,[r0,0x2]               ; 080F0E5E
mov   r4,r8                     ; 080F0E60
strh  r4,[r0,0x4]               ; 080F0E62
ldr   r4,=0x03007030            ; 080F0E64
mov   r1,r4                     ; 080F0E66
mov   r2,0x1                    ; 080F0E68
mov   r3,0x2                    ; 080F0E6A
bl    swi_0F                    ; 080F0E6C
ldr   r0,[r5]                   ; 080F0E70
ldrh  r1,[r4]                   ; 080F0E72
strh  r1,[r0,0x6]               ; 080F0E74
add   r0,0x8                    ; 080F0E76
str   r0,[r5]                   ; 080F0E78
ldrh  r1,[r4,0x2]               ; 080F0E7A
strh  r1,[r0,0x6]               ; 080F0E7C
add   r0,0x8                    ; 080F0E7E
str   r0,[r5]                   ; 080F0E80
ldrh  r1,[r4,0x4]               ; 080F0E82
strh  r1,[r0,0x6]               ; 080F0E84
add   r0,0x8                    ; 080F0E86
str   r0,[r5]                   ; 080F0E88
ldrh  r1,[r4,0x6]               ; 080F0E8A
strh  r1,[r0,0x6]               ; 080F0E8C
mov   r0,0x1                    ; 080F0E8E
add   r10,r0                    ; 080F0E90
add   r6,0x1                    ; 080F0E92
lsl   r6,r6,0x2                 ; 080F0E94
strh  r6,[r7]                   ; 080F0E96
mov   r2,r10                    ; 080F0E98
ldr   r1,=0x030069D2            ; 080F0E9A
strh  r2,[r1]                   ; 080F0E9C
pop   {r3-r5}                   ; 080F0E9E
mov   r8,r3                     ; 080F0EA0
mov   r9,r4                     ; 080F0EA2
mov   r10,r5                    ; 080F0EA4
pop   {r4-r7}                   ; 080F0EA6
pop   {r0}                      ; 080F0EA8
bx    r0                        ; 080F0EAA
.pool                           ; 080F0EAC

Sub080F0EDC:
push  {r4,lr}                   ; 080F0EDC
mov   r4,r0                     ; 080F0EDE
ldrh  r1,[r4,0x1E]              ; 080F0EE0
mov   r0,0x90                   ; 080F0EE2
lsl   r0,r0,0x1                 ; 080F0EE4
cmp   r1,r0                     ; 080F0EE6
beq   @@Code080F0EFA            ; 080F0EE8
mov   r0,0x80                   ; 080F0EEA
lsl   r0,r0,0x1                 ; 080F0EEC
cmp   r1,r0                     ; 080F0EEE
bne   @@Code080F0F0E            ; 080F0EF0
ldrh  r0,[r4,0x38]              ; 080F0EF2
add   r0,0x1                    ; 080F0EF4
strh  r0,[r4,0x38]              ; 080F0EF6
b     @@Code080F0F1A            ; 080F0EF8
@@Code080F0EFA:
ldrh  r0,[r4,0x3A]              ; 080F0EFA
add   r0,0x1                    ; 080F0EFC
strh  r0,[r4,0x3A]              ; 080F0EFE
ldrh  r0,[r4,0x3C]              ; 080F0F00
add   r0,0x1                    ; 080F0F02
strh  r0,[r4,0x3C]              ; 080F0F04
ldr   r1,=0x03006258            ; 080F0F06
mov   r0,0x5A                   ; 080F0F08
bl    PlayYISound               ; 080F0F0A
@@Code080F0F0E:
mov   r0,r4                     ; 080F0F0E
bl    Sub080F0D88               ; 080F0F10
ldrh  r0,[r4,0x1E]              ; 080F0F14
sub   r0,0x4                    ; 080F0F16
strh  r0,[r4,0x1E]              ; 080F0F18
@@Code080F0F1A:
pop   {r4}                      ; 080F0F1A
pop   {r0}                      ; 080F0F1C
bx    r0                        ; 080F0F1E
.pool                           ; 080F0F20

Sub080F0F24:
push  {r4,lr}                   ; 080F0F24
mov   r4,r0                     ; 080F0F26
bl    Sub080F0D88               ; 080F0F28
ldrh  r1,[r4,0x1E]              ; 080F0F2C
mov   r0,0xA8                   ; 080F0F2E
lsl   r0,r0,0x1                 ; 080F0F30
cmp   r1,r0                     ; 080F0F32
bne   @@Code080F0F4C            ; 080F0F34
ldr   r1,=0x03006258            ; 080F0F36
mov   r0,0x2D                   ; 080F0F38
bl    PlayYISound               ; 080F0F3A
ldrh  r0,[r4,0x38]              ; 080F0F3E
add   r0,0x1                    ; 080F0F40
strh  r0,[r4,0x38]              ; 080F0F42
b     @@Code080F0F50            ; 080F0F44
.pool                           ; 080F0F46

@@Code080F0F4C:
add   r0,r1,0x4                 ; 080F0F4C
strh  r0,[r4,0x1E]              ; 080F0F4E
@@Code080F0F50:
pop   {r4}                      ; 080F0F50
pop   {r0}                      ; 080F0F52
bx    r0                        ; 080F0F54
.pool                           ; 080F0F56

Sub080F0F58:
push  {lr}                      ; 080F0F58
ldrh  r1,[r0,0x38]              ; 080F0F5A
ldr   r2,=CodePtrs08196CDC      ; 080F0F5C
lsl   r1,r1,0x2                 ; 080F0F5E
add   r1,r1,r2                  ; 080F0F60
ldr   r1,[r1]                   ; 080F0F62
bl    Sub_bx_r1                 ; 080F0F64  bx r1
pop   {r0}                      ; 080F0F68
bx    r0                        ; 080F0F6A
.pool                           ; 080F0F6C

Sub080F0F70:
push  {r4,lr}                   ; 080F0F70
mov   r4,r0                     ; 080F0F72
bl    Sub080F0F58               ; 080F0F74
mov   r0,r4                     ; 080F0F78
bl    Sub080F0C20               ; 080F0F7A
mov   r0,r4                     ; 080F0F7E
bl    Sub080F08CC               ; 080F0F80
pop   {r4}                      ; 080F0F84
pop   {r0}                      ; 080F0F86
bx    r0                        ; 080F0F88
.pool                           ; 080F0F8A

Sub080F0F8C:
push  {r4-r5,lr}                ; 080F0F8C
mov   r4,r0                     ; 080F0F8E
bl    Sub080F1ABC               ; 080F0F90
ldrh  r0,[r4,0x12]              ; 080F0F94
sub   r0,0x1                    ; 080F0F96
strh  r0,[r4,0x12]              ; 080F0F98
lsl   r0,r0,0x10                ; 080F0F9A
cmp   r0,0x0                    ; 080F0F9C
bge   @@Code080F0FF6            ; 080F0F9E
mov   r0,0x21                   ; 080F0FA0  21: Course clear
bl    Sub0812C3B4               ; 080F0FA2  Change music (YI)
mov   r1,0x0                    ; 080F0FA6
mov   r2,r4                     ; 080F0FA8
add   r2,0x8E                   ; 080F0FAA
ldrb  r0,[r2]                   ; 080F0FAC
mov   r3,r4                     ; 080F0FAE
add   r3,0x7F                   ; 080F0FB0
mov   r5,0x7E                   ; 080F0FB2
add   r5,r5,r4                  ; 080F0FB4
mov   r12,r5                    ; 080F0FB6
cmp   r0,0xFF                   ; 080F0FB8
bne   @@Code080F0FCA            ; 080F0FBA
@@Code080F0FBC:
add   r0,r1,0x1                 ; 080F0FBC
lsl   r0,r0,0x10                ; 080F0FBE
lsr   r1,r0,0x10                ; 080F0FC0
add   r0,r2,r1                  ; 080F0FC2
ldrb  r0,[r0]                   ; 080F0FC4
cmp   r0,0xFF                   ; 080F0FC6
beq   @@Code080F0FBC            ; 080F0FC8
@@Code080F0FCA:
mov   r0,0x6                    ; 080F0FCA
strb  r0,[r3]                   ; 080F0FCC
cmp   r1,0x3                    ; 080F0FCE
bls   @@Code080F0FD8            ; 080F0FD0
add   r0,r1,0x1                 ; 080F0FD2
lsl   r0,r0,0x10                ; 080F0FD4
lsr   r1,r0,0x10                ; 080F0FD6
@@Code080F0FD8:
mov   r0,r12                    ; 080F0FD8
strb  r1,[r0]                   ; 080F0FDA
ldrh  r0,[r4,0x30]              ; 080F0FDC
add   r0,0x1                    ; 080F0FDE
strh  r0,[r4,0x30]              ; 080F0FE0
ldrh  r0,[r4,0x10]              ; 080F0FE2
add   r0,0x1                    ; 080F0FE4
strh  r0,[r4,0x10]              ; 080F0FE6
mov   r0,0x80                   ; 080F0FE8
lsl   r0,r0,0x1                 ; 080F0FEA
strh  r0,[r4,0x1E]              ; 080F0FEC
ldr   r1,=0x03006258            ; 080F0FEE
mov   r0,0x2B                   ; 080F0FF0
bl    PlayYISound               ; 080F0FF2
@@Code080F0FF6:
pop   {r4-r5}                   ; 080F0FF6
pop   {r0}                      ; 080F0FF8
bx    r0                        ; 080F0FFA
.pool                           ; 080F0FFC

Sub080F1000:
push  {r4-r6,lr}                ; 080F1000
mov   r4,r0                     ; 080F1002
bl    Sub080F1ABC               ; 080F1004
ldrh  r0,[r4,0x12]              ; 080F1008
sub   r0,0x1                    ; 080F100A
strh  r0,[r4,0x12]              ; 080F100C
lsl   r0,r0,0x10                ; 080F100E
cmp   r0,0x0                    ; 080F1010
bne   @@Code080F1078            ; 080F1012
mov   r2,r4                     ; 080F1014
add   r2,0x8C                   ; 080F1016
ldrb  r3,[r2]                   ; 080F1018
cmp   r3,0x0                    ; 080F101A
beq   @@Code080F1070            ; 080F101C
ldr   r6,=0x03002200            ; 080F101E
ldr   r0,=0x407E                ; 080F1020
add   r5,r6,r0                  ; 080F1022
ldrh  r1,[r5]                   ; 080F1024
ldr   r0,=0x03E7                ; 080F1026
cmp   r1,r0                     ; 080F1028
bne   @@Code080F1044            ; 080F102A
mov   r0,0x0                    ; 080F102C
strb  r0,[r2]                   ; 080F102E
ldrh  r0,[r4,0x12]              ; 080F1030
add   r0,0x1                    ; 080F1032
strh  r0,[r4,0x12]              ; 080F1034
b     @@Code080F1078            ; 080F1036
.pool                           ; 080F1038

@@Code080F1044:
sub   r0,r3,0x1                 ; 080F1044
strb  r0,[r2]                   ; 080F1046
ldr   r0,=0x4058                ; 080F1048
add   r1,r6,r0                  ; 080F104A
mov   r0,0x6E                   ; 080F104C
bl    PlayYISound               ; 080F104E
ldrh  r1,[r5]                   ; 080F1052
ldr   r0,=0x03E6                ; 080F1054
cmp   r1,r0                     ; 080F1056
bhi   @@Code080F105E            ; 080F1058
add   r0,r1,0x1                 ; 080F105A
strh  r0,[r5]                   ; 080F105C
@@Code080F105E:
bl    Sub080EF708               ; 080F105E
mov   r0,0x30                   ; 080F1062
strh  r0,[r4,0x12]              ; 080F1064
b     @@Code080F1078            ; 080F1066
.pool                           ; 080F1068

@@Code080F1070:
mov   r0,0x80                   ; 080F1070
strh  r0,[r4,0x12]              ; 080F1072
mov   r0,0x10                   ; 080F1074
strh  r0,[r4,0x10]              ; 080F1076
@@Code080F1078:
pop   {r4-r6}                   ; 080F1078
pop   {r0}                      ; 080F107A
bx    r0                        ; 080F107C
.pool                           ; 080F107E

Sub080F1080:
push  {r4-r5,lr}                ; 080F1080
mov   r4,r0                     ; 080F1082
mov   r0,0x0                    ; 080F1084
bl    Sub080E9DC8               ; 080F1086
ldr   r5,=0x03007240            ; 080F108A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]                   ; 080F108C
mov   r1,0x87                   ; 080F108E
lsl   r1,r1,0x2                 ; 080F1090
add   r0,r0,r1                  ; 080F1092
ldrh  r0,[r0]                   ; 080F1094
cmp   r0,0x0                    ; 080F1096
bne   @@Code080F1110            ; 080F1098
mov   r0,r4                     ; 080F109A
bl    Sub080F1ABC               ; 080F109C
mov   r1,0x8                    ; 080F10A0
ldr   r0,[r5]                   ; 080F10A2
ldr   r2,=0x0216                ; 080F10A4
add   r0,r0,r2                  ; 080F10A6
ldrh  r0,[r0]                   ; 080F10A8
cmp   r0,0x0                    ; 080F10AA
beq   @@Code080F110E            ; 080F10AC
ldr   r0,=0x03002200            ; 080F10AE
ldr   r1,=0x48AA                ; 080F10B0
add   r0,r0,r1                  ; 080F10B2
ldrh  r1,[r0]                   ; 080F10B4
cmp   r1,0x0                    ; 080F10B6
bne   @@Code080F1106            ; 080F10B8
mov   r1,0x6                    ; 080F10BA
mov   r2,r4                     ; 080F10BC
add   r2,0x83                   ; 080F10BE
@@Code080F10C0:
add   r0,r2,r1                  ; 080F10C0
ldrb  r0,[r0]                   ; 080F10C2
cmp   r0,0x0                    ; 080F10C4
beq   @@Code080F10FC            ; 080F10C6
mov   r0,0x20                   ; 080F10C8  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080F10CA  Change music (YI)
mov   r0,0x90                   ; 080F10CE
strh  r0,[r4,0x12]              ; 080F10D0
mov   r0,0x2                    ; 080F10D2
strh  r0,[r4,0x1C]              ; 080F10D4
ldr   r0,=Data08196BA0          ; 080F10D6
ldrh  r0,[r0,0x4]               ; 080F10D8
bl    Sub080EFDB8               ; 080F10DA
mov   r0,r4                     ; 080F10DE
bl    Sub080F2114               ; 080F10E0
b     @@Code080F1106            ; 080F10E4
.pool                           ; 080F10E6

@@Code080F10FC:
sub   r0,r1,0x1                 ; 080F10FC
lsl   r0,r0,0x10                ; 080F10FE
lsr   r1,r0,0x10                ; 080F1100
cmp   r0,0x0                    ; 080F1102
bge   @@Code080F10C0            ; 080F1104
@@Code080F1106:
ldrh  r1,[r4,0x10]              ; 080F1106
add   r0,r1,0x1                 ; 080F1108
lsl   r0,r0,0x10                ; 080F110A
lsr   r1,r0,0x10                ; 080F110C
@@Code080F110E:
strh  r1,[r4,0x10]              ; 080F110E
@@Code080F1110:
pop   {r4-r5}                   ; 080F1110
pop   {r0}                      ; 080F1112
bx    r0                        ; 080F1114
.pool                           ; 080F1116

Sub080F1118:
push  {r4-r6,lr}                ; 080F1118
mov   r1,r0                     ; 080F111A
add   r1,0x7F                   ; 080F111C
ldrb  r4,[r1]                   ; 080F111E
ldr   r1,=0x03007240            ; 080F1120  Normal gameplay IWRAM (0300220C)
ldr   r5,[r1]                   ; 080F1122
ldr   r1,=Data08196D08          ; 080F1124
add   r1,r4,r1                  ; 080F1126
ldrb  r2,[r1]                   ; 080F1128
ldr   r3,=0x29D2                ; 080F112A
add   r1,r5,r3                  ; 080F112C
strh  r2,[r1]                   ; 080F112E
mov   r1,r0                     ; 080F1130
add   r1,0x7E                   ; 080F1132
ldrb  r2,[r1]                   ; 080F1134
ldr   r1,=Data08196DFE          ; 080F1136
add   r1,r2,r1                  ; 080F1138
ldrb  r3,[r1]                   ; 080F113A
ldr   r6,=0x29D6                ; 080F113C
add   r1,r5,r6                  ; 080F113E
strh  r3,[r1]                   ; 080F1140
ldr   r1,=Data08196E07          ; 080F1142
add   r2,r2,r1                  ; 080F1144
ldrb  r2,[r2]                   ; 080F1146
ldr   r3,=0x29DA                ; 080F1148
add   r1,r5,r3                  ; 080F114A
strh  r2,[r1]                   ; 080F114C
ldr   r1,=Data08196CF0          ; 080F114E
lsl   r4,r4,0x1                 ; 080F1150
add   r4,r4,r1                  ; 080F1152
ldrh  r1,[r4]                   ; 080F1154
add   r6,0x8                    ; 080F1156
add   r5,r5,r6                  ; 080F1158
strh  r1,[r5]                   ; 080F115A
bl    Sub080F12DC               ; 080F115C
pop   {r4-r6}                   ; 080F1160
pop   {r0}                      ; 080F1162
bx    r0                        ; 080F1164
.pool                           ; 080F1166

Sub080F1188:
push  {r4-r7,lr}                ; 080F1188
mov   r7,r8                     ; 080F118A
push  {r7}                      ; 080F118C
mov   r6,r0                     ; 080F118E
add   r0,0x7E                   ; 080F1190
ldrb  r4,[r0]                   ; 080F1192
ldr   r1,=Data08196E1A          ; 080F1194
lsl   r0,r4,0x1                 ; 080F1196
add   r0,r0,r1                  ; 080F1198
ldrh  r5,[r0]                   ; 080F119A
mov   r0,r6                     ; 080F119C
add   r0,0x7F                   ; 080F119E
ldrb  r1,[r0]                   ; 080F11A0
lsl   r0,r1,0x3                 ; 080F11A2
add   r3,r0,r1                  ; 080F11A4
mov   r0,0x3                    ; 080F11A6
mov   r12,r0                    ; 080F11A8
ldr   r0,=0x02011000            ; 080F11AA
ldrh  r4,[r0]                   ; 080F11AC
ldr   r7,=Data08196D14          ; 080F11AE
@@Code080F11B0:
lsl   r2,r4,0x1                 ; 080F11B0
ldr   r1,=0x02011002            ; 080F11B2
mov   r8,r1                     ; 080F11B4
add   r0,r2,r1                  ; 080F11B6
strh  r5,[r0]                   ; 080F11B8
ldr   r0,=0x02011004            ; 080F11BA
add   r1,r2,r0                  ; 080F11BC
mov   r0,0x3                    ; 080F11BE
strh  r0,[r1]                   ; 080F11C0
ldr   r0,=0x02011006            ; 080F11C2
add   r1,r2,r0                  ; 080F11C4
lsl   r0,r3,0x1                 ; 080F11C6
add   r0,r0,r7                  ; 080F11C8
ldrh  r0,[r0]                   ; 080F11CA
strh  r0,[r1]                   ; 080F11CC
ldr   r0,=0x02011008            ; 080F11CE
add   r1,r2,r0                  ; 080F11D0
add   r0,r3,0x1                 ; 080F11D2
lsl   r0,r0,0x1                 ; 080F11D4
add   r0,r0,r7                  ; 080F11D6
ldrh  r0,[r0]                   ; 080F11D8
strh  r0,[r1]                   ; 080F11DA
ldr   r1,=0x0201100A            ; 080F11DC
add   r2,r2,r1                  ; 080F11DE
add   r0,r3,0x2                 ; 080F11E0
lsl   r0,r0,0x1                 ; 080F11E2
add   r0,r0,r7                  ; 080F11E4
ldrh  r0,[r0]                   ; 080F11E6
strh  r0,[r2]                   ; 080F11E8
add   r0,r3,0x3                 ; 080F11EA
lsl   r0,r0,0x10                ; 080F11EC
lsr   r3,r0,0x10                ; 080F11EE
add   r0,r4,0x5                 ; 080F11F0
lsl   r0,r0,0x10                ; 080F11F2
lsr   r4,r0,0x10                ; 080F11F4
mov   r0,r5                     ; 080F11F6
add   r0,0x40                   ; 080F11F8
lsl   r0,r0,0x10                ; 080F11FA
lsr   r5,r0,0x10                ; 080F11FC
mov   r0,r12                    ; 080F11FE
sub   r0,0x1                    ; 080F1200
lsl   r0,r0,0x10                ; 080F1202
lsr   r0,r0,0x10                ; 080F1204
mov   r12,r0                    ; 080F1206
cmp   r0,0x0                    ; 080F1208
bne   @@Code080F11B0            ; 080F120A
lsl   r0,r4,0x1                 ; 080F120C
add   r0,r8                     ; 080F120E
ldr   r2,=0xFFFF                ; 080F1210
mov   r1,r2                     ; 080F1212
strh  r1,[r0]                   ; 080F1214
ldr   r0,=0x02011000            ; 080F1216
strh  r4,[r0]                   ; 080F1218
ldrh  r0,[r6,0x10]              ; 080F121A
cmp   r0,0xD                    ; 080F121C
beq   @@Code080F129C            ; 080F121E
ldrh  r0,[r6,0x30]              ; 080F1220
cmp   r0,0x9                    ; 080F1222
bne   @@Code080F1254            ; 080F1224
mov   r0,0x20                   ; 080F1226
strh  r0,[r6,0x12]              ; 080F1228
mov   r3,0xF                    ; 080F122A
b     @@Code080F129A            ; 080F122C
.pool                           ; 080F122E

@@Code080F1254:
mov   r0,r6                     ; 080F1254
add   r0,0x7F                   ; 080F1256
ldrb  r3,[r0]                   ; 080F1258
cmp   r3,0x1                    ; 080F125A
bne   @@Code080F1262            ; 080F125C
mov   r3,0x5D                   ; 080F125E
b     @@Code080F1290            ; 080F1260
@@Code080F1262:
cmp   r3,0xA                    ; 080F1262
bne   @@Code080F1280            ; 080F1264
mov   r3,0x11                   ; 080F1266
ldr   r0,=0x03002200            ; 080F1268
ldr   r1,=0x4A48                ; 080F126A
add   r0,r0,r1                  ; 080F126C
ldrb  r2,[r0]                   ; 080F126E
mov   r1,0x5                    ; 080F1270
neg   r1,r1                     ; 080F1272
and   r1,r2                     ; 080F1274
b     @@Code080F128E            ; 080F1276
.pool                           ; 080F1278

@@Code080F1280:
mov   r3,0x45                   ; 080F1280
ldr   r0,=0x03002200            ; 080F1282
ldr   r2,=0x4A48                ; 080F1284
add   r0,r0,r2                  ; 080F1286
ldrb  r1,[r0]                   ; 080F1288
mov   r2,0x4                    ; 080F128A
orr   r1,r2                     ; 080F128C
@@Code080F128E:
strb  r1,[r0]                   ; 080F128E
@@Code080F1290:
ldr   r1,=0x03006258            ; 080F1290
mov   r0,r3                     ; 080F1292
bl    PlayYISound               ; 080F1294
mov   r3,0x8                    ; 080F1298
@@Code080F129A:
strh  r3,[r6,0x10]              ; 080F129A
@@Code080F129C:
pop   {r3}                      ; 080F129C
mov   r8,r3                     ; 080F129E
pop   {r4-r7}                   ; 080F12A0
pop   {r0}                      ; 080F12A2
bx    r0                        ; 080F12A4
.pool                           ; 080F12A6

Sub080F12B4:
push  {r4,lr}                   ; 080F12B4
mov   r4,r0                     ; 080F12B6
bl    Sub080F1ABC               ; 080F12B8
ldrh  r0,[r4,0x1E]              ; 080F12BC
sub   r0,0x10                   ; 080F12BE
strh  r0,[r4,0x1E]              ; 080F12C0
lsl   r0,r0,0x10                ; 080F12C2
cmp   r0,0x0                    ; 080F12C4
bge   @@Code080F12D0            ; 080F12C6
mov   r0,r4                     ; 080F12C8
bl    Sub080F1188               ; 080F12CA
b     @@Code080F12D6            ; 080F12CE
@@Code080F12D0:
mov   r0,r4                     ; 080F12D0
bl    Sub080F1118               ; 080F12D2
@@Code080F12D6:
pop   {r4}                      ; 080F12D6
pop   {r0}                      ; 080F12D8
bx    r0                        ; 080F12DA

Sub080F12DC:
push  {r4-r7,lr}                ; 080F12DC
mov   r7,r10                    ; 080F12DE
mov   r6,r9                     ; 080F12E0
mov   r5,r8                     ; 080F12E2
push  {r5-r7}                   ; 080F12E4
ldr   r1,=0x03002200            ; 080F12E6
mov   r10,r1                    ; 080F12E8
ldr   r2,=0x030069D2            ; 080F12EA
ldrh  r7,[r2]                   ; 080F12EC
ldr   r3,=0x030069D0            ; 080F12EE
ldrh  r3,[r3]                   ; 080F12F0
mov   r9,r3                     ; 080F12F2
mov   r1,r9                     ; 080F12F4
lsr   r1,r1,0x2                 ; 080F12F6
mov   r9,r1                     ; 080F12F8
ldr   r6,=0x030021B0            ; 080F12FA
lsl   r4,r1,0x3                 ; 080F12FC
mov   r2,0xE0                   ; 080F12FE
lsl   r2,r2,0x6                 ; 080F1300
add   r10,r2                    ; 080F1302
add   r4,r10                    ; 080F1304
str   r4,[r6]                   ; 080F1306
ldrb  r2,[r4,0x3]               ; 080F1308
mov   r3,0x3F                   ; 080F130A
mov   r1,r3                     ; 080F130C
and   r1,r2                     ; 080F130E
mov   r2,0x80                   ; 080F1310
orr   r1,r2                     ; 080F1312
strb  r1,[r4,0x3]               ; 080F1314
ldr   r2,[r6]                   ; 080F1316
ldrb  r1,[r2,0x1]               ; 080F1318
and   r3,r1                     ; 080F131A
strb  r3,[r2,0x1]               ; 080F131C
ldr   r4,[r6]                   ; 080F131E
ldr   r3,=0x03007240            ; 080F1320  Normal gameplay IWRAM (0300220C)
mov   r8,r3                     ; 080F1322
ldr   r1,[r3]                   ; 080F1324
ldr   r2,=0x29DE                ; 080F1326
add   r1,r1,r2                  ; 080F1328
ldrh  r1,[r1]                   ; 080F132A
ldr   r2,=0x03FF                ; 080F132C
and   r2,r1                     ; 080F132E
ldrh  r3,[r4,0x4]               ; 080F1330
ldr   r1,=0xFFFFFC00            ; 080F1332
and   r1,r3                     ; 080F1334
orr   r1,r2                     ; 080F1336
strh  r1,[r4,0x4]               ; 080F1338
ldrb  r2,[r4,0x1]               ; 080F133A
mov   r1,0x21                   ; 080F133C
neg   r1,r1                     ; 080F133E
and   r1,r2                     ; 080F1340
strb  r1,[r4,0x1]               ; 080F1342
ldr   r4,[r6]                   ; 080F1344
mov   r3,r8                     ; 080F1346
ldr   r1,[r3]                   ; 080F1348
ldr   r2,=0x29D2                ; 080F134A
add   r1,r1,r2                  ; 080F134C
ldrb  r2,[r1]                   ; 080F134E
lsl   r2,r2,0x4                 ; 080F1350
ldrb  r3,[r4,0x5]               ; 080F1352
mov   r1,0xF                    ; 080F1354
and   r1,r3                     ; 080F1356
orr   r1,r2                     ; 080F1358
strb  r1,[r4,0x5]               ; 080F135A
ldr   r5,[r6]                   ; 080F135C
mov   r3,r8                     ; 080F135E
ldr   r4,[r3]                   ; 080F1360
ldr   r2,=0x29D6                ; 080F1362
add   r1,r4,r2                  ; 080F1364
ldrh  r2,[r1]                   ; 080F1366
ldr   r3,=0x01FF                ; 080F1368
mov   r1,r3                     ; 080F136A
and   r2,r1                     ; 080F136C
ldrh  r3,[r5,0x2]               ; 080F136E
ldr   r1,=0xFFFFFE00            ; 080F1370
and   r1,r3                     ; 080F1372
orr   r1,r2                     ; 080F1374
strh  r1,[r5,0x2]               ; 080F1376
ldr   r1,=0x29DA                ; 080F1378
add   r4,r4,r1                  ; 080F137A
ldrb  r1,[r4]                   ; 080F137C
sub   r1,0x10                   ; 080F137E
mov   r2,0x0                    ; 080F1380
mov   r8,r2                     ; 080F1382
strb  r1,[r5]                   ; 080F1384
ldr   r3,[r6]                   ; 080F1386
ldrb  r1,[r3,0x5]               ; 080F1388
mov   r2,0xC                    ; 080F138A
orr   r1,r2                     ; 080F138C
strb  r1,[r3,0x5]               ; 080F138E
ldr   r3,[r6]                   ; 080F1390
ldrb  r2,[r3,0x1]               ; 080F1392
mov   r1,0x4                    ; 080F1394
neg   r1,r1                     ; 080F1396
and   r1,r2                     ; 080F1398
mov   r2,0x1                    ; 080F139A
orr   r1,r2                     ; 080F139C
strb  r1,[r3,0x1]               ; 080F139E
ldr   r4,[r6]                   ; 080F13A0
mov   r1,0x7                    ; 080F13A2
mov   r2,r7                     ; 080F13A4
and   r2,r1                     ; 080F13A6
lsl   r2,r2,0x1                 ; 080F13A8
ldrb  r3,[r4,0x3]               ; 080F13AA
mov   r1,0xF                    ; 080F13AC
neg   r1,r1                     ; 080F13AE
and   r1,r3                     ; 080F13B0
orr   r1,r2                     ; 080F13B2
strb  r1,[r4,0x3]               ; 080F13B4
lsl   r1,r7,0x5                 ; 080F13B6
add   r1,r10                    ; 080F13B8
str   r1,[r6]                   ; 080F13BA
ldrh  r1,[r0,0x1E]              ; 080F13BC
mov   r3,0x80                   ; 080F13BE
lsl   r3,r3,0x1                 ; 080F13C0
mov   r0,r3                     ; 080F13C2
sub   r0,r0,r1                  ; 080F13C4
lsl   r0,r0,0x10                ; 080F13C6
ldr   r1,=Data081AF2CC          ; 080F13C8
lsr   r0,r0,0xF                 ; 080F13CA
add   r0,r0,r1                  ; 080F13CC
ldrh  r1,[r0]                   ; 080F13CE
ldr   r0,=0x030021A8            ; 080F13D0
strh  r1,[r0]                   ; 080F13D2
mov   r1,r3                     ; 080F13D4
strh  r1,[r0,0x2]               ; 080F13D6
mov   r1,r8                     ; 080F13D8
strh  r1,[r0,0x4]               ; 080F13DA
ldr   r4,=0x03007030            ; 080F13DC
mov   r1,r4                     ; 080F13DE
mov   r2,0x1                    ; 080F13E0
mov   r3,0x2                    ; 080F13E2
bl    swi_0F                    ; 080F13E4
ldr   r0,[r6]                   ; 080F13E8
ldrh  r1,[r4]                   ; 080F13EA
strh  r1,[r0,0x6]               ; 080F13EC
add   r0,0x8                    ; 080F13EE
str   r0,[r6]                   ; 080F13F0
ldrh  r1,[r4,0x2]               ; 080F13F2
strh  r1,[r0,0x6]               ; 080F13F4
add   r0,0x8                    ; 080F13F6
str   r0,[r6]                   ; 080F13F8
ldrh  r1,[r4,0x4]               ; 080F13FA
strh  r1,[r0,0x6]               ; 080F13FC
add   r0,0x8                    ; 080F13FE
str   r0,[r6]                   ; 080F1400
ldrh  r1,[r4,0x6]               ; 080F1402
strh  r1,[r0,0x6]               ; 080F1404
add   r1,r7,0x1                 ; 080F1406
mov   r2,0x1                    ; 080F1408
add   r9,r2                     ; 080F140A
mov   r3,r9                     ; 080F140C
lsl   r3,r3,0x2                 ; 080F140E
ldr   r0,=0x030069D0            ; 080F1410
strh  r3,[r0]                   ; 080F1412
ldr   r2,=0x030069D2            ; 080F1414
strh  r1,[r2]                   ; 080F1416
pop   {r3-r5}                   ; 080F1418
mov   r8,r3                     ; 080F141A
mov   r9,r4                     ; 080F141C
mov   r10,r5                    ; 080F141E
pop   {r4-r7}                   ; 080F1420
pop   {r0}                      ; 080F1422
bx    r0                        ; 080F1424
.pool                           ; 080F1426

Sub080F1468:
push  {r4-r5,lr}                ; 080F1468
mov   r1,r0                     ; 080F146A
add   r1,0x7E                   ; 080F146C
ldrb  r2,[r1]                   ; 080F146E
ldr   r1,=Data08196E10          ; 080F1470
add   r1,r2,r1                  ; 080F1472
ldrb  r3,[r1]                   ; 080F1474
ldr   r1,=0x03007240            ; 080F1476  Normal gameplay IWRAM (0300220C)
ldr   r4,[r1]                   ; 080F1478
ldr   r5,=0x29D2                ; 080F147A
add   r1,r4,r5                  ; 080F147C
strh  r3,[r1]                   ; 080F147E
ldr   r1,=Data08196DFE          ; 080F1480
add   r1,r2,r1                  ; 080F1482
ldrb  r3,[r1]                   ; 080F1484
add   r5,0x4                    ; 080F1486
add   r1,r4,r5                  ; 080F1488
strh  r3,[r1]                   ; 080F148A
ldr   r1,=Data08196E07          ; 080F148C
add   r2,r2,r1                  ; 080F148E
ldrb  r2,[r2]                   ; 080F1490
ldr   r3,=0x29DA                ; 080F1492
add   r1,r4,r3                  ; 080F1494
strh  r2,[r1]                   ; 080F1496
add   r5,0x8                    ; 080F1498
add   r4,r4,r5                  ; 080F149A
mov   r1,0x80                   ; 080F149C
lsl   r1,r1,0x2                 ; 080F149E
strh  r1,[r4]                   ; 080F14A0
bl    Sub080F12DC               ; 080F14A2
pop   {r4-r5}                   ; 080F14A6
pop   {r0}                      ; 080F14A8
bx    r0                        ; 080F14AA
.pool                           ; 080F14AC

Sub080F14C4:
push  {r4,lr}                   ; 080F14C4
mov   r4,r0                     ; 080F14C6
bl    Sub080F1ABC               ; 080F14C8
ldrh  r0,[r4,0x1E]              ; 080F14CC
add   r0,0x10                   ; 080F14CE
strh  r0,[r4,0x1E]              ; 080F14D0
lsl   r0,r0,0x10                ; 080F14D2
lsr   r0,r0,0x10                ; 080F14D4
cmp   r0,0xFF                   ; 080F14D6
bls   @@Code080F14E2            ; 080F14D8
ldrh  r0,[r4,0x10]              ; 080F14DA
add   r0,0x1                    ; 080F14DC
strh  r0,[r4,0x10]              ; 080F14DE
b     @@Code080F14E8            ; 080F14E0
@@Code080F14E2:
mov   r0,r4                     ; 080F14E2
bl    Sub080F1468               ; 080F14E4
@@Code080F14E8:
pop   {r4}                      ; 080F14E8
pop   {r0}                      ; 080F14EA
bx    r0                        ; 080F14EC
.pool                           ; 080F14EE

Sub080F14F0:
push  {r4-r7,lr}                ; 080F14F0
mov   r7,r10                    ; 080F14F2
mov   r6,r9                     ; 080F14F4
mov   r5,r8                     ; 080F14F6
push  {r5-r7}                   ; 080F14F8
mov   r12,r0                    ; 080F14FA
add   r0,0x7E                   ; 080F14FC
ldrb  r3,[r0]                   ; 080F14FE
mov   r6,0x3                    ; 080F1500
ldr   r0,=Data08196E1A          ; 080F1502
lsl   r1,r3,0x1                 ; 080F1504
add   r1,r1,r0                  ; 080F1506
ldrh  r4,[r1]                   ; 080F1508
ldr   r0,=0x02011000            ; 080F150A
ldrh  r3,[r0]                   ; 080F150C
ldr   r0,=0x03007240            ; 080F150E  Normal gameplay IWRAM (0300220C)
mov   r9,r0                     ; 080F1510
ldr   r1,=Data08196E10          ; 080F1512
mov   r10,r1                    ; 080F1514
ldr   r5,=Data08196C44          ; 080F1516
ldrh  r2,[r5,0x4]               ; 080F1518
mov   r8,r2                     ; 080F151A
@@Code080F151C:
lsl   r1,r3,0x1                 ; 080F151C
ldr   r7,=0x02011002            ; 080F151E
add   r0,r1,r7                  ; 080F1520
strh  r4,[r0]                   ; 080F1522
ldr   r0,=0x02011004            ; 080F1524
add   r2,r1,r0                  ; 080F1526
mov   r0,0x3                    ; 080F1528
strh  r0,[r2]                   ; 080F152A
ldr   r0,=0x02011006            ; 080F152C
add   r2,r1,r0                  ; 080F152E
ldrh  r0,[r5]                   ; 080F1530
strh  r0,[r2]                   ; 080F1532
ldr   r0,=0x02011008            ; 080F1534
add   r2,r1,r0                  ; 080F1536
ldrh  r0,[r5,0x2]               ; 080F1538
strh  r0,[r2]                   ; 080F153A
ldr   r2,=0x0201100A            ; 080F153C
add   r1,r1,r2                  ; 080F153E
mov   r0,r8                     ; 080F1540
strh  r0,[r1]                   ; 080F1542
add   r0,r3,0x5                 ; 080F1544
lsl   r0,r0,0x10                ; 080F1546
lsr   r3,r0,0x10                ; 080F1548
mov   r0,r4                     ; 080F154A
add   r0,0x40                   ; 080F154C
lsl   r0,r0,0x10                ; 080F154E
lsr   r4,r0,0x10                ; 080F1550
sub   r0,r6,0x1                 ; 080F1552
lsl   r0,r0,0x10                ; 080F1554
lsr   r6,r0,0x10                ; 080F1556
cmp   r6,0x0                    ; 080F1558
bne   @@Code080F151C            ; 080F155A
lsl   r0,r3,0x1                 ; 080F155C
add   r0,r0,r7                  ; 080F155E
ldr   r2,=0xFFFF                ; 080F1560
mov   r1,r2                     ; 080F1562
strh  r1,[r0]                   ; 080F1564
ldr   r0,=0x02011000            ; 080F1566
strh  r3,[r0]                   ; 080F1568
mov   r0,r12                    ; 080F156A
add   r0,0x7E                   ; 080F156C
ldrb  r3,[r0]                   ; 080F156E
mov   r4,r9                     ; 080F1570
ldr   r2,[r4]                   ; 080F1572
mov   r1,r10                    ; 080F1574
add   r0,r3,r1                  ; 080F1576
ldrb  r1,[r0]                   ; 080F1578
ldr   r4,=0x29D2                ; 080F157A
add   r0,r2,r4                  ; 080F157C
strh  r1,[r0]                   ; 080F157E
ldr   r1,=Data08196DFE          ; 080F1580
add   r0,r3,r1                  ; 080F1582
ldrb  r1,[r0]                   ; 080F1584
add   r4,0x4                    ; 080F1586
add   r0,r2,r4                  ; 080F1588
strh  r1,[r0]                   ; 080F158A
ldr   r1,=Data08196E07          ; 080F158C
add   r0,r3,r1                  ; 080F158E
ldrb  r1,[r0]                   ; 080F1590
ldr   r3,=0x29DA                ; 080F1592
add   r0,r2,r3                  ; 080F1594
strh  r1,[r0]                   ; 080F1596
add   r4,0x8                    ; 080F1598
add   r2,r2,r4                  ; 080F159A
mov   r0,0x80                   ; 080F159C
lsl   r0,r0,0x2                 ; 080F159E
strh  r0,[r2]                   ; 080F15A0
mov   r0,r12                    ; 080F15A2
strh  r6,[r0,0x1E]              ; 080F15A4
bl    Sub080F12DC               ; 080F15A6
pop   {r3-r5}                   ; 080F15AA
mov   r8,r3                     ; 080F15AC
mov   r9,r4                     ; 080F15AE
mov   r10,r5                    ; 080F15B0
pop   {r4-r7}                   ; 080F15B2
pop   {r0}                      ; 080F15B4
bx    r0                        ; 080F15B6
.pool                           ; 080F15B8

Sub080F15F4:
push  {r4-r6,lr}                ; 080F15F4
mov   r5,r1                     ; 080F15F6
ldr   r3,=0x03002200            ; 080F15F8
ldr   r1,[r5]                   ; 080F15FA
asr   r1,r1,0x8                 ; 080F15FC
ldr   r4,=0x47FA                ; 080F15FE
add   r2,r3,r4                  ; 080F1600
strh  r1,[r2]                   ; 080F1602
ldr   r1,[r5,0x4]               ; 080F1604
asr   r1,r1,0x8                 ; 080F1606
add   r4,0x2                    ; 080F1608
add   r2,r3,r4                  ; 080F160A
strh  r1,[r2]                   ; 080F160C
mov   r1,r0                     ; 080F160E
add   r1,0x97                   ; 080F1610
ldrb  r1,[r1]                   ; 080F1612
ldr   r2,=Data08196E2C          ; 080F1614
lsl   r1,r1,0x1                 ; 080F1616
add   r1,r1,r2                  ; 080F1618
ldrh  r1,[r1]                   ; 080F161A
ldr   r2,=0x47F6                ; 080F161C
add   r6,r3,r2                  ; 080F161E
strh  r1,[r6]                   ; 080F1620
add   r0,0x98                   ; 080F1622
ldrb  r0,[r0]                   ; 080F1624
ldr   r1,=Data08196E32          ; 080F1626
lsl   r0,r0,0x1                 ; 080F1628
add   r0,r0,r1                  ; 080F162A
ldrh  r0,[r0]                   ; 080F162C
ldr   r1,=0x47F8                ; 080F162E
add   r4,r3,r1                  ; 080F1630
strh  r0,[r4]                   ; 080F1632
add   r2,0xA                    ; 080F1634
add   r3,r3,r2                  ; 080F1636
mov   r0,0xC0                   ; 080F1638
lsl   r0,r0,0x3                 ; 080F163A
strh  r0,[r3]                   ; 080F163C
bl    Sub080DC778               ; 080F163E
mov   r1,0x0                    ; 080F1642
ldsh  r0,[r6,r1]                ; 080F1644
str   r0,[r5,0x8]               ; 080F1646
mov   r2,0x0                    ; 080F1648
ldsh  r0,[r4,r2]                ; 080F164A
str   r0,[r5,0xC]               ; 080F164C
pop   {r4-r6}                   ; 080F164E
pop   {r0}                      ; 080F1650
bx    r0                        ; 080F1652
.pool                           ; 080F1654

Sub080F166C:
push  {r4-r7,lr}                ; 080F166C
mov   r7,r10                    ; 080F166E
mov   r6,r9                     ; 080F1670
mov   r5,r8                     ; 080F1672
push  {r5-r7}                   ; 080F1674
ldr   r1,=0x03002200            ; 080F1676
mov   r8,r1                     ; 080F1678
ldr   r2,=0x030069D2            ; 080F167A
ldrh  r2,[r2]                   ; 080F167C
mov   r9,r2                     ; 080F167E
ldr   r7,=0x47D0                ; 080F1680
add   r7,r8                     ; 080F1682
ldrh  r6,[r7]                   ; 080F1684
lsr   r6,r6,0x2                 ; 080F1686
ldr   r5,=0x030021B0            ; 080F1688
lsl   r4,r6,0x3                 ; 080F168A
mov   r1,0xE0                   ; 080F168C
lsl   r1,r1,0x6                 ; 080F168E
add   r8,r1                     ; 080F1690
add   r4,r8                     ; 080F1692
str   r4,[r5]                   ; 080F1694
ldrb  r2,[r4,0x3]               ; 080F1696
mov   r3,0x3F                   ; 080F1698
mov   r1,r3                     ; 080F169A
and   r1,r2                     ; 080F169C
mov   r2,0x80                   ; 080F169E
orr   r1,r2                     ; 080F16A0
strb  r1,[r4,0x3]               ; 080F16A2
ldr   r2,[r5]                   ; 080F16A4
ldrb  r1,[r2,0x1]               ; 080F16A6
and   r3,r1                     ; 080F16A8
strb  r3,[r2,0x1]               ; 080F16AA
ldr   r3,[r5]                   ; 080F16AC
ldrh  r2,[r3,0x4]               ; 080F16AE
ldr   r1,=0xFFFFFC00            ; 080F16B0
and   r1,r2                     ; 080F16B2
mov   r4,0xC2                   ; 080F16B4
lsl   r4,r4,0x2                 ; 080F16B6
mov   r2,r4                     ; 080F16B8
orr   r1,r2                     ; 080F16BA
strh  r1,[r3,0x4]               ; 080F16BC
ldrb  r2,[r3,0x1]               ; 080F16BE
mov   r1,0x21                   ; 080F16C0
neg   r1,r1                     ; 080F16C2
and   r1,r2                     ; 080F16C4
strb  r1,[r3,0x1]               ; 080F16C6
ldr   r3,[r5]                   ; 080F16C8
ldrb  r2,[r3,0x5]               ; 080F16CA
mov   r1,0xF                    ; 080F16CC
and   r1,r2                     ; 080F16CE
mov   r2,0xE0                   ; 080F16D0
orr   r1,r2                     ; 080F16D2
strb  r1,[r3,0x5]               ; 080F16D4
ldr   r3,[r5]                   ; 080F16D6
ldr   r1,=Data08196DFE          ; 080F16D8
ldrb  r4,[r1,0x4]               ; 080F16DA
ldrh  r2,[r3,0x2]               ; 080F16DC
ldr   r1,=0xFFFFFE00            ; 080F16DE
and   r1,r2                     ; 080F16E0
orr   r1,r4                     ; 080F16E2
strh  r1,[r3,0x2]               ; 080F16E4
ldr   r1,=Data08196E07          ; 080F16E6
ldrb  r1,[r1,0x4]               ; 080F16E8
sub   r1,0x10                   ; 080F16EA
mov   r2,0x0                    ; 080F16EC
mov   r10,r2                    ; 080F16EE
strb  r1,[r3]                   ; 080F16F0
ldr   r3,[r5]                   ; 080F16F2
ldrb  r1,[r3,0x5]               ; 080F16F4
mov   r2,0xC                    ; 080F16F6
orr   r1,r2                     ; 080F16F8
strb  r1,[r3,0x5]               ; 080F16FA
ldr   r3,[r5]                   ; 080F16FC
ldrb  r2,[r3,0x1]               ; 080F16FE
mov   r1,0x4                    ; 080F1700
neg   r1,r1                     ; 080F1702
and   r1,r2                     ; 080F1704
mov   r2,0x1                    ; 080F1706
orr   r1,r2                     ; 080F1708
strb  r1,[r3,0x1]               ; 080F170A
ldr   r4,[r5]                   ; 080F170C
mov   r1,0x7                    ; 080F170E
mov   r2,r9                     ; 080F1710
and   r2,r1                     ; 080F1712
lsl   r2,r2,0x1                 ; 080F1714
ldrb  r3,[r4,0x3]               ; 080F1716
mov   r1,0xF                    ; 080F1718
neg   r1,r1                     ; 080F171A
and   r1,r3                     ; 080F171C
orr   r1,r2                     ; 080F171E
strb  r1,[r4,0x3]               ; 080F1720
mov   r4,r9                     ; 080F1722
lsl   r1,r4,0x5                 ; 080F1724
add   r1,r8                     ; 080F1726
str   r1,[r5]                   ; 080F1728
ldr   r1,=Data081AF2CC          ; 080F172A
ldrh  r0,[r0,0x1E]              ; 080F172C
lsl   r0,r0,0x1                 ; 080F172E
add   r0,r0,r1                  ; 080F1730
ldrh  r1,[r0]                   ; 080F1732
ldr   r0,=0x030021A8            ; 080F1734
strh  r1,[r0]                   ; 080F1736
strh  r1,[r0,0x2]               ; 080F1738
mov   r1,r10                    ; 080F173A
strh  r1,[r0,0x4]               ; 080F173C
ldr   r4,=0x03007030            ; 080F173E
mov   r1,r4                     ; 080F1740
mov   r2,0x1                    ; 080F1742
mov   r3,0x2                    ; 080F1744
bl    swi_0F                    ; 080F1746
ldr   r0,[r5]                   ; 080F174A
ldrh  r1,[r4]                   ; 080F174C
strh  r1,[r0,0x6]               ; 080F174E
add   r0,0x8                    ; 080F1750
str   r0,[r5]                   ; 080F1752
ldrh  r1,[r4,0x2]               ; 080F1754
strh  r1,[r0,0x6]               ; 080F1756
add   r0,0x8                    ; 080F1758
str   r0,[r5]                   ; 080F175A
ldrh  r1,[r4,0x4]               ; 080F175C
strh  r1,[r0,0x6]               ; 080F175E
add   r0,0x8                    ; 080F1760
str   r0,[r5]                   ; 080F1762
ldrh  r1,[r4,0x6]               ; 080F1764
strh  r1,[r0,0x6]               ; 080F1766
mov   r2,0x1                    ; 080F1768
add   r9,r2                     ; 080F176A
add   r6,0x1                    ; 080F176C
lsl   r6,r6,0x2                 ; 080F176E
strh  r6,[r7]                   ; 080F1770
mov   r0,r9                     ; 080F1772
ldr   r4,=0x030069D2            ; 080F1774
strh  r0,[r4]                   ; 080F1776
pop   {r3-r5}                   ; 080F1778
mov   r8,r3                     ; 080F177A
mov   r9,r4                     ; 080F177C
mov   r10,r5                    ; 080F177E
pop   {r4-r7}                   ; 080F1780
pop   {r0}                      ; 080F1782
bx    r0                        ; 080F1784
.pool                           ; 080F1786

Sub080F17B4:
push  {r4-r7,lr}                ; 080F17B4
mov   r5,0x3                    ; 080F17B6
ldr   r0,=Data08196E1A          ; 080F17B8
ldrh  r4,[r0,0x8]               ; 080F17BA
ldr   r0,=0x02011000            ; 080F17BC
ldrh  r3,[r0]                   ; 080F17BE
ldr   r6,=Data08196C44          ; 080F17C0
ldrh  r0,[r6,0x4]               ; 080F17C2
mov   r12,r0                    ; 080F17C4
@@Code080F17C6:
lsl   r1,r3,0x1                 ; 080F17C6
ldr   r7,=0x02011002            ; 080F17C8
add   r0,r1,r7                  ; 080F17CA
strh  r4,[r0]                   ; 080F17CC
ldr   r0,=0x02011004            ; 080F17CE
add   r2,r1,r0                  ; 080F17D0
mov   r0,0x3                    ; 080F17D2
strh  r0,[r2]                   ; 080F17D4
ldr   r0,=0x02011006            ; 080F17D6
add   r2,r1,r0                  ; 080F17D8
ldrh  r0,[r6]                   ; 080F17DA
strh  r0,[r2]                   ; 080F17DC
ldr   r0,=0x02011008            ; 080F17DE
add   r2,r1,r0                  ; 080F17E0
ldrh  r0,[r6,0x2]               ; 080F17E2
strh  r0,[r2]                   ; 080F17E4
ldr   r2,=0x0201100A            ; 080F17E6
add   r1,r1,r2                  ; 080F17E8
mov   r0,r12                    ; 080F17EA
strh  r0,[r1]                   ; 080F17EC
add   r0,r3,0x5                 ; 080F17EE
lsl   r0,r0,0x10                ; 080F17F0
lsr   r3,r0,0x10                ; 080F17F2
mov   r0,r4                     ; 080F17F4
add   r0,0x40                   ; 080F17F6
lsl   r0,r0,0x10                ; 080F17F8
lsr   r4,r0,0x10                ; 080F17FA
sub   r0,r5,0x1                 ; 080F17FC
lsl   r0,r0,0x10                ; 080F17FE
lsr   r5,r0,0x10                ; 080F1800
cmp   r5,0x0                    ; 080F1802
bne   @@Code080F17C6            ; 080F1804
lsl   r0,r3,0x1                 ; 080F1806
add   r0,r0,r7                  ; 080F1808
ldr   r2,=0xFFFF                ; 080F180A
mov   r1,r2                     ; 080F180C
strh  r1,[r0]                   ; 080F180E
ldr   r0,=0x02011000            ; 080F1810
strh  r3,[r0]                   ; 080F1812
pop   {r4-r7}                   ; 080F1814
pop   {r0}                      ; 080F1816
bx    r0                        ; 080F1818
.pool                           ; 080F181A

Sub080F1840:
push  {r4,lr}                   ; 080F1840
mov   r4,r0                     ; 080F1842
mov   r3,r1                     ; 080F1844
add   r0,0x97                   ; 080F1846
ldrb  r0,[r0]                   ; 080F1848
ldr   r1,[r3]                   ; 080F184A
lsl   r1,r1,0x8                 ; 080F184C
lsr   r2,r1,0x10                ; 080F184E
ldr   r1,=Data08196E2C          ; 080F1850
lsl   r0,r0,0x1                 ; 080F1852
add   r0,r0,r1                  ; 080F1854
ldrh  r0,[r0]                   ; 080F1856
cmp   r2,r0                     ; 080F1858
blo   @@Code080F1880            ; 080F185A
mov   r0,r4                     ; 080F185C
add   r0,0x98                   ; 080F185E
ldrb  r1,[r0]                   ; 080F1860
ldr   r0,[r3,0x4]               ; 080F1862
lsl   r0,r0,0x8                 ; 080F1864
lsr   r2,r0,0x10                ; 080F1866
ldr   r0,=Data08196E32          ; 080F1868
lsl   r1,r1,0x1                 ; 080F186A
add   r1,r1,r0                  ; 080F186C
ldrh  r1,[r1]                   ; 080F186E
cmp   r2,r1                     ; 080F1870
blo   @@Code080F1880            ; 080F1872
mov   r0,0x0                    ; 080F1874
b     @@Code080F18C0            ; 080F1876
.pool                           ; 080F1878

@@Code080F1880:
mov   r0,r4                     ; 080F1880
add   r0,0x98                   ; 080F1882
ldrb  r1,[r0]                   ; 080F1884
lsl   r0,r1,0x1                 ; 080F1886
mov   r2,r4                     ; 080F1888
add   r2,0x97                   ; 080F188A
add   r0,r0,r1                  ; 080F188C
ldrb  r2,[r2]                   ; 080F188E
add   r2,r0,r2                  ; 080F1890
cmp   r2,0x4                    ; 080F1892
bne   @@Code080F18B8            ; 080F1894
bl    Sub080F17B4               ; 080F1896
mov   r0,0x80                   ; 080F189A
lsl   r0,r0,0x1                 ; 080F189C
strh  r0,[r4,0x1E]              ; 080F189E
mov   r0,r4                     ; 080F18A0
bl    Sub080F166C               ; 080F18A2
ldr   r1,=0x03006258            ; 080F18A6
mov   r0,0x6E                   ; 080F18A8
bl    PlayYISound               ; 080F18AA
mov   r0,0x11                   ; 080F18AE
strh  r0,[r4,0x10]              ; 080F18B0
b     @@Code080F18BE            ; 080F18B2
.pool                           ; 080F18B4

@@Code080F18B8:
mov   r0,r4                     ; 080F18B8
bl    Sub080F14F0               ; 080F18BA
@@Code080F18BE:
mov   r0,0x1                    ; 080F18BE
@@Code080F18C0:
pop   {r4}                      ; 080F18C0
pop   {r1}                      ; 080F18C2
bx    r1                        ; 080F18C4
.pool                           ; 080F18C6

Sub080F18C8:
push  {r4-r7,lr}                ; 080F18C8
mov   r7,r9                     ; 080F18CA
mov   r6,r8                     ; 080F18CC
push  {r6-r7}                   ; 080F18CE
mov   r12,r0                    ; 080F18D0
add   r0,0xC6                   ; 080F18D2
ldrb  r3,[r0]                   ; 080F18D4
ldr   r0,=Data08196E38          ; 080F18D6
lsl   r1,r3,0x1                 ; 080F18D8
add   r1,r1,r0                  ; 080F18DA
ldrh  r4,[r1]                   ; 080F18DC
ldr   r0,=0x02011000            ; 080F18DE
ldrh  r3,[r0]                   ; 080F18E0
mov   r5,0x3                    ; 080F18E2
ldr   r0,=0x03007240            ; 080F18E4  Normal gameplay IWRAM (0300220C)
mov   r9,r0                     ; 080F18E6
ldr   r6,=Data08196C44          ; 080F18E8
ldrh  r2,[r6,0x4]               ; 080F18EA
mov   r8,r2                     ; 080F18EC
@@Code080F18EE:
lsl   r1,r3,0x1                 ; 080F18EE
ldr   r7,=0x02011002            ; 080F18F0
add   r0,r1,r7                  ; 080F18F2
strh  r4,[r0]                   ; 080F18F4
ldr   r0,=0x02011004            ; 080F18F6
add   r2,r1,r0                  ; 080F18F8
mov   r0,0x3                    ; 080F18FA
strh  r0,[r2]                   ; 080F18FC
ldr   r0,=0x02011006            ; 080F18FE
add   r2,r1,r0                  ; 080F1900
ldrh  r0,[r6]                   ; 080F1902
strh  r0,[r2]                   ; 080F1904
ldr   r0,=0x02011008            ; 080F1906
add   r2,r1,r0                  ; 080F1908
ldrh  r0,[r6,0x2]               ; 080F190A
strh  r0,[r2]                   ; 080F190C
ldr   r2,=0x0201100A            ; 080F190E
add   r1,r1,r2                  ; 080F1910
mov   r0,r8                     ; 080F1912
strh  r0,[r1]                   ; 080F1914
add   r0,r3,0x5                 ; 080F1916
lsl   r0,r0,0x10                ; 080F1918
lsr   r3,r0,0x10                ; 080F191A
sub   r0,r5,0x1                 ; 080F191C
lsl   r0,r0,0x10                ; 080F191E
lsr   r5,r0,0x10                ; 080F1920
mov   r0,r4                     ; 080F1922
add   r0,0x40                   ; 080F1924
lsl   r0,r0,0x10                ; 080F1926
lsr   r4,r0,0x10                ; 080F1928
cmp   r5,0x0                    ; 080F192A
bne   @@Code080F18EE            ; 080F192C
lsl   r0,r3,0x1                 ; 080F192E
add   r0,r0,r7                  ; 080F1930
ldr   r2,=0xFFFF                ; 080F1932
mov   r1,r2                     ; 080F1934
strh  r1,[r0]                   ; 080F1936
ldr   r0,=0x02011000            ; 080F1938
strh  r3,[r0]                   ; 080F193A
mov   r0,r12                    ; 080F193C
strh  r5,[r0,0x1E]              ; 080F193E
mov   r2,r9                     ; 080F1940
ldr   r1,[r2]                   ; 080F1942
ldr   r0,=0x29D2                ; 080F1944
add   r2,r1,r0                  ; 080F1946
mov   r0,0xB                    ; 080F1948
strh  r0,[r2]                   ; 080F194A
ldr   r2,=0x29DE                ; 080F194C
add   r1,r1,r2                  ; 080F194E
mov   r0,0xC1                   ; 080F1950
lsl   r0,r0,0x2                 ; 080F1952
strh  r0,[r1]                   ; 080F1954
mov   r0,r12                    ; 080F1956
bl    Sub080F41D8               ; 080F1958
pop   {r3-r4}                   ; 080F195C
mov   r8,r3                     ; 080F195E
mov   r9,r4                     ; 080F1960
pop   {r4-r7}                   ; 080F1962
pop   {r0}                      ; 080F1964
bx    r0                        ; 080F1966
.pool                           ; 080F1968

Sub080F1998:
push  {r4-r6,lr}                ; 080F1998
mov   r5,r1                     ; 080F199A
ldr   r3,=0x03002200            ; 080F199C
ldr   r1,[r5]                   ; 080F199E
asr   r1,r1,0x8                 ; 080F19A0
ldr   r4,=0x47FA                ; 080F19A2
add   r2,r3,r4                  ; 080F19A4
strh  r1,[r2]                   ; 080F19A6
ldr   r1,[r5,0x4]               ; 080F19A8
asr   r1,r1,0x8                 ; 080F19AA
add   r4,0x2                    ; 080F19AC
add   r2,r3,r4                  ; 080F19AE
strh  r1,[r2]                   ; 080F19B0
add   r0,0xC6                   ; 080F19B2
ldrb  r1,[r0]                   ; 080F19B4
ldr   r0,=Data08196E54          ; 080F19B6
lsl   r1,r1,0x1                 ; 080F19B8
add   r0,r1,r0                  ; 080F19BA
ldrh  r0,[r0]                   ; 080F19BC
ldr   r2,=0x47F6                ; 080F19BE
add   r6,r3,r2                  ; 080F19C0
strh  r0,[r6]                   ; 080F19C2
ldr   r0,=Data08196E70          ; 080F19C4
add   r1,r1,r0                  ; 080F19C6
ldrh  r0,[r1]                   ; 080F19C8
ldr   r1,=0x47F8                ; 080F19CA
add   r4,r3,r1                  ; 080F19CC
strh  r0,[r4]                   ; 080F19CE
add   r2,0xA                    ; 080F19D0
add   r3,r3,r2                  ; 080F19D2
mov   r0,0xC0                   ; 080F19D4
lsl   r0,r0,0x3                 ; 080F19D6
strh  r0,[r3]                   ; 080F19D8
bl    Sub080DC778               ; 080F19DA
mov   r1,0x0                    ; 080F19DE
ldsh  r0,[r6,r1]                ; 080F19E0
str   r0,[r5,0x8]               ; 080F19E2
mov   r2,0x0                    ; 080F19E4
ldsh  r0,[r4,r2]                ; 080F19E6
str   r0,[r5,0xC]               ; 080F19E8
pop   {r4-r6}                   ; 080F19EA
pop   {r0}                      ; 080F19EC
bx    r0                        ; 080F19EE
.pool                           ; 080F19F0

Sub080F1A08:
push  {r4,lr}                   ; 080F1A08
mov   r4,r0                     ; 080F1A0A
mov   r3,r1                     ; 080F1A0C
add   r0,0xC6                   ; 080F1A0E
ldrb  r2,[r0]                   ; 080F1A10
ldr   r1,[r3]                   ; 080F1A12
asr   r1,r1,0x8                 ; 080F1A14
ldr   r0,=Data08196E54          ; 080F1A16
lsl   r2,r2,0x1                 ; 080F1A18
add   r0,r2,r0                  ; 080F1A1A
ldrh  r0,[r0]                   ; 080F1A1C
cmp   r1,r0                     ; 080F1A1E
blt   @@Code080F1A3C            ; 080F1A20
ldr   r1,[r3,0x4]               ; 080F1A22
asr   r1,r1,0x8                 ; 080F1A24
ldr   r0,=Data08196E70          ; 080F1A26
add   r0,r2,r0                  ; 080F1A28
ldrh  r0,[r0]                   ; 080F1A2A
cmp   r1,r0                     ; 080F1A2C
blt   @@Code080F1A3C            ; 080F1A2E
mov   r0,0x0                    ; 080F1A30
b     @@Code080F1A44            ; 080F1A32
.pool                           ; 080F1A34

@@Code080F1A3C:
mov   r0,r4                     ; 080F1A3C
bl    Sub080F18C8               ; 080F1A3E
mov   r0,0x1                    ; 080F1A42
@@Code080F1A44:
pop   {r4}                      ; 080F1A44
pop   {r1}                      ; 080F1A46
bx    r1                        ; 080F1A48
.pool                           ; 080F1A4A

Sub080F1A4C:
push  {r4,lr}                   ; 080F1A4C
mov   r4,r0                     ; 080F1A4E
ldr   r0,=0x03002200            ; 080F1A50
ldr   r1,=0x4901                ; 080F1A52
add   r0,r0,r1                  ; 080F1A54
ldrb  r1,[r0]                   ; 080F1A56
mov   r0,0x1                    ; 080F1A58
and   r0,r1                     ; 080F1A5A
cmp   r0,0x0                    ; 080F1A5C
bne   @@Code080F1AA2            ; 080F1A5E
ldr   r0,=0x01E9                ; 080F1A60
bl    Sub08047B04               ; 080F1A62
lsl   r0,r0,0x18                ; 080F1A66
lsr   r0,r0,0x18                ; 080F1A68
ldr   r2,=0x03007240            ; 080F1A6A  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 080F1A6C
mul   r0,r1                     ; 080F1A6E
ldr   r1,=0x1AF4                ; 080F1A70
add   r0,r0,r1                  ; 080F1A72
ldr   r1,[r2]                   ; 080F1A74
add   r2,r1,r0                  ; 080F1A76
ldr   r0,[r4]                   ; 080F1A78
str   r0,[r2]                   ; 080F1A7A
ldr   r0,[r4,0x4]               ; 080F1A7C
str   r0,[r2,0x4]               ; 080F1A7E
mov   r1,r2                     ; 080F1A80
add   r1,0x6A                   ; 080F1A82
mov   r0,0x5                    ; 080F1A84
strh  r0,[r1]                   ; 080F1A86
strh  r0,[r2,0x38]              ; 080F1A88
mov   r0,r2                     ; 080F1A8A
add   r0,0x42                   ; 080F1A8C
mov   r1,0x4                    ; 080F1A8E
strh  r1,[r0]                   ; 080F1A90
add   r0,0x2A                   ; 080F1A92
strh  r1,[r0]                   ; 080F1A94
mov   r1,r2                     ; 080F1A96
add   r1,0x94                   ; 080F1A98
mov   r0,0x6                    ; 080F1A9A
strb  r0,[r1]                   ; 080F1A9C
mov   r0,0x2C                   ; 080F1A9E
strh  r0,[r2,0x2C]              ; 080F1AA0
@@Code080F1AA2:
pop   {r4}                      ; 080F1AA2
pop   {r0}                      ; 080F1AA4
bx    r0                        ; 080F1AA6
.pool                           ; 080F1AA8

Sub080F1ABC:
push  {r4-r7,lr}                ; 080F1ABC
mov   r6,r0                     ; 080F1ABE
ldr   r7,[r6]                   ; 080F1AC0
mov   r1,r7                     ; 080F1AC2
add   r1,0x6A                   ; 080F1AC4
ldrh  r0,[r1]                   ; 080F1AC6
cmp   r0,0x0                    ; 080F1AC8
bne   @@Code080F1ACE            ; 080F1ACA
b     @@Code080F1BF4            ; 080F1ACC
@@Code080F1ACE:
ldr   r5,[r6,0x4]               ; 080F1ACE
cmp   r0,0x2                    ; 080F1AD0
bne   @@Code080F1B40            ; 080F1AD2
mov   r0,r5                     ; 080F1AD4
bl    Sub080F1A4C               ; 080F1AD6
ldr   r0,=0x03002200            ; 080F1ADA
ldr   r1,=0x48AA                ; 080F1ADC
add   r0,r0,r1                  ; 080F1ADE
ldrh  r0,[r0]                   ; 080F1AE0
cmp   r0,0x6                    ; 080F1AE2
bne   @@Code080F1AF8            ; 080F1AE4
mov   r0,r6                     ; 080F1AE6
mov   r1,r5                     ; 080F1AE8
bl    Sub080F1A08               ; 080F1AEA
b     @@Code080F1B00            ; 080F1AEE
.pool                           ; 080F1AF0

@@Code080F1AF8:
mov   r0,r6                     ; 080F1AF8
mov   r1,r5                     ; 080F1AFA
bl    Sub080F1840               ; 080F1AFC
@@Code080F1B00:
lsl   r0,r0,0x10                ; 080F1B00
lsr   r0,r0,0x10                ; 080F1B02
cmp   r0,0x0                    ; 080F1B04
beq   @@Code080F1B2E            ; 080F1B06
ldr   r0,=0xFFFFFF00            ; 080F1B08
str   r0,[r5,0x8]               ; 080F1B0A
ldr   r0,=0xFFFFFC00            ; 080F1B0C
str   r0,[r5,0xC]               ; 080F1B0E
mov   r1,r7                     ; 080F1B10
add   r1,0x6A                   ; 080F1B12
ldrh  r0,[r1]                   ; 080F1B14
add   r0,0x1                    ; 080F1B16
strh  r0,[r1]                   ; 080F1B18
ldrh  r0,[r6,0x10]              ; 080F1B1A
cmp   r0,0x11                   ; 080F1B1C
beq   @@Code080F1B2E            ; 080F1B1E
ldr   r1,=0x03006258            ; 080F1B20
mov   r0,0x65                   ; 080F1B22
bl    PlayYISound               ; 080F1B24
ldrh  r0,[r6,0x10]              ; 080F1B28
add   r0,0x1                    ; 080F1B2A
strh  r0,[r6,0x10]              ; 080F1B2C
@@Code080F1B2E:
mov   r0,0x20                   ; 080F1B2E
b     @@Code080F1B5C            ; 080F1B30
.pool                           ; 080F1B32

@@Code080F1B40:
cmp   r0,0x3                    ; 080F1B40
bne   @@Code080F1B66            ; 080F1B42
ldr   r0,[r5,0x4]               ; 080F1B44
lsl   r0,r0,0x8                 ; 080F1B46
lsr   r0,r0,0x10                ; 080F1B48
cmp   r0,0xDF                   ; 080F1B4A
bls   @@Code080F1B54            ; 080F1B4C
mov   r0,0x0                    ; 080F1B4E
strh  r0,[r1]                   ; 080F1B50
b     @@Code080F1BF4            ; 080F1B52
@@Code080F1B54:
ldr   r0,[r5,0xC]               ; 080F1B54
add   r0,0x40                   ; 080F1B56
str   r0,[r5,0xC]               ; 080F1B58
mov   r0,0x30                   ; 080F1B5A
@@Code080F1B5C:
strh  r0,[r5,0x2C]              ; 080F1B5C
mov   r0,r5                     ; 080F1B5E
bl    Sub0804C8A8               ; 080F1B60
b     @@Code080F1BF4            ; 080F1B64
@@Code080F1B66:
ldr   r4,=0x03006D80            ; 080F1B66
ldrh  r0,[r4,0x3C]              ; 080F1B68
cmp   r0,0x34                   ; 080F1B6A
bne   @@Code080F1BAC            ; 080F1B6C
ldr   r4,=0x03006258            ; 080F1B6E
mov   r0,0x2                    ; 080F1B70
mov   r1,r4                     ; 080F1B72
bl    PlayYISound               ; 080F1B74
ldr   r0,=0x0852                ; 080F1B78
add   r4,r4,r0                  ; 080F1B7A
ldrh  r0,[r4]                   ; 080F1B7C
cmp   r0,0x6                    ; 080F1B7E
bne   @@Code080F1B98            ; 080F1B80
mov   r0,r6                     ; 080F1B82
mov   r1,r5                     ; 080F1B84
bl    Sub080F1998               ; 080F1B86
b     @@Code080F1BA0            ; 080F1B8A
.pool                           ; 080F1B8C

@@Code080F1B98:
mov   r0,r6                     ; 080F1B98
mov   r1,r5                     ; 080F1B9A
bl    Sub080F15F4               ; 080F1B9C
@@Code080F1BA0:
mov   r1,r7                     ; 080F1BA0
add   r1,0x6A                   ; 080F1BA2
ldrh  r0,[r1]                   ; 080F1BA4
add   r0,0x1                    ; 080F1BA6
strh  r0,[r1]                   ; 080F1BA8
b     @@Code080F1BF4            ; 080F1BAA
@@Code080F1BAC:
mov   r0,r4                     ; 080F1BAC
add   r0,0x76                   ; 080F1BAE
ldrh  r2,[r0]                   ; 080F1BB0
lsr   r2,r2,0x1                 ; 080F1BB2
ldr   r0,=Data08196BA0          ; 080F1BB4
ldrh  r0,[r0,0x2]               ; 080F1BB6
sub   r2,r2,r0                  ; 080F1BB8
lsl   r2,r2,0x10                ; 080F1BBA
ldr   r0,[r4]                   ; 080F1BBC
lsl   r0,r0,0x8                 ; 080F1BBE
ldr   r3,=Data081969E4          ; 080F1BC0
lsr   r1,r2,0xF                 ; 080F1BC2
add   r1,r1,r3                  ; 080F1BC4
lsr   r0,r0,0x10                ; 080F1BC6
ldrh  r1,[r1]                   ; 080F1BC8
add   r0,r0,r1                  ; 080F1BCA
lsl   r0,r0,0x10                ; 080F1BCC
asr   r0,r0,0x8                 ; 080F1BCE
str   r0,[r5]                   ; 080F1BD0
ldr   r0,[r4,0x4]               ; 080F1BD2
lsl   r0,r0,0x8                 ; 080F1BD4
ldr   r1,=Data081969F6          ; 080F1BD6
lsr   r2,r2,0x11                ; 080F1BD8
lsl   r2,r2,0x1                 ; 080F1BDA
add   r2,r2,r1                  ; 080F1BDC
lsr   r0,r0,0x10                ; 080F1BDE
ldrh  r2,[r2]                   ; 080F1BE0
add   r0,r0,r2                  ; 080F1BE2
lsl   r0,r0,0x10                ; 080F1BE4
asr   r0,r0,0x8                 ; 080F1BE6
str   r0,[r5,0x4]               ; 080F1BE8
mov   r0,0x30                   ; 080F1BEA
strh  r0,[r5,0x2C]              ; 080F1BEC
mov   r0,r5                     ; 080F1BEE
bl    Sub0804C8A8               ; 080F1BF0
@@Code080F1BF4:
pop   {r4-r7}                   ; 080F1BF4
pop   {r0}                      ; 080F1BF6
bx    r0                        ; 080F1BF8
.pool                           ; 080F1BFA

Sub080F1C08:
mov   r3,r0                     ; 080F1C08
add   r3,0x8A                   ; 080F1C0A
mov   r1,r0                     ; 080F1C0C
add   r1,0x7F                   ; 080F1C0E
ldrb  r2,[r1]                   ; 080F1C10
add   r0,0x83                   ; 080F1C12
ldrb  r1,[r3]                   ; 080F1C14
add   r0,r0,r1                  ; 080F1C16
ldr   r1,=Data08196E8C          ; 080F1C18
add   r2,r2,r1                  ; 080F1C1A
ldrb  r1,[r2]                   ; 080F1C1C
strb  r1,[r0]                   ; 080F1C1E
ldrb  r0,[r3]                   ; 080F1C20
add   r0,0x1                    ; 080F1C22
strb  r0,[r3]                   ; 080F1C24
bx    lr                        ; 080F1C26
.pool                           ; 080F1C28

Sub080F1C2C:
push  {lr}                      ; 080F1C2C
mov   r2,r0                     ; 080F1C2E
mov   r1,r2                     ; 080F1C30
add   r1,0x98                   ; 080F1C32
ldrb  r0,[r1]                   ; 080F1C34
cmp   r0,0x2                    ; 080F1C36
bne   @@Code080F1C50            ; 080F1C38
mov   r0,0x0                    ; 080F1C3A
strb  r0,[r1]                   ; 080F1C3C
ldr   r0,=Data08196B13          ; 080F1C3E
ldrb  r1,[r0]                   ; 080F1C40
mov   r0,r2                     ; 080F1C42
add   r0,0x81                   ; 080F1C44
strb  r1,[r0]                   ; 080F1C46
b     @@Code080F1C5C            ; 080F1C48
.pool                           ; 080F1C4A

@@Code080F1C50:
add   r0,0x1                    ; 080F1C50
strb  r0,[r1]                   ; 080F1C52
mov   r1,r2                     ; 080F1C54
add   r1,0x82                   ; 080F1C56
mov   r0,0x4                    ; 080F1C58
strb  r0,[r1]                   ; 080F1C5A
@@Code080F1C5C:
pop   {r0}                      ; 080F1C5C
bx    r0                        ; 080F1C5E

Sub080F1C60:
push  {lr}                      ; 080F1C60
mov   r2,r0                     ; 080F1C62
mov   r1,r2                     ; 080F1C64
add   r1,0x98                   ; 080F1C66
ldrb  r0,[r1]                   ; 080F1C68
cmp   r0,0x0                    ; 080F1C6A
bne   @@Code080F1C84            ; 080F1C6C
mov   r0,0x2                    ; 080F1C6E
strb  r0,[r1]                   ; 080F1C70
ldr   r0,=Data08196B13          ; 080F1C72
ldrb  r1,[r0,0x2]               ; 080F1C74
mov   r0,r2                     ; 080F1C76
add   r0,0x81                   ; 080F1C78
strb  r1,[r0]                   ; 080F1C7A
b     @@Code080F1C90            ; 080F1C7C
.pool                           ; 080F1C7E

@@Code080F1C84:
sub   r0,0x1                    ; 080F1C84
strb  r0,[r1]                   ; 080F1C86
mov   r1,r2                     ; 080F1C88
add   r1,0x82                   ; 080F1C8A
mov   r0,0x3                    ; 080F1C8C
strb  r0,[r1]                   ; 080F1C8E
@@Code080F1C90:
pop   {r0}                      ; 080F1C90
bx    r0                        ; 080F1C92

Sub080F1C94:
push  {lr}                      ; 080F1C94
mov   r2,r0                     ; 080F1C96
mov   r1,r2                     ; 080F1C98
add   r1,0x97                   ; 080F1C9A
ldrb  r0,[r1]                   ; 080F1C9C
cmp   r0,0x0                    ; 080F1C9E
beq   @@Code080F1CAE            ; 080F1CA0
sub   r0,0x1                    ; 080F1CA2
strb  r0,[r1]                   ; 080F1CA4
sub   r1,0x15                   ; 080F1CA6
mov   r0,0x1                    ; 080F1CA8
strb  r0,[r1]                   ; 080F1CAA
b     @@Code080F1CDC            ; 080F1CAC
@@Code080F1CAE:
mov   r0,0x2                    ; 080F1CAE
strb  r0,[r1]                   ; 080F1CB0
ldr   r0,=Data08196B10          ; 080F1CB2
ldrb  r1,[r0,0x2]               ; 080F1CB4
mov   r0,r2                     ; 080F1CB6
add   r0,0x80                   ; 080F1CB8
strb  r1,[r0]                   ; 080F1CBA
mov   r3,r2                     ; 080F1CBC
add   r3,0x98                   ; 080F1CBE
ldrb  r0,[r3]                   ; 080F1CC0
sub   r0,0x1                    ; 080F1CC2
lsl   r0,r0,0x10                ; 080F1CC4
lsr   r1,r0,0x10                ; 080F1CC6
cmp   r0,0x0                    ; 080F1CC8
bge   @@Code080F1CCE            ; 080F1CCA
mov   r1,0x2                    ; 080F1CCC
@@Code080F1CCE:
strb  r1,[r3]                   ; 080F1CCE
ldr   r0,=Data08196B13          ; 080F1CD0
add   r0,r1,r0                  ; 080F1CD2
ldrb  r1,[r0]                   ; 080F1CD4
mov   r0,r2                     ; 080F1CD6
add   r0,0x81                   ; 080F1CD8
strb  r1,[r0]                   ; 080F1CDA
@@Code080F1CDC:
pop   {r0}                      ; 080F1CDC
bx    r0                        ; 080F1CDE
.pool                           ; 080F1CE0

Sub080F1CE8:
push  {lr}                      ; 080F1CE8
mov   r2,r0                     ; 080F1CEA
mov   r1,r2                     ; 080F1CEC
add   r1,0x97                   ; 080F1CEE
ldrb  r0,[r1]                   ; 080F1CF0
cmp   r0,0x2                    ; 080F1CF2
bne   @@Code080F1D2C            ; 080F1CF4
mov   r0,0x0                    ; 080F1CF6
strb  r0,[r1]                   ; 080F1CF8
ldr   r0,=Data08196B10          ; 080F1CFA
ldrb  r1,[r0]                   ; 080F1CFC
mov   r0,r2                     ; 080F1CFE
add   r0,0x80                   ; 080F1D00
strb  r1,[r0]                   ; 080F1D02
mov   r3,r2                     ; 080F1D04
add   r3,0x98                   ; 080F1D06
ldrb  r0,[r3]                   ; 080F1D08
add   r1,r0,0x1                 ; 080F1D0A
cmp   r1,0x3                    ; 080F1D0C
bne   @@Code080F1D12            ; 080F1D0E
mov   r1,0x0                    ; 080F1D10
@@Code080F1D12:
strb  r1,[r3]                   ; 080F1D12
ldr   r0,=Data08196B13          ; 080F1D14
add   r0,r1,r0                  ; 080F1D16
ldrb  r1,[r0]                   ; 080F1D18
mov   r0,r2                     ; 080F1D1A
add   r0,0x81                   ; 080F1D1C
strb  r1,[r0]                   ; 080F1D1E
b     @@Code080F1D38            ; 080F1D20
.pool                           ; 080F1D22

@@Code080F1D2C:
add   r0,0x1                    ; 080F1D2C
strb  r0,[r1]                   ; 080F1D2E
mov   r1,r2                     ; 080F1D30
add   r1,0x82                   ; 080F1D32
mov   r0,0x2                    ; 080F1D34
strb  r0,[r1]                   ; 080F1D36
@@Code080F1D38:
pop   {r0}                      ; 080F1D38
bx    r0                        ; 080F1D3A

Sub080F1D3C:
push  {r4-r7,lr}                ; 080F1D3C
mov   r4,r0                     ; 080F1D3E
ldr   r7,[r4]                   ; 080F1D40
ldr   r0,=0x03002200            ; 080F1D42
ldr   r1,=0x47C0                ; 080F1D44
add   r6,r0,r1                  ; 080F1D46
ldrh  r1,[r6]                   ; 080F1D48
mov   r5,0x1                    ; 080F1D4A
mov   r0,r5                     ; 080F1D4C
and   r0,r1                     ; 080F1D4E
cmp   r0,0x0                    ; 080F1D50
beq   @@Code080F1E14            ; 080F1D52
mov   r0,r4                     ; 080F1D54
add   r0,0x98                   ; 080F1D56
ldrb  r1,[r0]                   ; 080F1D58
lsl   r0,r1,0x1                 ; 080F1D5A
mov   r2,r4                     ; 080F1D5C
add   r2,0x97                   ; 080F1D5E
add   r0,r0,r1                  ; 080F1D60
ldrb  r2,[r2]                   ; 080F1D62
add   r0,r0,r2                  ; 080F1D64
mov   r1,r4                     ; 080F1D66
add   r1,0x7E                   ; 080F1D68
strb  r0,[r1]                   ; 080F1D6A
cmp   r0,0x4                    ; 080F1D6C
bne   @@Code080F1DAC            ; 080F1D6E
mov   r0,r7                     ; 080F1D70
add   r0,0x6A                   ; 080F1D72
strh  r5,[r0]                   ; 080F1D74
ldrh  r0,[r4,0x10]              ; 080F1D76
add   r0,0x1                    ; 080F1D78
strh  r0,[r4,0x10]              ; 080F1D7A
mov   r0,r4                     ; 080F1D7C
bl    Sub080EEE50               ; 080F1D7E
ldr   r1,=0x03006D80            ; 080F1D82
mov   r0,0x2B                   ; 080F1D84
strh  r0,[r1,0x3C]              ; 080F1D86
strh  r5,[r4,0x1C]              ; 080F1D88
ldr   r2,=Data08196BA0          ; 080F1D8A
ldrh  r0,[r2,0x2]               ; 080F1D8C
lsl   r0,r0,0x1                 ; 080F1D8E
add   r1,0x76                   ; 080F1D90
strh  r0,[r1]                   ; 080F1D92
ldrh  r0,[r2,0x2]               ; 080F1D94
bl    Sub080EFDB8               ; 080F1D96
b     @@Code080F1E5C            ; 080F1D9A
.pool                           ; 080F1D9C

@@Code080F1DAC:
cmp   r0,0x4                    ; 080F1DAC
bls   @@Code080F1DB6            ; 080F1DAE
sub   r0,0x1                    ; 080F1DB0
lsl   r0,r0,0x10                ; 080F1DB2
lsr   r0,r0,0x10                ; 080F1DB4
@@Code080F1DB6:
mov   r2,r0                     ; 080F1DB6
mov   r1,r4                     ; 080F1DB8
add   r1,0x8E                   ; 080F1DBA
add   r0,r1,r2                  ; 080F1DBC
ldrb  r0,[r0]                   ; 080F1DBE
cmp   r0,0xFF                   ; 080F1DC0
beq   @@Code080F1E5C            ; 080F1DC2
mov   r3,r4                     ; 080F1DC4
add   r3,0x7F                   ; 080F1DC6
strb  r0,[r3]                   ; 080F1DC8
add   r1,r1,r2                  ; 080F1DCA
mov   r0,0xFF                   ; 080F1DCC
strb  r0,[r1]                   ; 080F1DCE
mov   r0,r7                     ; 080F1DD0
add   r0,0x6A                   ; 080F1DD2
strh  r5,[r0]                   ; 080F1DD4
ldrh  r0,[r4,0x30]              ; 080F1DD6
add   r0,0x1                    ; 080F1DD8
strh  r0,[r4,0x30]              ; 080F1DDA
ldrh  r0,[r4,0x10]              ; 080F1DDC
add   r0,0x1                    ; 080F1DDE
strh  r0,[r4,0x10]              ; 080F1DE0
ldrb  r0,[r3]                   ; 080F1DE2
cmp   r0,0x1                    ; 080F1DE4
beq   @@Code080F1DF2            ; 080F1DE6
cmp   r0,0xA                    ; 080F1DE8
beq   @@Code080F1DF2            ; 080F1DEA
mov   r0,r4                     ; 080F1DEC
bl    Sub080F1C08               ; 080F1DEE
@@Code080F1DF2:
mov   r0,r4                     ; 080F1DF2
bl    Sub080EEE50               ; 080F1DF4
ldr   r1,=0x03006D80            ; 080F1DF8
mov   r0,0x2B                   ; 080F1DFA
strh  r0,[r1,0x3C]              ; 080F1DFC
mov   r0,0x1                    ; 080F1DFE
strh  r0,[r4,0x1C]              ; 080F1E00
ldr   r0,=Data08196BA0          ; 080F1E02
ldrh  r0,[r0,0x2]               ; 080F1E04
bl    Sub080EFDB8               ; 080F1E06
b     @@Code080F1E5C            ; 080F1E0A
.pool                           ; 080F1E0C

@@Code080F1E14:
mov   r0,0xF0                   ; 080F1E14
and   r0,r1                     ; 080F1E16
cmp   r0,0x0                    ; 080F1E18
beq   @@Code080F1E5C            ; 080F1E1A
mov   r0,0x22                   ; 080F1E1C
mov   r1,0x0                    ; 080F1E1E
bl    PlayYISound               ; 080F1E20
ldrh  r1,[r6]                   ; 080F1E24
mov   r0,0x10                   ; 080F1E26
and   r0,r1                     ; 080F1E28
cmp   r0,0x0                    ; 080F1E2A
beq   @@Code080F1E36            ; 080F1E2C
mov   r0,r4                     ; 080F1E2E
bl    Sub080F1CE8               ; 080F1E30
b     @@Code080F1E5C            ; 080F1E34
@@Code080F1E36:
mov   r0,0x20                   ; 080F1E36
and   r0,r1                     ; 080F1E38
cmp   r0,0x0                    ; 080F1E3A
beq   @@Code080F1E46            ; 080F1E3C
mov   r0,r4                     ; 080F1E3E
bl    Sub080F1C94               ; 080F1E40
b     @@Code080F1E5C            ; 080F1E44
@@Code080F1E46:
mov   r0,0x40                   ; 080F1E46
and   r0,r1                     ; 080F1E48
cmp   r0,0x0                    ; 080F1E4A
beq   @@Code080F1E56            ; 080F1E4C
mov   r0,r4                     ; 080F1E4E
bl    Sub080F1C60               ; 080F1E50
b     @@Code080F1E5C            ; 080F1E54
@@Code080F1E56:
mov   r0,r4                     ; 080F1E56
bl    Sub080F1C2C               ; 080F1E58
@@Code080F1E5C:
pop   {r4-r7}                   ; 080F1E5C
pop   {r0}                      ; 080F1E5E
bx    r0                        ; 080F1E60
.pool                           ; 080F1E62

Sub080F1E64:
push  {r4-r7,lr}                ; 080F1E64
mov   r7,r10                    ; 080F1E66
mov   r6,r9                     ; 080F1E68
mov   r5,r8                     ; 080F1E6A
push  {r5-r7}                   ; 080F1E6C
add   sp,-0x14                  ; 080F1E6E
mov   r2,r0                     ; 080F1E70
ldr   r5,=0x03002200            ; 080F1E72
ldr   r1,=0x4901                ; 080F1E74
add   r0,r5,r1                  ; 080F1E76
ldrb  r1,[r0]                   ; 080F1E78
mov   r0,0x8                    ; 080F1E7A
and   r0,r1                     ; 080F1E7C
lsl   r0,r0,0x18                ; 080F1E7E
lsr   r0,r0,0x1B                ; 080F1E80
mov   r12,r0                    ; 080F1E82
mov   r0,0x10                   ; 080F1E84
and   r0,r1                     ; 080F1E86
cmp   r0,0x0                    ; 080F1E88
beq   @@Code080F1E96            ; 080F1E8A
mov   r1,r12                    ; 080F1E8C
neg   r0,r1                     ; 080F1E8E
lsl   r0,r0,0x10                ; 080F1E90
lsr   r0,r0,0x10                ; 080F1E92
mov   r12,r0                    ; 080F1E94
@@Code080F1E96:
mov   r0,r2                     ; 080F1E96
add   r0,0x80                   ; 080F1E98
ldrb  r7,[r0]                   ; 080F1E9A
add   r0,0x1                    ; 080F1E9C
ldrb  r0,[r0]                   ; 080F1E9E
str   r0,[sp]                   ; 080F1EA0
ldr   r2,=0x030069D0            ; 080F1EA2
ldrh  r4,[r2]                   ; 080F1EA4
lsr   r4,r4,0x2                 ; 080F1EA6
ldr   r3,=0x030021B0            ; 080F1EA8
lsl   r1,r4,0x3                 ; 080F1EAA
ldr   r0,=0x03005A00            ; 080F1EAC
add   r1,r1,r0                  ; 080F1EAE
str   r1,[r3]                   ; 080F1EB0
ldrb  r2,[r1,0x3]               ; 080F1EB2
mov   r5,0x3F                   ; 080F1EB4
mov   r0,r5                     ; 080F1EB6
and   r0,r2                     ; 080F1EB8
strb  r0,[r1,0x3]               ; 080F1EBA
ldr   r2,[r3]                   ; 080F1EBC
ldrb  r1,[r2,0x1]               ; 080F1EBE
mov   r0,r5                     ; 080F1EC0
and   r0,r1                     ; 080F1EC2
strb  r0,[r2,0x1]               ; 080F1EC4
ldr   r1,[r3]                   ; 080F1EC6
ldrh  r2,[r1,0x4]               ; 080F1EC8
ldr   r0,=0xFFFFFC00            ; 080F1ECA
and   r0,r2                     ; 080F1ECC
ldr   r2,=0x012F                ; 080F1ECE
orr   r0,r2                     ; 080F1ED0
strh  r0,[r1,0x4]               ; 080F1ED2
ldrb  r2,[r1,0x1]               ; 080F1ED4
mov   r0,0x21                   ; 080F1ED6
neg   r0,r0                     ; 080F1ED8
and   r0,r2                     ; 080F1EDA
strb  r0,[r1,0x1]               ; 080F1EDC
ldr   r2,[r3]                   ; 080F1EDE
ldrb  r1,[r2,0x5]               ; 080F1EE0
mov   r0,0xF                    ; 080F1EE2
and   r0,r1                     ; 080F1EE4
strb  r0,[r2,0x5]               ; 080F1EE6
ldr   r1,[r3]                   ; 080F1EE8
mov   r0,r12                    ; 080F1EEA
add   r6,r7,r0                  ; 080F1EEC
ldr   r2,=0x01FF                ; 080F1EEE
and   r6,r2                     ; 080F1EF0
ldrh  r2,[r1,0x2]               ; 080F1EF2
ldr   r0,=0xFFFFFE00            ; 080F1EF4
mov   r8,r0                     ; 080F1EF6
and   r0,r2                     ; 080F1EF8
orr   r0,r6                     ; 080F1EFA
strh  r0,[r1,0x2]               ; 080F1EFC
mov   r2,r12                    ; 080F1EFE
add   r2,0xF0                   ; 080F1F00
ldr   r0,[sp]                   ; 080F1F02
add   r0,r0,r2                  ; 080F1F04
mov   r9,r0                     ; 080F1F06
strb  r0,[r1]                   ; 080F1F08
ldr   r2,[r3]                   ; 080F1F0A
ldrb  r1,[r2,0x5]               ; 080F1F0C
mov   r0,0xD                    ; 080F1F0E
neg   r0,r0                     ; 080F1F10
and   r0,r1                     ; 080F1F12
mov   r1,0x4                    ; 080F1F14
orr   r0,r1                     ; 080F1F16
strb  r0,[r2,0x5]               ; 080F1F18
add   r4,0x1                    ; 080F1F1A
lsl   r1,r4,0x3                 ; 080F1F1C
ldr   r2,=0x03005A00            ; 080F1F1E
add   r1,r1,r2                  ; 080F1F20
str   r1,[r3]                   ; 080F1F22
ldrb  r2,[r1,0x3]               ; 080F1F24
mov   r0,r5                     ; 080F1F26
and   r0,r2                     ; 080F1F28
strb  r0,[r1,0x3]               ; 080F1F2A
ldr   r2,[r3]                   ; 080F1F2C
ldrb  r1,[r2,0x1]               ; 080F1F2E
mov   r0,r5                     ; 080F1F30
and   r0,r1                     ; 080F1F32
strb  r0,[r2,0x1]               ; 080F1F34
ldr   r1,[r3]                   ; 080F1F36
ldrh  r2,[r1,0x4]               ; 080F1F38
ldr   r0,=0xFFFFFC00            ; 080F1F3A
and   r0,r2                     ; 080F1F3C
ldr   r2,=0x012F                ; 080F1F3E
orr   r0,r2                     ; 080F1F40
strh  r0,[r1,0x4]               ; 080F1F42
ldrb  r2,[r1,0x1]               ; 080F1F44
mov   r0,0x21                   ; 080F1F46
neg   r0,r0                     ; 080F1F48
and   r0,r2                     ; 080F1F4A
strb  r0,[r1,0x1]               ; 080F1F4C
ldr   r2,[r3]                   ; 080F1F4E
ldrb  r1,[r2,0x5]               ; 080F1F50
mov   r0,0xF                    ; 080F1F52
and   r0,r1                     ; 080F1F54
strb  r0,[r2,0x5]               ; 080F1F56
ldr   r2,[r3]                   ; 080F1F58
mov   r0,r12                    ; 080F1F5A
sub   r0,0x10                   ; 080F1F5C
sub   r7,r7,r0                  ; 080F1F5E
ldr   r0,=0x01FF                ; 080F1F60
and   r7,r0                     ; 080F1F62
ldrh  r1,[r2,0x2]               ; 080F1F64
mov   r0,r8                     ; 080F1F66
and   r0,r1                     ; 080F1F68
orr   r0,r7                     ; 080F1F6A
strh  r0,[r2,0x2]               ; 080F1F6C
mov   r1,r9                     ; 080F1F6E
strb  r1,[r2]                   ; 080F1F70
ldr   r2,[r3]                   ; 080F1F72
ldrb  r1,[r2,0x5]               ; 080F1F74
mov   r0,0xD                    ; 080F1F76
neg   r0,r0                     ; 080F1F78
and   r0,r1                     ; 080F1F7A
mov   r1,0x4                    ; 080F1F7C
orr   r0,r1                     ; 080F1F7E
strb  r0,[r2,0x5]               ; 080F1F80
ldr   r1,[r3]                   ; 080F1F82
ldrb  r0,[r1,0x3]               ; 080F1F84
mov   r2,0x10                   ; 080F1F86
orr   r0,r2                     ; 080F1F88
strb  r0,[r1,0x3]               ; 080F1F8A
add   r4,0x1                    ; 080F1F8C
lsl   r1,r4,0x3                 ; 080F1F8E
ldr   r0,=0x03005A00            ; 080F1F90
add   r1,r1,r0                  ; 080F1F92
str   r1,[r3]                   ; 080F1F94
ldrb  r2,[r1,0x3]               ; 080F1F96
mov   r0,r5                     ; 080F1F98
and   r0,r2                     ; 080F1F9A
strb  r0,[r1,0x3]               ; 080F1F9C
ldr   r2,[r3]                   ; 080F1F9E
ldrb  r1,[r2,0x1]               ; 080F1FA0
mov   r0,r5                     ; 080F1FA2
and   r0,r1                     ; 080F1FA4
strb  r0,[r2,0x1]               ; 080F1FA6
ldr   r1,[r3]                   ; 080F1FA8
ldrh  r2,[r1,0x4]               ; 080F1FAA
ldr   r0,=0xFFFFFC00            ; 080F1FAC
and   r0,r2                     ; 080F1FAE
ldr   r2,=0x012F                ; 080F1FB0
orr   r0,r2                     ; 080F1FB2
strh  r0,[r1,0x4]               ; 080F1FB4
ldrb  r2,[r1,0x1]               ; 080F1FB6
mov   r0,0x21                   ; 080F1FB8
neg   r0,r0                     ; 080F1FBA
and   r0,r2                     ; 080F1FBC
strb  r0,[r1,0x1]               ; 080F1FBE
ldr   r2,[r3]                   ; 080F1FC0
ldrb  r1,[r2,0x5]               ; 080F1FC2
mov   r0,0xF                    ; 080F1FC4
and   r0,r1                     ; 080F1FC6
strb  r0,[r2,0x5]               ; 080F1FC8
ldr   r1,[r3]                   ; 080F1FCA
ldrh  r2,[r1,0x2]               ; 080F1FCC
mov   r0,r8                     ; 080F1FCE
and   r0,r2                     ; 080F1FD0
orr   r0,r6                     ; 080F1FD2
strh  r0,[r1,0x2]               ; 080F1FD4
ldr   r0,[sp]                   ; 080F1FD6
mov   r2,r12                    ; 080F1FD8
sub   r0,r0,r2                  ; 080F1FDA
mov   r10,r0                    ; 080F1FDC
strb  r0,[r1]                   ; 080F1FDE
ldr   r2,[r3]                   ; 080F1FE0
ldrb  r1,[r2,0x5]               ; 080F1FE2
mov   r0,0xD                    ; 080F1FE4
neg   r0,r0                     ; 080F1FE6
and   r0,r1                     ; 080F1FE8
mov   r1,0x4                    ; 080F1FEA
orr   r0,r1                     ; 080F1FEC
strb  r0,[r2,0x5]               ; 080F1FEE
ldr   r1,[r3]                   ; 080F1FF0
ldrb  r0,[r1,0x3]               ; 080F1FF2
mov   r2,0x20                   ; 080F1FF4
orr   r0,r2                     ; 080F1FF6
strb  r0,[r1,0x3]               ; 080F1FF8
add   r4,0x1                    ; 080F1FFA
lsl   r4,r4,0x10                ; 080F1FFC
lsr   r4,r4,0x10                ; 080F1FFE
lsl   r1,r4,0x3                 ; 080F2000
ldr   r0,=0x03005A00            ; 080F2002
add   r1,r1,r0                  ; 080F2004
str   r1,[r3]                   ; 080F2006
ldrb  r2,[r1,0x3]               ; 080F2008
mov   r0,r5                     ; 080F200A
and   r0,r2                     ; 080F200C
strb  r0,[r1,0x3]               ; 080F200E
ldr   r1,[r3]                   ; 080F2010
ldrb  r0,[r1,0x1]               ; 080F2012
and   r5,r0                     ; 080F2014
strb  r5,[r1,0x1]               ; 080F2016
ldr   r0,[r3]                   ; 080F2018
ldrh  r1,[r0,0x4]               ; 080F201A
ldr   r2,=0xFFFFFC00            ; 080F201C
and   r2,r1                     ; 080F201E
ldr   r1,=0x012F                ; 080F2020
orr   r2,r1                     ; 080F2022
strh  r2,[r0,0x4]               ; 080F2024
ldrb  r1,[r0,0x1]               ; 080F2026
mov   r2,0x21                   ; 080F2028
neg   r2,r2                     ; 080F202A
and   r2,r1                     ; 080F202C
strb  r2,[r0,0x1]               ; 080F202E
ldr   r1,[r3]                   ; 080F2030
ldrb  r0,[r1,0x5]               ; 080F2032
mov   r2,0xF                    ; 080F2034
and   r2,r0                     ; 080F2036
strb  r2,[r1,0x5]               ; 080F2038
ldr   r0,[r3]                   ; 080F203A
ldrh  r1,[r0,0x2]               ; 080F203C
mov   r2,r8                     ; 080F203E
and   r2,r1                     ; 080F2040
orr   r2,r7                     ; 080F2042
strh  r2,[r0,0x2]               ; 080F2044
mov   r1,r10                    ; 080F2046
strb  r1,[r0]                   ; 080F2048
ldr   r1,[r3]                   ; 080F204A
ldrb  r0,[r1,0x5]               ; 080F204C
mov   r2,0xD                    ; 080F204E
neg   r2,r2                     ; 080F2050
and   r2,r0                     ; 080F2052
mov   r0,0x4                    ; 080F2054
orr   r2,r0                     ; 080F2056
strb  r2,[r1,0x5]               ; 080F2058
ldr   r1,[r3]                   ; 080F205A
ldrb  r0,[r1,0x3]               ; 080F205C
mov   r2,0x20                   ; 080F205E
orr   r0,r2                     ; 080F2060
strb  r0,[r1,0x3]               ; 080F2062
ldr   r1,[r3]                   ; 080F2064
ldrb  r0,[r1,0x3]               ; 080F2066
mov   r2,0x10                   ; 080F2068
orr   r0,r2                     ; 080F206A
strb  r0,[r1,0x3]               ; 080F206C
add   r4,0x1                    ; 080F206E
lsl   r4,r4,0x2                 ; 080F2070
ldr   r0,=0x030069D0            ; 080F2072
strh  r4,[r0]                   ; 080F2074
add   sp,0x14                   ; 080F2076
pop   {r3-r5}                   ; 080F2078
mov   r8,r3                     ; 080F207A
mov   r9,r4                     ; 080F207C
mov   r10,r5                    ; 080F207E
pop   {r4-r7}                   ; 080F2080
pop   {r0}                      ; 080F2082
bx    r0                        ; 080F2084
.pool                           ; 080F2086

Sub080F20AC:
push  {r4,lr}                   ; 080F20AC
mov   r2,r0                     ; 080F20AE
mov   r0,0x82                   ; 080F20B0
add   r0,r0,r2                  ; 080F20B2
mov   r12,r0                    ; 080F20B4
ldrb  r3,[r0]                   ; 080F20B6
cmp   r3,0x2                    ; 080F20B8
bhi   @@Code080F20D8            ; 080F20BA
mov   r0,r2                     ; 080F20BC
add   r0,0x97                   ; 080F20BE
ldrb  r1,[r0]                   ; 080F20C0
mov   r4,r2                     ; 080F20C2
add   r4,0x80                   ; 080F20C4
ldr   r0,=Data08196B10          ; 080F20C6
add   r0,r1,r0                  ; 080F20C8
ldrb  r2,[r4]                   ; 080F20CA
ldrb  r0,[r0]                   ; 080F20CC
cmp   r2,r0                     ; 080F20CE
beq   @@Code080F20EE            ; 080F20D0
b     @@Code080F20FC            ; 080F20D2
.pool                           ; 080F20D4

@@Code080F20D8:
mov   r0,r2                     ; 080F20D8
add   r0,0x98                   ; 080F20DA
ldrb  r1,[r0]                   ; 080F20DC
ldr   r0,=Data08196B13          ; 080F20DE
add   r0,r1,r0                  ; 080F20E0
ldrb  r0,[r0]                   ; 080F20E2
mov   r4,r2                     ; 080F20E4
add   r4,0x81                   ; 080F20E6
ldrb  r2,[r4]                   ; 080F20E8
cmp   r0,r2                     ; 080F20EA
bne   @@Code080F20FC            ; 080F20EC
@@Code080F20EE:
mov   r0,0x0                    ; 080F20EE
mov   r1,r12                    ; 080F20F0
strb  r0,[r1]                   ; 080F20F2
b     @@Code080F210A            ; 080F20F4
.pool                           ; 080F20F6

@@Code080F20FC:
mov   r0,0x1                    ; 080F20FC
and   r0,r3                     ; 080F20FE
ldr   r1,=Data08196B16          ; 080F2100
add   r0,r0,r1                  ; 080F2102
ldrb  r0,[r0]                   ; 080F2104
add   r0,r2,r0                  ; 080F2106
strb  r0,[r4]                   ; 080F2108
@@Code080F210A:
pop   {r4}                      ; 080F210A
pop   {r0}                      ; 080F210C
bx    r0                        ; 080F210E
.pool                           ; 080F2110

Sub080F2114:
push  {r4-r5,lr}                ; 080F2114
mov   r5,r0                     ; 080F2116
mov   r4,0x0                    ; 080F2118
@@Code080F211A:
mov   r0,r5                     ; 080F211A
add   r0,0x83                   ; 080F211C
add   r1,r0,r4                  ; 080F211E
ldrb  r0,[r1]                   ; 080F2120
cmp   r0,0x0                    ; 080F2122
beq   @@Code080F2134            ; 080F2124
bl    Sub080EEEC4               ; 080F2126
add   r0,r4,0x1                 ; 080F212A
lsl   r0,r0,0x10                ; 080F212C
lsr   r4,r0,0x10                ; 080F212E
cmp   r4,0x7                    ; 080F2130
bne   @@Code080F211A            ; 080F2132
@@Code080F2134:
pop   {r4-r5}                   ; 080F2134
pop   {r0}                      ; 080F2136
bx    r0                        ; 080F2138
.pool                           ; 080F213A

Sub080F213C:
push  {r4,lr}                   ; 080F213C
mov   r4,r0                     ; 080F213E
ldr   r0,[r4]                   ; 080F2140
add   r0,0x6A                   ; 080F2142
ldrh  r0,[r0]                   ; 080F2144
cmp   r0,0x0                    ; 080F2146
beq   @@Code080F2152            ; 080F2148
mov   r0,r4                     ; 080F214A
bl    Sub080F1ABC               ; 080F214C
b     @@Code080F21F4            ; 080F2150
@@Code080F2152:
mov   r0,r4                     ; 080F2152
add   r0,0x7F                   ; 080F2154
ldrb  r0,[r0]                   ; 080F2156
cmp   r0,0xA                    ; 080F2158
bne   @@Code080F2184            ; 080F215A
mov   r0,0x3                    ; 080F215C
strh  r0,[r4,0x1C]              ; 080F215E
ldr   r0,=0x03006D80            ; 080F2160
ldr   r2,=Data08196BA0          ; 080F2162
ldrh  r1,[r2,0x6]               ; 080F2164
add   r0,0x76                   ; 080F2166
strh  r1,[r0]                   ; 080F2168
ldrh  r0,[r2,0x6]               ; 080F216A
bl    Sub080EFDB8               ; 080F216C
mov   r0,0x10                   ; 080F2170
strh  r0,[r4,0x10]              ; 080F2172
mov   r0,0xC0                   ; 080F2174
strh  r0,[r4,0x12]              ; 080F2176
b     @@Code080F21F4            ; 080F2178
.pool                           ; 080F217A

@@Code080F2184:
ldrh  r0,[r4,0x30]              ; 080F2184
cmp   r0,0x7                    ; 080F2186
bne   @@Code080F21D0            ; 080F2188
mov   r0,r4                     ; 080F218A
bl    Sub080F2114               ; 080F218C
ldr   r1,=0x03002200            ; 080F2190
ldr   r0,=0x4A48                ; 080F2192
add   r1,r1,r0                  ; 080F2194
ldrb  r0,[r1]                   ; 080F2196
mov   r2,0x4                    ; 080F2198
orr   r0,r2                     ; 080F219A
strb  r0,[r1]                   ; 080F219C
mov   r0,0x2                    ; 080F219E
strh  r0,[r4,0x1C]              ; 080F21A0
ldr   r1,=0x03006D80            ; 080F21A2
ldr   r2,=Data08196BA0          ; 080F21A4
ldrh  r0,[r2,0x4]               ; 080F21A6
lsl   r0,r0,0x1                 ; 080F21A8
add   r1,0x76                   ; 080F21AA
strh  r0,[r1]                   ; 080F21AC
ldrh  r0,[r2,0x4]               ; 080F21AE
bl    Sub080EFDB8               ; 080F21B0
mov   r0,0xE                    ; 080F21B4
strh  r0,[r4,0x10]              ; 080F21B6
mov   r0,0x60                   ; 080F21B8
strh  r0,[r4,0x12]              ; 080F21BA
b     @@Code080F21F4            ; 080F21BC
.pool                           ; 080F21BE

@@Code080F21D0:
mov   r0,r4                     ; 080F21D0
add   r0,0x82                   ; 080F21D2
ldrb  r0,[r0]                   ; 080F21D4
cmp   r0,0x0                    ; 080F21D6
beq   @@Code080F21E8            ; 080F21D8
mov   r0,r4                     ; 080F21DA
bl    Sub080F20AC               ; 080F21DC
mov   r0,r4                     ; 080F21E0
bl    Sub080F1E64               ; 080F21E2
b     @@Code080F21F4            ; 080F21E6
@@Code080F21E8:
mov   r0,r4                     ; 080F21E8
bl    Sub080F1D3C               ; 080F21EA
mov   r0,r4                     ; 080F21EE
bl    Sub080F1E64               ; 080F21F0
@@Code080F21F4:
pop   {r4}                      ; 080F21F4
pop   {r0}                      ; 080F21F6
bx    r0                        ; 080F21F8
.pool                           ; 080F21FA

Sub080F21FC:
push  {lr}                      ; 080F21FC
ldr   r2,=CodePtrs08196E98      ; 080F21FE
ldrh  r1,[r0,0x10]              ; 080F2200
lsl   r1,r1,0x2                 ; 080F2202
add   r1,r1,r2                  ; 080F2204
ldr   r1,[r1]                   ; 080F2206
bl    Sub_bx_r1                 ; 080F2208  bx r1
pop   {r0}                      ; 080F220C
bx    r0                        ; 080F220E
.pool                           ; 080F2210

Sub080F2214:
push  {r4-r7,lr}                ; 080F2214
mov   r7,r8                     ; 080F2216
push  {r7}                      ; 080F2218
mov   r7,r0                     ; 080F221A
bl    Sub08035648               ; 080F221C
ldr   r0,=0x03007240            ; 080F2220  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F2222
ldr   r1,=0x29CC                ; 080F2224
add   r0,r0,r1                  ; 080F2226
ldrh  r0,[r0]                   ; 080F2228
mov   r4,0x7                    ; 080F222A
and   r4,r0                     ; 080F222C
mov   r2,0x0                    ; 080F222E
mov   r1,0x0                    ; 080F2230
cmp   r2,r4                     ; 080F2232
bhs   @@Code080F2248            ; 080F2234
@@Code080F2236:
mov   r0,r2                     ; 080F2236
add   r0,0x8                    ; 080F2238
lsl   r0,r0,0x10                ; 080F223A
lsr   r2,r0,0x10                ; 080F223C
add   r0,r1,0x1                 ; 080F223E
lsl   r0,r0,0x10                ; 080F2240
lsr   r1,r0,0x10                ; 080F2242
cmp   r1,r4                     ; 080F2244
blo   @@Code080F2236            ; 080F2246
@@Code080F2248:
mov   r5,r2                     ; 080F2248
ldr   r0,=0x0300702C            ; 080F224A  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 080F224C
ldr   r3,=Data08196EE4          ; 080F224E
add   r0,r5,r3                  ; 080F2250
ldrb  r1,[r0]                   ; 080F2252
ldr   r4,=0x153E                ; 080F2254
add   r0,r2,r4                  ; 080F2256
strh  r1,[r0]                   ; 080F2258
add   r0,r5,0x1                 ; 080F225A
add   r0,r0,r3                  ; 080F225C
ldrb  r1,[r0]                   ; 080F225E
add   r4,0x2                    ; 080F2260
add   r0,r2,r4                  ; 080F2262
strh  r1,[r0]                   ; 080F2264
add   r0,r5,0x2                 ; 080F2266
add   r0,r0,r3                  ; 080F2268
ldrb  r1,[r0]                   ; 080F226A
add   r4,0x2                    ; 080F226C
add   r0,r2,r4                  ; 080F226E
strh  r1,[r0]                   ; 080F2270
add   r0,r5,0x3                 ; 080F2272
add   r0,r0,r3                  ; 080F2274
ldrb  r1,[r0]                   ; 080F2276
add   r4,0x2                    ; 080F2278
add   r0,r2,r4                  ; 080F227A
strh  r1,[r0]                   ; 080F227C
add   r0,r5,0x4                 ; 080F227E
add   r0,r0,r3                  ; 080F2280
ldrb  r1,[r0]                   ; 080F2282
add   r4,0x2                    ; 080F2284
add   r0,r2,r4                  ; 080F2286
strh  r1,[r0]                   ; 080F2288
add   r0,r5,0x5                 ; 080F228A
add   r0,r0,r3                  ; 080F228C
ldrb  r1,[r0]                   ; 080F228E
add   r4,0x2                    ; 080F2290
add   r0,r2,r4                  ; 080F2292
strh  r1,[r0]                   ; 080F2294
add   r0,r5,0x6                 ; 080F2296
add   r0,r0,r3                  ; 080F2298
ldrb  r1,[r0]                   ; 080F229A
add   r4,0x2                    ; 080F229C
add   r0,r2,r4                  ; 080F229E
strh  r1,[r0]                   ; 080F22A0
add   r0,r5,0x7                 ; 080F22A2
add   r0,r0,r3                  ; 080F22A4
ldrb  r0,[r0]                   ; 080F22A6
ldr   r1,=0x154C                ; 080F22A8
add   r2,r2,r1                  ; 080F22AA
strh  r0,[r2]                   ; 080F22AC
mov   r5,0x0                    ; 080F22AE
mov   r6,0x8                    ; 080F22B0
add   r7,0x8E                   ; 080F22B2
mov   r8,r7                     ; 080F22B4
@@Code080F22B6:
bl    Sub08035648               ; 080F22B6
ldr   r0,=0x03007240            ; 080F22BA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F22BC
ldr   r4,=0x29CC                ; 080F22BE
add   r0,r0,r4                  ; 080F22C0
ldrb  r0,[r0]                   ; 080F22C2
mul   r0,r6                     ; 080F22C4
lsl   r0,r0,0x10                ; 080F22C6
lsr   r4,r0,0x18                ; 080F22C8
mov   r0,0xF                    ; 080F22CA
and   r4,r0                     ; 080F22CC
mov   r7,r8                     ; 080F22CE
add   r2,r7,r5                  ; 080F22D0
ldr   r3,=0x0300702C            ; 080F22D2  Sprite RAM structs (03002460)
ldr   r0,[r3]                   ; 080F22D4
lsl   r1,r4,0x1                 ; 080F22D6
ldr   r7,=0x153E                ; 080F22D8
add   r0,r0,r7                  ; 080F22DA
add   r0,r0,r1                  ; 080F22DC
ldrh  r0,[r0]                   ; 080F22DE
strb  r0,[r2]                   ; 080F22E0
add   r0,r5,0x1                 ; 080F22E2
lsl   r0,r0,0x10                ; 080F22E4
lsr   r5,r0,0x10                ; 080F22E6
cmp   r5,0x7                    ; 080F22E8
beq   @@Code080F2330            ; 080F22EA
sub   r0,r6,0x1                 ; 080F22EC
lsl   r0,r0,0x10                ; 080F22EE
lsr   r6,r0,0x10                ; 080F22F0
cmp   r4,r6                     ; 080F22F2
beq   @@Code080F22B6            ; 080F22F4
mov   r12,r3                    ; 080F22F6
@@Code080F22F8:
mov   r1,r12                    ; 080F22F8
ldr   r0,[r1]                   ; 080F22FA
lsl   r3,r4,0x1                 ; 080F22FC
add   r0,r0,r7                  ; 080F22FE
add   r3,r0,r3                  ; 080F2300
add   r2,r4,0x1                 ; 080F2302
lsl   r1,r2,0x1                 ; 080F2304
add   r0,r0,r1                  ; 080F2306
ldrh  r0,[r0]                   ; 080F2308
strh  r0,[r3]                   ; 080F230A
lsl   r2,r2,0x10                ; 080F230C
lsr   r4,r2,0x10                ; 080F230E
cmp   r4,r6                     ; 080F2310
bne   @@Code080F22F8            ; 080F2312
b     @@Code080F22B6            ; 080F2314
.pool                           ; 080F2316

@@Code080F2330:
pop   {r3}                      ; 080F2330
mov   r8,r3                     ; 080F2332
pop   {r4-r7}                   ; 080F2334
pop   {r0}                      ; 080F2336
bx    r0                        ; 080F2338
.pool                           ; 080F233A

Sub080F233C:
push  {r4-r5,lr}                ; 080F233C
ldr   r4,=Data081A12D8          ; 080F233E
ldr   r1,=0x06014000            ; 080F2340
mov   r2,0x80                   ; 080F2342
lsl   r2,r2,0x4                 ; 080F2344
mov   r0,r4                     ; 080F2346
bl    swi_MemoryCopy32          ; 080F2348  Memory copy/fill, 32-byte blocks
mov   r5,0x0                    ; 080F234C
ldr   r0,=0xFFFFF200            ; 080F234E
add   r4,r4,r0                  ; 080F2350
@@Code080F2352:
lsl   r1,r5,0xA                 ; 080F2352
add   r0,r1,r4                  ; 080F2354
ldr   r2,=0x06016000            ; 080F2356
add   r1,r1,r2                  ; 080F2358
mov   r2,0x60                   ; 080F235A
bl    swi_MemoryCopy32          ; 080F235C  Memory copy/fill, 32-byte blocks
add   r0,r5,0x1                 ; 080F2360
lsl   r0,r0,0x10                ; 080F2362
lsr   r5,r0,0x10                ; 080F2364
cmp   r5,0x3                    ; 080F2366
bls   @@Code080F2352            ; 080F2368
ldr   r0,=0x02010400            ; 080F236A
ldr   r1,=0x05000300            ; 080F236C
mov   r2,0x40                   ; 080F236E
bl    swi_MemoryCopy32          ; 080F2370  Memory copy/fill, 32-byte blocks
pop   {r4-r5}                   ; 080F2374
pop   {r0}                      ; 080F2376
bx    r0                        ; 080F2378
.pool                           ; 080F237A

Sub080F2394:
push  {r4,lr}                   ; 080F2394
mov   r4,r0                     ; 080F2396
ldr   r0,=0x03002200            ; 080F2398
ldr   r1,=0x4806                ; 080F239A
add   r0,r0,r1                  ; 080F239C
mov   r1,0x14                   ; 080F239E
strh  r1,[r0]                   ; 080F23A0
bl    Sub080F233C               ; 080F23A2
mov   r0,r4                     ; 080F23A6
bl    Sub080F2214               ; 080F23A8
pop   {r4}                      ; 080F23AC
pop   {r0}                      ; 080F23AE
bx    r0                        ; 080F23B0
.pool                           ; 080F23B2

Sub080F23BC:
push  {r4-r7,lr}                ; 080F23BC
mov   r7,r8                     ; 080F23BE
push  {r7}                      ; 080F23C0
lsl   r0,r0,0x10                ; 080F23C2
lsr   r4,r0,0x10                ; 080F23C4
mov   r7,0x2                    ; 080F23C6
ldr   r0,=0x02011000            ; 080F23C8
ldrh  r5,[r0]                   ; 080F23CA
mov   r1,r4                     ; 080F23CC
ldr   r2,=Data08196F9C          ; 080F23CE
lsl   r0,r1,0x1                 ; 080F23D0
add   r0,r0,r2                  ; 080F23D2
ldrh  r4,[r0]                   ; 080F23D4
mov   r6,0x0                    ; 080F23D6
ldr   r0,=DataPtrs08196F90      ; 080F23D8
lsl   r1,r1,0x2                 ; 080F23DA
add   r1,r1,r0                  ; 080F23DC
ldr   r1,[r1]                   ; 080F23DE
mov   r8,r1                     ; 080F23E0
@@Code080F23E2:
lsl   r3,r5,0x1                 ; 080F23E2
ldr   r0,=0x02011002            ; 080F23E4
mov   r12,r0                    ; 080F23E6
add   r0,r3,r0                  ; 080F23E8
strh  r4,[r0]                   ; 080F23EA
ldr   r2,=0x02011004            ; 080F23EC
add   r1,r3,r2                  ; 080F23EE
mov   r0,0x7                    ; 080F23F0
strh  r0,[r1]                   ; 080F23F2
ldr   r0,=0x02011006            ; 080F23F4
add   r2,r3,r0                  ; 080F23F6
lsl   r1,r6,0x1                 ; 080F23F8
add   r1,r8                     ; 080F23FA
ldrh  r0,[r1]                   ; 080F23FC
strh  r0,[r2]                   ; 080F23FE
ldr   r0,=0x02011008            ; 080F2400
add   r2,r3,r0                  ; 080F2402
ldrh  r0,[r1,0x2]               ; 080F2404
strh  r0,[r2]                   ; 080F2406
ldr   r0,=0x0201100A            ; 080F2408
add   r2,r3,r0                  ; 080F240A
ldrh  r0,[r1,0x4]               ; 080F240C
strh  r0,[r2]                   ; 080F240E
ldr   r0,=0x0201100C            ; 080F2410
add   r2,r3,r0                  ; 080F2412
ldrh  r0,[r1,0x6]               ; 080F2414
strh  r0,[r2]                   ; 080F2416
ldr   r0,=0x0201100E            ; 080F2418
add   r2,r3,r0                  ; 080F241A
ldrh  r0,[r1,0x8]               ; 080F241C
strh  r0,[r2]                   ; 080F241E
ldr   r0,=0x02011010            ; 080F2420
add   r2,r3,r0                  ; 080F2422
ldrh  r0,[r1,0xA]               ; 080F2424
strh  r0,[r2]                   ; 080F2426
ldr   r2,=0x02011012            ; 080F2428
add   r3,r3,r2                  ; 080F242A
ldrh  r0,[r1,0xC]               ; 080F242C
strh  r0,[r3]                   ; 080F242E
add   r0,r6,0x7                 ; 080F2430
lsl   r0,r0,0x10                ; 080F2432
lsr   r6,r0,0x10                ; 080F2434
mov   r0,r5                     ; 080F2436
add   r0,0x9                    ; 080F2438
lsl   r0,r0,0x10                ; 080F243A
lsr   r5,r0,0x10                ; 080F243C
mov   r0,r4                     ; 080F243E
add   r0,0x40                   ; 080F2440
lsl   r0,r0,0x10                ; 080F2442
lsr   r4,r0,0x10                ; 080F2444
sub   r0,r7,0x1                 ; 080F2446
lsl   r0,r0,0x10                ; 080F2448
lsr   r7,r0,0x10                ; 080F244A
cmp   r7,0x0                    ; 080F244C
bne   @@Code080F23E2            ; 080F244E
lsl   r0,r5,0x1                 ; 080F2450
add   r0,r12                    ; 080F2452
ldr   r2,=0xFFFF                ; 080F2454
mov   r1,r2                     ; 080F2456
strh  r1,[r0]                   ; 080F2458
ldr   r0,=0x02011000            ; 080F245A
strh  r5,[r0]                   ; 080F245C
pop   {r3}                      ; 080F245E
mov   r8,r3                     ; 080F2460
pop   {r4-r7}                   ; 080F2462
pop   {r0}                      ; 080F2464
bx    r0                        ; 080F2466
.pool                           ; 080F2468

Sub080F249C:
push  {r4-r7,lr}                ; 080F249C
lsl   r0,r0,0x10                ; 080F249E
mov   r4,0x2                    ; 080F24A0
ldr   r1,=0x02011000            ; 080F24A2
ldrh  r2,[r1]                   ; 080F24A4
ldr   r1,=Data08196F9C          ; 080F24A6
lsr   r0,r0,0xF                 ; 080F24A8
add   r0,r0,r1                  ; 080F24AA
ldrh  r3,[r0]                   ; 080F24AC
ldr   r0,=0x02011002            ; 080F24AE
mov   r12,r0                    ; 080F24B0
ldr   r6,=0x02011004            ; 080F24B2
ldr   r1,=0x4007                ; 080F24B4
mov   r5,r1                     ; 080F24B6
@@Code080F24B8:
lsl   r1,r2,0x1                 ; 080F24B8
mov   r7,r12                    ; 080F24BA
add   r0,r1,r7                  ; 080F24BC
strh  r3,[r0]                   ; 080F24BE
add   r0,r1,r6                  ; 080F24C0
strh  r5,[r0]                   ; 080F24C2
ldr   r0,=0x02011006            ; 080F24C4
add   r1,r1,r0                  ; 080F24C6
ldr   r7,=0x30FC                ; 080F24C8
mov   r0,r7                     ; 080F24CA
strh  r0,[r1]                   ; 080F24CC
add   r0,r2,0x3                 ; 080F24CE
lsl   r0,r0,0x10                ; 080F24D0
lsr   r2,r0,0x10                ; 080F24D2
mov   r0,r3                     ; 080F24D4
add   r0,0x40                   ; 080F24D6
lsl   r0,r0,0x10                ; 080F24D8
lsr   r3,r0,0x10                ; 080F24DA
sub   r0,r4,0x1                 ; 080F24DC
lsl   r0,r0,0x10                ; 080F24DE
lsr   r4,r0,0x10                ; 080F24E0
cmp   r4,0x0                    ; 080F24E2
bne   @@Code080F24B8            ; 080F24E4
lsl   r0,r2,0x1                 ; 080F24E6
ldr   r1,=0x02011002            ; 080F24E8
add   r0,r0,r1                  ; 080F24EA
ldr   r3,=0xFFFF                ; 080F24EC
mov   r1,r3                     ; 080F24EE
strh  r1,[r0]                   ; 080F24F0
ldr   r0,=0x02011000            ; 080F24F2
strh  r2,[r0]                   ; 080F24F4
pop   {r4-r7}                   ; 080F24F6
pop   {r0}                      ; 080F24F8
bx    r0                        ; 080F24FA
.pool                           ; 080F24FC

Sub080F251C:
push  {r4-r5,lr}                ; 080F251C
mov   r4,r0                     ; 080F251E
add   r0,0xAB                   ; 080F2520
ldrb  r3,[r0]                   ; 080F2522
cmp   r3,0x0                    ; 080F2524
beq   @@Code080F257E            ; 080F2526
sub   r0,r3,0x1                 ; 080F2528
lsl   r0,r0,0x10                ; 080F252A
lsr   r3,r0,0x10                ; 080F252C
ldrh  r0,[r4,0x12]              ; 080F252E
cmp   r0,0x0                    ; 080F2530
beq   @@Code080F256E            ; 080F2532
sub   r0,0x1                    ; 080F2534
strh  r0,[r4,0x12]              ; 080F2536
mov   r0,r4                     ; 080F2538
add   r0,0x4C                   ; 080F253A
ldrh  r1,[r0]                   ; 080F253C
mov   r5,r0                     ; 080F253E
cmp   r1,0x0                    ; 080F2540
beq   @@Code080F254A            ; 080F2542
sub   r0,r1,0x1                 ; 080F2544
strh  r0,[r5]                   ; 080F2546
b     @@Code080F2594            ; 080F2548
@@Code080F254A:
mov   r0,r4                     ; 080F254A
add   r0,0x4E                   ; 080F254C
ldrh  r1,[r0]                   ; 080F254E
mov   r2,0x2                    ; 080F2550
eor   r1,r2                     ; 080F2552
strh  r1,[r0]                   ; 080F2554
cmp   r1,0x0                    ; 080F2556
beq   @@Code080F2562            ; 080F2558
mov   r0,r3                     ; 080F255A
bl    Sub080F23BC               ; 080F255C
b     @@Code080F2568            ; 080F2560
@@Code080F2562:
mov   r0,r3                     ; 080F2562
bl    Sub080F249C               ; 080F2564
@@Code080F2568:
mov   r0,0x5                    ; 080F2568
strh  r0,[r5]                   ; 080F256A
b     @@Code080F2594            ; 080F256C
@@Code080F256E:
mov   r0,0x20                   ; 080F256E
strh  r0,[r4,0x12]              ; 080F2570
mov   r0,r3                     ; 080F2572
bl    Sub080F23BC               ; 080F2574
ldrh  r0,[r4,0x10]              ; 080F2578
add   r0,0x1                    ; 080F257A
b     @@Code080F2592            ; 080F257C
@@Code080F257E:
ldrh  r0,[r4,0x12]              ; 080F257E
cmp   r0,0x0                    ; 080F2580
beq   @@Code080F258A            ; 080F2582
sub   r0,0x1                    ; 080F2584
strh  r0,[r4,0x12]              ; 080F2586
b     @@Code080F2594            ; 080F2588
@@Code080F258A:
mov   r0,0x80                   ; 080F258A
strh  r0,[r4,0x12]              ; 080F258C
ldrh  r0,[r4,0x10]              ; 080F258E
add   r0,0x2                    ; 080F2590
@@Code080F2592:
strh  r0,[r4,0x10]              ; 080F2592
@@Code080F2594:
pop   {r4-r5}                   ; 080F2594
pop   {r0}                      ; 080F2596
bx    r0                        ; 080F2598
.pool                           ; 080F259A

Sub080F259C:
push  {r4-r7,lr}                ; 080F259C
mov   r7,r9                     ; 080F259E
mov   r6,r8                     ; 080F25A0
push  {r6-r7}                   ; 080F25A2
mov   r6,r0                     ; 080F25A4
lsl   r1,r1,0x10                ; 080F25A6
lsr   r5,r1,0x10                ; 080F25A8
ldr   r2,=0x03002200            ; 080F25AA
ldr   r0,=DataPtrs081970D0      ; 080F25AC
mov   r8,r0                     ; 080F25AE
mov   r7,r6                     ; 080F25B0
add   r7,0x4C                   ; 080F25B2
ldrh  r0,[r7]                   ; 080F25B4
lsl   r0,r0,0x2                 ; 080F25B6
add   r0,r8                     ; 080F25B8
ldr   r0,[r0]                   ; 080F25BA
add   r0,r0,r5                  ; 080F25BC
ldrb  r0,[r0]                   ; 080F25BE
ldr   r1,=0x47F6                ; 080F25C0
add   r4,r2,r1                  ; 080F25C2
strh  r0,[r4]                   ; 080F25C4
add   r0,r5,0x1                 ; 080F25C6
lsl   r0,r0,0x10                ; 080F25C8
lsr   r5,r0,0x10                ; 080F25CA
ldrh  r0,[r7]                   ; 080F25CC
lsl   r0,r0,0x2                 ; 080F25CE
add   r0,r8                     ; 080F25D0
ldr   r0,[r0]                   ; 080F25D2
add   r0,r0,r5                  ; 080F25D4
ldrb  r0,[r0]                   ; 080F25D6
ldr   r3,=0x47F8                ; 080F25D8
add   r3,r3,r2                  ; 080F25DA
mov   r9,r3                     ; 080F25DC
strh  r0,[r3]                   ; 080F25DE
ldrh  r0,[r6,0x20]              ; 080F25E0
lsr   r0,r0,0x8                 ; 080F25E2
ldr   r3,=0x47FA                ; 080F25E4
add   r1,r2,r3                  ; 080F25E6
strh  r0,[r1]                   ; 080F25E8
ldrh  r0,[r6,0x22]              ; 080F25EA
lsr   r0,r0,0x8                 ; 080F25EC
add   r3,0x2                    ; 080F25EE
add   r1,r2,r3                  ; 080F25F0
strh  r0,[r1]                   ; 080F25F2
mov   r0,0x90                   ; 080F25F4
lsl   r0,r0,0x7                 ; 080F25F6
add   r2,r2,r0                  ; 080F25F8
mov   r0,0x80                   ; 080F25FA
lsl   r0,r0,0x2                 ; 080F25FC
strh  r0,[r2]                   ; 080F25FE
bl    Sub080DC778               ; 080F2600
ldrh  r4,[r4]                   ; 080F2604
ldrh  r2,[r6,0x20]              ; 080F2606
add   r1,r4,r2                  ; 080F2608
strh  r1,[r6,0x20]              ; 080F260A
mov   r3,r9                     ; 080F260C
ldrh  r0,[r3]                   ; 080F260E
ldrh  r2,[r6,0x22]              ; 080F2610
add   r0,r0,r2                  ; 080F2612
strh  r0,[r6,0x22]              ; 080F2614
mov   r3,0xA2                   ; 080F2616
add   r3,r3,r6                  ; 080F2618
mov   r12,r3                    ; 080F261A
ldrb  r5,[r3]                   ; 080F261C
ldrh  r0,[r7]                   ; 080F261E
lsl   r0,r0,0x2                 ; 080F2620
add   r0,r8                     ; 080F2622
ldr   r0,[r0]                   ; 080F2624
add   r0,r0,r5                  ; 080F2626
ldrb  r3,[r0]                   ; 080F2628
mov   r2,r3                     ; 080F262A
lsl   r3,r3,0x8                 ; 080F262C
sub   r1,r3,r1                  ; 080F262E
lsl   r1,r1,0x10                ; 080F2630
lsr   r3,r1,0x10                ; 080F2632
cmp   r3,0x0                    ; 080F2634
beq   @@Code080F2644            ; 080F2636
eor   r3,r4                     ; 080F2638
lsl   r0,r3,0x10                ; 080F263A
cmp   r0,0x0                    ; 080F263C
bge   @@Code080F267A            ; 080F263E
lsl   r0,r2,0x8                 ; 080F2640
strh  r0,[r6,0x20]              ; 080F2642
@@Code080F2644:
add   r0,r5,0x1                 ; 080F2644
lsl   r0,r0,0x10                ; 080F2646
lsr   r5,r0,0x10                ; 080F2648
ldrh  r0,[r7]                   ; 080F264A
lsl   r0,r0,0x2                 ; 080F264C
add   r0,r8                     ; 080F264E
ldr   r0,[r0]                   ; 080F2650
add   r0,r0,r5                  ; 080F2652
ldrb  r3,[r0]                   ; 080F2654
lsl   r1,r3,0x8                 ; 080F2656
mov   r3,r1                     ; 080F2658
ldrh  r0,[r6,0x22]              ; 080F265A
sub   r0,r3,r0                  ; 080F265C
lsl   r0,r0,0x10                ; 080F265E
lsr   r3,r0,0x10                ; 080F2660
cmp   r3,0x0                    ; 080F2662
beq   @@Code080F2674            ; 080F2664
mov   r2,r9                     ; 080F2666
ldrh  r0,[r2]                   ; 080F2668
eor   r3,r0                     ; 080F266A
lsl   r0,r3,0x10                ; 080F266C
cmp   r0,0x0                    ; 080F266E
bge   @@Code080F267A            ; 080F2670
strh  r1,[r6,0x22]              ; 080F2672
@@Code080F2674:
add   r0,r5,0x1                 ; 080F2674
mov   r3,r12                    ; 080F2676
strb  r0,[r3]                   ; 080F2678
@@Code080F267A:
pop   {r3-r4}                   ; 080F267A
mov   r8,r3                     ; 080F267C
mov   r9,r4                     ; 080F267E
pop   {r4-r7}                   ; 080F2680
pop   {r0}                      ; 080F2682
bx    r0                        ; 080F2684
.pool                           ; 080F2686

Sub080F269C:
push  {r4-r7,lr}                ; 080F269C
mov   r4,r0                     ; 080F269E
mov   r1,r4                     ; 080F26A0
add   r1,0xAB                   ; 080F26A2
mov   r0,0x0                    ; 080F26A4
strb  r0,[r1]                   ; 080F26A6
mov   r5,0x6                    ; 080F26A8
ldr   r3,=Data08196FAA          ; 080F26AA
ldr   r6,=Data08196FB2          ; 080F26AC
ldr   r7,=Data08196FB6          ; 080F26AE
ldr   r0,=Data08196FAE          ; 080F26B0
mov   r12,r0                    ; 080F26B2
@@Code080F26B4:
mov   r0,r4                     ; 080F26B4
add   r0,0xA4                   ; 080F26B6
add   r0,r0,r5                  ; 080F26B8
ldrb  r0,[r0]                   ; 080F26BA
mov   r2,r4                     ; 080F26BC
add   r2,0xAB                   ; 080F26BE
cmp   r0,0x0                    ; 080F26C0
beq   @@Code080F26D6            ; 080F26C2
mov   r0,r4                     ; 080F26C4
add   r0,0x9B                   ; 080F26C6
add   r0,r0,r5                  ; 080F26C8
ldrb  r0,[r0]                   ; 080F26CA
cmp   r0,0x0                    ; 080F26CC
beq   @@Code080F26D6            ; 080F26CE
ldrb  r0,[r1]                   ; 080F26D0
add   r0,0x1                    ; 080F26D2
strb  r0,[r1]                   ; 080F26D4
@@Code080F26D6:
sub   r0,r5,0x1                 ; 080F26D6
lsl   r0,r0,0x10                ; 080F26D8
lsr   r5,r0,0x10                ; 080F26DA
cmp   r0,0x0                    ; 080F26DC
bge   @@Code080F26B4            ; 080F26DE
ldrb  r5,[r2]                   ; 080F26E0
add   r0,r5,r3                  ; 080F26E2
ldrb  r0,[r0]                   ; 080F26E4
mov   r2,0x0                    ; 080F26E6
strh  r0,[r4,0x30]              ; 080F26E8
add   r0,r5,r6                  ; 080F26EA
ldrb  r1,[r0]                   ; 080F26EC
add   r0,r5,r7                  ; 080F26EE
ldrb  r0,[r0]                   ; 080F26F0
lsl   r0,r0,0x8                 ; 080F26F2
orr   r1,r0                     ; 080F26F4
strh  r1,[r4,0x12]              ; 080F26F6
mov   r0,r4                     ; 080F26F8
add   r0,0x4C                   ; 080F26FA
strh  r2,[r0]                   ; 080F26FC
add   r0,0x2                    ; 080F26FE
strh  r2,[r0]                   ; 080F2700
mov   r1,r12                    ; 080F2702
add   r0,r5,r1                  ; 080F2704
ldrb  r0,[r0]                   ; 080F2706
cmp   r5,0x0                    ; 080F2708
bne   @@Code080F2728            ; 080F270A
ldr   r1,=0x03006258            ; 080F270C
bl    PlayYISound               ; 080F270E
b     @@Code080F272E            ; 080F2712
.pool                           ; 080F2714

@@Code080F2728:
mov   r0,0x20                   ; 080F2728  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080F272A  Change music (YI)
@@Code080F272E:
ldrh  r0,[r4,0x10]              ; 080F272E
add   r0,0x1                    ; 080F2730
strh  r0,[r4,0x10]              ; 080F2732
ldr   r1,=Data08196FA2          ; 080F2734
lsl   r0,r5,0x1                 ; 080F2736
add   r0,r0,r1                  ; 080F2738
ldrh  r1,[r0]                   ; 080F273A
strh  r1,[r4,0x1C]              ; 080F273C
ldr   r1,=Data08196BA0          ; 080F273E
ldrh  r0,[r0]                   ; 080F2740
lsl   r0,r0,0x1                 ; 080F2742
add   r0,r0,r1                  ; 080F2744
ldrh  r0,[r0]                   ; 080F2746
bl    Sub080EFDB8               ; 080F2748
pop   {r4-r7}                   ; 080F274C
pop   {r0}                      ; 080F274E
bx    r0                        ; 080F2750
.pool                           ; 080F2752

Sub080F275C:
push  {r4-r7,lr}                ; 080F275C
mov   r7,r10                    ; 080F275E
mov   r6,r9                     ; 080F2760
mov   r5,r8                     ; 080F2762
push  {r5-r7}                   ; 080F2764
add   sp,-0x10                  ; 080F2766
mov   r9,r0                     ; 080F2768
add   r0,0x9A                   ; 080F276A
ldrb  r0,[r0]                   ; 080F276C
str   r0,[sp,0x8]               ; 080F276E
mov   r5,0x0                    ; 080F2770
mov   r2,0x0                    ; 080F2772
lsl   r0,r0,0x3                 ; 080F2774
str   r0,[sp,0xC]               ; 080F2776
ldr   r1,[sp,0x8]               ; 080F2778
add   r0,r0,r1                  ; 080F277A
lsl   r0,r0,0x5                 ; 080F277C
mov   r8,r0                     ; 080F277E
@@Code080F2780:
mov   r4,0x0                    ; 080F2780
lsl   r6,r2,0x3                 ; 080F2782
add   r7,r2,0x1                 ; 080F2784
@@Code080F2786:
ldr   r2,=0x03007248            ; 080F2786  pointer to message buffer
mov   r10,r2                    ; 080F2788
ldr   r0,[r2]                   ; 080F278A
lsl   r1,r5,0x5                 ; 080F278C
ldr   r3,=0x06002000            ; 080F278E
add   r1,r1,r3                  ; 080F2790
add   r1,r8                     ; 080F2792
lsl   r2,r4,0x3                 ; 080F2794
mov   r3,r6                     ; 080F2796
bl    Sub080FCB4C               ; 080F2798
add   r0,r5,0x1                 ; 080F279C
lsl   r0,r0,0x10                ; 080F279E
lsr   r5,r0,0x10                ; 080F27A0
add   r0,r4,0x1                 ; 080F27A2
lsl   r0,r0,0x10                ; 080F27A4
lsr   r4,r0,0x10                ; 080F27A6
cmp   r4,0x2                    ; 080F27A8
bls   @@Code080F2786            ; 080F27AA
lsl   r0,r7,0x10                ; 080F27AC
lsr   r2,r0,0x10                ; 080F27AE
cmp   r2,0x2                    ; 080F27B0
bls   @@Code080F2780            ; 080F27B2
mov   r1,r9                     ; 080F27B4
ldrh  r0,[r1,0x20]              ; 080F27B6
lsr   r0,r0,0x8                 ; 080F27B8
ldrh  r1,[r1,0x22]              ; 080F27BA
lsr   r1,r1,0x8                 ; 080F27BC
mov   r2,0x18                   ; 080F27BE
bl    Sub08101B78               ; 080F27C0
mov   r2,r10                    ; 080F27C4
ldr   r0,[r2]                   ; 080F27C6
ldr   r3,[sp,0xC]               ; 080F27C8
ldr   r2,[sp,0x8]               ; 080F27CA
add   r1,r3,r2                  ; 080F27CC
lsl   r1,r1,0x5                 ; 080F27CE
ldr   r3,=0x06002000            ; 080F27D0
add   r1,r1,r3                  ; 080F27D2
mov   r2,0x3                    ; 080F27D4
str   r2,[sp]                   ; 080F27D6
str   r2,[sp,0x4]               ; 080F27D8
mov   r2,0x0                    ; 080F27DA
mov   r3,0x0                    ; 080F27DC
bl    Sub080FC9E0               ; 080F27DE
add   sp,0x10                   ; 080F27E2
pop   {r3-r5}                   ; 080F27E4
mov   r8,r3                     ; 080F27E6
mov   r9,r4                     ; 080F27E8
mov   r10,r5                    ; 080F27EA
pop   {r4-r7}                   ; 080F27EC
pop   {r0}                      ; 080F27EE
bx    r0                        ; 080F27F0
.pool                           ; 080F27F2

Sub080F27FC:
push  {r4-r6,lr}                ; 080F27FC
mov   r4,r0                     ; 080F27FE
mov   r1,r4                     ; 080F2800
add   r1,0x99                   ; 080F2802
ldrb  r0,[r1]                   ; 080F2804
cmp   r0,0x0                    ; 080F2806
beq   @@Code080F2810            ; 080F2808
sub   r0,0x1                    ; 080F280A
strb  r0,[r1]                   ; 080F280C
b     @@Code080F281C            ; 080F280E
@@Code080F2810:
mov   r0,0x20                   ; 080F2810
strb  r0,[r1]                   ; 080F2812
ldr   r1,=0x03006258            ; 080F2814
mov   r0,0x69                   ; 080F2816
bl    PlayYISound               ; 080F2818
@@Code080F281C:
ldr   r0,=0x03007240            ; 080F281C  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080F281E
mov   r2,r4                     ; 080F2820
add   r2,0x80                   ; 080F2822
ldrh  r0,[r4,0x20]              ; 080F2824
lsr   r0,r0,0x8                 ; 080F2826
ldrb  r2,[r2]                   ; 080F2828
add   r0,r0,r2                  ; 080F282A
mov   r2,0xFF                   ; 080F282C
and   r0,r2                     ; 080F282E
ldr   r5,=0x29D2                ; 080F2830
add   r3,r1,r5                  ; 080F2832
strh  r0,[r3]                   ; 080F2834
mov   r6,0x81                   ; 080F2836
ldrh  r0,[r4,0x22]              ; 080F2838
lsr   r0,r0,0x8                 ; 080F283A
ldrb  r5,[r6,r4]                ; 080F283C
add   r0,r0,r5                  ; 080F283E
and   r0,r2                     ; 080F2840
ldr   r6,=0x29D6                ; 080F2842
add   r2,r1,r6                  ; 080F2844
strh  r0,[r2]                   ; 080F2846
ldr   r0,=0x29DA                ; 080F2848
add   r1,r1,r0                  ; 080F284A
mov   r0,0xD4                   ; 080F284C
strh  r0,[r1]                   ; 080F284E
ldrh  r0,[r3]                   ; 080F2850
ldrh  r1,[r2]                   ; 080F2852
mov   r2,0xD4                   ; 080F2854
mov   r3,0x2                    ; 080F2856
bl    Sub080F2DC8               ; 080F2858
mov   r0,r4                     ; 080F285C
bl    Sub080F275C               ; 080F285E
mov   r0,r4                     ; 080F2862
add   r0,0x9A                   ; 080F2864
ldrb  r5,[r0]                   ; 080F2866
add   r0,0x8                    ; 080F2868
ldrb  r3,[r0]                   ; 080F286A
ldr   r1,=DataPtrs081970D0      ; 080F286C
sub   r0,0x56                   ; 080F286E
ldrh  r0,[r0]                   ; 080F2870
lsl   r0,r0,0x2                 ; 080F2872
add   r0,r0,r1                  ; 080F2874
ldr   r0,[r0]                   ; 080F2876
add   r0,r0,r3                  ; 080F2878
ldrb  r2,[r0]                   ; 080F287A
cmp   r2,0x7F                   ; 080F287C
bls   @@Code080F2914            ; 080F287E
mov   r2,0x90                   ; 080F2880
mov   r0,r4                     ; 080F2882
add   r0,0x9B                   ; 080F2884
add   r0,r0,r5                  ; 080F2886
ldrb  r3,[r0]                   ; 080F2888
cmp   r3,0x0                    ; 080F288A
beq   @@Code080F2890            ; 080F288C
mov   r2,0x8F                   ; 080F288E
@@Code080F2890:
cmp   r2,0x8F                   ; 080F2890
bne   @@Code080F28D4            ; 080F2892
ldr   r1,=0x03002200            ; 080F2894
ldr   r5,=0x4A48                ; 080F2896
add   r3,r1,r5                  ; 080F2898
ldrb  r0,[r3]                   ; 080F289A
mov   r2,0x4                    ; 080F289C
orr   r0,r2                     ; 080F289E
strb  r0,[r3]                   ; 080F28A0
ldr   r6,=0x4058                ; 080F28A2
add   r1,r1,r6                  ; 080F28A4
mov   r0,0x45                   ; 080F28A6
bl    PlayYISound               ; 080F28A8
b     @@Code080F28DC            ; 080F28AC
.pool                           ; 080F28AE

@@Code080F28D4:
ldr   r1,=0x03006258            ; 080F28D4
mov   r0,0x5D                   ; 080F28D6
bl    PlayYISound               ; 080F28D8
@@Code080F28DC:
mov   r1,r4                     ; 080F28DC
add   r1,0xA3                   ; 080F28DE
ldrb  r0,[r1]                   ; 080F28E0
add   r0,0x1                    ; 080F28E2
strb  r0,[r1]                   ; 080F28E4
lsl   r0,r0,0x18                ; 080F28E6
lsr   r0,r0,0x18                ; 080F28E8
cmp   r0,0x3                    ; 080F28EA
bne   @@Code080F28FC            ; 080F28EC
ldrh  r0,[r4,0x10]              ; 080F28EE
add   r0,0x1                    ; 080F28F0
strh  r0,[r4,0x10]              ; 080F28F2
b     @@Code080F291C            ; 080F28F4
.pool                           ; 080F28F6

@@Code080F28FC:
ldrh  r0,[r4,0x10]              ; 080F28FC
sub   r0,0x1                    ; 080F28FE
strh  r0,[r4,0x10]              ; 080F2900
mov   r0,0x0                    ; 080F2902
strh  r0,[r4,0x1C]              ; 080F2904
ldr   r0,=Data08196BA0          ; 080F2906
ldrh  r0,[r0]                   ; 080F2908
bl    Sub080EFDB8               ; 080F290A
b     @@Code080F291C            ; 080F290E
.pool                           ; 080F2910

@@Code080F2914:
mov   r0,r4                     ; 080F2914
mov   r1,r3                     ; 080F2916
bl    Sub080F259C               ; 080F2918
@@Code080F291C:
pop   {r4-r6}                   ; 080F291C
pop   {r0}                      ; 080F291E
bx    r0                        ; 080F2920
.pool                           ; 080F2922

Sub080F2924:
push  {r4-r7,lr}                ; 080F2924
mov   r12,r0                    ; 080F2926
ldr   r2,=0x03002200            ; 080F2928
ldr   r1,=0x47C0                ; 080F292A
add   r0,r2,r1                  ; 080F292C
ldrh  r1,[r0]                   ; 080F292E
mov   r0,0xF0                   ; 080F2930
and   r0,r1                     ; 080F2932
mov   r7,r2                     ; 080F2934
cmp   r0,0x0                    ; 080F2936
bne   @@Code080F2950            ; 080F2938
mov   r0,r12                    ; 080F293A
add   r0,0x99                   ; 080F293C
ldrb  r1,[r0]                   ; 080F293E
cmp   r1,0x0                    ; 080F2940
bne   @@Code080F2A02            ; 080F2942
mov   r2,0x10                   ; 080F2944
b     @@Code080F2956            ; 080F2946
.pool                           ; 080F2948

@@Code080F2950:
mov   r2,0x20                   ; 080F2950
mov   r0,r12                    ; 080F2952
add   r0,0x99                   ; 080F2954
@@Code080F2956:
strb  r2,[r0]                   ; 080F2956
ldr   r1,=0x47BE                ; 080F2958
add   r0,r7,r1                  ; 080F295A
ldrh  r1,[r0]                   ; 080F295C
mov   r0,0xF0                   ; 080F295E
and   r0,r1                     ; 080F2960
cmp   r0,0x0                    ; 080F2962
beq   @@Code080F2A02            ; 080F2964
lsr   r1,r1,0x4                 ; 080F2966
mov   r0,0x3                    ; 080F2968
and   r1,r0                     ; 080F296A
mov   r2,r12                    ; 080F296C
add   r2,0x9A                   ; 080F296E
ldrb  r3,[r2]                   ; 080F2970
ldr   r0,=Data08196FBA          ; 080F2972
add   r1,r1,r0                  ; 080F2974
ldrb  r0,[r1]                   ; 080F2976
add   r3,r3,r0                  ; 080F2978
mov   r0,0xFF                   ; 080F297A
and   r3,r0                     ; 080F297C
mov   r6,r2                     ; 080F297E
cmp   r3,0x7F                   ; 080F2980
bhi   @@Code080F2994            ; 080F2982
cmp   r3,0x6                    ; 080F2984
bls   @@Code080F2996            ; 080F2986
mov   r3,0x0                    ; 080F2988
b     @@Code080F2996            ; 080F298A
.pool                           ; 080F298C

@@Code080F2994:
mov   r3,0x6                    ; 080F2994
@@Code080F2996:
mov   r4,r6                     ; 080F2996
strb  r3,[r4]                   ; 080F2998
mov   r5,0xFF                   ; 080F299A
mov   r2,r3                     ; 080F299C
and   r2,r5                     ; 080F299E
ldr   r1,=0x47BE                ; 080F29A0
add   r0,r7,r1                  ; 080F29A2
ldrh  r1,[r0]                   ; 080F29A4
mov   r0,0x80                   ; 080F29A6
and   r0,r1                     ; 080F29A8
cmp   r0,0x0                    ; 080F29AA
beq   @@Code080F29C8            ; 080F29AC
ldr   r0,=Data08196FC5          ; 080F29AE
add   r0,r2,r0                  ; 080F29B0
ldrb  r0,[r0]                   ; 080F29B2
add   r0,r3,r0                  ; 080F29B4
lsl   r0,r0,0x10                ; 080F29B6
lsr   r3,r0,0x10                ; 080F29B8
strb  r3,[r4]                   ; 080F29BA
b     @@Code080F29DE            ; 080F29BC
.pool                           ; 080F29BE

@@Code080F29C8:
mov   r0,0x40                   ; 080F29C8
and   r0,r1                     ; 080F29CA
cmp   r0,0x0                    ; 080F29CC
beq   @@Code080F29E2            ; 080F29CE
ldr   r0,=Data08196FBE          ; 080F29D0
add   r0,r2,r0                  ; 080F29D2
ldrb  r0,[r0]                   ; 080F29D4
add   r0,r3,r0                  ; 080F29D6
lsl   r0,r0,0x10                ; 080F29D8
lsr   r3,r0,0x10                ; 080F29DA
strb  r3,[r6]                   ; 080F29DC
@@Code080F29DE:
mov   r2,r5                     ; 080F29DE
and   r2,r3                     ; 080F29E0
@@Code080F29E2:
ldr   r0,=Data0819715B          ; 080F29E2
add   r0,r2,r0                  ; 080F29E4
ldrb  r1,[r0]                   ; 080F29E6
mov   r0,r12                    ; 080F29E8
add   r0,0x80                   ; 080F29EA
strb  r1,[r0]                   ; 080F29EC
ldr   r0,=Data08197162          ; 080F29EE
add   r0,r2,r0                  ; 080F29F0
ldrb  r1,[r0]                   ; 080F29F2
mov   r0,r12                    ; 080F29F4
add   r0,0x81                   ; 080F29F6
strb  r1,[r0]                   ; 080F29F8
mov   r0,0x22                   ; 080F29FA
mov   r1,0x0                    ; 080F29FC
bl    PlayYISound               ; 080F29FE
@@Code080F2A02:
pop   {r4-r7}                   ; 080F2A02
pop   {r0}                      ; 080F2A04
bx    r0                        ; 080F2A06
.pool                           ; 080F2A08

Sub080F2A14:
push  {r4-r7,lr}                ; 080F2A14
mov   r4,r0                     ; 080F2A16
bl    Sub08035648               ; 080F2A18
mov   r6,r4                     ; 080F2A1C
add   r6,0x99                   ; 080F2A1E
ldrb  r0,[r6]                   ; 080F2A20
cmp   r0,0x0                    ; 080F2A22
beq   @@Code080F2A2A            ; 080F2A24
sub   r0,0x1                    ; 080F2A26
strb  r0,[r6]                   ; 080F2A28
@@Code080F2A2A:
mov   r0,r4                     ; 080F2A2A
add   r0,0x80                   ; 080F2A2C
ldrb  r0,[r0]                   ; 080F2A2E
ldr   r7,=0x03007240            ; 080F2A30  Normal gameplay IWRAM (0300220C)
ldr   r1,[r7]                   ; 080F2A32
add   r0,0x14                   ; 080F2A34
ldr   r2,=0x29D2                ; 080F2A36
add   r3,r1,r2                  ; 080F2A38
strh  r0,[r3]                   ; 080F2A3A
mov   r0,r4                     ; 080F2A3C
add   r0,0x81                   ; 080F2A3E
ldrb  r0,[r0]                   ; 080F2A40
add   r0,0x14                   ; 080F2A42
ldr   r5,=0x29D6                ; 080F2A44
add   r2,r1,r5                  ; 080F2A46
strh  r0,[r2]                   ; 080F2A48
ldr   r0,=0x29DA                ; 080F2A4A
add   r1,r1,r0                  ; 080F2A4C
mov   r0,0xD4                   ; 080F2A4E
strh  r0,[r1]                   ; 080F2A50
ldrh  r0,[r3]                   ; 080F2A52
ldrh  r1,[r2]                   ; 080F2A54
mov   r2,0xD4                   ; 080F2A56
mov   r3,0x2                    ; 080F2A58
bl    Sub080F2DC8               ; 080F2A5A
ldr   r2,=0x03002200            ; 080F2A5E
ldr   r1,=0x47C0                ; 080F2A60
add   r0,r2,r1                  ; 080F2A62
ldrh  r1,[r0]                   ; 080F2A64
mov   r0,0x1                    ; 080F2A66
and   r0,r1                     ; 080F2A68
cmp   r0,0x0                    ; 080F2A6A
beq   @@Code080F2B14            ; 080F2A6C
mov   r1,r4                     ; 080F2A6E
add   r1,0x9A                   ; 080F2A70
mov   r0,r4                     ; 080F2A72
add   r0,0xA4                   ; 080F2A74
ldrb  r1,[r1]                   ; 080F2A76
add   r5,r0,r1                  ; 080F2A78
ldrb  r0,[r5]                   ; 080F2A7A
cmp   r0,0x0                    ; 080F2A7C
beq   @@Code080F2AA8            ; 080F2A7E
mov   r0,0x71                   ; 080F2A80
mov   r1,0x0                    ; 080F2A82
bl    PlayYISound               ; 080F2A84
mov   r0,r4                     ; 080F2A88
bl    Sub080F2924               ; 080F2A8A
b     @@Code080F2B1A            ; 080F2A8E
.pool                           ; 080F2A90

@@Code080F2AA8:
ldr   r0,=0x4058                ; 080F2AA8
add   r1,r2,r0                  ; 080F2AAA
mov   r0,0x6B                   ; 080F2AAC
bl    PlayYISound               ; 080F2AAE
mov   r0,0x5                    ; 080F2AB2
strh  r0,[r4,0x1C]              ; 080F2AB4
ldr   r0,=Data08196BA0          ; 080F2AB6
ldrh  r0,[r0,0xA]               ; 080F2AB8
bl    Sub080EFDB8               ; 080F2ABA
mov   r0,0x18                   ; 080F2ABE
strb  r0,[r6]                   ; 080F2AC0
ldrb  r0,[r5]                   ; 080F2AC2
add   r0,0x1                    ; 080F2AC4
strb  r0,[r5]                   ; 080F2AC6
ldrh  r0,[r4,0x10]              ; 080F2AC8
add   r0,0x1                    ; 080F2ACA
strh  r0,[r4,0x10]              ; 080F2ACC
bl    Sub08035648               ; 080F2ACE
ldr   r0,[r7]                   ; 080F2AD2
ldr   r1,=0x29CC                ; 080F2AD4
add   r0,r0,r1                  ; 080F2AD6
ldrb  r0,[r0]                   ; 080F2AD8
lsr   r1,r0,0x6                 ; 080F2ADA
mov   r0,r4                     ; 080F2ADC
add   r0,0x4C                   ; 080F2ADE
strh  r1,[r0]                   ; 080F2AE0
ldr   r0,=DataPtrs081970D0      ; 080F2AE2
lsl   r1,r1,0x2                 ; 080F2AE4
add   r1,r1,r0                  ; 080F2AE6
ldr   r0,[r1]                   ; 080F2AE8
ldrb  r0,[r0]                   ; 080F2AEA
lsl   r0,r0,0x8                 ; 080F2AEC
strh  r0,[r4,0x20]              ; 080F2AEE
ldr   r0,[r1]                   ; 080F2AF0
ldrb  r0,[r0,0x1]               ; 080F2AF2
lsl   r0,r0,0x8                 ; 080F2AF4
strh  r0,[r4,0x22]              ; 080F2AF6
mov   r1,0x2                    ; 080F2AF8
mov   r0,r4                     ; 080F2AFA
add   r0,0xA2                   ; 080F2AFC
strb  r1,[r0]                   ; 080F2AFE
b     @@Code080F2B1A            ; 080F2B00
.pool                           ; 080F2B02

@@Code080F2B14:
mov   r0,r4                     ; 080F2B14
bl    Sub080F2924               ; 080F2B16
@@Code080F2B1A:
pop   {r4-r7}                   ; 080F2B1A
pop   {r0}                      ; 080F2B1C
bx    r0                        ; 080F2B1E

Sub080F2B20:
push  {lr}                      ; 080F2B20
ldr   r2,=CodePtrs081970E0      ; 080F2B22
ldrh  r1,[r0,0x10]              ; 080F2B24
lsl   r1,r1,0x2                 ; 080F2B26
add   r1,r1,r2                  ; 080F2B28
ldr   r1,[r1]                   ; 080F2B2A
bl    Sub_bx_r1                 ; 080F2B2C  bx r1
pop   {r0}                      ; 080F2B30
bx    r0                        ; 080F2B32
.pool                           ; 080F2B34

Sub080F2B38:
push  {r4-r7,lr}                ; 080F2B38
mov   r7,r10                    ; 080F2B3A
mov   r6,r9                     ; 080F2B3C
mov   r5,r8                     ; 080F2B3E
push  {r5-r7}                   ; 080F2B40
add   sp,-0x4                   ; 080F2B42
mov   r8,r0                     ; 080F2B44
mov   r1,r8                     ; 080F2B46
add   r1,0x9A                   ; 080F2B48
mov   r0,0x0                    ; 080F2B4A
strb  r0,[r1]                   ; 080F2B4C
ldr   r0,=Data0819715B          ; 080F2B4E
ldrb  r1,[r0]                   ; 080F2B50
mov   r0,r8                     ; 080F2B52
add   r0,0x80                   ; 080F2B54
strb  r1,[r0]                   ; 080F2B56
ldr   r0,=Data08197162          ; 080F2B58
ldrb  r0,[r0]                   ; 080F2B5A
mov   r1,r8                     ; 080F2B5C
add   r1,0x81                   ; 080F2B5E
strb  r0,[r1]                   ; 080F2B60
mov   r2,0x6                    ; 080F2B62
ldr   r5,=0x0300702C            ; 080F2B64  Sprite RAM structs (03002460)
ldr   r4,=0x153E                ; 080F2B66
ldr   r3,=Data08197154          ; 080F2B68
@@Code080F2B6A:
ldr   r1,[r5]                   ; 080F2B6A
lsl   r0,r2,0x1                 ; 080F2B6C
add   r1,r1,r4                  ; 080F2B6E
add   r1,r1,r0                  ; 080F2B70
add   r0,r2,r3                  ; 080F2B72
ldrb  r0,[r0]                   ; 080F2B74
strh  r0,[r1]                   ; 080F2B76
sub   r0,r2,0x1                 ; 080F2B78
lsl   r0,r0,0x10                ; 080F2B7A
lsr   r2,r0,0x10                ; 080F2B7C
cmp   r0,0x0                    ; 080F2B7E
bge   @@Code080F2B6A            ; 080F2B80
mov   r0,r8                     ; 080F2B82
mov   r1,0x6                    ; 080F2B84
mov   r2,0x0                    ; 080F2B86
bl    Sub080EF058               ; 080F2B88
mov   r1,r8                     ; 080F2B8C
add   r1,0xA3                   ; 080F2B8E
mov   r0,0x0                    ; 080F2B90
strb  r0,[r1]                   ; 080F2B92
sub   r1,0x1                    ; 080F2B94
strb  r0,[r1]                   ; 080F2B96
mov   r2,0x6                    ; 080F2B98
mov   r0,r8                     ; 080F2B9A
add   r0,0x9B                   ; 080F2B9C
str   r0,[sp]                   ; 080F2B9E
add   r1,0x2                    ; 080F2BA0
mov   r3,0x0                    ; 080F2BA2
@@Code080F2BA4:
add   r0,r1,r2                  ; 080F2BA4
strb  r3,[r0]                   ; 080F2BA6
sub   r0,r2,0x1                 ; 080F2BA8
lsl   r0,r0,0x10                ; 080F2BAA
lsr   r2,r0,0x10                ; 080F2BAC
cmp   r0,0x0                    ; 080F2BAE
bge   @@Code080F2BA4            ; 080F2BB0
mov   r1,0x6                    ; 080F2BB2
ldr   r0,=0x02011000            ; 080F2BB4
ldrh  r5,[r0]                   ; 080F2BB6
@@Code080F2BB8:
ldr   r2,[sp]                   ; 080F2BB8
add   r0,r2,r1                  ; 080F2BBA
ldrb  r0,[r0]                   ; 080F2BBC
lsr   r2,r0,0x1                 ; 080F2BBE
lsl   r0,r1,0x1                 ; 080F2BC0
ldr   r3,=Data08197118          ; 080F2BC2
add   r0,r0,r3                  ; 080F2BC4
ldrh  r4,[r0]                   ; 080F2BC6
mov   r7,0x3                    ; 080F2BC8
mov   r6,0x0                    ; 080F2BCA
sub   r1,0x1                    ; 080F2BCC
mov   r9,r1                     ; 080F2BCE
lsl   r0,r2,0x2                 ; 080F2BD0
ldr   r1,=DataPtrs0819714C      ; 080F2BD2
add   r0,r0,r1                  ; 080F2BD4
ldr   r0,[r0]                   ; 080F2BD6
mov   r12,r0                    ; 080F2BD8
@@Code080F2BDA:
lsl   r3,r5,0x1                 ; 080F2BDA
ldr   r2,=0x02011002            ; 080F2BDC
mov   r10,r2                    ; 080F2BDE
add   r0,r3,r2                  ; 080F2BE0
strh  r4,[r0]                   ; 080F2BE2
ldr   r0,=0x02011004            ; 080F2BE4
add   r1,r3,r0                  ; 080F2BE6
mov   r0,0x3                    ; 080F2BE8
strh  r0,[r1]                   ; 080F2BEA
ldr   r1,=0x02011006            ; 080F2BEC
add   r2,r3,r1                  ; 080F2BEE
lsl   r1,r6,0x1                 ; 080F2BF0
add   r1,r12                    ; 080F2BF2
ldrh  r0,[r1]                   ; 080F2BF4
strh  r0,[r2]                   ; 080F2BF6
ldr   r0,=0x02011008            ; 080F2BF8
add   r2,r3,r0                  ; 080F2BFA
ldrh  r0,[r1,0x2]               ; 080F2BFC
strh  r0,[r2]                   ; 080F2BFE
ldr   r2,=0x0201100A            ; 080F2C00
add   r3,r3,r2                  ; 080F2C02
ldrh  r0,[r1,0x4]               ; 080F2C04
strh  r0,[r3]                   ; 080F2C06
add   r0,r6,0x3                 ; 080F2C08
lsl   r0,r0,0x10                ; 080F2C0A
lsr   r6,r0,0x10                ; 080F2C0C
add   r0,r5,0x5                 ; 080F2C0E
lsl   r0,r0,0x10                ; 080F2C10
lsr   r5,r0,0x10                ; 080F2C12
mov   r0,r4                     ; 080F2C14
add   r0,0x40                   ; 080F2C16
lsl   r0,r0,0x10                ; 080F2C18
lsr   r4,r0,0x10                ; 080F2C1A
sub   r0,r7,0x1                 ; 080F2C1C
lsl   r0,r0,0x10                ; 080F2C1E
lsr   r7,r0,0x10                ; 080F2C20
cmp   r7,0x0                    ; 080F2C22
bne   @@Code080F2BDA            ; 080F2C24
mov   r3,r9                     ; 080F2C26
lsl   r0,r3,0x10                ; 080F2C28
lsr   r1,r0,0x10                ; 080F2C2A
cmp   r0,0x0                    ; 080F2C2C
bge   @@Code080F2BB8            ; 080F2C2E
lsl   r0,r5,0x1                 ; 080F2C30
add   r0,r10                    ; 080F2C32
ldr   r2,=0xFFFF                ; 080F2C34
mov   r1,r2                     ; 080F2C36
strh  r1,[r0]                   ; 080F2C38
ldr   r0,=0x02011000            ; 080F2C3A
strh  r5,[r0]                   ; 080F2C3C
mov   r0,0x80                   ; 080F2C3E
mov   r3,r8                     ; 080F2C40
strh  r0,[r3,0x22]              ; 080F2C42
strh  r0,[r3,0x20]              ; 080F2C44
add   sp,0x4                    ; 080F2C46
pop   {r3-r5}                   ; 080F2C48
mov   r8,r3                     ; 080F2C4A
mov   r9,r4                     ; 080F2C4C
mov   r10,r5                    ; 080F2C4E
pop   {r4-r7}                   ; 080F2C50
pop   {r0}                      ; 080F2C52
bx    r0                        ; 080F2C54
.pool                           ; 080F2C56

Sub080F2C90:
push  {r4-r5,lr}                ; 080F2C90
ldr   r0,=Data08245CD0          ; 080F2C92  goal minigame 06002000 graphics
ldr   r1,=0x0201FC00            ; 080F2C94  decompressed graphics buffer
bl    swi_LZ77_WRAM             ; 080F2C96  LZ77 decompress (WRAM)
mov   r5,0x0                    ; 080F2C9A
@@Code080F2C9C:
lsl   r1,r5,0x3                 ; 080F2C9C
add   r1,r1,r5                  ; 080F2C9E
lsl   r1,r1,0x5                 ; 080F2CA0
ldr   r0,=0x06002000            ; 080F2CA2
add   r1,r1,r0                  ; 080F2CA4
ldr   r0,=0x02020500            ; 080F2CA6
mov   r2,0x48                   ; 080F2CA8
bl    swi_MemoryCopy32          ; 080F2CAA  Memory copy/fill, 32-byte blocks
add   r0,r5,0x1                 ; 080F2CAE
lsl   r0,r0,0x10                ; 080F2CB0
lsr   r5,r0,0x10                ; 080F2CB2
cmp   r5,0x6                    ; 080F2CB4
bls   @@Code080F2C9C            ; 080F2CB6
ldr   r4,=Data081A12D8          ; 080F2CB8
ldr   r1,=0x06014000            ; 080F2CBA
mov   r2,0x80                   ; 080F2CBC
lsl   r2,r2,0x4                 ; 080F2CBE
mov   r0,r4                     ; 080F2CC0
bl    swi_MemoryCopy32          ; 080F2CC2  Memory copy/fill, 32-byte blocks
mov   r5,0x0                    ; 080F2CC6
ldr   r2,=0xFFFFF200            ; 080F2CC8
add   r4,r4,r2                  ; 080F2CCA
@@Code080F2CCC:
lsl   r1,r5,0xA                 ; 080F2CCC
add   r0,r1,r4                  ; 080F2CCE
ldr   r2,=0x06016000            ; 080F2CD0
add   r1,r1,r2                  ; 080F2CD2
mov   r2,0x60                   ; 080F2CD4
bl    swi_MemoryCopy32          ; 080F2CD6  Memory copy/fill, 32-byte blocks
add   r0,r5,0x1                 ; 080F2CDA
lsl   r0,r0,0x10                ; 080F2CDC
lsr   r5,r0,0x10                ; 080F2CDE
cmp   r5,0x3                    ; 080F2CE0
bls   @@Code080F2CCC            ; 080F2CE2
ldr   r0,=0x02010400            ; 080F2CE4
ldr   r1,=0x05000300            ; 080F2CE6
mov   r2,0x40                   ; 080F2CE8
bl    swi_MemoryCopy32          ; 080F2CEA  Memory copy/fill, 32-byte blocks
pop   {r4-r5}                   ; 080F2CEE
pop   {r0}                      ; 080F2CF0
bx    r0                        ; 080F2CF2
.pool                           ; 080F2CF4

Sub080F2D1C:
push  {r4,lr}                   ; 080F2D1C
mov   r4,r0                     ; 080F2D1E
bl    Sub080F2C90               ; 080F2D20
mov   r0,r4                     ; 080F2D24
bl    Sub080F2B38               ; 080F2D26
pop   {r4}                      ; 080F2D2A
pop   {r0}                      ; 080F2D2C
bx    r0                        ; 080F2D2E

Sub080F2D30:
push  {r4-r5,lr}                ; 080F2D30
mov   r4,r0                     ; 080F2D32
ldr   r0,=0x03002200            ; 080F2D34
ldr   r1,=0x407E                ; 080F2D36
add   r0,r0,r1                  ; 080F2D38
ldrh  r5,[r0]                   ; 080F2D3A
ldrh  r0,[r4,0x12]              ; 080F2D3C
cmp   r0,0x0                    ; 080F2D3E
beq   @@Code080F2D50            ; 080F2D40
sub   r0,0x1                    ; 080F2D42
strh  r0,[r4,0x12]              ; 080F2D44
b     @@Code080F2DB6            ; 080F2D46
.pool                           ; 080F2D48

@@Code080F2D50:
ldrh  r0,[r4,0x30]              ; 080F2D50
cmp   r0,0x0                    ; 080F2D52
beq   @@Code080F2D5C            ; 080F2D54
ldr   r0,=0x03E6                ; 080F2D56
cmp   r5,r0                     ; 080F2D58
bls   @@Code080F2D6C            ; 080F2D5A
@@Code080F2D5C:
mov   r0,0x80                   ; 080F2D5C
strh  r0,[r4,0x12]              ; 080F2D5E
ldrh  r0,[r4,0x10]              ; 080F2D60
add   r0,0x1                    ; 080F2D62
strh  r0,[r4,0x10]              ; 080F2D64
b     @@Code080F2DB6            ; 080F2D66
.pool                           ; 080F2D68

@@Code080F2D6C:
mov   r0,0x6E                   ; 080F2D6C
mov   r1,0x0                    ; 080F2D6E
bl    PlayYISound               ; 080F2D70
mov   r0,0x30                   ; 080F2D74
strh  r0,[r4,0x12]              ; 080F2D76
ldrh  r0,[r4,0x30]              ; 080F2D78
mov   r1,r0                     ; 080F2D7A
cmp   r1,0x6E                   ; 080F2D7C
bls   @@Code080F2D8A            ; 080F2D7E
sub   r0,0x64                   ; 080F2D80
strh  r0,[r4,0x30]              ; 080F2D82
mov   r0,r5                     ; 080F2D84
add   r0,0x64                   ; 080F2D86
b     @@Code080F2D9E            ; 080F2D88
@@Code080F2D8A:
cmp   r1,0xA                    ; 080F2D8A
bls   @@Code080F2D98            ; 080F2D8C
sub   r0,0xA                    ; 080F2D8E
strh  r0,[r4,0x30]              ; 080F2D90
mov   r0,r5                     ; 080F2D92
add   r0,0xA                    ; 080F2D94
b     @@Code080F2D9E            ; 080F2D96
@@Code080F2D98:
sub   r0,0x1                    ; 080F2D98
strh  r0,[r4,0x30]              ; 080F2D9A
add   r0,r5,0x1                 ; 080F2D9C
@@Code080F2D9E:
lsl   r0,r0,0x10                ; 080F2D9E
lsr   r5,r0,0x10                ; 080F2DA0
ldr   r0,=0x03E7                ; 080F2DA2
cmp   r5,r0                     ; 080F2DA4
bls   @@Code080F2DAA            ; 080F2DA6
mov   r5,r0                     ; 080F2DA8
@@Code080F2DAA:
ldr   r0,=0x03002200            ; 080F2DAA
ldr   r1,=0x407E                ; 080F2DAC
add   r0,r0,r1                  ; 080F2DAE
strh  r5,[r0]                   ; 080F2DB0
bl    Sub080EF708               ; 080F2DB2
@@Code080F2DB6:
pop   {r4-r5}                   ; 080F2DB6
pop   {r0}                      ; 080F2DB8
bx    r0                        ; 080F2DBA
.pool                           ; 080F2DBC

Sub080F2DC8:
push  {r4-r7,lr}                ; 080F2DC8
mov   r7,r9                     ; 080F2DCA
mov   r6,r8                     ; 080F2DCC
push  {r6-r7}                   ; 080F2DCE
lsl   r3,r3,0x10                ; 080F2DD0
ldr   r5,=0x03002200            ; 080F2DD2
ldr   r4,=0x47D0                ; 080F2DD4
add   r4,r4,r5                  ; 080F2DD6
mov   r9,r4                     ; 080F2DD8
ldrh  r6,[r4]                   ; 080F2DDA
lsr   r6,r6,0x2                 ; 080F2DDC
ldr   r7,=0x030021B0            ; 080F2DDE
mov   r8,r7                     ; 080F2DE0
lsl   r4,r6,0x3                 ; 080F2DE2
mov   r7,0xE0                   ; 080F2DE4
lsl   r7,r7,0x6                 ; 080F2DE6
add   r5,r5,r7                  ; 080F2DE8
add   r4,r4,r5                  ; 080F2DEA
mov   r5,r8                     ; 080F2DEC
str   r4,[r5]                   ; 080F2DEE
strb  r1,[r4]                   ; 080F2DF0
ldr   r5,[r5]                   ; 080F2DF2
lsl   r0,r0,0x17                ; 080F2DF4
lsr   r0,r0,0x17                ; 080F2DF6
ldrh  r4,[r5,0x2]               ; 080F2DF8
ldr   r1,=0xFFFFFE00            ; 080F2DFA
and   r1,r4                     ; 080F2DFC
orr   r1,r0                     ; 080F2DFE
strh  r1,[r5,0x2]               ; 080F2E00
lsl   r2,r2,0x16                ; 080F2E02
lsr   r2,r2,0x16                ; 080F2E04
ldrh  r1,[r5,0x4]               ; 080F2E06
ldr   r0,=0xFFFFFC00            ; 080F2E08
and   r0,r1                     ; 080F2E0A
orr   r0,r2                     ; 080F2E0C
strh  r0,[r5,0x4]               ; 080F2E0E
ldrb  r1,[r5,0x3]               ; 080F2E10
mov   r0,0x3F                   ; 080F2E12
and   r0,r1                     ; 080F2E14
mov   r1,0x40                   ; 080F2E16
orr   r0,r1                     ; 080F2E18
strb  r0,[r5,0x3]               ; 080F2E1A
mov   r7,r8                     ; 080F2E1C
ldr   r2,[r7]                   ; 080F2E1E
lsr   r3,r3,0xC                 ; 080F2E20
ldrb  r1,[r2,0x5]               ; 080F2E22
mov   r0,0xF                    ; 080F2E24
and   r0,r1                     ; 080F2E26
orr   r0,r3                     ; 080F2E28
strb  r0,[r2,0x5]               ; 080F2E2A
add   r6,0x1                    ; 080F2E2C
lsl   r6,r6,0x2                 ; 080F2E2E
mov   r0,r9                     ; 080F2E30
strh  r6,[r0]                   ; 080F2E32
pop   {r3-r4}                   ; 080F2E34
mov   r8,r3                     ; 080F2E36
mov   r9,r4                     ; 080F2E38
pop   {r4-r7}                   ; 080F2E3A
pop   {r0}                      ; 080F2E3C
bx    r0                        ; 080F2E3E
.pool                           ; 080F2E40

Sub080F2E54:
push  {r4-r7,lr}                ; 080F2E54
mov   r7,r9                     ; 080F2E56
mov   r6,r8                     ; 080F2E58
push  {r6-r7}                   ; 080F2E5A
mov   r7,r0                     ; 080F2E5C
ldr   r0,=Data0819F2D8          ; 080F2E5E
ldr   r1,=0x06014000            ; 080F2E60
mov   r2,0x80                   ; 080F2E62
lsl   r2,r2,0x5                 ; 080F2E64
bl    swi_MemoryCopy32          ; 080F2E66  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02010400            ; 080F2E6A
ldr   r1,=0x02010700            ; 080F2E6C
mov   r2,0x40                   ; 080F2E6E
bl    swi_MemoryCopy32          ; 080F2E70  Memory copy/fill, 32-byte blocks
ldr   r4,=0x03002200            ; 080F2E74
ldr   r0,=0x4967                ; 080F2E76
add   r2,r4,r0                  ; 080F2E78
ldrb  r1,[r2]                   ; 080F2E7A
mov   r0,0x2                    ; 080F2E7C
orr   r0,r1                     ; 080F2E7E
strb  r0,[r2]                   ; 080F2E80
mov   r0,r4                     ; 080F2E82
mov   r1,0x84                   ; 080F2E84
bl    DynamicAllocate           ; 080F2E86
mov   r12,r0                    ; 080F2E8A
ldr   r2,=0x4A50                ; 080F2E8C
add   r4,r4,r2                  ; 080F2E8E
str   r0,[r4]                   ; 080F2E90
mov   r6,0x0                    ; 080F2E92
ldr   r3,=Data0819716C          ; 080F2E94
mov   r8,r3                     ; 080F2E96
@@Code080F2E98:
lsl   r2,r6,0x3                 ; 080F2E98
mov   r0,r12                    ; 080F2E9A
add   r1,r0,r2                  ; 080F2E9C
lsl   r5,r6,0x1                 ; 080F2E9E
mov   r3,r8                     ; 080F2EA0
add   r0,r5,r3                  ; 080F2EA2
ldrh  r4,[r0]                   ; 080F2EA4
strh  r4,[r1]                   ; 080F2EA6
mov   r0,r12                    ; 080F2EA8
add   r0,0x2                    ; 080F2EAA
add   r0,r0,r2                  ; 080F2EAC
mov   r1,r4                     ; 080F2EAE
add   r1,0x10                   ; 080F2EB0
strh  r1,[r0]                   ; 080F2EB2
mov   r0,r12                    ; 080F2EB4
add   r0,0x4                    ; 080F2EB6
add   r0,r0,r2                  ; 080F2EB8
strh  r4,[r0]                   ; 080F2EBA
mov   r0,r12                    ; 080F2EBC
add   r0,0x6                    ; 080F2EBE
add   r0,r0,r2                  ; 080F2EC0
strh  r1,[r0]                   ; 080F2EC2
mov   r1,r12                    ; 080F2EC4
add   r1,0x30                   ; 080F2EC6
add   r1,r1,r2                  ; 080F2EC8
ldr   r0,=Data08197178          ; 080F2ECA
add   r0,r5,r0                  ; 080F2ECC
ldrh  r3,[r0]                   ; 080F2ECE
strh  r3,[r1]                   ; 080F2ED0
mov   r0,r12                    ; 080F2ED2
add   r0,0x32                   ; 080F2ED4
add   r0,r0,r2                  ; 080F2ED6
strh  r3,[r0]                   ; 080F2ED8
mov   r0,r12                    ; 080F2EDA
add   r0,0x34                   ; 080F2EDC
add   r0,r0,r2                  ; 080F2EDE
mov   r1,r3                     ; 080F2EE0
add   r1,0x10                   ; 080F2EE2
strh  r1,[r0]                   ; 080F2EE4
mov   r0,r12                    ; 080F2EE6
add   r0,0x36                   ; 080F2EE8
add   r0,r0,r2                  ; 080F2EEA
strh  r1,[r0]                   ; 080F2EEC
mov   r0,r12                    ; 080F2EEE
add   r0,0x60                   ; 080F2EF0
add   r0,r0,r5                  ; 080F2EF2
strh  r4,[r0]                   ; 080F2EF4
mov   r0,r12                    ; 080F2EF6
add   r0,0x6C                   ; 080F2EF8
add   r0,r0,r5                  ; 080F2EFA
strh  r3,[r0]                   ; 080F2EFC
add   r0,r6,0x1                 ; 080F2EFE
lsl   r0,r0,0x10                ; 080F2F00
lsr   r6,r0,0x10                ; 080F2F02
cmp   r6,0x5                    ; 080F2F04
bls   @@Code080F2E98            ; 080F2F06
mov   r1,r7                     ; 080F2F08
add   r1,0x9A                   ; 080F2F0A
mov   r0,0x0                    ; 080F2F0C
strb  r0,[r1]                   ; 080F2F0E
ldr   r0,=Data081971AA          ; 080F2F10
ldrb  r1,[r0]                   ; 080F2F12
mov   r0,r7                     ; 080F2F14
add   r0,0x80                   ; 080F2F16
strb  r1,[r0]                   ; 080F2F18
ldr   r0,=Data081971B0          ; 080F2F1A
ldrb  r0,[r0]                   ; 080F2F1C
mov   r1,r7                     ; 080F2F1E
add   r1,0x81                   ; 080F2F20
strb  r0,[r1]                   ; 080F2F22
mov   r6,0x0                    ; 080F2F24
mov   r0,0x8E                   ; 080F2F26
add   r0,r0,r7                  ; 080F2F28
mov   r8,r0                     ; 080F2F2A
mov   r2,0x78                   ; 080F2F2C
add   r2,r12                    ; 080F2F2E
mov   r9,r2                     ; 080F2F30
ldr   r3,=0x0300702C            ; 080F2F32  Sprite RAM structs (03002460)
ldr   r2,=0x153E                ; 080F2F34
@@Code080F2F36:
ldr   r0,[r3]                   ; 080F2F36
lsl   r1,r6,0x1                 ; 080F2F38
add   r0,r0,r2                  ; 080F2F3A
add   r0,r0,r1                  ; 080F2F3C
strh  r6,[r0]                   ; 080F2F3E
add   r0,r6,0x1                 ; 080F2F40
lsl   r0,r0,0x10                ; 080F2F42
lsr   r6,r0,0x10                ; 080F2F44
cmp   r6,0x8                    ; 080F2F46
bls   @@Code080F2F36            ; 080F2F48
mov   r0,r7                     ; 080F2F4A
mov   r1,0x8                    ; 080F2F4C
mov   r2,0x1                    ; 080F2F4E
bl    Sub080EF058               ; 080F2F50
mov   r6,0x0                    ; 080F2F54
ldr   r3,=0x0300702C            ; 080F2F56  Sprite RAM structs (03002460)
ldr   r2,=0x153E                ; 080F2F58
@@Code080F2F5A:
ldr   r0,[r3]                   ; 080F2F5A
lsl   r1,r6,0x1                 ; 080F2F5C
add   r0,r0,r2                  ; 080F2F5E
add   r0,r0,r1                  ; 080F2F60
strh  r6,[r0]                   ; 080F2F62
add   r0,r6,0x1                 ; 080F2F64
lsl   r0,r0,0x10                ; 080F2F66
lsr   r6,r0,0x10                ; 080F2F68
cmp   r6,0x4                    ; 080F2F6A
bls   @@Code080F2F5A            ; 080F2F6C
mov   r0,r7                     ; 080F2F6E
mov   r1,0x5                    ; 080F2F70
mov   r2,0x0                    ; 080F2F72
bl    Sub080EF058               ; 080F2F74
mov   r1,0x2                    ; 080F2F78
ldr   r0,=0x03007240            ; 080F2F7A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F2F7C
ldr   r3,=0x266C                ; 080F2F7E
add   r0,r0,r3                  ; 080F2F80
ldrh  r0,[r0,0x4]               ; 080F2F82
cmp   r0,0x4F                   ; 080F2F84
bhi   @@Code080F2F8A            ; 080F2F86
mov   r1,0x0                    ; 080F2F88
@@Code080F2F8A:
ldr   r0,=0xFFFF                ; 080F2F8A
cmp   r1,r0                     ; 080F2F8C
beq   @@Code080F2FAC            ; 080F2F8E
mov   r3,r7                     ; 080F2F90
add   r3,0x9B                   ; 080F2F92
mov   r2,r8                     ; 080F2F94
mov   r5,0x9                    ; 080F2F96
mov   r4,r0                     ; 080F2F98
@@Code080F2F9A:
add   r0,r3,r1                  ; 080F2F9A
ldrb  r0,[r0]                   ; 080F2F9C
add   r0,r2,r0                  ; 080F2F9E
strb  r5,[r0]                   ; 080F2FA0
sub   r0,r1,0x1                 ; 080F2FA2
lsl   r0,r0,0x10                ; 080F2FA4
lsr   r1,r0,0x10                ; 080F2FA6
cmp   r1,r4                     ; 080F2FA8
bne   @@Code080F2F9A            ; 080F2FAA
@@Code080F2FAC:
mov   r6,0x0                    ; 080F2FAC
mov   r3,r9                     ; 080F2FAE
mov   r2,r8                     ; 080F2FB0
@@Code080F2FB2:
add   r1,r3,r6                  ; 080F2FB2
add   r0,r2,r6                  ; 080F2FB4
ldrb  r0,[r0]                   ; 080F2FB6
strb  r0,[r1]                   ; 080F2FB8
add   r0,r6,0x1                 ; 080F2FBA
lsl   r0,r0,0x10                ; 080F2FBC
lsr   r6,r0,0x10                ; 080F2FBE
cmp   r6,0x8                    ; 080F2FC0
bls   @@Code080F2FB2            ; 080F2FC2
pop   {r3-r4}                   ; 080F2FC4
mov   r8,r3                     ; 080F2FC6
mov   r9,r4                     ; 080F2FC8
pop   {r4-r7}                   ; 080F2FCA
pop   {r0}                      ; 080F2FCC
bx    r0                        ; 080F2FCE
.pool                           ; 080F2FD0

Sub080F3010:
push  {r4-r7,lr}                ; 080F3010
mov   r7,r8                     ; 080F3012
push  {r7}                      ; 080F3014
mov   r6,r0                     ; 080F3016
mov   r7,r6                     ; 080F3018
add   r7,0x99                   ; 080F301A
ldrb  r0,[r7]                   ; 080F301C
cmp   r0,0x0                    ; 080F301E
beq   @@Code080F3026            ; 080F3020
sub   r0,0x1                    ; 080F3022
strb  r0,[r7]                   ; 080F3024
@@Code080F3026:
mov   r0,0x80                   ; 080F3026
add   r0,r0,r6                  ; 080F3028
mov   r8,r0                     ; 080F302A
ldrb  r0,[r0]                   ; 080F302C
add   r0,0xD                    ; 080F302E
ldr   r4,=0x03002200            ; 080F3030
ldr   r2,=0x47E6                ; 080F3032
add   r1,r4,r2                  ; 080F3034
ldrh  r1,[r1]                   ; 080F3036
sub   r0,r0,r1                  ; 080F3038
lsl   r0,r0,0x10                ; 080F303A
lsr   r0,r0,0x10                ; 080F303C
mov   r5,r6                     ; 080F303E
add   r5,0x81                   ; 080F3040
ldrb  r1,[r5]                   ; 080F3042
add   r1,0x14                   ; 080F3044
ldr   r3,=0x47EE                ; 080F3046
add   r2,r4,r3                  ; 080F3048
ldrh  r2,[r2]                   ; 080F304A
sub   r1,r1,r2                  ; 080F304C
lsl   r1,r1,0x10                ; 080F304E
lsr   r1,r1,0x10                ; 080F3050
mov   r2,0xD0                   ; 080F3052
mov   r3,0x0                    ; 080F3054
bl    Sub080F2DC8               ; 080F3056
ldr   r1,=0x47C0                ; 080F305A
add   r0,r4,r1                  ; 080F305C
ldrh  r1,[r0]                   ; 080F305E
mov   r0,0x1                    ; 080F3060
and   r0,r1                     ; 080F3062
cmp   r0,0x0                    ; 080F3064
beq   @@Code080F30BC            ; 080F3066
ldr   r2,=0x4058                ; 080F3068
add   r1,r4,r2                  ; 080F306A
mov   r5,0x0                    ; 080F306C
mov   r2,0x0                    ; 080F306E
mov   r0,0x78                   ; 080F3070
strh  r0,[r1]                   ; 080F3072
ldr   r3,=0x405A                ; 080F3074
add   r0,r4,r3                  ; 080F3076
strh  r2,[r0]                   ; 080F3078
mov   r0,0x6B                   ; 080F307A
bl    PlayYISound               ; 080F307C
mov   r0,0x5                    ; 080F3080
strh  r0,[r6,0x1C]              ; 080F3082
ldr   r0,=Data08196BA0          ; 080F3084
ldrh  r0,[r0,0xA]               ; 080F3086
bl    Sub080EFDB8               ; 080F3088
mov   r0,0x18                   ; 080F308C
strb  r0,[r7]                   ; 080F308E
ldrh  r0,[r6,0x10]              ; 080F3090
add   r0,0x1                    ; 080F3092
strh  r0,[r6,0x10]              ; 080F3094
mov   r0,r6                     ; 080F3096
add   r0,0xA2                   ; 080F3098
strb  r5,[r0]                   ; 080F309A
b     @@Code080F3156            ; 080F309C
.pool                           ; 080F309E

@@Code080F30BC:
mov   r0,0xF0                   ; 080F30BC
and   r0,r1                     ; 080F30BE
cmp   r0,0x0                    ; 080F30C0
bne   @@Code080F30CE            ; 080F30C2
ldrb  r0,[r7]                   ; 080F30C4
cmp   r0,0x0                    ; 080F30C6
bne   @@Code080F3156            ; 080F30C8
mov   r0,0x10                   ; 080F30CA
b     @@Code080F30D0            ; 080F30CC
@@Code080F30CE:
mov   r0,0x20                   ; 080F30CE
@@Code080F30D0:
strb  r0,[r7]                   ; 080F30D0
ldr   r1,=0x03002200            ; 080F30D2
ldr   r2,=0x47BE                ; 080F30D4
add   r0,r1,r2                  ; 080F30D6
ldrh  r3,[r0]                   ; 080F30D8
mov   r0,0xF0                   ; 080F30DA
and   r0,r3                     ; 080F30DC
mov   r7,r1                     ; 080F30DE
cmp   r0,0x0                    ; 080F30E0
beq   @@Code080F3156            ; 080F30E2
mov   r1,r6                     ; 080F30E4
add   r1,0x9A                   ; 080F30E6
ldrb  r2,[r1]                   ; 080F30E8
mov   r0,0x30                   ; 080F30EA
and   r0,r3                     ; 080F30EC
mov   r4,r1                     ; 080F30EE
cmp   r0,0x0                    ; 080F30F0
beq   @@Code080F3120            ; 080F30F2
mov   r0,0x20                   ; 080F30F4
and   r0,r3                     ; 080F30F6
cmp   r0,0x0                    ; 080F30F8
beq   @@Code080F3114            ; 080F30FA
sub   r0,r2,0x1                 ; 080F30FC
lsl   r0,r0,0x18                ; 080F30FE
lsr   r2,r0,0x18                ; 080F3100
cmp   r2,0xFF                   ; 080F3102
bne   @@Code080F3120            ; 080F3104
mov   r2,0x5                    ; 080F3106
b     @@Code080F3120            ; 080F3108
.pool                           ; 080F310A

@@Code080F3114:
add   r0,r2,0x1                 ; 080F3114
lsl   r0,r0,0x18                ; 080F3116
lsr   r2,r0,0x18                ; 080F3118
cmp   r2,0x5                    ; 080F311A
bls   @@Code080F3120            ; 080F311C
mov   r2,0x0                    ; 080F311E
@@Code080F3120:
ldr   r3,=0x47BE                ; 080F3120
add   r0,r7,r3                  ; 080F3122
ldrh  r1,[r0]                   ; 080F3124
mov   r0,0xC0                   ; 080F3126
and   r0,r1                     ; 080F3128
cmp   r0,0x0                    ; 080F312A
beq   @@Code080F313A            ; 080F312C
ldr   r0,=Data081971B6          ; 080F312E
add   r0,r2,r0                  ; 080F3130
ldrb  r0,[r0]                   ; 080F3132
add   r0,r2,r0                  ; 080F3134
lsl   r0,r0,0x18                ; 080F3136
lsr   r2,r0,0x18                ; 080F3138
@@Code080F313A:
strb  r2,[r4]                   ; 080F313A
ldr   r0,=Data081971AA          ; 080F313C
add   r0,r2,r0                  ; 080F313E
ldrb  r0,[r0]                   ; 080F3140
mov   r1,r8                     ; 080F3142
strb  r0,[r1]                   ; 080F3144
ldr   r0,=Data081971B0          ; 080F3146
add   r0,r2,r0                  ; 080F3148
ldrb  r0,[r0]                   ; 080F314A
strb  r0,[r5]                   ; 080F314C
mov   r0,0x22                   ; 080F314E
mov   r1,0x0                    ; 080F3150
bl    PlayYISound               ; 080F3152
@@Code080F3156:
pop   {r3}                      ; 080F3156
mov   r8,r3                     ; 080F3158
pop   {r4-r7}                   ; 080F315A
pop   {r0}                      ; 080F315C
bx    r0                        ; 080F315E
.pool                           ; 080F3160

Sub080F3170:
push  {r4-r6,lr}                ; 080F3170
mov   r4,r0                     ; 080F3172
ldr   r3,=0x03002200            ; 080F3174
ldr   r1,=0x4A50                ; 080F3176
add   r0,r3,r1                  ; 080F3178
ldr   r5,[r0]                   ; 080F317A
mov   r1,r4                     ; 080F317C
add   r1,0x99                   ; 080F317E
ldrb  r0,[r1]                   ; 080F3180
mov   r2,r0                     ; 080F3182
cmp   r2,0x0                    ; 080F3184
bne   @@Code080F31B0            ; 080F3186
mov   r0,0x20                   ; 080F3188
strb  r0,[r1]                   ; 080F318A
ldr   r6,=0x4058                ; 080F318C
add   r1,r3,r6                  ; 080F318E
mov   r0,0x78                   ; 080F3190
strh  r0,[r1]                   ; 080F3192
add   r6,0x2                    ; 080F3194
add   r0,r3,r6                  ; 080F3196
strh  r2,[r0]                   ; 080F3198
mov   r0,0x69                   ; 080F319A
bl    PlayYISound               ; 080F319C
b     @@Code080F31B4            ; 080F31A0
.pool                           ; 080F31A2

@@Code080F31B0:
sub   r0,0x1                    ; 080F31B0
strb  r0,[r1]                   ; 080F31B2
@@Code080F31B4:
mov   r0,r4                     ; 080F31B4
add   r0,0x9A                   ; 080F31B6
ldrb  r2,[r0]                   ; 080F31B8
mov   r0,0xA2                   ; 080F31BA
add   r0,r0,r4                  ; 080F31BC
mov   r12,r0                    ; 080F31BE
ldrb  r3,[r0]                   ; 080F31C0
cmp   r3,0xB                    ; 080F31C2
bhi   @@Code080F3218            ; 080F31C4
ldr   r0,=0x03002200            ; 080F31C6
ldr   r1,=0x4901                ; 080F31C8
add   r0,r0,r1                  ; 080F31CA
ldrb  r1,[r0]                   ; 080F31CC
mov   r0,0x3                    ; 080F31CE
and   r0,r1                     ; 080F31D0
cmp   r0,0x0                    ; 080F31D2
bne   @@Code080F3278            ; 080F31D4
add   r0,r3,0x1                 ; 080F31D6
mov   r6,r12                    ; 080F31D8
strb  r0,[r6]                   ; 080F31DA
lsl   r2,r2,0x3                 ; 080F31DC
mov   r1,r5                     ; 080F31DE
add   r1,0x30                   ; 080F31E0
add   r1,r1,r2                  ; 080F31E2
ldrh  r0,[r1]                   ; 080F31E4
sub   r0,0x1                    ; 080F31E6
strh  r0,[r1]                   ; 080F31E8
mov   r1,r5                     ; 080F31EA
add   r1,0x32                   ; 080F31EC
add   r1,r1,r2                  ; 080F31EE
ldrh  r0,[r1]                   ; 080F31F0
sub   r0,0x1                    ; 080F31F2
strh  r0,[r1]                   ; 080F31F4
mov   r1,r5                     ; 080F31F6
add   r1,0x34                   ; 080F31F8
add   r1,r1,r2                  ; 080F31FA
ldrh  r0,[r1]                   ; 080F31FC
add   r0,0x1                    ; 080F31FE
strh  r0,[r1]                   ; 080F3200
mov   r1,r5                     ; 080F3202
add   r1,0x36                   ; 080F3204
add   r1,r1,r2                  ; 080F3206
ldrh  r0,[r1]                   ; 080F3208
add   r0,0x1                    ; 080F320A
strh  r0,[r1]                   ; 080F320C
b     @@Code080F3278            ; 080F320E
.pool                           ; 080F3210

@@Code080F3218:
ldrh  r0,[r4,0x10]              ; 080F3218
add   r0,0x1                    ; 080F321A
strh  r0,[r4,0x10]              ; 080F321C
mov   r0,r4                     ; 080F321E
add   r0,0x8E                   ; 080F3220
add   r0,r0,r2                  ; 080F3222
ldrb  r2,[r0]                   ; 080F3224
cmp   r2,0x9                    ; 080F3226
beq   @@Code080F325C            ; 080F3228
ldr   r1,=Data081971BC          ; 080F322A
lsl   r0,r2,0x1                 ; 080F322C
add   r0,r0,r1                  ; 080F322E
ldrh  r0,[r0]                   ; 080F3230
bl    Sub080EEEC4               ; 080F3232
ldr   r1,=0x03002200            ; 080F3236
ldr   r0,=0x4A48                ; 080F3238
add   r1,r1,r0                  ; 080F323A
ldrb  r0,[r1]                   ; 080F323C
mov   r2,0x4                    ; 080F323E
orr   r0,r2                     ; 080F3240
strb  r0,[r1]                   ; 080F3242
mov   r0,0x20                   ; 080F3244  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080F3246  Change music (YI)
mov   r2,0x2                    ; 080F324A
b     @@Code080F3266            ; 080F324C
.pool                           ; 080F324E

@@Code080F325C:
mov   r0,0x11                   ; 080F325C
mov   r1,0x0                    ; 080F325E
bl    PlayYISound               ; 080F3260
mov   r2,0x3                    ; 080F3264
@@Code080F3266:
strh  r2,[r4,0x1C]              ; 080F3266
mov   r0,0x80                   ; 080F3268
strh  r0,[r4,0x12]              ; 080F326A
ldr   r1,=Data08196BA0          ; 080F326C
lsl   r0,r2,0x1                 ; 080F326E
add   r0,r0,r1                  ; 080F3270
ldrh  r0,[r0]                   ; 080F3272
bl    Sub080EFDB8               ; 080F3274
@@Code080F3278:
pop   {r4-r6}                   ; 080F3278
pop   {r0}                      ; 080F327A
bx    r0                        ; 080F327C
.pool                           ; 080F327E

Sub080F3284:
push  {lr}                      ; 080F3284
mov   r1,r0                     ; 080F3286
ldrh  r0,[r1,0x12]              ; 080F3288
sub   r0,0x1                    ; 080F328A
strh  r0,[r1,0x12]              ; 080F328C
lsl   r0,r0,0x10                ; 080F328E
cmp   r0,0x0                    ; 080F3290
bne   @@Code080F329A            ; 080F3292
ldrh  r0,[r1,0x10]              ; 080F3294
add   r0,0x1                    ; 080F3296
strh  r0,[r1,0x10]              ; 080F3298
@@Code080F329A:
pop   {r0}                      ; 080F329A
bx    r0                        ; 080F329C
.pool                           ; 080F329E

Sub080F32A0:
push  {r4-r5,lr}                ; 080F32A0
mov   r2,r0                     ; 080F32A2
ldrh  r4,[r2,0x12]              ; 080F32A4
cmp   r4,0xB                    ; 080F32A6
bhi   @@Code080F3310            ; 080F32A8
ldr   r3,=0x03002200            ; 080F32AA
ldr   r1,=0x4901                ; 080F32AC
add   r0,r3,r1                  ; 080F32AE
ldrb  r1,[r0]                   ; 080F32B0
mov   r0,0x3                    ; 080F32B2
and   r0,r1                     ; 080F32B4
cmp   r0,0x0                    ; 080F32B6
bne   @@Code080F332C            ; 080F32B8
ldr   r1,=0x4A50                ; 080F32BA
add   r0,r3,r1                  ; 080F32BC
ldr   r3,[r0]                   ; 080F32BE
add   r0,r4,0x1                 ; 080F32C0
strh  r0,[r2,0x12]              ; 080F32C2
mov   r4,0x0                    ; 080F32C4
mov   r5,r2                     ; 080F32C6
add   r5,0x9A                   ; 080F32C8
@@Code080F32CA:
ldrb  r0,[r5]                   ; 080F32CA
cmp   r0,r4                     ; 080F32CC
beq   @@Code080F32F8            ; 080F32CE
lsl   r2,r4,0x3                 ; 080F32D0
add   r1,r3,r2                  ; 080F32D2
ldrh  r0,[r1]                   ; 080F32D4
sub   r0,0x1                    ; 080F32D6
strh  r0,[r1]                   ; 080F32D8
add   r1,r3,0x2                 ; 080F32DA
add   r1,r1,r2                  ; 080F32DC
ldrh  r0,[r1]                   ; 080F32DE
add   r0,0x1                    ; 080F32E0
strh  r0,[r1]                   ; 080F32E2
add   r1,r3,0x4                 ; 080F32E4
add   r1,r1,r2                  ; 080F32E6
ldrh  r0,[r1]                   ; 080F32E8
sub   r0,0x1                    ; 080F32EA
strh  r0,[r1]                   ; 080F32EC
add   r1,r3,0x6                 ; 080F32EE
add   r1,r1,r2                  ; 080F32F0
ldrh  r0,[r1]                   ; 080F32F2
add   r0,0x1                    ; 080F32F4
strh  r0,[r1]                   ; 080F32F6
@@Code080F32F8:
add   r0,r4,0x1                 ; 080F32F8
lsl   r0,r0,0x18                ; 080F32FA
lsr   r4,r0,0x18                ; 080F32FC
cmp   r4,0x5                    ; 080F32FE
bls   @@Code080F32CA            ; 080F3300
b     @@Code080F332C            ; 080F3302
.pool                           ; 080F3304

@@Code080F3310:
ldr   r0,=0x03007240            ; 080F3310  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080F3312
ldr   r1,=0x266C                ; 080F3314
add   r0,r0,r1                  ; 080F3316
mov   r1,0x0                    ; 080F3318
strh  r1,[r0]                   ; 080F331A
strh  r1,[r0,0x2]               ; 080F331C
mov   r1,0x64                   ; 080F331E
strh  r1,[r0,0x4]               ; 080F3320
mov   r0,0x80                   ; 080F3322
strh  r0,[r2,0x12]              ; 080F3324
ldrh  r0,[r2,0x10]              ; 080F3326
add   r0,0x1                    ; 080F3328
strh  r0,[r2,0x10]              ; 080F332A
@@Code080F332C:
pop   {r4-r5}                   ; 080F332C
pop   {r0}                      ; 080F332E
bx    r0                        ; 080F3330
.pool                           ; 080F3332

Sub080F333C:
push  {r4-r7,lr}                ; 080F333C
mov   r7,r10                    ; 080F333E
mov   r6,r9                     ; 080F3340
mov   r5,r8                     ; 080F3342
push  {r5-r7}                   ; 080F3344
mov   r9,r0                     ; 080F3346
ldr   r2,=0x03002200            ; 080F3348
ldr   r1,=0x47D0                ; 080F334A
add   r0,r2,r1                  ; 080F334C
ldrh  r0,[r0]                   ; 080F334E
lsr   r6,r0,0x2                 ; 080F3350
ldr   r3,=0x030021B0            ; 080F3352
lsl   r0,r6,0x3                 ; 080F3354
mov   r4,0xE0                   ; 080F3356
lsl   r4,r4,0x6                 ; 080F3358
add   r1,r2,r4                  ; 080F335A
add   r0,r0,r1                  ; 080F335C
str   r0,[r3]                   ; 080F335E
mov   r0,0x0                    ; 080F3360
mov   r1,0x30                   ; 080F3362
add   r1,r9                     ; 080F3364
mov   r10,r1                    ; 080F3366
mov   r5,r3                     ; 080F3368
@@Code080F336A:
mov   r7,0x0                    ; 080F336A
lsl   r2,r0,0x3                 ; 080F336C
mov   r12,r2                    ; 080F336E
add   r0,0x1                    ; 080F3370
mov   r8,r0                     ; 080F3372
@@Code080F3374:
lsl   r4,r7,0x1                 ; 080F3374
mov   r3,r12                    ; 080F3376
add   r2,r4,r3                  ; 080F3378
mov   r1,r10                    ; 080F337A
add   r0,r1,r2                  ; 080F337C
ldrh  r0,[r0]                   ; 080F337E
ldr   r3,=0x030069EE            ; 080F3380
ldrh  r1,[r3]                   ; 080F3382
sub   r0,r0,r1                  ; 080F3384
lsl   r0,r0,0x10                ; 080F3386
lsr   r1,r0,0x10                ; 080F3388
ldr   r3,=0xFF600000            ; 080F338A
add   r0,r0,r3                  ; 080F338C
lsr   r0,r0,0x10                ; 080F338E
ldr   r3,=0xFF50                ; 080F3390
cmp   r0,r3                     ; 080F3392
bls   @@Code080F3406            ; 080F3394
ldr   r0,[r5]                   ; 080F3396
strb  r1,[r0]                   ; 080F3398
ldr   r3,[r5]                   ; 080F339A
mov   r1,r9                     ; 080F339C
add   r0,r1,r2                  ; 080F339E
ldrh  r1,[r0]                   ; 080F33A0
ldr   r2,=0x030069E6            ; 080F33A2
ldrh  r0,[r2]                   ; 080F33A4
sub   r1,r1,r0                  ; 080F33A6
ldr   r2,=0x01FF                ; 080F33A8
mov   r0,r2                     ; 080F33AA
and   r1,r0                     ; 080F33AC
ldrh  r2,[r3,0x2]               ; 080F33AE
ldr   r0,=0xFFFFFE00            ; 080F33B0
and   r0,r2                     ; 080F33B2
orr   r0,r1                     ; 080F33B4
strh  r0,[r3,0x2]               ; 080F33B6
ldr   r0,=Data08197184          ; 080F33B8
add   r0,r4,r0                  ; 080F33BA
ldrh  r0,[r0]                   ; 080F33BC
ldr   r1,=0x03FF                ; 080F33BE
and   r1,r0                     ; 080F33C0
ldrh  r2,[r3,0x4]               ; 080F33C2
ldr   r0,=0xFFFFFC00            ; 080F33C4
and   r0,r2                     ; 080F33C6
orr   r0,r1                     ; 080F33C8
strh  r0,[r3,0x4]               ; 080F33CA
ldrb  r1,[r3,0x5]               ; 080F33CC
mov   r0,0xF                    ; 080F33CE
and   r0,r1                     ; 080F33D0
mov   r1,0xA0                   ; 080F33D2
orr   r0,r1                     ; 080F33D4
strb  r0,[r3,0x5]               ; 080F33D6
ldr   r2,[r5]                   ; 080F33D8
ldrb  r3,[r2,0x1]               ; 080F33DA
mov   r1,0x3F                   ; 080F33DC
mov   r0,r1                     ; 080F33DE
and   r0,r3                     ; 080F33E0
strb  r0,[r2,0x1]               ; 080F33E2
ldr   r2,[r5]                   ; 080F33E4
ldrb  r0,[r2,0x3]               ; 080F33E6
and   r1,r0                     ; 080F33E8
mov   r0,0x40                   ; 080F33EA
orr   r1,r0                     ; 080F33EC
strb  r1,[r2,0x3]               ; 080F33EE
ldr   r2,[r5]                   ; 080F33F0
ldrb  r0,[r2,0x5]               ; 080F33F2
mov   r1,0xC                    ; 080F33F4
orr   r0,r1                     ; 080F33F6
strb  r0,[r2,0x5]               ; 080F33F8
ldr   r0,[r5]                   ; 080F33FA
add   r0,0x8                    ; 080F33FC
str   r0,[r5]                   ; 080F33FE
add   r0,r6,0x1                 ; 080F3400
lsl   r0,r0,0x10                ; 080F3402
lsr   r6,r0,0x10                ; 080F3404
@@Code080F3406:
add   r0,r7,0x1                 ; 080F3406
lsl   r0,r0,0x10                ; 080F3408
lsr   r7,r0,0x10                ; 080F340A
cmp   r7,0x3                    ; 080F340C
bls   @@Code080F3374            ; 080F340E
mov   r3,r8                     ; 080F3410
lsl   r0,r3,0x10                ; 080F3412
lsr   r0,r0,0x10                ; 080F3414
cmp   r0,0x5                    ; 080F3416
bls   @@Code080F336A            ; 080F3418
lsl   r1,r6,0x2                 ; 080F341A
ldr   r4,=0x03002200            ; 080F341C
ldr   r2,=0x47D0                ; 080F341E
add   r0,r4,r2                  ; 080F3420
strh  r1,[r0]                   ; 080F3422
pop   {r3-r5}                   ; 080F3424
mov   r8,r3                     ; 080F3426
mov   r9,r4                     ; 080F3428
mov   r10,r5                    ; 080F342A
pop   {r4-r7}                   ; 080F342C
pop   {r0}                      ; 080F342E
bx    r0                        ; 080F3430
.pool                           ; 080F3432

Sub080F3464:
push  {r4-r7,lr}                ; 080F3464
mov   r7,r10                    ; 080F3466
mov   r6,r9                     ; 080F3468
mov   r5,r8                     ; 080F346A
push  {r5-r7}                   ; 080F346C
mov   r12,r0                    ; 080F346E
ldr   r2,=0x03002200            ; 080F3470
ldr   r1,=0x47D0                ; 080F3472
add   r0,r2,r1                  ; 080F3474
ldrh  r0,[r0]                   ; 080F3476
lsr   r7,r0,0x2                 ; 080F3478
ldr   r3,=0x030021B0            ; 080F347A
lsl   r0,r7,0x3                 ; 080F347C
mov   r4,0xE0                   ; 080F347E
lsl   r4,r4,0x6                 ; 080F3480
add   r1,r2,r4                  ; 080F3482
add   r0,r0,r1                  ; 080F3484
str   r0,[r3]                   ; 080F3486
mov   r6,0x0                    ; 080F3488
mov   r9,r2                     ; 080F348A
mov   r5,r3                     ; 080F348C
ldr   r0,=0x47E6                ; 080F348E
add   r0,r9                     ; 080F3490
mov   r10,r0                    ; 080F3492
mov   r1,0x3F                   ; 080F3494
mov   r8,r1                     ; 080F3496
@@Code080F3498:
mov   r0,r12                    ; 080F3498
add   r0,0x78                   ; 080F349A
add   r0,r0,r6                  ; 080F349C
ldrb  r4,[r0]                   ; 080F349E
lsl   r2,r6,0x1                 ; 080F34A0
mov   r0,r12                    ; 080F34A2
add   r0,0x6C                   ; 080F34A4
add   r0,r0,r2                  ; 080F34A6
ldrh  r0,[r0]                   ; 080F34A8
ldr   r3,=0x030069EE            ; 080F34AA
ldrh  r1,[r3]                   ; 080F34AC
sub   r0,r0,r1                  ; 080F34AE
lsl   r0,r0,0x10                ; 080F34B0
lsr   r1,r0,0x10                ; 080F34B2
cmp   r1,0x9F                   ; 080F34B4
bhi   @@Code080F3532            ; 080F34B6
ldr   r0,[r5]                   ; 080F34B8
strb  r1,[r0]                   ; 080F34BA
ldr   r3,[r5]                   ; 080F34BC
mov   r0,r12                    ; 080F34BE
add   r0,0x60                   ; 080F34C0
add   r0,r0,r2                  ; 080F34C2
ldrh  r1,[r0]                   ; 080F34C4
mov   r2,r10                    ; 080F34C6
ldrh  r0,[r2]                   ; 080F34C8
sub   r1,r1,r0                  ; 080F34CA
ldr   r2,=0x01FF                ; 080F34CC
mov   r0,r2                     ; 080F34CE
and   r1,r0                     ; 080F34D0
ldrh  r2,[r3,0x2]               ; 080F34D2
ldr   r0,=0xFFFFFE00            ; 080F34D4
and   r0,r2                     ; 080F34D6
orr   r0,r1                     ; 080F34D8
strh  r0,[r3,0x2]               ; 080F34DA
ldr   r1,=Data0819718C          ; 080F34DC
lsl   r0,r4,0x1                 ; 080F34DE
add   r0,r0,r1                  ; 080F34E0
ldrh  r0,[r0]                   ; 080F34E2
ldr   r1,=0x03FF                ; 080F34E4
and   r1,r0                     ; 080F34E6
ldrh  r2,[r3,0x4]               ; 080F34E8
ldr   r0,=0xFFFFFC00            ; 080F34EA
and   r0,r2                     ; 080F34EC
orr   r0,r1                     ; 080F34EE
strh  r0,[r3,0x4]               ; 080F34F0
ldr   r0,=Data081971A0          ; 080F34F2
add   r0,r4,r0                  ; 080F34F4
ldrb  r1,[r0]                   ; 080F34F6
lsl   r1,r1,0x4                 ; 080F34F8
ldrb  r2,[r3,0x5]               ; 080F34FA
mov   r0,0xF                    ; 080F34FC
and   r0,r2                     ; 080F34FE
orr   r0,r1                     ; 080F3500
strb  r0,[r3,0x5]               ; 080F3502
ldr   r2,[r5]                   ; 080F3504
ldrb  r1,[r2,0x1]               ; 080F3506
mov   r0,r8                     ; 080F3508
and   r0,r1                     ; 080F350A
strb  r0,[r2,0x1]               ; 080F350C
ldr   r2,[r5]                   ; 080F350E
ldrb  r1,[r2,0x3]               ; 080F3510
mov   r0,r8                     ; 080F3512
and   r0,r1                     ; 080F3514
mov   r1,0x80                   ; 080F3516
orr   r0,r1                     ; 080F3518
strb  r0,[r2,0x3]               ; 080F351A
ldr   r2,[r5]                   ; 080F351C
ldrb  r0,[r2,0x5]               ; 080F351E
mov   r1,0xC                    ; 080F3520
orr   r0,r1                     ; 080F3522
strb  r0,[r2,0x5]               ; 080F3524
ldr   r0,[r5]                   ; 080F3526
add   r0,0x8                    ; 080F3528
str   r0,[r5]                   ; 080F352A
add   r0,r7,0x1                 ; 080F352C
lsl   r0,r0,0x10                ; 080F352E
lsr   r7,r0,0x10                ; 080F3530
@@Code080F3532:
add   r0,r6,0x1                 ; 080F3532
lsl   r0,r0,0x10                ; 080F3534
lsr   r6,r0,0x10                ; 080F3536
cmp   r6,0x5                    ; 080F3538
bls   @@Code080F3498            ; 080F353A
lsl   r1,r7,0x2                 ; 080F353C
ldr   r0,=0x47D0                ; 080F353E
add   r0,r9                     ; 080F3540
strh  r1,[r0]                   ; 080F3542
pop   {r3-r5}                   ; 080F3544
mov   r8,r3                     ; 080F3546
mov   r9,r4                     ; 080F3548
mov   r10,r5                    ; 080F354A
pop   {r4-r7}                   ; 080F354C
pop   {r0}                      ; 080F354E
bx    r0                        ; 080F3550
.pool                           ; 080F3552

Sub080F3580:
push  {r4-r6,lr}                ; 080F3580
ldr   r2,=CodePtrs081971D0      ; 080F3582
ldrh  r1,[r0,0x10]              ; 080F3584
lsl   r1,r1,0x2                 ; 080F3586
add   r1,r1,r2                  ; 080F3588
ldr   r1,[r1]                   ; 080F358A
bl    Sub_bx_r1                 ; 080F358C  bx r1
ldr   r5,=0x03002200            ; 080F3590
ldr   r0,=0x4A50                ; 080F3592
add   r6,r5,r0                  ; 080F3594
ldr   r4,[r6]                   ; 080F3596
mov   r0,r4                     ; 080F3598
bl    Sub080F333C               ; 080F359A
mov   r0,r4                     ; 080F359E
bl    Sub080F3464               ; 080F35A0
ldr   r1,=0x4905                ; 080F35A4
add   r0,r5,r1                  ; 080F35A6
ldrb  r0,[r0]                   ; 080F35A8
cmp   r0,0x1D                   ; 080F35AA
beq   @@Code080F35BA            ; 080F35AC
mov   r0,r5                     ; 080F35AE
mov   r1,r4                     ; 080F35B0
bl    DynamicDeallocate         ; 080F35B2
mov   r0,0x0                    ; 080F35B6
str   r0,[r6]                   ; 080F35B8
@@Code080F35BA:
pop   {r4-r6}                   ; 080F35BA
pop   {r0}                      ; 080F35BC
bx    r0                        ; 080F35BE
.pool                           ; 080F35C0

Sub080F35D0:
push  {r4-r6,lr}                ; 080F35D0
mov   r3,r0                     ; 080F35D2
mov   r0,0x0                    ; 080F35D4
strh  r0,[r3,0x30]              ; 080F35D6
strh  r0,[r3,0x38]              ; 080F35D8
strh  r0,[r3,0x32]              ; 080F35DA
mov   r0,r3                     ; 080F35DC
add   r0,0x5A                   ; 080F35DE
mov   r1,0xFF                   ; 080F35E0
strh  r1,[r0]                   ; 080F35E2
add   r0,0x2                    ; 080F35E4
strh  r1,[r0]                   ; 080F35E6
mov   r1,0xC                    ; 080F35E8
ldr   r5,=Data0819724A          ; 080F35EA
ldr   r6,=Data08197258          ; 080F35EC
mov   r2,r3                     ; 080F35EE
add   r2,0x70                   ; 080F35F0
mov   r4,0x0                    ; 080F35F2
@@Code080F35F4:
add   r0,r2,r1                  ; 080F35F4
strb  r4,[r0]                   ; 080F35F6
add   r0,r1,0x1                 ; 080F35F8
add   r0,r2,r0                  ; 080F35FA
strb  r4,[r0]                   ; 080F35FC
sub   r0,r1,0x2                 ; 080F35FE
lsl   r0,r0,0x10                ; 080F3600
lsr   r1,r0,0x10                ; 080F3602
cmp   r0,0x0                    ; 080F3604
bge   @@Code080F35F4            ; 080F3606
ldrb  r2,[r5]                   ; 080F3608
mov   r0,r3                     ; 080F360A
add   r0,0x80                   ; 080F360C
mov   r1,0x0                    ; 080F360E
strb  r2,[r0]                   ; 080F3610
ldrb  r0,[r6]                   ; 080F3612
mov   r2,r3                     ; 080F3614
add   r2,0x81                   ; 080F3616
strb  r0,[r2]                   ; 080F3618
mov   r0,r3                     ; 080F361A
add   r0,0x82                   ; 080F361C
strb  r1,[r0]                   ; 080F361E
add   r0,0x44                   ; 080F3620
strb  r1,[r0]                   ; 080F3622
add   r0,0x1                    ; 080F3624
strb  r1,[r0]                   ; 080F3626
add   r0,0xF                    ; 080F3628
strb  r1,[r0]                   ; 080F362A
pop   {r4-r6}                   ; 080F362C
pop   {r0}                      ; 080F362E
bx    r0                        ; 080F3630
.pool                           ; 080F3632

Sub080F363C:
push  {r4,lr}                   ; 080F363C
mov   r4,r0                     ; 080F363E
ldrh  r0,[r4,0x12]              ; 080F3640
cmp   r0,0x0                    ; 080F3642
beq   @@Code080F364C            ; 080F3644
sub   r0,0x1                    ; 080F3646
strh  r0,[r4,0x12]              ; 080F3648
b     @@Code080F368C            ; 080F364A
@@Code080F364C:
mov   r1,r4                     ; 080F364C
add   r1,0xC6                   ; 080F364E
ldrb  r0,[r1]                   ; 080F3650
cmp   r0,0xE                    ; 080F3652
bne   @@Code080F3662            ; 080F3654
mov   r0,r4                     ; 080F3656
bl    Sub080F35D0               ; 080F3658
mov   r0,0x9                    ; 080F365C
strh  r0,[r4,0x10]              ; 080F365E
b     @@Code080F368C            ; 080F3660
@@Code080F3662:
ldrb  r1,[r1]                   ; 080F3662
mov   r0,r4                     ; 080F3664
add   r0,0x5E                   ; 080F3666
mov   r2,0x0                    ; 080F3668
strh  r1,[r0]                   ; 080F366A
add   r0,0x6A                   ; 080F366C
add   r0,r0,r1                  ; 080F366E
ldrb  r0,[r0]                   ; 080F3670
mov   r1,r4                     ; 080F3672
add   r1,0x5A                   ; 080F3674
strh  r0,[r1]                   ; 080F3676
mov   r0,r4                     ; 080F3678
add   r0,0xD6                   ; 080F367A
strb  r2,[r0]                   ; 080F367C
mov   r0,r4                     ; 080F367E
bl    Sub080F3A2C               ; 080F3680
ldr   r1,=0x03006258            ; 080F3684
mov   r0,0x4B                   ; 080F3686
bl    PlayYISound               ; 080F3688
@@Code080F368C:
pop   {r4}                      ; 080F368C
pop   {r0}                      ; 080F368E
bx    r0                        ; 080F3690
.pool                           ; 080F3692

Sub080F3698:
push  {r4-r7,lr}                ; 080F3698
mov   r7,r9                     ; 080F369A
mov   r6,r8                     ; 080F369C
push  {r6-r7}                   ; 080F369E
mov   r12,r0                    ; 080F36A0
mov   r5,0x0                    ; 080F36A2
ldrh  r0,[r0,0x10]              ; 080F36A4
cmp   r0,0x14                   ; 080F36A6
bne   @@Code080F36AC            ; 080F36A8
mov   r5,0x1                    ; 080F36AA
@@Code080F36AC:
ldr   r0,=Data08197204          ; 080F36AC
lsl   r1,r5,0x1                 ; 080F36AE
add   r1,r1,r0                  ; 080F36B0
mov   r2,r12                    ; 080F36B2
ldrh  r0,[r2,0x1E]              ; 080F36B4
ldrh  r1,[r1]                   ; 080F36B6
sub   r0,r0,r1                  ; 080F36B8
strh  r0,[r2,0x1E]              ; 080F36BA
lsl   r0,r0,0x10                ; 080F36BC
cmp   r0,0x0                    ; 080F36BE
blt   @@Code080F3708            ; 080F36C0
mov   r3,r12                    ; 080F36C2
add   r3,0x7F                   ; 080F36C4
ldrb  r1,[r3]                   ; 080F36C6
ldr   r0,=0x03007240            ; 080F36C8  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080F36CA
ldr   r0,=Data08196D08          ; 080F36CC
add   r0,r1,r0                  ; 080F36CE
ldrb  r1,[r0]                   ; 080F36D0
ldr   r4,=0x29D2                ; 080F36D2
add   r0,r2,r4                  ; 080F36D4
strh  r1,[r0]                   ; 080F36D6
ldrb  r4,[r3]                   ; 080F36D8
ldr   r1,=Data08196CF0          ; 080F36DA
lsl   r0,r4,0x1                 ; 080F36DC
add   r0,r0,r1                  ; 080F36DE
ldrh  r0,[r0]                   ; 080F36E0
ldr   r1,=0x29DE                ; 080F36E2
add   r2,r2,r1                  ; 080F36E4
strh  r0,[r2]                   ; 080F36E6
mov   r0,r12                    ; 080F36E8
bl    Sub080F41D8               ; 080F36EA
b     @@Code080F37CE            ; 080F36EE
.pool                           ; 080F36F0

@@Code080F3708:
mov   r2,r12                    ; 080F3708
add   r2,0xC6                   ; 080F370A
ldrb  r5,[r2]                   ; 080F370C
ldr   r1,=Data08196E38          ; 080F370E
lsl   r0,r5,0x1                 ; 080F3710
add   r0,r0,r1                  ; 080F3712
ldrh  r4,[r0]                   ; 080F3714
mov   r7,0x3                    ; 080F3716
ldr   r0,=0x02011000            ; 080F3718
ldrh  r5,[r0]                   ; 080F371A
mov   r0,r12                    ; 080F371C
add   r0,0x7F                   ; 080F371E
ldrb  r1,[r0]                   ; 080F3720
lsl   r0,r1,0x3                 ; 080F3722
add   r3,r0,r1                  ; 080F3724
mov   r9,r2                     ; 080F3726
ldr   r6,=Data08196D14          ; 080F3728
@@Code080F372A:
lsl   r2,r5,0x1                 ; 080F372A
ldr   r0,=0x02011002            ; 080F372C
mov   r8,r0                     ; 080F372E
add   r0,r2,r0                  ; 080F3730
strh  r4,[r0]                   ; 080F3732
ldr   r0,=0x02011004            ; 080F3734
add   r1,r2,r0                  ; 080F3736
mov   r0,0x3                    ; 080F3738
strh  r0,[r1]                   ; 080F373A
ldr   r0,=0x02011006            ; 080F373C
add   r1,r2,r0                  ; 080F373E
lsl   r0,r3,0x1                 ; 080F3740
add   r0,r0,r6                  ; 080F3742
ldrh  r0,[r0]                   ; 080F3744
strh  r0,[r1]                   ; 080F3746
ldr   r0,=0x02011008            ; 080F3748
add   r1,r2,r0                  ; 080F374A
add   r0,r3,0x1                 ; 080F374C
lsl   r0,r0,0x1                 ; 080F374E
add   r0,r0,r6                  ; 080F3750
ldrh  r0,[r0]                   ; 080F3752
strh  r0,[r1]                   ; 080F3754
ldr   r1,=0x0201100A            ; 080F3756
add   r2,r2,r1                  ; 080F3758
add   r0,r3,0x2                 ; 080F375A
lsl   r0,r0,0x1                 ; 080F375C
add   r0,r0,r6                  ; 080F375E
ldrh  r0,[r0]                   ; 080F3760
strh  r0,[r2]                   ; 080F3762
add   r0,r3,0x3                 ; 080F3764
lsl   r0,r0,0x10                ; 080F3766
lsr   r3,r0,0x10                ; 080F3768
add   r0,r5,0x5                 ; 080F376A
lsl   r0,r0,0x10                ; 080F376C
lsr   r5,r0,0x10                ; 080F376E
mov   r0,r4                     ; 080F3770
add   r0,0x40                   ; 080F3772
lsl   r0,r0,0x10                ; 080F3774
lsr   r4,r0,0x10                ; 080F3776
sub   r0,r7,0x1                 ; 080F3778
lsl   r0,r0,0x10                ; 080F377A
lsr   r7,r0,0x10                ; 080F377C
cmp   r7,0x0                    ; 080F377E
bne   @@Code080F372A            ; 080F3780
lsl   r0,r5,0x1                 ; 080F3782
add   r0,r8                     ; 080F3784
ldr   r2,=0xFFFF                ; 080F3786
mov   r1,r2                     ; 080F3788
strh  r1,[r0]                   ; 080F378A
ldr   r0,=0x02011000            ; 080F378C
strh  r5,[r0]                   ; 080F378E
mov   r4,r12                    ; 080F3790
ldrh  r0,[r4,0x10]              ; 080F3792
cmp   r0,0x14                   ; 080F3794
bne   @@Code080F37C8            ; 080F3796
mov   r1,r9                     ; 080F3798
ldrb  r0,[r1]                   ; 080F379A
add   r0,0x1                    ; 080F379C
strb  r0,[r1]                   ; 080F379E
mov   r1,0x8                    ; 080F37A0
b     @@Code080F37CA            ; 080F37A2
.pool                           ; 080F37A4

@@Code080F37C8:
mov   r1,0x9                    ; 080F37C8
@@Code080F37CA:
mov   r2,r12                    ; 080F37CA
strh  r1,[r2,0x10]              ; 080F37CC
@@Code080F37CE:
pop   {r3-r4}                   ; 080F37CE
mov   r8,r3                     ; 080F37D0
mov   r9,r4                     ; 080F37D2
pop   {r4-r7}                   ; 080F37D4
pop   {r0}                      ; 080F37D6
bx    r0                        ; 080F37D8
.pool                           ; 080F37DA

Sub080F37DC:
push  {lr}                      ; 080F37DC
mov   r3,r0                     ; 080F37DE
mov   r0,0x0                    ; 080F37E0
ldrh  r2,[r3,0x10]              ; 080F37E2
cmp   r2,0x13                   ; 080F37E4
bne   @@Code080F37EA            ; 080F37E6
mov   r0,0x1                    ; 080F37E8
@@Code080F37EA:
ldr   r1,=Data08197204          ; 080F37EA
lsl   r0,r0,0x1                 ; 080F37EC
add   r0,r0,r1                  ; 080F37EE
ldrh  r0,[r0]                   ; 080F37F0
ldrh  r1,[r3,0x1E]              ; 080F37F2
add   r0,r0,r1                  ; 080F37F4
strh  r0,[r3,0x1E]              ; 080F37F6
lsl   r0,r0,0x10                ; 080F37F8
lsr   r0,r0,0x10                ; 080F37FA
cmp   r0,0xFF                   ; 080F37FC
bls   @@Code080F380C            ; 080F37FE
add   r0,r2,0x1                 ; 080F3800
strh  r0,[r3,0x10]              ; 080F3802
b     @@Code080F3828            ; 080F3804
.pool                           ; 080F3806

@@Code080F380C:
ldr   r0,=0x03007240            ; 080F380C  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080F380E
ldr   r0,=0x29D2                ; 080F3810
add   r2,r1,r0                  ; 080F3812
mov   r0,0xB                    ; 080F3814
strh  r0,[r2]                   ; 080F3816
ldr   r0,=0x29DE                ; 080F3818
add   r1,r1,r0                  ; 080F381A
mov   r0,0xC1                   ; 080F381C
lsl   r0,r0,0x2                 ; 080F381E
strh  r0,[r1]                   ; 080F3820
mov   r0,r3                     ; 080F3822
bl    Sub080F41D8               ; 080F3824
@@Code080F3828:
pop   {r0}                      ; 080F3828
bx    r0                        ; 080F382A
.pool                           ; 080F382C

Sub080F3838:
push  {r4-r7,lr}                ; 080F3838
mov   r7,r8                     ; 080F383A
push  {r7}                      ; 080F383C
mov   r12,r0                    ; 080F383E
ldrh  r1,[r0,0x10]              ; 080F3840
mov   r0,0x12                   ; 080F3842
eor   r1,r0                     ; 080F3844
neg   r0,r1                     ; 080F3846
orr   r0,r1                     ; 080F3848
lsr   r3,r0,0x1F                ; 080F384A
ldr   r0,=Data08197208          ; 080F384C
lsl   r1,r3,0x1                 ; 080F384E
add   r1,r1,r0                  ; 080F3850
mov   r2,r12                    ; 080F3852
ldrh  r0,[r2,0x1E]              ; 080F3854
ldrh  r1,[r1]                   ; 080F3856
sub   r0,r0,r1                  ; 080F3858
strh  r0,[r2,0x1E]              ; 080F385A
lsl   r0,r0,0x10                ; 080F385C
cmp   r0,0x0                    ; 080F385E
blt   @@Code080F3890            ; 080F3860
ldr   r0,=0x03007240            ; 080F3862  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080F3864
ldr   r0,=0x29D2                ; 080F3866
add   r2,r1,r0                  ; 080F3868
mov   r0,0xB                    ; 080F386A
strh  r0,[r2]                   ; 080F386C
ldr   r2,=0x29DE                ; 080F386E
add   r1,r1,r2                  ; 080F3870
mov   r0,0xC1                   ; 080F3872
lsl   r0,r0,0x2                 ; 080F3874
strh  r0,[r1]                   ; 080F3876
mov   r0,r12                    ; 080F3878
bl    Sub080F39E0               ; 080F387A
b     @@Code080F3958            ; 080F387E
.pool                           ; 080F3880

@@Code080F3890:
mov   r2,r12                    ; 080F3890
add   r2,0xD6                   ; 080F3892
ldrb  r3,[r2]                   ; 080F3894
lsl   r1,r3,0x1                 ; 080F3896
mov   r0,r12                    ; 080F3898
add   r0,0x5E                   ; 080F389A
add   r0,r0,r1                  ; 080F389C
ldrb  r3,[r0]                   ; 080F389E
ldr   r4,=0x3199                ; 080F38A0
ldr   r1,=Data08196E38          ; 080F38A2
lsl   r0,r3,0x1                 ; 080F38A4
add   r0,r0,r1                  ; 080F38A6
ldrh  r5,[r0]                   ; 080F38A8
ldr   r0,=0x02011000            ; 080F38AA
ldrh  r3,[r0]                   ; 080F38AC
mov   r6,0x3                    ; 080F38AE
mov   r8,r2                     ; 080F38B0
@@Code080F38B2:
lsl   r1,r3,0x1                 ; 080F38B2
ldr   r7,=0x02011002            ; 080F38B4
add   r0,r1,r7                  ; 080F38B6
strh  r5,[r0]                   ; 080F38B8
ldr   r0,=0x02011004            ; 080F38BA
add   r2,r1,r0                  ; 080F38BC
mov   r0,0x3                    ; 080F38BE
strh  r0,[r2]                   ; 080F38C0
ldr   r2,=0x02011006            ; 080F38C2
add   r0,r1,r2                  ; 080F38C4
strh  r4,[r0]                   ; 080F38C6
ldr   r0,=0x02011008            ; 080F38C8
add   r2,r1,r0                  ; 080F38CA
add   r0,r4,0x1                 ; 080F38CC
strh  r0,[r2]                   ; 080F38CE
ldr   r2,=0x0201100A            ; 080F38D0
add   r1,r1,r2                  ; 080F38D2
add   r0,r4,0x2                 ; 080F38D4
strh  r0,[r1]                   ; 080F38D6
add   r0,r3,0x5                 ; 080F38D8
lsl   r0,r0,0x10                ; 080F38DA
lsr   r3,r0,0x10                ; 080F38DC
mov   r0,r5                     ; 080F38DE
add   r0,0x40                   ; 080F38E0
lsl   r0,r0,0x10                ; 080F38E2
lsr   r5,r0,0x10                ; 080F38E4
add   r0,r4,0x3                 ; 080F38E6
lsl   r0,r0,0x10                ; 080F38E8
lsr   r4,r0,0x10                ; 080F38EA
sub   r0,r6,0x1                 ; 080F38EC
lsl   r0,r0,0x10                ; 080F38EE
lsr   r6,r0,0x10                ; 080F38F0
cmp   r6,0x0                    ; 080F38F2
bne   @@Code080F38B2            ; 080F38F4
lsl   r0,r3,0x1                 ; 080F38F6
add   r0,r0,r7                  ; 080F38F8
ldr   r2,=0xFFFF                ; 080F38FA
mov   r1,r2                     ; 080F38FC
strh  r1,[r0]                   ; 080F38FE
ldr   r0,=0x02011000            ; 080F3900
strh  r3,[r0]                   ; 080F3902
mov   r1,r12                    ; 080F3904
ldrh  r0,[r1,0x10]              ; 080F3906
cmp   r0,0x12                   ; 080F3908
bne   @@Code080F3948            ; 080F390A
mov   r2,r8                     ; 080F390C
ldrb  r3,[r2]                   ; 080F390E
ldr   r0,=Data0819720C          ; 080F3910
lsl   r1,r3,0x1                 ; 080F3912
add   r1,r1,r0                  ; 080F3914
ldrh  r0,[r1]                   ; 080F3916
mov   r1,r12                    ; 080F3918
strh  r0,[r1,0x12]              ; 080F391A
mov   r0,0xF                    ; 080F391C
b     @@Code080F3954            ; 080F391E
.pool                           ; 080F3920

@@Code080F3948:
mov   r1,r12                    ; 080F3948
add   r1,0xC6                   ; 080F394A
ldrb  r0,[r1]                   ; 080F394C
add   r0,0x1                    ; 080F394E
strb  r0,[r1]                   ; 080F3950
mov   r0,0x15                   ; 080F3952
@@Code080F3954:
mov   r2,r12                    ; 080F3954
strh  r0,[r2,0x10]              ; 080F3956
@@Code080F3958:
pop   {r3}                      ; 080F3958
mov   r8,r3                     ; 080F395A
pop   {r4-r7}                   ; 080F395C
pop   {r0}                      ; 080F395E
bx    r0                        ; 080F3960
.pool                           ; 080F3962

Sub080F3964:
push  {r4-r5,lr}                ; 080F3964
mov   r4,r0                     ; 080F3966
ldrh  r2,[r4,0x10]              ; 080F3968
mov   r1,0x11                   ; 080F396A
eor   r1,r2                     ; 080F396C
neg   r0,r1                     ; 080F396E
orr   r0,r1                     ; 080F3970
lsr   r3,r0,0x1F                ; 080F3972
ldr   r1,=Data08197208          ; 080F3974
lsl   r0,r3,0x1                 ; 080F3976
add   r0,r0,r1                  ; 080F3978
ldrh  r0,[r0]                   ; 080F397A
ldrh  r1,[r4,0x1E]              ; 080F397C
add   r0,r0,r1                  ; 080F397E
strh  r0,[r4,0x1E]              ; 080F3980
lsl   r0,r0,0x10                ; 080F3982
lsr   r0,r0,0x10                ; 080F3984
cmp   r0,0xFF                   ; 080F3986
bls   @@Code080F3994            ; 080F3988
add   r0,r2,0x1                 ; 080F398A
strh  r0,[r4,0x10]              ; 080F398C
b     @@Code080F39C6            ; 080F398E
.pool                           ; 080F3990

@@Code080F3994:
mov   r0,r4                     ; 080F3994
add   r0,0xD6                   ; 080F3996
ldrb  r3,[r0]                   ; 080F3998
lsl   r1,r3,0x1                 ; 080F399A
sub   r0,0x7C                   ; 080F399C
add   r0,r0,r1                  ; 080F399E
ldrb  r3,[r0]                   ; 080F39A0
ldr   r0,=0x03007240            ; 080F39A2  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080F39A4
ldr   r0,=Data08196D08          ; 080F39A6
add   r0,r3,r0                  ; 080F39A8
ldrb  r1,[r0]                   ; 080F39AA
ldr   r5,=0x29D2                ; 080F39AC
add   r0,r2,r5                  ; 080F39AE
strh  r1,[r0]                   ; 080F39B0
ldr   r1,=Data08196CF0          ; 080F39B2
lsl   r0,r3,0x1                 ; 080F39B4
add   r0,r0,r1                  ; 080F39B6
ldrh  r0,[r0]                   ; 080F39B8
ldr   r1,=0x29DE                ; 080F39BA
add   r2,r2,r1                  ; 080F39BC
strh  r0,[r2]                   ; 080F39BE
mov   r0,r4                     ; 080F39C0
bl    Sub080F39E0               ; 080F39C2
@@Code080F39C6:
pop   {r4-r5}                   ; 080F39C6
pop   {r0}                      ; 080F39C8
bx    r0                        ; 080F39CA
.pool                           ; 080F39CC

Sub080F39E0:
push  {r4-r5,lr}                ; 080F39E0
mov   r1,r0                     ; 080F39E2
add   r1,0xD6                   ; 080F39E4
ldrb  r2,[r1]                   ; 080F39E6
lsl   r2,r2,0x1                 ; 080F39E8
sub   r1,0x78                   ; 080F39EA
add   r1,r1,r2                  ; 080F39EC
ldrb  r2,[r1]                   ; 080F39EE
ldr   r1,=0x03007240            ; 080F39F0  Normal gameplay IWRAM (0300220C)
ldr   r3,[r1]                   ; 080F39F2
ldr   r1,=Data08197290          ; 080F39F4
add   r1,r2,r1                  ; 080F39F6
ldrb  r4,[r1]                   ; 080F39F8
ldr   r5,=0x29D6                ; 080F39FA
add   r1,r3,r5                  ; 080F39FC
strh  r4,[r1]                   ; 080F39FE
ldr   r1,=Data0819729E          ; 080F3A00
add   r2,r2,r1                  ; 080F3A02
ldrb  r1,[r2]                   ; 080F3A04
ldr   r2,=0x29DA                ; 080F3A06
add   r3,r3,r2                  ; 080F3A08
strh  r1,[r3]                   ; 080F3A0A
bl    Sub080F12DC               ; 080F3A0C
pop   {r4-r5}                   ; 080F3A10
pop   {r0}                      ; 080F3A12
bx    r0                        ; 080F3A14
.pool                           ; 080F3A16

Sub080F3A2C:
push  {r4-r7,lr}                ; 080F3A2C
mov   r7,r10                    ; 080F3A2E
mov   r6,r9                     ; 080F3A30
mov   r5,r8                     ; 080F3A32
push  {r5-r7}                   ; 080F3A34
mov   r5,r0                     ; 080F3A36
add   r0,0xD6                   ; 080F3A38
ldrb  r3,[r0]                   ; 080F3A3A
lsl   r1,r3,0x1                 ; 080F3A3C
sub   r0,0x78                   ; 080F3A3E
add   r0,r0,r1                  ; 080F3A40
ldrh  r3,[r0]                   ; 080F3A42
ldr   r1,=Data08196E38          ; 080F3A44
lsl   r0,r3,0x1                 ; 080F3A46
add   r0,r0,r1                  ; 080F3A48
ldrh  r4,[r0]                   ; 080F3A4A
ldr   r0,=0x02011000            ; 080F3A4C
ldrh  r3,[r0]                   ; 080F3A4E
mov   r7,0x3                    ; 080F3A50
ldr   r0,=0x03007240            ; 080F3A52  Normal gameplay IWRAM (0300220C)
mov   r9,r0                     ; 080F3A54
ldr   r2,=Data08196D08          ; 080F3A56
mov   r10,r2                    ; 080F3A58
ldr   r6,=Data08196C44          ; 080F3A5A
ldrh  r0,[r6,0x4]               ; 080F3A5C
mov   r8,r0                     ; 080F3A5E
@@Code080F3A60:
lsl   r1,r3,0x1                 ; 080F3A60
ldr   r2,=0x02011002            ; 080F3A62
mov   r12,r2                    ; 080F3A64
add   r0,r1,r2                  ; 080F3A66
strh  r4,[r0]                   ; 080F3A68
ldr   r0,=0x02011004            ; 080F3A6A
add   r2,r1,r0                  ; 080F3A6C
mov   r0,0x3                    ; 080F3A6E
strh  r0,[r2]                   ; 080F3A70
ldr   r0,=0x02011006            ; 080F3A72
add   r2,r1,r0                  ; 080F3A74
ldrh  r0,[r6]                   ; 080F3A76
strh  r0,[r2]                   ; 080F3A78
ldr   r0,=0x02011008            ; 080F3A7A
add   r2,r1,r0                  ; 080F3A7C
ldrh  r0,[r6,0x2]               ; 080F3A7E
strh  r0,[r2]                   ; 080F3A80
ldr   r2,=0x0201100A            ; 080F3A82
add   r1,r1,r2                  ; 080F3A84
mov   r0,r8                     ; 080F3A86
strh  r0,[r1]                   ; 080F3A88
add   r0,r3,0x5                 ; 080F3A8A
lsl   r0,r0,0x10                ; 080F3A8C
lsr   r3,r0,0x10                ; 080F3A8E
mov   r0,r4                     ; 080F3A90
add   r0,0x40                   ; 080F3A92
lsl   r0,r0,0x10                ; 080F3A94
lsr   r4,r0,0x10                ; 080F3A96
sub   r0,r7,0x1                 ; 080F3A98
lsl   r0,r0,0x10                ; 080F3A9A
lsr   r7,r0,0x10                ; 080F3A9C
cmp   r7,0x0                    ; 080F3A9E
bne   @@Code080F3A60            ; 080F3AA0
lsl   r0,r3,0x1                 ; 080F3AA2
add   r0,r12                    ; 080F3AA4
ldr   r2,=0xFFFF                ; 080F3AA6
mov   r1,r2                     ; 080F3AA8
strh  r1,[r0]                   ; 080F3AAA
ldr   r0,=0x02011000            ; 080F3AAC
strh  r3,[r0]                   ; 080F3AAE
mov   r0,r5                     ; 080F3AB0
add   r0,0xD6                   ; 080F3AB2
ldrb  r3,[r0]                   ; 080F3AB4
lsl   r1,r3,0x1                 ; 080F3AB6
sub   r0,0x7C                   ; 080F3AB8
add   r0,r0,r1                  ; 080F3ABA
ldrb  r3,[r0]                   ; 080F3ABC
mov   r4,r9                     ; 080F3ABE
ldr   r1,[r4]                   ; 080F3AC0
mov   r2,r10                    ; 080F3AC2
add   r0,r3,r2                  ; 080F3AC4
ldrb  r2,[r0]                   ; 080F3AC6
ldr   r4,=0x29D2                ; 080F3AC8
add   r0,r1,r4                  ; 080F3ACA
strh  r2,[r0]                   ; 080F3ACC
lsl   r0,r3,0x1                 ; 080F3ACE
ldr   r2,=Data08196CF0          ; 080F3AD0
add   r0,r0,r2                  ; 080F3AD2
ldrh  r0,[r0]                   ; 080F3AD4
add   r4,0xC                    ; 080F3AD6
add   r1,r1,r4                  ; 080F3AD8
strh  r0,[r1]                   ; 080F3ADA
mov   r0,r5                     ; 080F3ADC
bl    Sub080F39E0               ; 080F3ADE
strh  r7,[r5,0x1E]              ; 080F3AE2
ldrh  r0,[r5,0x10]              ; 080F3AE4
add   r0,0x1                    ; 080F3AE6
strh  r0,[r5,0x10]              ; 080F3AE8
pop   {r3-r5}                   ; 080F3AEA
mov   r8,r3                     ; 080F3AEC
mov   r9,r4                     ; 080F3AEE
mov   r10,r5                    ; 080F3AF0
pop   {r4-r7}                   ; 080F3AF2
pop   {r0}                      ; 080F3AF4
bx    r0                        ; 080F3AF6
.pool                           ; 080F3AF8

Sub080F3B2C:
push  {r4,lr}                   ; 080F3B2C
mov   r4,r0                     ; 080F3B2E
ldrh  r0,[r4,0x12]              ; 080F3B30
mov   r2,r0                     ; 080F3B32
cmp   r2,0x0                    ; 080F3B34
beq   @@Code080F3B3E            ; 080F3B36
sub   r0,0x1                    ; 080F3B38
strh  r0,[r4,0x12]              ; 080F3B3A
b     @@Code080F3B72            ; 080F3B3C
@@Code080F3B3E:
mov   r1,r4                     ; 080F3B3E
add   r1,0xD6                   ; 080F3B40
ldrb  r0,[r1]                   ; 080F3B42
sub   r0,0x1                    ; 080F3B44
strb  r0,[r1]                   ; 080F3B46
lsl   r0,r0,0x18                ; 080F3B48
cmp   r0,0x0                    ; 080F3B4A
bge   @@Code080F3B64            ; 080F3B4C
strb  r2,[r1]                   ; 080F3B4E
strh  r2,[r4,0x1C]              ; 080F3B50
ldr   r0,=Data08196BA0          ; 080F3B52
ldrh  r0,[r0]                   ; 080F3B54
bl    Sub080EFDB8               ; 080F3B56
mov   r0,0x9                    ; 080F3B5A
b     @@Code080F3B70            ; 080F3B5C
.pool                           ; 080F3B5E

@@Code080F3B64:
ldr   r1,=0x03006258            ; 080F3B64
mov   r0,0x4B                   ; 080F3B66
bl    PlayYISound               ; 080F3B68
ldrh  r0,[r4,0x10]              ; 080F3B6C
add   r0,0x1                    ; 080F3B6E
@@Code080F3B70:
strh  r0,[r4,0x10]              ; 080F3B70
@@Code080F3B72:
pop   {r4}                      ; 080F3B72
pop   {r0}                      ; 080F3B74
bx    r0                        ; 080F3B76
.pool                           ; 080F3B78

Sub080F3B7C:
push  {r4-r5,lr}                ; 080F3B7C
mov   r4,r0                     ; 080F3B7E
ldrh  r0,[r4,0x12]              ; 080F3B80
mov   r3,r0                     ; 080F3B82
cmp   r3,0x0                    ; 080F3B84
beq   @@Code080F3B8E            ; 080F3B86
sub   r0,0x1                    ; 080F3B88
strh  r0,[r4,0x12]              ; 080F3B8A
b     @@Code080F3C02            ; 080F3B8C
@@Code080F3B8E:
ldrh  r0,[r4,0x32]              ; 080F3B8E
cmp   r0,0x0                    ; 080F3B90
beq   @@Code080F3BD4            ; 080F3B92
sub   r0,0x1                    ; 080F3B94
strh  r0,[r4,0x32]              ; 080F3B96
ldr   r5,=0x03002200            ; 080F3B98
ldr   r0,=0x407E                ; 080F3B9A
add   r1,r5,r0                  ; 080F3B9C
ldrh  r2,[r1]                   ; 080F3B9E
ldr   r0,=0x03E6                ; 080F3BA0
cmp   r2,r0                     ; 080F3BA2
bhi   @@Code080F3BD0            ; 080F3BA4
add   r0,r2,0x1                 ; 080F3BA6
strh  r0,[r1]                   ; 080F3BA8
ldr   r0,=0x4058                ; 080F3BAA
add   r1,r5,r0                  ; 080F3BAC
mov   r0,0x6E                   ; 080F3BAE
bl    PlayYISound               ; 080F3BB0
bl    Sub080EF708               ; 080F3BB4
mov   r0,0x30                   ; 080F3BB8
strh  r0,[r4,0x12]              ; 080F3BBA
b     @@Code080F3C02            ; 080F3BBC
.pool                           ; 080F3BBE

@@Code080F3BD0:
strh  r3,[r4,0x32]              ; 080F3BD0
b     @@Code080F3C02            ; 080F3BD2
@@Code080F3BD4:
mov   r0,r4                     ; 080F3BD4
add   r0,0x7F                   ; 080F3BD6
ldrb  r0,[r0]                   ; 080F3BD8
cmp   r0,0x4                    ; 080F3BDA
bne   @@Code080F3BE6            ; 080F3BDC
mov   r0,0x80                   ; 080F3BDE
strh  r0,[r4,0x12]              ; 080F3BE0
mov   r0,0xD                    ; 080F3BE2
b     @@Code080F3C00            ; 080F3BE4
@@Code080F3BE6:
ldr   r0,=0x03006D80            ; 080F3BE6
ldrh  r0,[r0,0x3E]              ; 080F3BE8
cmp   r0,0x0                    ; 080F3BEA
bne   @@Code080F3C02            ; 080F3BEC
mov   r1,r4                     ; 080F3BEE
add   r1,0xD6                   ; 080F3BF0
strb  r0,[r1]                   ; 080F3BF2
strh  r0,[r4,0x1C]              ; 080F3BF4
ldr   r0,=Data08196BA0          ; 080F3BF6
ldrh  r0,[r0]                   ; 080F3BF8
bl    Sub080EFDB8               ; 080F3BFA
mov   r0,0x9                    ; 080F3BFE
@@Code080F3C00:
strh  r0,[r4,0x10]              ; 080F3C00
@@Code080F3C02:
pop   {r4-r5}                   ; 080F3C02
pop   {r0}                      ; 080F3C04
bx    r0                        ; 080F3C06
.pool                           ; 080F3C08

Sub080F3C10:
push  {r4,lr}                   ; 080F3C10
mov   r4,r0                     ; 080F3C12
bl    Sub080F1ABC               ; 080F3C14
mov   r0,r4                     ; 080F3C18
bl    Sub080F3698               ; 080F3C1A
pop   {r4}                      ; 080F3C1E
pop   {r0}                      ; 080F3C20
bx    r0                        ; 080F3C22

Sub080F3C24:
push  {r4,lr}                   ; 080F3C24
mov   r4,r0                     ; 080F3C26
bl    Sub080F1ABC               ; 080F3C28
mov   r0,r4                     ; 080F3C2C
bl    Sub080F37DC               ; 080F3C2E
pop   {r4}                      ; 080F3C32
pop   {r0}                      ; 080F3C34
bx    r0                        ; 080F3C36

Sub080F3C38:
push  {r4-r7,lr}                ; 080F3C38
mov   r4,r0                     ; 080F3C3A
mov   r0,0xC6                   ; 080F3C3C
add   r0,r0,r4                  ; 080F3C3E
mov   r12,r0                    ; 080F3C40
ldrb  r2,[r0]                   ; 080F3C42
mov   r0,r4                     ; 080F3C44
add   r0,0xC8                   ; 080F3C46
add   r0,r0,r2                  ; 080F3C48
ldrb  r0,[r0]                   ; 080F3C4A
mov   r5,r0                     ; 080F3C4C
cmp   r5,0xFF                   ; 080F3C4E
beq   @@Code080F3CAC            ; 080F3C50
mov   r3,r4                     ; 080F3C52
add   r3,0xD6                   ; 080F3C54
ldrb  r1,[r3]                   ; 080F3C56
mov   r7,0x1                    ; 080F3C58
mov   r0,r7                     ; 080F3C5A
and   r0,r1                     ; 080F3C5C
mov   r6,r4                     ; 080F3C5E
add   r6,0x5E                   ; 080F3C60
cmp   r0,0x0                    ; 080F3C62
beq   @@Code080F3C6C            ; 080F3C64
ldrh  r0,[r6]                   ; 080F3C66
cmp   r2,r0                     ; 080F3C68
beq   @@Code080F3CAC            ; 080F3C6A
@@Code080F3C6C:
mov   r0,r4                     ; 080F3C6C
add   r0,0x7F                   ; 080F3C6E
strb  r5,[r0]                   ; 080F3C70
ldrb  r0,[r3]                   ; 080F3C72
mov   r2,r7                     ; 080F3C74
and   r2,r0                     ; 080F3C76
lsl   r1,r2,0x1                 ; 080F3C78
mov   r0,r4                     ; 080F3C7A
add   r0,0x5A                   ; 080F3C7C
add   r0,r0,r1                  ; 080F3C7E
strh  r5,[r0]                   ; 080F3C80
add   r1,r6,r1                  ; 080F3C82
mov   r2,r12                    ; 080F3C84
ldrb  r0,[r2]                   ; 080F3C86
strh  r0,[r1]                   ; 080F3C88
ldrb  r0,[r3]                   ; 080F3C8A
add   r0,0x1                    ; 080F3C8C
strb  r0,[r3]                   ; 080F3C8E
ldr   r0,[r4]                   ; 080F3C90
add   r0,0x6A                   ; 080F3C92
strh  r7,[r0]                   ; 080F3C94
mov   r0,r4                     ; 080F3C96
bl    Sub080EEE50               ; 080F3C98
strh  r7,[r4,0x1C]              ; 080F3C9C
ldr   r0,=Data08196BA0          ; 080F3C9E
ldrh  r0,[r0,0x2]               ; 080F3CA0
bl    Sub080EFDB8               ; 080F3CA2
ldrh  r0,[r4,0x10]              ; 080F3CA6
add   r0,0x1                    ; 080F3CA8
strh  r0,[r4,0x10]              ; 080F3CAA
@@Code080F3CAC:
pop   {r4-r7}                   ; 080F3CAC
pop   {r0}                      ; 080F3CAE
bx    r0                        ; 080F3CB0
.pool                           ; 080F3CB2

Sub080F3CB8:
push  {lr}                      ; 080F3CB8
ldr   r1,=0x03006258            ; 080F3CBA
mov   r0,0x22                   ; 080F3CBC
bl    PlayYISound               ; 080F3CBE
pop   {r0}                      ; 080F3CC2
bx    r0                        ; 080F3CC4
.pool                           ; 080F3CC6

Sub080F3CCC:
push  {lr}                      ; 080F3CCC
mov   r3,r0                     ; 080F3CCE
add   r0,0xC6                   ; 080F3CD0
ldrb  r1,[r0]                   ; 080F3CD2
ldr   r0,=Data0819724A          ; 080F3CD4
add   r0,r1,r0                  ; 080F3CD6
ldrb  r2,[r0]                   ; 080F3CD8
mov   r0,r3                     ; 080F3CDA
add   r0,0x80                   ; 080F3CDC
strb  r2,[r0]                   ; 080F3CDE
ldr   r0,=Data08197258          ; 080F3CE0
add   r1,r1,r0                  ; 080F3CE2
ldrb  r1,[r1]                   ; 080F3CE4
mov   r0,r3                     ; 080F3CE6
add   r0,0x81                   ; 080F3CE8
strb  r1,[r0]                   ; 080F3CEA
bl    Sub080F3CB8               ; 080F3CEC
pop   {r0}                      ; 080F3CF0
bx    r0                        ; 080F3CF2
.pool                           ; 080F3CF4

Sub080F3CFC:
push  {lr}                      ; 080F3CFC
mov   r3,r0                     ; 080F3CFE
mov   r0,0xC6                   ; 080F3D00
add   r0,r0,r3                  ; 080F3D02
mov   r12,r0                    ; 080F3D04
ldrb  r1,[r0]                   ; 080F3D06
ldr   r0,=Data0819723A          ; 080F3D08
add   r0,r1,r0                  ; 080F3D0A
ldrb  r0,[r0]                   ; 080F3D0C
mov   r2,r3                     ; 080F3D0E
add   r2,0xC7                   ; 080F3D10
strb  r0,[r2]                   ; 080F3D12
ldr   r0,=Data0819721E          ; 080F3D14
add   r0,r1,r0                  ; 080F3D16
ldrb  r0,[r0]                   ; 080F3D18
mov   r2,r12                    ; 080F3D1A
strb  r0,[r2]                   ; 080F3D1C
cmp   r1,0x8                    ; 080F3D1E
bls   @@Code080F3D34            ; 080F3D20
mov   r0,r3                     ; 080F3D22
bl    Sub080F3CCC               ; 080F3D24
b     @@Code080F3D40            ; 080F3D28
.pool                           ; 080F3D2A

@@Code080F3D34:
mov   r1,0x4                    ; 080F3D34
mov   r0,r3                     ; 080F3D36
add   r0,0x82                   ; 080F3D38
strb  r1,[r0]                   ; 080F3D3A
bl    Sub080F3CB8               ; 080F3D3C
@@Code080F3D40:
pop   {r0}                      ; 080F3D40
bx    r0                        ; 080F3D42

Sub080F3D44:
push  {lr}                      ; 080F3D44
mov   r3,r0                     ; 080F3D46
mov   r0,0xC6                   ; 080F3D48
add   r0,r0,r3                  ; 080F3D4A
mov   r12,r0                    ; 080F3D4C
ldrb  r1,[r0]                   ; 080F3D4E
ldr   r0,=Data0819722C          ; 080F3D50
add   r0,r1,r0                  ; 080F3D52
ldrb  r0,[r0]                   ; 080F3D54
mov   r2,r3                     ; 080F3D56
add   r2,0xC7                   ; 080F3D58
strb  r0,[r2]                   ; 080F3D5A
ldr   r0,=Data08197210          ; 080F3D5C
add   r0,r1,r0                  ; 080F3D5E
ldrb  r0,[r0]                   ; 080F3D60
mov   r2,r12                    ; 080F3D62
strb  r0,[r2]                   ; 080F3D64
cmp   r1,0x4                    ; 080F3D66
bhi   @@Code080F3D7C            ; 080F3D68
mov   r0,r3                     ; 080F3D6A
bl    Sub080F3CCC               ; 080F3D6C
b     @@Code080F3D88            ; 080F3D70
.pool                           ; 080F3D72

@@Code080F3D7C:
mov   r1,0x3                    ; 080F3D7C
mov   r0,r3                     ; 080F3D7E
add   r0,0x82                   ; 080F3D80
strb  r1,[r0]                   ; 080F3D82
bl    Sub080F3CB8               ; 080F3D84
@@Code080F3D88:
pop   {r0}                      ; 080F3D88
bx    r0                        ; 080F3D8A

Sub080F3D8C:
push  {lr}                      ; 080F3D8C
mov   r2,r0                     ; 080F3D8E
mov   r1,r2                     ; 080F3D90
add   r1,0xC6                   ; 080F3D92
ldrb  r0,[r1]                   ; 080F3D94
cmp   r0,0xFF                   ; 080F3D96
bne   @@Code080F3DA0            ; 080F3D98
mov   r0,0xD                    ; 080F3D9A
strb  r0,[r1]                   ; 080F3D9C
b     @@Code080F3DB6            ; 080F3D9E
@@Code080F3DA0:
cmp   r0,0x4                    ; 080F3DA0
beq   @@Code080F3DB6            ; 080F3DA2
cmp   r0,0x8                    ; 080F3DA4
beq   @@Code080F3DB6            ; 080F3DA6
mov   r1,0x1                    ; 080F3DA8
mov   r0,r2                     ; 080F3DAA
add   r0,0x82                   ; 080F3DAC
strb  r1,[r0]                   ; 080F3DAE
bl    Sub080F3CB8               ; 080F3DB0
b     @@Code080F3DBC            ; 080F3DB4
@@Code080F3DB6:
mov   r0,r2                     ; 080F3DB6
bl    Sub080F3CCC               ; 080F3DB8
@@Code080F3DBC:
pop   {r0}                      ; 080F3DBC
bx    r0                        ; 080F3DBE

Sub080F3DC0:
push  {lr}                      ; 080F3DC0
mov   r2,r0                     ; 080F3DC2
mov   r1,r2                     ; 080F3DC4
add   r1,0xC6                   ; 080F3DC6
ldrb  r0,[r1]                   ; 080F3DC8
cmp   r0,0xE                    ; 080F3DCA
bne   @@Code080F3DD4            ; 080F3DCC
mov   r0,0x0                    ; 080F3DCE
strb  r0,[r1]                   ; 080F3DD0
b     @@Code080F3DEA            ; 080F3DD2
@@Code080F3DD4:
cmp   r0,0x5                    ; 080F3DD4
beq   @@Code080F3DEA            ; 080F3DD6
cmp   r0,0x9                    ; 080F3DD8
beq   @@Code080F3DEA            ; 080F3DDA
mov   r1,0x2                    ; 080F3DDC
mov   r0,r2                     ; 080F3DDE
add   r0,0x82                   ; 080F3DE0
strb  r1,[r0]                   ; 080F3DE2
bl    Sub080F3CB8               ; 080F3DE4
b     @@Code080F3DF0            ; 080F3DE8
@@Code080F3DEA:
mov   r0,r2                     ; 080F3DEA
bl    Sub080F3CCC               ; 080F3DEC
@@Code080F3DF0:
pop   {r0}                      ; 080F3DF0
bx    r0                        ; 080F3DF2

Sub080F3DF4:
push  {r4,lr}                   ; 080F3DF4
mov   r2,r0                     ; 080F3DF6
add   r0,0x82                   ; 080F3DF8
ldrb  r0,[r0]                   ; 080F3DFA
cmp   r0,0x0                    ; 080F3DFC
bne   @@Code080F3E76            ; 080F3DFE
ldr   r0,=0x03002200            ; 080F3E00
ldr   r1,=0x47C0                ; 080F3E02
add   r0,r0,r1                  ; 080F3E04
ldrh  r1,[r0]                   ; 080F3E06
mov   r0,0x1                    ; 080F3E08
and   r0,r1                     ; 080F3E0A
cmp   r0,0x0                    ; 080F3E0C
beq   @@Code080F3E20            ; 080F3E0E
mov   r0,r2                     ; 080F3E10
bl    Sub080F3C38               ; 080F3E12
b     @@Code080F3E76            ; 080F3E16
.pool                           ; 080F3E18

@@Code080F3E20:
mov   r0,0xF0                   ; 080F3E20
and   r0,r1                     ; 080F3E22
cmp   r0,0x0                    ; 080F3E24
beq   @@Code080F3E76            ; 080F3E26
mov   r0,0x30                   ; 080F3E28
and   r0,r1                     ; 080F3E2A
cmp   r0,0x0                    ; 080F3E2C
beq   @@Code080F3E60            ; 080F3E2E
lsl   r1,r1,0x10                ; 080F3E30
lsr   r1,r1,0x14                ; 080F3E32
mov   r0,0x1                    ; 080F3E34
and   r1,r0                     ; 080F3E36
mov   r3,r2                     ; 080F3E38
add   r3,0xC6                   ; 080F3E3A
ldr   r0,=Data08197248          ; 080F3E3C
add   r0,r1,r0                  ; 080F3E3E
ldrb  r0,[r0]                   ; 080F3E40
ldrb  r4,[r3]                   ; 080F3E42
add   r0,r0,r4                  ; 080F3E44
strb  r0,[r3]                   ; 080F3E46
cmp   r1,0x0                    ; 080F3E48
beq   @@Code080F3E58            ; 080F3E4A
mov   r0,r2                     ; 080F3E4C
bl    Sub080F3DC0               ; 080F3E4E
b     @@Code080F3E76            ; 080F3E52
.pool                           ; 080F3E54

@@Code080F3E58:
mov   r0,r2                     ; 080F3E58
bl    Sub080F3D8C               ; 080F3E5A
b     @@Code080F3E76            ; 080F3E5E
@@Code080F3E60:
mov   r0,0x40                   ; 080F3E60
and   r0,r1                     ; 080F3E62
cmp   r0,0x0                    ; 080F3E64
beq   @@Code080F3E70            ; 080F3E66
mov   r0,r2                     ; 080F3E68
bl    Sub080F3D44               ; 080F3E6A
b     @@Code080F3E76            ; 080F3E6E
@@Code080F3E70:
mov   r0,r2                     ; 080F3E70
bl    Sub080F3CFC               ; 080F3E72
@@Code080F3E76:
pop   {r4}                      ; 080F3E76
pop   {r0}                      ; 080F3E78
bx    r0                        ; 080F3E7A

Sub080F3E7C:
push  {r4-r5,lr}                ; 080F3E7C
mov   r2,r0                     ; 080F3E7E
mov   r0,0x82                   ; 080F3E80
add   r0,r0,r2                  ; 080F3E82
mov   r12,r0                    ; 080F3E84
ldrb  r1,[r0]                   ; 080F3E86
mov   r3,r1                     ; 080F3E88
cmp   r1,0x0                    ; 080F3E8A
beq   @@Code080F3F02            ; 080F3E8C
mov   r0,r2                     ; 080F3E8E
add   r0,0xC6                   ; 080F3E90
ldrb  r4,[r0]                   ; 080F3E92
cmp   r1,0x2                    ; 080F3E94
bls   @@Code080F3ED8            ; 080F3E96
mov   r5,r2                     ; 080F3E98
add   r5,0x81                   ; 080F3E9A
ldr   r0,=Data08197258          ; 080F3E9C
add   r0,r4,r0                  ; 080F3E9E
ldrb  r3,[r5]                   ; 080F3EA0
ldrb  r0,[r0]                   ; 080F3EA2
cmp   r3,r0                     ; 080F3EA4
bne   @@Code080F3EB4            ; 080F3EA6
mov   r0,0x0                    ; 080F3EA8
mov   r1,r12                    ; 080F3EAA
b     @@Code080F3F00            ; 080F3EAC
.pool                           ; 080F3EAE

@@Code080F3EB4:
mov   r0,0x1                    ; 080F3EB4
and   r1,r0                     ; 080F3EB6
ldr   r0,=Data08197266          ; 080F3EB8
add   r0,r1,r0                  ; 080F3EBA
ldrb  r0,[r0]                   ; 080F3EBC
add   r0,r3,r0                  ; 080F3EBE
strb  r0,[r5]                   ; 080F3EC0
mov   r1,r2                     ; 080F3EC2
add   r1,0x80                   ; 080F3EC4
mov   r0,r2                     ; 080F3EC6
add   r0,0xC7                   ; 080F3EC8
ldrb  r0,[r0]                   ; 080F3ECA
ldrb  r2,[r1]                   ; 080F3ECC
add   r0,r0,r2                  ; 080F3ECE
b     @@Code080F3F00            ; 080F3ED0
.pool                           ; 080F3ED2

@@Code080F3ED8:
ldr   r0,=Data0819724A          ; 080F3ED8
add   r0,r4,r0                  ; 080F3EDA
mov   r1,r2                     ; 080F3EDC
add   r1,0x80                   ; 080F3EDE
ldrb  r2,[r1]                   ; 080F3EE0
ldrb  r0,[r0]                   ; 080F3EE2
cmp   r0,r2                     ; 080F3EE4
bne   @@Code080F3EF4            ; 080F3EE6
mov   r0,0x0                    ; 080F3EE8
mov   r1,r12                    ; 080F3EEA
b     @@Code080F3F00            ; 080F3EEC
.pool                           ; 080F3EEE

@@Code080F3EF4:
mov   r0,0x1                    ; 080F3EF4
and   r3,r0                     ; 080F3EF6
ldr   r0,=Data08197266          ; 080F3EF8
add   r0,r3,r0                  ; 080F3EFA
ldrb  r0,[r0]                   ; 080F3EFC
add   r0,r2,r0                  ; 080F3EFE
@@Code080F3F00:
strb  r0,[r1]                   ; 080F3F00
@@Code080F3F02:
pop   {r4-r5}                   ; 080F3F02
pop   {r0}                      ; 080F3F04
bx    r0                        ; 080F3F06
.pool                           ; 080F3F08

Sub080F3F0C:
push  {lr}                      ; 080F3F0C
mov   r3,r0                     ; 080F3F0E
mov   r2,0xD                    ; 080F3F10
@@Code080F3F12:
mov   r0,r3                     ; 080F3F12
add   r0,0x5E                   ; 080F3F14
ldrh  r0,[r0]                   ; 080F3F16
cmp   r0,r2                     ; 080F3F18
beq   @@Code080F3F36            ; 080F3F1A
mov   r0,r3                     ; 080F3F1C
add   r0,0x60                   ; 080F3F1E
ldrh  r0,[r0]                   ; 080F3F20
cmp   r0,r2                     ; 080F3F22
beq   @@Code080F3F36            ; 080F3F24
mov   r0,r3                     ; 080F3F26
add   r0,0xC8                   ; 080F3F28
add   r1,r0,r2                  ; 080F3F2A
ldrb  r0,[r1]                   ; 080F3F2C
cmp   r0,0xFF                   ; 080F3F2E
beq   @@Code080F3F36            ; 080F3F30
mov   r0,0x4                    ; 080F3F32
strb  r0,[r1]                   ; 080F3F34
@@Code080F3F36:
sub   r0,r2,0x1                 ; 080F3F36
lsl   r0,r0,0x10                ; 080F3F38
lsr   r2,r0,0x10                ; 080F3F3A
cmp   r0,0x0                    ; 080F3F3C
bge   @@Code080F3F12            ; 080F3F3E
pop   {r0}                      ; 080F3F40
bx    r0                        ; 080F3F42

Sub080F3F44:
push  {r4-r7,lr}                ; 080F3F44
mov   r7,r10                    ; 080F3F46
mov   r6,r9                     ; 080F3F48
mov   r5,r8                     ; 080F3F4A
push  {r5-r7}                   ; 080F3F4C
mov   r4,r0                     ; 080F3F4E
ldrh  r6,[r4,0x30]              ; 080F3F50
ldr   r0,=Data08197268          ; 080F3F52
mov   r9,r0                     ; 080F3F54
ldr   r1,=Data0819727C          ; 080F3F56
mov   r10,r1                    ; 080F3F58
cmp   r6,0x9                    ; 080F3F5A
bls   @@Code080F3F6A            ; 080F3F5C
@@Code080F3F5E:
mov   r0,r6                     ; 080F3F5E
sub   r0,0xA                    ; 080F3F60
lsl   r0,r0,0x10                ; 080F3F62
lsr   r6,r0,0x10                ; 080F3F64
cmp   r6,0x9                    ; 080F3F66
bhi   @@Code080F3F5E            ; 080F3F68
@@Code080F3F6A:
ldr   r0,=0x02011000            ; 080F3F6A
ldrh  r7,[r0]                   ; 080F3F6C
lsl   r2,r7,0x1                 ; 080F3F6E
ldr   r3,=0x02011002            ; 080F3F70
mov   r8,r3                     ; 080F3F72
add   r1,r2,r3                  ; 080F3F74
ldr   r3,=0xB2DA                ; 080F3F76
mov   r0,r3                     ; 080F3F78
strh  r0,[r1]                   ; 080F3F7A
ldr   r0,=0x02011004            ; 080F3F7C
mov   r12,r0                    ; 080F3F7E
add   r0,r2,r0                  ; 080F3F80
ldr   r1,=0x8002                ; 080F3F82
mov   r5,r1                     ; 080F3F84
strh  r5,[r0]                   ; 080F3F86
ldr   r0,=0x02011006            ; 080F3F88
add   r3,r2,r0                  ; 080F3F8A
lsl   r1,r6,0x1                 ; 080F3F8C
mov   r6,r9                     ; 080F3F8E
add   r0,r1,r6                  ; 080F3F90
ldrh  r0,[r0]                   ; 080F3F92
strh  r0,[r3]                   ; 080F3F94
ldr   r0,=0x02011008            ; 080F3F96
add   r2,r2,r0                  ; 080F3F98
add   r1,r10                    ; 080F3F9A
ldrh  r0,[r1]                   ; 080F3F9C
strh  r0,[r2]                   ; 080F3F9E
add   r0,r7,0x4                 ; 080F3FA0
lsl   r0,r0,0x10                ; 080F3FA2
lsr   r7,r0,0x10                ; 080F3FA4
lsl   r3,r7,0x1                 ; 080F3FA6
mov   r1,r8                     ; 080F3FA8
add   r2,r3,r1                  ; 080F3FAA
ldr   r6,=0x041E                ; 080F3FAC
mov   r0,r6                     ; 080F3FAE
strh  r0,[r2]                   ; 080F3FB0
mov   r0,r12                    ; 080F3FB2
add   r1,r3,r0                  ; 080F3FB4
strh  r5,[r1]                   ; 080F3FB6
ldrh  r0,[r4,0x30]              ; 080F3FB8
cmp   r0,0x1                    ; 080F3FBA
beq   @@Code080F4010            ; 080F3FBC
ldr   r4,=0xB2E2                ; 080F3FBE
mov   r0,r4                     ; 080F3FC0
strh  r0,[r2]                   ; 080F3FC2
strh  r5,[r1]                   ; 080F3FC4
ldr   r6,=0x02011006            ; 080F3FC6
add   r1,r3,r6                  ; 080F3FC8
ldr   r2,=0x30AF                ; 080F3FCA
mov   r0,r2                     ; 080F3FCC
strh  r0,[r1]                   ; 080F3FCE
ldr   r4,=0x02011008            ; 080F3FD0
add   r1,r3,r4                  ; 080F3FD2
ldr   r6,=0x30BF                ; 080F3FD4
mov   r0,r6                     ; 080F3FD6
strh  r0,[r1]                   ; 080F3FD8
b     @@Code080F4028            ; 080F3FDA
.pool                           ; 080F3FDC

@@Code080F4010:
ldr   r4,=0xB2E2                ; 080F4010
mov   r0,r4                     ; 080F4012
strh  r0,[r2]                   ; 080F4014
strh  r5,[r1]                   ; 080F4016
ldr   r6,=0x02011006            ; 080F4018
add   r0,r3,r6                  ; 080F401A
ldr   r2,=0x30FC                ; 080F401C
mov   r1,r2                     ; 080F401E
strh  r1,[r0]                   ; 080F4020
ldr   r4,=0x02011008            ; 080F4022
add   r0,r3,r4                  ; 080F4024
strh  r1,[r0]                   ; 080F4026
@@Code080F4028:
add   r0,r7,0x4                 ; 080F4028
lsl   r0,r0,0x10                ; 080F402A
lsr   r7,r0,0x10                ; 080F402C
lsl   r0,r7,0x1                 ; 080F402E
ldr   r6,=0x02011002            ; 080F4030
add   r0,r0,r6                  ; 080F4032
ldr   r2,=0xFFFF                ; 080F4034
mov   r1,r2                     ; 080F4036
strh  r1,[r0]                   ; 080F4038
ldr   r0,=0x02011000            ; 080F403A
strh  r7,[r0]                   ; 080F403C
pop   {r3-r5}                   ; 080F403E
mov   r8,r3                     ; 080F4040
mov   r9,r4                     ; 080F4042
mov   r10,r5                    ; 080F4044
pop   {r4-r7}                   ; 080F4046
pop   {r0}                      ; 080F4048
bx    r0                        ; 080F404A
.pool                           ; 080F404C

Sub080F4068:
push  {r4-r6,lr}                ; 080F4068
mov   r5,r0                     ; 080F406A
ldrh  r1,[r5,0x30]              ; 080F406C
cmp   r1,0x6                    ; 080F406E
bne   @@Code080F40B4            ; 080F4070
mov   r4,0x0                    ; 080F4072
mov   r0,0xA                    ; 080F4074
strh  r0,[r5,0x32]              ; 080F4076
ldr   r1,=0x03002200            ; 080F4078
ldr   r0,=0x4A48                ; 080F407A
add   r1,r1,r0                  ; 080F407C
ldrb  r0,[r1]                   ; 080F407E
mov   r2,0x4                    ; 080F4080
orr   r0,r2                     ; 080F4082
strb  r0,[r1]                   ; 080F4084
mov   r0,0x20                   ; 080F4086  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080F4088  Change music (YI)
mov   r0,0x90                   ; 080F408C
strh  r0,[r5,0x12]              ; 080F408E
ldrh  r0,[r5,0x30]              ; 080F4090
add   r0,0x1                    ; 080F4092
strh  r0,[r5,0x30]              ; 080F4094
mov   r0,r5                     ; 080F4096
bl    Sub080F3F44               ; 080F4098
mov   r0,0xE                    ; 080F409C
strh  r0,[r5,0x10]              ; 080F409E
mov   r0,0x2                    ; 080F40A0
strh  r0,[r5,0x1C]              ; 080F40A2
mov   r0,r5                     ; 080F40A4
add   r0,0xF0                   ; 080F40A6
strb  r4,[r0]                   ; 080F40A8
b     @@Code080F4180            ; 080F40AA
.pool                           ; 080F40AC

@@Code080F40B4:
mov   r4,r5                     ; 080F40B4
add   r4,0x5A                   ; 080F40B6
mov   r6,r5                     ; 080F40B8
add   r6,0x5C                   ; 080F40BA
ldrh  r0,[r4]                   ; 080F40BC
ldrh  r2,[r6]                   ; 080F40BE
cmp   r0,r2                     ; 080F40C0
bne   @@Code080F414C            ; 080F40C2
cmp   r1,0x5                    ; 080F40C4
bne   @@Code080F40CE            ; 080F40C6
mov   r0,r5                     ; 080F40C8
bl    Sub080F3F0C               ; 080F40CA
@@Code080F40CE:
mov   r0,r5                     ; 080F40CE
add   r0,0x5E                   ; 080F40D0
ldrh  r0,[r0]                   ; 080F40D2
mov   r2,r5                     ; 080F40D4
add   r2,0xC8                   ; 080F40D6
add   r0,r2,r0                  ; 080F40D8
mov   r1,0xFF                   ; 080F40DA
strb  r1,[r0]                   ; 080F40DC
mov   r0,r5                     ; 080F40DE
add   r0,0x60                   ; 080F40E0
ldrh  r0,[r0]                   ; 080F40E2
add   r2,r2,r0                  ; 080F40E4
mov   r0,0x1                    ; 080F40E6
neg   r0,r0                     ; 080F40E8
strb  r0,[r2]                   ; 080F40EA
ldrh  r0,[r5,0x30]              ; 080F40EC
add   r0,0x1                    ; 080F40EE
strh  r0,[r5,0x30]              ; 080F40F0
mov   r0,r5                     ; 080F40F2
bl    Sub080F3F44               ; 080F40F4
ldrh  r0,[r4]                   ; 080F40F8
ldr   r1,=Data08196E8C          ; 080F40FA
add   r0,r0,r1                  ; 080F40FC
ldrb  r1,[r0]                   ; 080F40FE
mov   r0,r1                     ; 080F4100
bl    Sub080EEEC4               ; 080F4102
ldr   r1,=0x03002200            ; 080F4106
ldr   r0,=0x4A48                ; 080F4108
add   r3,r1,r0                  ; 080F410A
ldrb  r0,[r3]                   ; 080F410C
mov   r2,0x4                    ; 080F410E
orr   r0,r2                     ; 080F4110
strb  r0,[r3]                   ; 080F4112
mov   r0,0xFF                   ; 080F4114
strh  r0,[r4]                   ; 080F4116
strh  r0,[r6]                   ; 080F4118
ldr   r2,=0x4058                ; 080F411A
add   r1,r1,r2                  ; 080F411C
mov   r0,0x45                   ; 080F411E
bl    PlayYISound               ; 080F4120
mov   r0,0x90                   ; 080F4124
strh  r0,[r5,0x12]              ; 080F4126
mov   r0,0xE                    ; 080F4128
strh  r0,[r5,0x10]              ; 080F412A
mov   r0,0x2                    ; 080F412C
strh  r0,[r5,0x1C]              ; 080F412E
mov   r1,r5                     ; 080F4130
add   r1,0xF0                   ; 080F4132
mov   r0,0x1                    ; 080F4134
strb  r0,[r1]                   ; 080F4136
b     @@Code080F4180            ; 080F4138
.pool                           ; 080F413A

@@Code080F414C:
ldrh  r0,[r5,0x38]              ; 080F414C
add   r0,0x1                    ; 080F414E
strh  r0,[r5,0x38]              ; 080F4150
lsl   r0,r0,0x10                ; 080F4152
lsr   r0,r0,0x10                ; 080F4154
cmp   r0,0x2                    ; 080F4156
bne   @@Code080F416C            ; 080F4158
ldr   r1,=0x03006258            ; 080F415A
mov   r0,0x11                   ; 080F415C
bl    PlayYISound               ; 080F415E
mov   r1,0xD                    ; 080F4162
b     @@Code080F4176            ; 080F4164
.pool                           ; 080F4166

@@Code080F416C:
mov   r0,0x5D                   ; 080F416C
mov   r1,0x0                    ; 080F416E
bl    PlayYISound               ; 080F4170
mov   r1,0xF                    ; 080F4174
@@Code080F4176:
strh  r1,[r5,0x10]              ; 080F4176
mov   r0,0x80                   ; 080F4178
strh  r0,[r5,0x12]              ; 080F417A
mov   r0,0x3                    ; 080F417C
strh  r0,[r5,0x1C]              ; 080F417E
@@Code080F4180:
ldr   r0,=Data08196BA0          ; 080F4180
ldrh  r1,[r5,0x1C]              ; 080F4182
lsl   r1,r1,0x1                 ; 080F4184
add   r1,r1,r0                  ; 080F4186
ldrh  r0,[r1]                   ; 080F4188
bl    Sub080EFDB8               ; 080F418A
pop   {r4-r6}                   ; 080F418E
pop   {r0}                      ; 080F4190
bx    r0                        ; 080F4192
.pool                           ; 080F4194

Sub080F4198:
push  {r4,lr}                   ; 080F4198
mov   r4,r0                     ; 080F419A
ldr   r0,[r4]                   ; 080F419C
add   r0,0x6A                   ; 080F419E
ldrh  r0,[r0]                   ; 080F41A0
cmp   r0,0x0                    ; 080F41A2
beq   @@Code080F41AE            ; 080F41A4
mov   r0,r4                     ; 080F41A6
bl    Sub080F1ABC               ; 080F41A8
b     @@Code080F41D2            ; 080F41AC
@@Code080F41AE:
mov   r0,r4                     ; 080F41AE
add   r0,0xD6                   ; 080F41B0
ldrb  r0,[r0]                   ; 080F41B2
cmp   r0,0x2                    ; 080F41B4
bne   @@Code080F41C0            ; 080F41B6
mov   r0,r4                     ; 080F41B8
bl    Sub080F4068               ; 080F41BA
b     @@Code080F41D2            ; 080F41BE
@@Code080F41C0:
mov   r0,r4                     ; 080F41C0
bl    Sub080F3E7C               ; 080F41C2
mov   r0,r4                     ; 080F41C6
bl    Sub080F3DF4               ; 080F41C8
mov   r0,r4                     ; 080F41CC
bl    Sub080F1E64               ; 080F41CE
@@Code080F41D2:
pop   {r4}                      ; 080F41D2
pop   {r0}                      ; 080F41D4
bx    r0                        ; 080F41D6

Sub080F41D8:
push  {r4-r5,lr}                ; 080F41D8
mov   r1,r0                     ; 080F41DA
add   r1,0xC6                   ; 080F41DC
ldrb  r2,[r1]                   ; 080F41DE
ldr   r1,=0x03007240            ; 080F41E0  Normal gameplay IWRAM (0300220C)
ldr   r3,[r1]                   ; 080F41E2
ldr   r1,=Data08197290          ; 080F41E4
add   r1,r2,r1                  ; 080F41E6
ldrb  r4,[r1]                   ; 080F41E8
ldr   r5,=0x29D6                ; 080F41EA
add   r1,r3,r5                  ; 080F41EC
strh  r4,[r1]                   ; 080F41EE
ldr   r1,=Data0819729E          ; 080F41F0
add   r2,r2,r1                  ; 080F41F2
ldrb  r1,[r2]                   ; 080F41F4
ldr   r2,=0x29DA                ; 080F41F6
add   r3,r3,r2                  ; 080F41F8
strh  r1,[r3]                   ; 080F41FA
bl    Sub080F12DC               ; 080F41FC
pop   {r4-r5}                   ; 080F4200
pop   {r0}                      ; 080F4202
bx    r0                        ; 080F4204
.pool                           ; 080F4206

Sub080F421C:
push  {r4-r7,lr}                ; 080F421C
mov   r7,r9                     ; 080F421E
mov   r6,r8                     ; 080F4220
push  {r6-r7}                   ; 080F4222
mov   r12,r0                    ; 080F4224
add   r0,0xC6                   ; 080F4226
ldrb  r3,[r0]                   ; 080F4228
mov   r5,0x3                    ; 080F422A
ldr   r0,=Data08196E38          ; 080F422C
lsl   r1,r3,0x1                 ; 080F422E
add   r1,r1,r0                  ; 080F4230
ldrh  r4,[r1]                   ; 080F4232
ldr   r0,=0x02011000            ; 080F4234
ldrh  r3,[r0]                   ; 080F4236
ldr   r0,=0x03007240            ; 080F4238  Normal gameplay IWRAM (0300220C)
mov   r9,r0                     ; 080F423A
ldr   r6,=Data08196C44          ; 080F423C
ldrh  r2,[r6,0x4]               ; 080F423E
mov   r8,r2                     ; 080F4240
@@Code080F4242:
lsl   r1,r3,0x1                 ; 080F4242
ldr   r7,=0x02011002            ; 080F4244
add   r0,r1,r7                  ; 080F4246
strh  r4,[r0]                   ; 080F4248
ldr   r0,=0x02011004            ; 080F424A
add   r2,r1,r0                  ; 080F424C
mov   r0,0x3                    ; 080F424E
strh  r0,[r2]                   ; 080F4250
ldr   r0,=0x02011006            ; 080F4252
add   r2,r1,r0                  ; 080F4254
ldrh  r0,[r6]                   ; 080F4256
strh  r0,[r2]                   ; 080F4258
ldr   r0,=0x02011008            ; 080F425A
add   r2,r1,r0                  ; 080F425C
ldrh  r0,[r6,0x2]               ; 080F425E
strh  r0,[r2]                   ; 080F4260
ldr   r2,=0x0201100A            ; 080F4262
add   r1,r1,r2                  ; 080F4264
mov   r0,r8                     ; 080F4266
strh  r0,[r1]                   ; 080F4268
add   r0,r3,0x5                 ; 080F426A
lsl   r0,r0,0x10                ; 080F426C
lsr   r3,r0,0x10                ; 080F426E
mov   r0,r4                     ; 080F4270
add   r0,0x40                   ; 080F4272
lsl   r0,r0,0x10                ; 080F4274
lsr   r4,r0,0x10                ; 080F4276
sub   r0,r5,0x1                 ; 080F4278
lsl   r0,r0,0x10                ; 080F427A
lsr   r5,r0,0x10                ; 080F427C
cmp   r5,0x0                    ; 080F427E
bne   @@Code080F4242            ; 080F4280
lsl   r0,r3,0x1                 ; 080F4282
add   r0,r0,r7                  ; 080F4284
ldr   r2,=0xFFFF                ; 080F4286
mov   r1,r2                     ; 080F4288
strh  r1,[r0]                   ; 080F428A
ldr   r0,=0x02011000            ; 080F428C
strh  r3,[r0]                   ; 080F428E
mov   r0,r12                    ; 080F4290
strh  r5,[r0,0x1E]              ; 080F4292
mov   r2,r9                     ; 080F4294
ldr   r1,[r2]                   ; 080F4296
ldr   r0,=0x29D2                ; 080F4298
add   r2,r1,r0                  ; 080F429A
mov   r0,0xB                    ; 080F429C
strh  r0,[r2]                   ; 080F429E
ldr   r2,=0x29DE                ; 080F42A0
add   r1,r1,r2                  ; 080F42A2
mov   r0,0xC1                   ; 080F42A4
lsl   r0,r0,0x2                 ; 080F42A6
strh  r0,[r1]                   ; 080F42A8
mov   r0,r12                    ; 080F42AA
bl    Sub080F41D8               ; 080F42AC
pop   {r3-r4}                   ; 080F42B0
mov   r8,r3                     ; 080F42B2
mov   r9,r4                     ; 080F42B4
pop   {r4-r7}                   ; 080F42B6
pop   {r0}                      ; 080F42B8
bx    r0                        ; 080F42BA
.pool                           ; 080F42BC

Sub080F42EC:
push  {r4,lr}                   ; 080F42EC
mov   r4,r0                     ; 080F42EE
mov   r2,r4                     ; 080F42F0
add   r2,0xC6                   ; 080F42F2
ldrb  r1,[r2]                   ; 080F42F4
cmp   r1,0xE                    ; 080F42F6
beq   @@Code080F431C            ; 080F42F8
add   r0,0xC8                   ; 080F42FA
add   r0,r0,r1                  ; 080F42FC
ldrb  r0,[r0]                   ; 080F42FE
mov   r1,r4                     ; 080F4300
add   r1,0x7F                   ; 080F4302
strb  r0,[r1]                   ; 080F4304
mov   r0,r4                     ; 080F4306
bl    Sub080F421C               ; 080F4308
ldr   r1,=0x03006258            ; 080F430C
mov   r0,0x4B                   ; 080F430E
bl    PlayYISound               ; 080F4310
mov   r0,0x13                   ; 080F4314
b     @@Code080F4326            ; 080F4316
.pool                           ; 080F4318

@@Code080F431C:
mov   r0,0x0                    ; 080F431C
strb  r0,[r2]                   ; 080F431E
mov   r0,0x40                   ; 080F4320
strh  r0,[r4,0x12]              ; 080F4322
mov   r0,0x15                   ; 080F4324
@@Code080F4326:
strh  r0,[r4,0x10]              ; 080F4326
pop   {r4}                      ; 080F4328
pop   {r0}                      ; 080F432A
bx    r0                        ; 080F432C
.pool                           ; 080F432E

Sub080F4330:
push  {lr}                      ; 080F4330
ldr   r2,=CodePtrs081972AC      ; 080F4332
ldrh  r1,[r0,0x10]              ; 080F4334
lsl   r1,r1,0x2                 ; 080F4336
add   r1,r1,r2                  ; 080F4338
ldr   r1,[r1]                   ; 080F433A
bl    Sub_bx_r1                 ; 080F433C  bx r1
pop   {r0}                      ; 080F4340
bx    r0                        ; 080F4342
.pool                           ; 080F4344

Sub080F4348:
push  {r4-r5,lr}                ; 080F4348
ldr   r0,=Data08245CD0          ; 080F434A  goal minigame 06002000 graphics
ldr   r4,=0x0201FC00            ; 080F434C  decompressed graphics buffer
mov   r1,r4                     ; 080F434E
bl    swi_LZ77_WRAM             ; 080F4350  LZ77 decompress (WRAM)
ldr   r1,=0x06002000            ; 080F4354
mov   r2,0xAB                   ; 080F4356
lsl   r2,r2,0x3                 ; 080F4358
mov   r0,r4                     ; 080F435A
bl    swi_MemoryCopy32          ; 080F435C  Memory copy/fill, 32-byte blocks
ldr   r4,=Data081A12D8          ; 080F4360
ldr   r1,=0x06014000            ; 080F4362
mov   r2,0x80                   ; 080F4364
lsl   r2,r2,0x4                 ; 080F4366
mov   r0,r4                     ; 080F4368
bl    swi_MemoryCopy32          ; 080F436A  Memory copy/fill, 32-byte blocks
mov   r5,0x0                    ; 080F436E
ldr   r0,=0xFFFFF200            ; 080F4370
add   r4,r4,r0                  ; 080F4372
@@Code080F4374:
lsl   r1,r5,0xA                 ; 080F4374
add   r0,r1,r4                  ; 080F4376
ldr   r2,=0x06016000            ; 080F4378
add   r1,r1,r2                  ; 080F437A
mov   r2,0x60                   ; 080F437C
bl    swi_MemoryCopy32          ; 080F437E  Memory copy/fill, 32-byte blocks
add   r0,r5,0x1                 ; 080F4382
lsl   r0,r0,0x10                ; 080F4384
lsr   r5,r0,0x10                ; 080F4386
cmp   r5,0x3                    ; 080F4388
bls   @@Code080F4374            ; 080F438A
ldr   r0,=0x02010400            ; 080F438C
ldr   r1,=0x05000300            ; 080F438E
mov   r2,0x40                   ; 080F4390
bl    swi_MemoryCopy32          ; 080F4392  Memory copy/fill, 32-byte blocks
pop   {r4-r5}                   ; 080F4396
pop   {r0}                      ; 080F4398
bx    r0                        ; 080F439A
.pool                           ; 080F439C

Sub080F43C0:
push  {r4,lr}                   ; 080F43C0
mov   r4,r0                     ; 080F43C2
bl    Sub080F4348               ; 080F43C4
mov   r0,r4                     ; 080F43C8
bl    Sub080EEF48               ; 080F43CA
pop   {r4}                      ; 080F43CE
pop   {r0}                      ; 080F43D0
bx    r0                        ; 080F43D2

Sub080F43D4:
mov   r12,r0                    ; 080F43D4
ldr   r0,=0x03002200            ; 080F43D6
ldr   r1,=0x407E                ; 080F43D8
add   r0,r0,r1                  ; 080F43DA
ldrh  r0,[r0]                   ; 080F43DC
mov   r1,r12                    ; 080F43DE
add   r1,0x4A                   ; 080F43E0
mov   r2,0x0                    ; 080F43E2
mov   r3,0x0                    ; 080F43E4
strh  r0,[r1]                   ; 080F43E6
mov   r0,r12                    ; 080F43E8
add   r0,0xD7                   ; 080F43EA
strb  r2,[r0]                   ; 080F43EC
add   r0,0x1                    ; 080F43EE
strb  r2,[r0]                   ; 080F43F0
add   r0,0x1                    ; 080F43F2
strb  r2,[r0]                   ; 080F43F4
add   r0,0x16                   ; 080F43F6
strb  r2,[r0]                   ; 080F43F8
sub   r0,0x9                    ; 080F43FA
strb  r2,[r0]                   ; 080F43FC
add   r1,0x90                   ; 080F43FE
mov   r0,0x60                   ; 080F4400
strb  r0,[r1]                   ; 080F4402
add   r1,0x1                    ; 080F4404
mov   r0,0x80                   ; 080F4406
strb  r0,[r1]                   ; 080F4408
mov   r0,r12                    ; 080F440A
add   r0,0xE0                   ; 080F440C
strb  r2,[r0]                   ; 080F440E
add   r0,0x1                    ; 080F4410
strb  r2,[r0]                   ; 080F4412
add   r1,0xE                    ; 080F4414
mov   r0,0x9                    ; 080F4416
strb  r0,[r1]                   ; 080F4418
add   r1,0x1                    ; 080F441A
strb  r0,[r1]                   ; 080F441C
mov   r0,r12                    ; 080F441E
add   r0,0xEB                   ; 080F4420
strb  r2,[r0]                   ; 080F4422
sub   r1,0x2                    ; 080F4424
mov   r0,0x1                    ; 080F4426
strb  r0,[r1]                   ; 080F4428
mov   r0,r12                    ; 080F442A
add   r0,0x48                   ; 080F442C
strh  r3,[r0]                   ; 080F442E
add   r1,0x6                    ; 080F4430
mov   r0,0x40                   ; 080F4432
strb  r0,[r1]                   ; 080F4434
mov   r0,r12                    ; 080F4436
add   r0,0xED                   ; 080F4438
strb  r2,[r0]                   ; 080F443A
bx    lr                        ; 080F443C
.pool                           ; 080F443E

Sub080F4448:
push  {r4-r6,lr}                ; 080F4448
lsl   r1,r1,0x10                ; 080F444A
lsl   r2,r2,0x18                ; 080F444C
add   r0,0xE7                   ; 080F444E
lsr   r2,r2,0x18                ; 080F4450
ldrb  r0,[r0]                   ; 080F4452
add   r2,r2,r0                  ; 080F4454
lsl   r2,r2,0x18                ; 080F4456
lsr   r2,r2,0x18                ; 080F4458
ldr   r3,=Data0819730C          ; 080F445A
lsl   r0,r2,0x1                 ; 080F445C
add   r0,r0,r3                  ; 080F445E
ldrh  r5,[r0]                   ; 080F4460
ldr   r0,=0x0600B000            ; 080F4462
add   r6,r5,r0                  ; 080F4464
ldr   r3,=Data08197348          ; 080F4466
lsl   r2,r2,0x3                 ; 080F4468
add   r4,r2,r3                  ; 080F446A
ldr   r0,=Data08197438          ; 080F446C
lsr   r1,r1,0xF                 ; 080F446E
add   r1,r1,r0                  ; 080F4470
ldrh  r0,[r4]                   ; 080F4472
ldrh  r1,[r1]                   ; 080F4474
orr   r0,r1                     ; 080F4476
strh  r0,[r6]                   ; 080F4478
add   r0,r3,0x2                 ; 080F447A
add   r0,r2,r0                  ; 080F447C
ldrh  r0,[r0]                   ; 080F447E
orr   r0,r1                     ; 080F4480
strh  r0,[r6,0x2]               ; 080F4482
ldr   r0,=0x0600B040            ; 080F4484
add   r4,r5,r0                  ; 080F4486
add   r0,r3,0x4                 ; 080F4488
add   r0,r2,r0                  ; 080F448A
ldrh  r0,[r0]                   ; 080F448C
orr   r0,r1                     ; 080F448E
strh  r0,[r4]                   ; 080F4490
ldr   r0,=0x0600B042            ; 080F4492
add   r5,r5,r0                  ; 080F4494
add   r3,0x6                    ; 080F4496
add   r2,r2,r3                  ; 080F4498
ldrh  r0,[r2]                   ; 080F449A
orr   r0,r1                     ; 080F449C
strh  r0,[r5]                   ; 080F449E
pop   {r4-r6}                   ; 080F44A0
pop   {r0}                      ; 080F44A2
bx    r0                        ; 080F44A4
.pool                           ; 080F44A6

Sub080F44C0:
push  {r4-r7,lr}                ; 080F44C0
mov   r5,r0                     ; 080F44C2
add   r0,0xE6                   ; 080F44C4
ldrb  r1,[r0]                   ; 080F44C6
cmp   r1,0x0                    ; 080F44C8
beq   @@Code080F4536            ; 080F44CA
mov   r0,0x2                    ; 080F44CC
and   r0,r1                     ; 080F44CE
lsl   r0,r0,0x18                ; 080F44D0
lsr   r0,r0,0x18                ; 080F44D2
neg   r0,r0                     ; 080F44D4
lsr   r4,r0,0x1F                ; 080F44D6
ldr   r0,=0xFFFF                ; 080F44D8
cmp   r4,r0                     ; 080F44DA
beq   @@Code080F4536            ; 080F44DC
ldr   r7,=0x03006B01            ; 080F44DE
mov   r6,r5                     ; 080F44E0
add   r6,0xE7                   ; 080F44E2
@@Code080F44E4:
neg   r0,r4                     ; 080F44E4
orr   r0,r4                     ; 080F44E6
asr   r2,r0,0x1F                ; 080F44E8
mov   r0,0x10                   ; 080F44EA
and   r2,r0                     ; 080F44EC
mov   r1,0x0                    ; 080F44EE
ldrh  r0,[r5,0x10]              ; 080F44F0
cmp   r0,0x9                    ; 080F44F2
beq   @@Code080F4504            ; 080F44F4
ldrb  r1,[r7]                   ; 080F44F6
mov   r0,0x2                    ; 080F44F8
and   r0,r1                     ; 080F44FA
lsl   r0,r0,0x18                ; 080F44FC
lsr   r0,r0,0x18                ; 080F44FE
neg   r0,r0                     ; 080F4500
lsr   r1,r0,0x1F                ; 080F4502
@@Code080F4504:
cmp   r4,0x0                    ; 080F4504
beq   @@Code080F4518            ; 080F4506
mov   r0,r5                     ; 080F4508
add   r0,0xD9                   ; 080F450A
b     @@Code080F451C            ; 080F450C
.pool                           ; 080F450E

@@Code080F4518:
mov   r0,r5                     ; 080F4518
add   r0,0xD8                   ; 080F451A
@@Code080F451C:
ldrb  r0,[r0]                   ; 080F451C
strb  r0,[r6]                   ; 080F451E
lsl   r2,r2,0x18                ; 080F4520
lsr   r2,r2,0x18                ; 080F4522
mov   r0,r5                     ; 080F4524
bl    Sub080F4448               ; 080F4526
sub   r0,r4,0x1                 ; 080F452A
lsl   r0,r0,0x10                ; 080F452C
lsr   r4,r0,0x10                ; 080F452E
ldr   r0,=0xFFFF                ; 080F4530
cmp   r4,r0                     ; 080F4532
bne   @@Code080F44E4            ; 080F4534
@@Code080F4536:
pop   {r4-r7}                   ; 080F4536
pop   {r0}                      ; 080F4538
bx    r0                        ; 080F453A
.pool                           ; 080F453C

Sub080F4540:
push  {r4-r5,lr}                ; 080F4540
mov   r12,r0                    ; 080F4542
lsl   r1,r1,0x10                ; 080F4544
lsr   r1,r1,0x10                ; 080F4546
mov   r3,r12                    ; 080F4548
add   r3,0xEB                   ; 080F454A
mov   r0,0x0                    ; 080F454C
strb  r0,[r3]                   ; 080F454E
mov   r2,r12                    ; 080F4550
add   r2,0xEA                   ; 080F4552
strb  r0,[r2]                   ; 080F4554
sub   r2,0x1                    ; 080F4556
strb  r0,[r2]                   ; 080F4558
cmp   r1,0x63                   ; 080F455A
bls   @@Code080F4574            ; 080F455C
mov   r4,r3                     ; 080F455E
ldrb  r3,[r4]                   ; 080F4560
@@Code080F4562:
add   r2,r3,0x1                 ; 080F4562
mov   r3,r2                     ; 080F4564
mov   r0,r1                     ; 080F4566
sub   r0,0x64                   ; 080F4568
lsl   r0,r0,0x10                ; 080F456A
lsr   r1,r0,0x10                ; 080F456C
cmp   r1,0x63                   ; 080F456E
bhi   @@Code080F4562            ; 080F4570
strb  r2,[r4]                   ; 080F4572
@@Code080F4574:
mov   r5,r12                    ; 080F4574
add   r5,0xE9                   ; 080F4576
cmp   r1,0x9                    ; 080F4578
bls   @@Code080F4594            ; 080F457A
mov   r4,r12                    ; 080F457C
add   r4,0xEA                   ; 080F457E
ldrb  r3,[r4]                   ; 080F4580
@@Code080F4582:
add   r2,r3,0x1                 ; 080F4582
mov   r3,r2                     ; 080F4584
mov   r0,r1                     ; 080F4586
sub   r0,0xA                    ; 080F4588
lsl   r0,r0,0x10                ; 080F458A
lsr   r1,r0,0x10                ; 080F458C
cmp   r1,0x9                    ; 080F458E
bhi   @@Code080F4582            ; 080F4590
strb  r2,[r4]                   ; 080F4592
@@Code080F4594:
strb  r1,[r5]                   ; 080F4594
pop   {r4-r5}                   ; 080F4596
pop   {r0}                      ; 080F4598
bx    r0                        ; 080F459A

Sub080F459C:
push  {r4-r7,lr}                ; 080F459C
mov   r5,r0                     ; 080F459E
add   r0,0xE8                   ; 080F45A0
ldrb  r1,[r0]                   ; 080F45A2
mov   r0,r5                     ; 080F45A4
bl    Sub080F4540               ; 080F45A6
ldr   r6,=0x0600B2A8            ; 080F45AA
mov   r0,0xEA                   ; 080F45AC
add   r0,r0,r5                  ; 080F45AE
mov   r12,r0                    ; 080F45B0
ldrb  r0,[r0]                   ; 080F45B2
cmp   r0,0x0                    ; 080F45B4
beq   @@Code080F45F4            ; 080F45B6
ldr   r4,=Data08196A08          ; 080F45B8
mov   r1,r12                    ; 080F45BA
ldrb  r0,[r1]                   ; 080F45BC
lsl   r0,r0,0x1                 ; 080F45BE
add   r0,r0,r4                  ; 080F45C0
ldrh  r0,[r0]                   ; 080F45C2
mov   r3,0xC0                   ; 080F45C4
lsl   r3,r3,0x6                 ; 080F45C6
mov   r2,r3                     ; 080F45C8
orr   r0,r2                     ; 080F45CA
strh  r0,[r6]                   ; 080F45CC
ldr   r3,=0x0600B2E8            ; 080F45CE
ldr   r1,=Data08196A1C          ; 080F45D0
mov   r7,r12                    ; 080F45D2
ldrb  r0,[r7]                   ; 080F45D4
lsl   r0,r0,0x1                 ; 080F45D6
add   r0,r0,r1                  ; 080F45D8
ldrh  r0,[r0]                   ; 080F45DA
orr   r0,r2                     ; 080F45DC
strh  r0,[r3]                   ; 080F45DE
mov   r7,r1                     ; 080F45E0
b     @@Code080F4602            ; 080F45E2
.pool                           ; 080F45E4

@@Code080F45F4:
ldr   r0,=0x30FC                ; 080F45F4
mov   r1,r0                     ; 080F45F6
strh  r1,[r6]                   ; 080F45F8
ldr   r0,=0x0600B2E8            ; 080F45FA
strh  r1,[r0]                   ; 080F45FC
ldr   r4,=Data08196A08          ; 080F45FE
ldr   r7,=Data08196A1C          ; 080F4600
@@Code080F4602:
mov   r2,r5                     ; 080F4602
add   r2,0xE9                   ; 080F4604
ldrb  r0,[r2]                   ; 080F4606
lsl   r0,r0,0x1                 ; 080F4608
add   r0,r0,r4                  ; 080F460A
ldrh  r0,[r0]                   ; 080F460C
mov   r3,0xC0                   ; 080F460E
lsl   r3,r3,0x6                 ; 080F4610
mov   r1,r3                     ; 080F4612
orr   r0,r1                     ; 080F4614
strh  r0,[r6,0x2]               ; 080F4616
mov   r3,r6                     ; 080F4618
add   r3,0x42                   ; 080F461A
ldrb  r0,[r2]                   ; 080F461C
lsl   r0,r0,0x1                 ; 080F461E
add   r0,r0,r7                  ; 080F4620
ldrh  r0,[r0]                   ; 080F4622
orr   r0,r1                     ; 080F4624
strh  r0,[r3]                   ; 080F4626
pop   {r4-r7}                   ; 080F4628
pop   {r0}                      ; 080F462A
bx    r0                        ; 080F462C
.pool                           ; 080F462E

Sub080F4640:
push  {r4-r6,lr}                ; 080F4640
mov   r4,r0                     ; 080F4642
lsl   r1,r1,0x10                ; 080F4644
lsr   r1,r1,0x10                ; 080F4646
mov   r3,r1                     ; 080F4648
mov   r5,0x63                   ; 080F464A
mov   r2,r4                     ; 080F464C
add   r2,0x4A                   ; 080F464E
ldrh  r0,[r2]                   ; 080F4650
cmp   r0,0x63                   ; 080F4652
bhi   @@Code080F4658            ; 080F4654
mov   r5,r0                     ; 080F4656
@@Code080F4658:
add   r0,r5,0x1                 ; 080F4658
lsl   r0,r0,0x10                ; 080F465A
lsr   r6,r0,0x10                ; 080F465C
mov   r0,0x40                   ; 080F465E
and   r0,r1                     ; 080F4660
cmp   r0,0x0                    ; 080F4662
beq   @@Code080F4670            ; 080F4664
mov   r1,r4                     ; 080F4666
add   r1,0xE8                   ; 080F4668
ldrb  r0,[r1]                   ; 080F466A
add   r0,0x1                    ; 080F466C
b     @@Code080F4680            ; 080F466E
@@Code080F4670:
mov   r0,0x80                   ; 080F4670
and   r3,r0                     ; 080F4672
mov   r1,r4                     ; 080F4674
add   r1,0xE8                   ; 080F4676
cmp   r3,0x0                    ; 080F4678
beq   @@Code080F4682            ; 080F467A
ldrb  r0,[r1]                   ; 080F467C
sub   r0,0x1                    ; 080F467E
@@Code080F4680:
strb  r0,[r1]                   ; 080F4680
@@Code080F4682:
mov   r2,r1                     ; 080F4682
ldrb  r0,[r2]                   ; 080F4684
cmp   r0,r6                     ; 080F4686
bne   @@Code080F4690            ; 080F4688
mov   r0,0x1                    ; 080F468A
strb  r0,[r2]                   ; 080F468C
b     @@Code080F4696            ; 080F468E
@@Code080F4690:
cmp   r0,0x0                    ; 080F4690
bne   @@Code080F4696            ; 080F4692
strb  r5,[r1]                   ; 080F4694
@@Code080F4696:
pop   {r4-r6}                   ; 080F4696
pop   {r0}                      ; 080F4698
bx    r0                        ; 080F469A

Sub080F469C:
push  {r4-r7,lr}                ; 080F469C
mov   r5,r0                     ; 080F469E
add   r0,0xE8                   ; 080F46A0
ldrb  r1,[r0]                   ; 080F46A2
mov   r0,r5                     ; 080F46A4
bl    Sub080F4540               ; 080F46A6
ldr   r6,=0x0600B2D0            ; 080F46AA
mov   r0,0xEA                   ; 080F46AC
add   r0,r0,r5                  ; 080F46AE
mov   r12,r0                    ; 080F46B0
ldrb  r0,[r0]                   ; 080F46B2
cmp   r0,0x0                    ; 080F46B4
beq   @@Code080F46F4            ; 080F46B6
ldr   r4,=Data08196A08          ; 080F46B8
mov   r1,r12                    ; 080F46BA
ldrb  r0,[r1]                   ; 080F46BC
lsl   r0,r0,0x1                 ; 080F46BE
add   r0,r0,r4                  ; 080F46C0
ldrh  r0,[r0]                   ; 080F46C2
mov   r3,0xC0                   ; 080F46C4
lsl   r3,r3,0x6                 ; 080F46C6
mov   r2,r3                     ; 080F46C8
orr   r0,r2                     ; 080F46CA
strh  r0,[r6]                   ; 080F46CC
ldr   r3,=0x0600B310            ; 080F46CE
ldr   r1,=Data08196A1C          ; 080F46D0
mov   r7,r12                    ; 080F46D2
ldrb  r0,[r7]                   ; 080F46D4
lsl   r0,r0,0x1                 ; 080F46D6
add   r0,r0,r1                  ; 080F46D8
ldrh  r0,[r0]                   ; 080F46DA
orr   r0,r2                     ; 080F46DC
strh  r0,[r3]                   ; 080F46DE
mov   r7,r1                     ; 080F46E0
b     @@Code080F4702            ; 080F46E2
.pool                           ; 080F46E4

@@Code080F46F4:
ldr   r0,=0x30FC                ; 080F46F4
mov   r1,r0                     ; 080F46F6
strh  r1,[r6]                   ; 080F46F8
ldr   r0,=0x0600B310            ; 080F46FA
strh  r1,[r0]                   ; 080F46FC
ldr   r4,=Data08196A08          ; 080F46FE
ldr   r7,=Data08196A1C          ; 080F4700
@@Code080F4702:
mov   r2,r5                     ; 080F4702
add   r2,0xE9                   ; 080F4704
ldrb  r0,[r2]                   ; 080F4706
lsl   r0,r0,0x1                 ; 080F4708
add   r0,r0,r4                  ; 080F470A
ldrh  r0,[r0]                   ; 080F470C
mov   r3,0xC0                   ; 080F470E
lsl   r3,r3,0x6                 ; 080F4710
mov   r1,r3                     ; 080F4712
orr   r0,r1                     ; 080F4714
strh  r0,[r6,0x2]               ; 080F4716
mov   r3,r6                     ; 080F4718
add   r3,0x42                   ; 080F471A
ldrb  r0,[r2]                   ; 080F471C
lsl   r0,r0,0x1                 ; 080F471E
add   r0,r0,r7                  ; 080F4720
ldrh  r0,[r0]                   ; 080F4722
orr   r0,r1                     ; 080F4724
strh  r0,[r3]                   ; 080F4726
pop   {r4-r7}                   ; 080F4728
pop   {r0}                      ; 080F472A
bx    r0                        ; 080F472C
.pool                           ; 080F472E

Sub080F4740:
push  {r4-r7,lr}                ; 080F4740
mov   r7,r8                     ; 080F4742
push  {r7}                      ; 080F4744
mov   r5,r0                     ; 080F4746
ldr   r3,=0x03002200            ; 080F4748
ldr   r0,=0x47C0                ; 080F474A
add   r6,r3,r0                  ; 080F474C
ldrh  r1,[r6]                   ; 080F474E
mov   r2,0x1                    ; 080F4750
and   r2,r1                     ; 080F4752
cmp   r2,0x0                    ; 080F4754
beq   @@Code080F4780            ; 080F4756
mov   r1,r5                     ; 080F4758
add   r1,0xD7                   ; 080F475A
mov   r0,0x1                    ; 080F475C
strb  r0,[r1]                   ; 080F475E
mov   r0,0x4                    ; 080F4760
strh  r0,[r5,0x1C]              ; 080F4762
ldr   r0,=Data08196BA0          ; 080F4764
ldrh  r0,[r0,0x8]               ; 080F4766
bl    Sub080EFDB8               ; 080F4768
mov   r0,r5                     ; 080F476C
bl    Sub080F459C               ; 080F476E
b     @@Code080F4872            ; 080F4772
.pool                           ; 080F4774

@@Code080F4780:
mov   r4,0xC0                   ; 080F4780
mov   r0,r4                     ; 080F4782
and   r0,r1                     ; 080F4784
cmp   r0,0x0                    ; 080F4786
bne   @@Code080F47BE            ; 080F4788
ldr   r1,=0x47BE                ; 080F478A
add   r3,r3,r1                  ; 080F478C
ldrh  r1,[r3]                   ; 080F478E
mov   r0,r4                     ; 080F4790
and   r0,r1                     ; 080F4792
cmp   r0,0x0                    ; 080F4794
bne   @@Code080F47A4            ; 080F4796
mov   r0,r5                     ; 080F4798
add   r0,0xEC                   ; 080F479A
strb  r2,[r0]                   ; 080F479C
b     @@Code080F4872            ; 080F479E
.pool                           ; 080F47A0

@@Code080F47A4:
mov   r1,r5                     ; 080F47A4
add   r1,0xEC                   ; 080F47A6
ldrb  r2,[r1]                   ; 080F47A8
add   r0,r2,0x1                 ; 080F47AA
strb  r0,[r1]                   ; 080F47AC
lsl   r0,r0,0x18                ; 080F47AE
lsr   r0,r0,0x18                ; 080F47B0
cmp   r0,0x1F                   ; 080F47B2
bls   @@Code080F4872            ; 080F47B4
strb  r2,[r1]                   ; 080F47B6
ldrh  r0,[r3]                   ; 080F47B8
and   r4,r0                     ; 080F47BA
b     @@Code080F47E2            ; 080F47BC
@@Code080F47BE:
ldr   r7,=0x4058                ; 080F47BE
add   r1,r3,r7                  ; 080F47C0
mov   r0,0x78                   ; 080F47C2
strh  r0,[r1]                   ; 080F47C4
add   r7,0x2                    ; 080F47C6
add   r0,r3,r7                  ; 080F47C8
strh  r2,[r0]                   ; 080F47CA
mov   r0,0x6B                   ; 080F47CC
bl    PlayYISound               ; 080F47CE
ldrh  r0,[r6]                   ; 080F47D2
and   r4,r0                     ; 080F47D4
mov   r0,r5                     ; 080F47D6
mov   r1,r4                     ; 080F47D8
bl    Sub080F4640               ; 080F47DA
mov   r1,r5                     ; 080F47DE
add   r1,0xEC                   ; 080F47E0
@@Code080F47E2:
ldrb  r0,[r1]                   ; 080F47E2
mov   r1,0x4A                   ; 080F47E4
add   r1,r1,r5                  ; 080F47E6
mov   r8,r1                     ; 080F47E8
mov   r6,r5                     ; 080F47EA
add   r6,0xE8                   ; 080F47EC
cmp   r0,0x1F                   ; 080F47EE
bne   @@Code080F484A            ; 080F47F0
ldr   r1,=0x03002200            ; 080F47F2
ldr   r7,=0x4058                ; 080F47F4
add   r3,r1,r7                  ; 080F47F6
mov   r2,0x0                    ; 080F47F8
mov   r0,0x78                   ; 080F47FA
strh  r0,[r3]                   ; 080F47FC
add   r7,0x2                    ; 080F47FE
add   r0,r1,r7                  ; 080F4800
strh  r2,[r0]                   ; 080F4802
ldr   r0,=0x4901                ; 080F4804
add   r1,r1,r0                  ; 080F4806
ldrb  r1,[r1]                   ; 080F4808
mov   r0,0x1                    ; 080F480A
and   r0,r1                     ; 080F480C
cmp   r0,0x0                    ; 080F480E
beq   @@Code080F4842            ; 080F4810
mov   r1,r8                     ; 080F4812
ldrh  r0,[r1]                   ; 080F4814
cmp   r0,0xFF                   ; 080F4816
bhi   @@Code080F481E            ; 080F4818
cmp   r0,0x0                    ; 080F481A
beq   @@Code080F4834            ; 080F481C
@@Code080F481E:
mov   r0,0x6B                   ; 080F481E
mov   r1,r3                     ; 080F4820
bl    PlayYISound               ; 080F4822
b     @@Code080F4842            ; 080F4826
.pool                           ; 080F4828

@@Code080F4834:
ldrb  r0,[r6]                   ; 080F4834
cmp   r0,0x1                    ; 080F4836
bne   @@Code080F4842            ; 080F4838
mov   r0,0x6B                   ; 080F483A
mov   r1,r3                     ; 080F483C
bl    PlayYISound               ; 080F483E
@@Code080F4842:
mov   r0,r5                     ; 080F4842
mov   r1,r4                     ; 080F4844
bl    Sub080F4640               ; 080F4846
@@Code080F484A:
ldr   r2,=0x03002200            ; 080F484A
ldrb  r1,[r6]                   ; 080F484C
mov   r3,r8                     ; 080F484E
ldrh  r0,[r3]                   ; 080F4850
sub   r0,r0,r1                  ; 080F4852
add   r0,0x1                    ; 080F4854
ldr   r7,=0x407E                ; 080F4856
add   r2,r2,r7                  ; 080F4858
strh  r0,[r2]                   ; 080F485A
lsl   r0,r0,0x10                ; 080F485C
lsr   r0,r0,0x10                ; 080F485E
ldr   r1,=0x03E7                ; 080F4860
cmp   r0,r1                     ; 080F4862
bls   @@Code080F4868            ; 080F4864
strh  r1,[r2]                   ; 080F4866
@@Code080F4868:
bl    Sub080EF708               ; 080F4868
mov   r0,r5                     ; 080F486C
bl    Sub080F469C               ; 080F486E
@@Code080F4872:
pop   {r3}                      ; 080F4872
mov   r8,r3                     ; 080F4874
pop   {r4-r7}                   ; 080F4876
pop   {r0}                      ; 080F4878
bx    r0                        ; 080F487A
.pool                           ; 080F487C

Sub080F4888:
push  {r4,lr}                   ; 080F4888
ldr   r1,=Data08196A3E          ; 080F488A
add   r0,0xD9                   ; 080F488C
ldrb  r0,[r0]                   ; 080F488E
add   r0,r0,r1                  ; 080F4890
ldrb  r1,[r0]                   ; 080F4892
ldr   r2,=0x0600B2AE            ; 080F4894
ldr   r0,=Data08196A08          ; 080F4896
lsl   r1,r1,0x1                 ; 080F4898
add   r0,r1,r0                  ; 080F489A
ldrh  r0,[r0]                   ; 080F489C
mov   r4,0xC0                   ; 080F489E
lsl   r4,r4,0x6                 ; 080F48A0
mov   r3,r4                     ; 080F48A2
orr   r0,r3                     ; 080F48A4
strh  r0,[r2]                   ; 080F48A6
add   r2,0x40                   ; 080F48A8
ldr   r0,=Data08196A1C          ; 080F48AA
add   r1,r1,r0                  ; 080F48AC
ldrh  r0,[r1]                   ; 080F48AE
orr   r0,r3                     ; 080F48B0
strh  r0,[r2]                   ; 080F48B2
pop   {r4}                      ; 080F48B4
pop   {r0}                      ; 080F48B6
bx    r0                        ; 080F48B8
.pool                           ; 080F48BA

Sub080F48CC:
ldr   r1,=Data08196A30          ; 080F48CC
add   r0,0xD8                   ; 080F48CE
ldrb  r0,[r0]                   ; 080F48D0
add   r0,r0,r1                  ; 080F48D2
ldrb  r1,[r0]                   ; 080F48D4
ldr   r2,=0x0600B2AC            ; 080F48D6
ldr   r3,=Data08197448          ; 080F48D8
lsl   r0,r1,0x1                 ; 080F48DA
add   r0,r0,r3                  ; 080F48DC
ldrh  r0,[r0]                   ; 080F48DE
strh  r0,[r2]                   ; 080F48E0
add   r2,0x40                   ; 080F48E2
add   r1,0x2                    ; 080F48E4
lsl   r1,r1,0x1                 ; 080F48E6
add   r1,r1,r3                  ; 080F48E8
ldrh  r0,[r1]                   ; 080F48EA
strh  r0,[r2]                   ; 080F48EC
bx    lr                        ; 080F48EE
.pool                           ; 080F48F0

Sub080F48FC:
push  {r4-r7,lr}                ; 080F48FC
mov   r7,r0                     ; 080F48FE
lsl   r1,r1,0x10                ; 080F4900
lsr   r5,r1,0x10                ; 080F4902
mov   r3,r7                     ; 080F4904
add   r3,0xDA                   ; 080F4906
mov   r4,r7                     ; 080F4908
add   r4,0xDC                   ; 080F490A
mov   r6,r7                     ; 080F490C
add   r6,0xE0                   ; 080F490E
add   r0,0xEF                   ; 080F4910
ldrb  r0,[r0]                   ; 080F4912
cmp   r0,0x0                    ; 080F4914
beq   @@Code080F4976            ; 080F4916
add   r2,r6,r5                  ; 080F4918
ldrb  r0,[r2]                   ; 080F491A
mov   r1,r0                     ; 080F491C
cmp   r1,0x0                    ; 080F491E
beq   @@Code080F495A            ; 080F4920
cmp   r1,0x1                    ; 080F4922
bne   @@Code080F4952            ; 080F4924
mov   r2,r7                     ; 080F4926
add   r2,0xE6                   ; 080F4928
add   r0,r5,0x1                 ; 080F492A
ldrb  r1,[r2]                   ; 080F492C
orr   r0,r1                     ; 080F492E
strb  r0,[r2]                   ; 080F4930
mov   r1,0x3                    ; 080F4932
and   r0,r1                     ; 080F4934
cmp   r0,0x3                    ; 080F4936
bne   @@Code080F494A            ; 080F4938
mov   r1,r7                     ; 080F493A
add   r1,0xD7                   ; 080F493C
mov   r0,0x2                    ; 080F493E
strb  r0,[r1]                   ; 080F4940
mov   r0,r7                     ; 080F4942
bl    Sub080F4888               ; 080F4944
b     @@Code080F4A1A            ; 080F4948
@@Code080F494A:
mov   r0,r7                     ; 080F494A
bl    Sub080F48CC               ; 080F494C
b     @@Code080F4A1A            ; 080F4950
@@Code080F4952:
sub   r0,0x1                    ; 080F4952
strb  r0,[r2]                   ; 080F4954
add   r2,r3,r5                  ; 080F4956
b     @@Code080F4990            ; 080F4958
@@Code080F495A:
ldr   r1,=0x03002200            ; 080F495A
ldr   r0,=0x4901                ; 080F495C
add   r1,r1,r0                  ; 080F495E
ldr   r0,=Data0819743C          ; 080F4960
add   r0,r5,r0                  ; 080F4962
ldrb  r1,[r1]                   ; 080F4964
ldrb  r0,[r0]                   ; 080F4966
and   r0,r1                     ; 080F4968
cmp   r0,0x0                    ; 080F496A
bne   @@Code080F4976            ; 080F496C
add   r1,r3,r5                  ; 080F496E
ldrb  r0,[r1]                   ; 080F4970
sub   r0,0x1                    ; 080F4972
strb  r0,[r1]                   ; 080F4974
@@Code080F4976:
add   r0,r3,r5                  ; 080F4976
ldrb  r1,[r0]                   ; 080F4978
mov   r2,r0                     ; 080F497A
cmp   r1,0x0                    ; 080F497C
beq   @@Code080F49A4            ; 080F497E
ldr   r0,=Data08197446          ; 080F4980
add   r0,r5,r0                  ; 080F4982
ldrb  r0,[r0]                   ; 080F4984
cmp   r1,r0                     ; 080F4986
bne   @@Code080F4990            ; 080F4988
add   r1,r6,r5                  ; 080F498A
mov   r0,0x50                   ; 080F498C
strb  r0,[r1]                   ; 080F498E
@@Code080F4990:
ldrb  r2,[r2]                   ; 080F4990
add   r1,r4,r5                  ; 080F4992
ldrb  r0,[r1]                   ; 080F4994
add   r0,r0,r2                  ; 080F4996
strb  r0,[r1]                   ; 080F4998
mov   r1,0xFF                   ; 080F499A
lsl   r1,r1,0x8                 ; 080F499C
and   r0,r1                     ; 080F499E
cmp   r0,0x0                    ; 080F49A0
beq   @@Code080F4A1A            ; 080F49A2
@@Code080F49A4:
mov   r0,0x4B                   ; 080F49A4
mov   r1,0x0                    ; 080F49A6
bl    PlayYISound               ; 080F49A8
mov   r3,r7                     ; 080F49AC
add   r3,0xD8                   ; 080F49AE
mov   r4,r7                     ; 080F49B0
add   r4,0xDE                   ; 080F49B2
add   r2,r3,r5                  ; 080F49B4
ldr   r0,=Data0819743E          ; 080F49B6
add   r0,r5,r0                  ; 080F49B8
ldrb  r0,[r0]                   ; 080F49BA
ldrb  r1,[r2]                   ; 080F49BC
add   r0,r0,r1                  ; 080F49BE
strb  r0,[r2]                   ; 080F49C0
ldr   r1,=Data08197440          ; 080F49C2
add   r1,r5,r1                  ; 080F49C4
lsl   r0,r0,0x18                ; 080F49C6
lsr   r0,r0,0x18                ; 080F49C8
ldrb  r1,[r1]                   ; 080F49CA
cmp   r0,r1                     ; 080F49CC
bne   @@Code080F49D8            ; 080F49CE
ldr   r0,=Data08197442          ; 080F49D0
add   r0,r5,r0                  ; 080F49D2
ldrb  r0,[r0]                   ; 080F49D4
strb  r0,[r2]                   ; 080F49D6
@@Code080F49D8:
add   r6,r4,r5                  ; 080F49D8
ldrb  r0,[r2]                   ; 080F49DA
sub   r0,0x1                    ; 080F49DC
strb  r0,[r6]                   ; 080F49DE
mov   r1,0x80                   ; 080F49E0
and   r0,r1                     ; 080F49E2
cmp   r0,0x0                    ; 080F49E4
beq   @@Code080F49F0            ; 080F49E6
ldr   r0,=Data08197444          ; 080F49E8
add   r0,r5,r0                  ; 080F49EA
ldrb  r0,[r0]                   ; 080F49EC
strb  r0,[r6]                   ; 080F49EE
@@Code080F49F0:
neg   r4,r5                     ; 080F49F0
orr   r4,r5                     ; 080F49F2
asr   r4,r4,0x1F                ; 080F49F4
mov   r0,0x10                   ; 080F49F6
and   r4,r0                     ; 080F49F8
ldrb  r0,[r2]                   ; 080F49FA
mov   r5,r7                     ; 080F49FC
add   r5,0xE7                   ; 080F49FE
strb  r0,[r5]                   ; 080F4A00
mov   r0,r7                     ; 080F4A02
mov   r1,0x0                    ; 080F4A04
mov   r2,r4                     ; 080F4A06
bl    Sub080F4448               ; 080F4A08
ldrb  r0,[r6]                   ; 080F4A0C
strb  r0,[r5]                   ; 080F4A0E
mov   r0,r7                     ; 080F4A10
mov   r1,0x1                    ; 080F4A12
mov   r2,r4                     ; 080F4A14
bl    Sub080F4448               ; 080F4A16
@@Code080F4A1A:
pop   {r4-r7}                   ; 080F4A1A
pop   {r0}                      ; 080F4A1C
bx    r0                        ; 080F4A1E
.pool                           ; 080F4A20

Sub080F4A40:
push  {r4-r6,lr}                ; 080F4A40
mov   r5,r0                     ; 080F4A42
mov   r3,r5                     ; 080F4A44
add   r3,0xEF                   ; 080F4A46
ldrb  r2,[r3]                   ; 080F4A48
cmp   r2,0x0                    ; 080F4A4A
bne   @@Code080F4A6E            ; 080F4A4C
ldr   r0,=0x03002200            ; 080F4A4E
ldr   r1,=0x47C0                ; 080F4A50
add   r0,r0,r1                  ; 080F4A52
ldrh  r1,[r0]                   ; 080F4A54
mov   r0,0x1                    ; 080F4A56
and   r0,r1                     ; 080F4A58
cmp   r0,0x0                    ; 080F4A5A
beq   @@Code080F4A6E            ; 080F4A5C
add   r0,r2,0x1                 ; 080F4A5E
strb  r0,[r3]                   ; 080F4A60
mov   r1,r5                     ; 080F4A62
add   r1,0xDB                   ; 080F4A64
mov   r0,0x50                   ; 080F4A66
strb  r0,[r1]                   ; 080F4A68
sub   r1,0x1                    ; 080F4A6A
strb  r0,[r1]                   ; 080F4A6C
@@Code080F4A6E:
mov   r4,0x0                    ; 080F4A6E
mov   r6,r5                     ; 080F4A70
add   r6,0xE6                   ; 080F4A72
@@Code080F4A74:
ldrb  r0,[r6]                   ; 080F4A74
sub   r0,0x1                    ; 080F4A76
cmp   r0,r4                     ; 080F4A78
beq   @@Code080F4A84            ; 080F4A7A
mov   r0,r5                     ; 080F4A7C
mov   r1,r4                     ; 080F4A7E
bl    Sub080F48FC               ; 080F4A80
@@Code080F4A84:
add   r0,r4,0x1                 ; 080F4A84
lsl   r0,r0,0x10                ; 080F4A86
lsr   r4,r0,0x10                ; 080F4A88
cmp   r4,0x1                    ; 080F4A8A
bls   @@Code080F4A74            ; 080F4A8C
bl    Sub080EF708               ; 080F4A8E
mov   r0,r5                     ; 080F4A92
bl    Sub080F469C               ; 080F4A94
pop   {r4-r6}                   ; 080F4A98
pop   {r0}                      ; 080F4A9A
bx    r0                        ; 080F4A9C
.pool                           ; 080F4A9E

Sub080F4AA8:
push  {r4,lr}                   ; 080F4AA8
mov   r2,r0                     ; 080F4AAA
add   r0,0xE8                   ; 080F4AAC
ldrb  r4,[r0]                   ; 080F4AAE
ldr   r1,=Data08196A3E          ; 080F4AB0
sub   r0,0xF                    ; 080F4AB2
ldrb  r0,[r0]                   ; 080F4AB4
add   r0,r0,r1                  ; 080F4AB6
ldrb  r3,[r0]                   ; 080F4AB8
ldr   r1,=Data08196A30          ; 080F4ABA
mov   r0,r2                     ; 080F4ABC
add   r0,0xD8                   ; 080F4ABE
ldrb  r0,[r0]                   ; 080F4AC0
add   r0,r0,r1                  ; 080F4AC2
ldrb  r0,[r0]                   ; 080F4AC4
cmp   r0,0x0                    ; 080F4AC6
beq   @@Code080F4AD8            ; 080F4AC8
mov   r1,r4                     ; 080F4ACA
mul   r1,r3                     ; 080F4ACC
b     @@Code080F4ADA            ; 080F4ACE
.pool                           ; 080F4AD0

@@Code080F4AD8:
add   r1,r3,r4                  ; 080F4AD8
@@Code080F4ADA:
mov   r0,r2                     ; 080F4ADA
add   r0,0x48                   ; 080F4ADC
strh  r1,[r0]                   ; 080F4ADE
pop   {r4}                      ; 080F4AE0
pop   {r0}                      ; 080F4AE2
bx    r0                        ; 080F4AE4
.pool                           ; 080F4AE6

Sub080F4AE8:
push  {r4-r7,lr}                ; 080F4AE8
mov   r5,r0                     ; 080F4AEA
bl    Sub080F4AA8               ; 080F4AEC
mov   r0,r5                     ; 080F4AF0
add   r0,0x48                   ; 080F4AF2
ldrh  r1,[r0]                   ; 080F4AF4
mov   r0,r5                     ; 080F4AF6
bl    Sub080F4540               ; 080F4AF8
ldr   r6,=0x0600B328            ; 080F4AFC
mov   r0,0xEB                   ; 080F4AFE
add   r0,r0,r5                  ; 080F4B00
mov   r12,r0                    ; 080F4B02
ldrb  r0,[r0]                   ; 080F4B04
cmp   r0,0x0                    ; 080F4B06
beq   @@Code080F4B54            ; 080F4B08
ldr   r4,=Data08196A08          ; 080F4B0A
mov   r1,r12                    ; 080F4B0C
ldrb  r0,[r1]                   ; 080F4B0E
lsl   r0,r0,0x1                 ; 080F4B10
add   r0,r0,r4                  ; 080F4B12
ldrh  r0,[r0]                   ; 080F4B14
mov   r2,0xC0                   ; 080F4B16
lsl   r2,r2,0x6                 ; 080F4B18
mov   r1,r2                     ; 080F4B1A
orr   r0,r1                     ; 080F4B1C
strh  r0,[r6]                   ; 080F4B1E
ldr   r2,=0x0600B368            ; 080F4B20
ldr   r3,=Data08196A1C          ; 080F4B22
mov   r7,r12                    ; 080F4B24
ldrb  r0,[r7]                   ; 080F4B26
lsl   r0,r0,0x1                 ; 080F4B28
add   r0,r0,r3                  ; 080F4B2A
ldrh  r0,[r0]                   ; 080F4B2C
orr   r0,r1                     ; 080F4B2E
strh  r0,[r2]                   ; 080F4B30
mov   r0,0xEA                   ; 080F4B32
add   r0,r0,r5                  ; 080F4B34
mov   r12,r0                    ; 080F4B36
ldrb  r0,[r0]                   ; 080F4B38
lsl   r0,r0,0x1                 ; 080F4B3A
add   r0,r0,r4                  ; 080F4B3C
ldrh  r0,[r0]                   ; 080F4B3E
orr   r0,r1                     ; 080F4B40
strh  r0,[r6,0x2]               ; 080F4B42
add   r2,0x2                    ; 080F4B44
mov   r4,r12                    ; 080F4B46
ldrb  r0,[r4]                   ; 080F4B48
lsl   r0,r0,0x1                 ; 080F4B4A
add   r0,r0,r3                  ; 080F4B4C
ldrh  r0,[r0]                   ; 080F4B4E
orr   r0,r1                     ; 080F4B50
strh  r0,[r2]                   ; 080F4B52
@@Code080F4B54:
mov   r2,r5                     ; 080F4B54
add   r2,0xEA                   ; 080F4B56
ldrb  r0,[r2]                   ; 080F4B58
ldr   r4,=Data08196A08          ; 080F4B5A
ldr   r7,=Data08196A1C          ; 080F4B5C
cmp   r0,0x0                    ; 080F4B5E
beq   @@Code080F4B82            ; 080F4B60
lsl   r0,r0,0x1                 ; 080F4B62
add   r0,r0,r4                  ; 080F4B64
ldrh  r0,[r0]                   ; 080F4B66
mov   r3,0xC0                   ; 080F4B68
lsl   r3,r3,0x6                 ; 080F4B6A
mov   r1,r3                     ; 080F4B6C
orr   r0,r1                     ; 080F4B6E
strh  r0,[r6,0x2]               ; 080F4B70
mov   r3,r6                     ; 080F4B72
add   r3,0x42                   ; 080F4B74
ldrb  r0,[r2]                   ; 080F4B76
lsl   r0,r0,0x1                 ; 080F4B78
add   r0,r0,r7                  ; 080F4B7A
ldrh  r0,[r0]                   ; 080F4B7C
orr   r0,r1                     ; 080F4B7E
strh  r0,[r3]                   ; 080F4B80
@@Code080F4B82:
mov   r2,r5                     ; 080F4B82
add   r2,0xE9                   ; 080F4B84
ldrb  r0,[r2]                   ; 080F4B86
lsl   r0,r0,0x1                 ; 080F4B88
add   r0,r0,r4                  ; 080F4B8A
ldrh  r0,[r0]                   ; 080F4B8C
mov   r4,0xC0                   ; 080F4B8E
lsl   r4,r4,0x6                 ; 080F4B90
mov   r1,r4                     ; 080F4B92
orr   r0,r1                     ; 080F4B94
strh  r0,[r6,0x4]               ; 080F4B96
mov   r3,r6                     ; 080F4B98
add   r3,0x44                   ; 080F4B9A
ldrb  r0,[r2]                   ; 080F4B9C
lsl   r0,r0,0x1                 ; 080F4B9E
add   r0,r0,r7                  ; 080F4BA0
ldrh  r0,[r0]                   ; 080F4BA2
orr   r0,r1                     ; 080F4BA4
strh  r0,[r3]                   ; 080F4BA6
pop   {r4-r7}                   ; 080F4BA8
pop   {r0}                      ; 080F4BAA
bx    r0                        ; 080F4BAC
.pool                           ; 080F4BAE

Sub080F4BC0:
push  {r4-r6,lr}                ; 080F4BC0
mov   r5,r0                     ; 080F4BC2
mov   r6,r5                     ; 080F4BC4
add   r6,0xEE                   ; 080F4BC6
ldrb  r0,[r6]                   ; 080F4BC8
sub   r0,0x1                    ; 080F4BCA
strb  r0,[r6]                   ; 080F4BCC
lsl   r0,r0,0x18                ; 080F4BCE
cmp   r0,0x0                    ; 080F4BD0
bne   @@Code080F4C62            ; 080F4BD2
mov   r4,r5                     ; 080F4BD4
add   r4,0xED                   ; 080F4BD6
ldrb  r0,[r4]                   ; 080F4BD8
cmp   r0,0x0                    ; 080F4BDA
bne   @@Code080F4BE4            ; 080F4BDC
mov   r0,r5                     ; 080F4BDE
bl    Sub080F4AE8               ; 080F4BE0
@@Code080F4BE4:
mov   r2,0x40                   ; 080F4BE4
strb  r2,[r6]                   ; 080F4BE6
ldrb  r0,[r4]                   ; 080F4BE8
add   r0,0x1                    ; 080F4BEA
strb  r0,[r4]                   ; 080F4BEC
lsl   r0,r0,0x18                ; 080F4BEE
lsr   r0,r0,0x18                ; 080F4BF0
cmp   r0,0x1                    ; 080F4BF2
bne   @@Code080F4C62            ; 080F4BF4
mov   r1,r5                     ; 080F4BF6
add   r1,0xD7                   ; 080F4BF8
mov   r0,0x3                    ; 080F4BFA
strb  r0,[r1]                   ; 080F4BFC
strh  r2,[r5,0x12]              ; 080F4BFE
mov   r2,r5                     ; 080F4C00
add   r2,0x48                   ; 080F4C02
ldrh  r1,[r2]                   ; 080F4C04
strh  r1,[r5,0x30]              ; 080F4C06
mov   r0,r5                     ; 080F4C08
add   r0,0xE8                   ; 080F4C0A
ldrb  r4,[r0]                   ; 080F4C0C
lsl   r1,r1,0x10                ; 080F4C0E
mov   r6,r2                     ; 080F4C10
cmp   r1,0x0                    ; 080F4C12
beq   @@Code080F4C28            ; 080F4C14
ldrh  r0,[r6]                   ; 080F4C16
cmp   r0,0xFF                   ; 080F4C18
bhi   @@Code080F4C20            ; 080F4C1A
cmp   r4,r0                     ; 080F4C1C
bhs   @@Code080F4C30            ; 080F4C1E
@@Code080F4C20:
mov   r0,0x20                   ; 080F4C20  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080F4C22  Change music (YI)
b     @@Code080F4C30            ; 080F4C26
@@Code080F4C28:
mov   r0,0x11                   ; 080F4C28
mov   r1,0x0                    ; 080F4C2A
bl    PlayYISound               ; 080F4C2C
@@Code080F4C30:
mov   r3,0x2                    ; 080F4C30
ldrh  r2,[r6]                   ; 080F4C32
mov   r1,r4                     ; 080F4C34
eor   r1,r2                     ; 080F4C36
neg   r0,r1                     ; 080F4C38
orr   r0,r1                     ; 080F4C3A
asr   r0,r0,0x1F                ; 080F4C3C
and   r3,r0                     ; 080F4C3E
cmp   r4,r2                     ; 080F4C40
bls   @@Code080F4C46            ; 080F4C42
mov   r3,0x3                    ; 080F4C44
@@Code080F4C46:
strh  r3,[r5,0x1C]              ; 080F4C46
ldr   r1,=0x03002200            ; 080F4C48
ldr   r0,=0x4A48                ; 080F4C4A
add   r1,r1,r0                  ; 080F4C4C
ldrb  r0,[r1]                   ; 080F4C4E
mov   r2,0x4                    ; 080F4C50
orr   r0,r2                     ; 080F4C52
strb  r0,[r1]                   ; 080F4C54
ldr   r1,=Data08196BA0          ; 080F4C56
lsl   r0,r3,0x1                 ; 080F4C58
add   r0,r0,r1                  ; 080F4C5A
ldrh  r0,[r0]                   ; 080F4C5C
bl    Sub080EFDB8               ; 080F4C5E
@@Code080F4C62:
pop   {r4-r6}                   ; 080F4C62
pop   {r0}                      ; 080F4C64
bx    r0                        ; 080F4C66
.pool                           ; 080F4C68

Sub080F4C74:
push  {r4,lr}                   ; 080F4C74
mov   r4,r0                     ; 080F4C76
ldr   r1,=CodePtrs08197450      ; 080F4C78
add   r0,0xD7                   ; 080F4C7A
ldrb  r0,[r0]                   ; 080F4C7C
lsl   r0,r0,0x2                 ; 080F4C7E
add   r0,r0,r1                  ; 080F4C80
ldr   r1,[r0]                   ; 080F4C82
mov   r0,r4                     ; 080F4C84
bl    Sub_bx_r1                 ; 080F4C86  bx r1
mov   r0,r4                     ; 080F4C8A
bl    Sub080F44C0               ; 080F4C8C
pop   {r4}                      ; 080F4C90
pop   {r0}                      ; 080F4C92
bx    r0                        ; 080F4C94
.pool                           ; 080F4C96

Sub080F4C9C:
push  {lr}                      ; 080F4C9C
ldr   r2,=CodePtrs08197460      ; 080F4C9E
ldrh  r1,[r0,0x10]              ; 080F4CA0
lsl   r1,r1,0x2                 ; 080F4CA2
add   r1,r1,r2                  ; 080F4CA4
ldr   r1,[r1]                   ; 080F4CA6
bl    Sub_bx_r1                 ; 080F4CA8  bx r1
pop   {r0}                      ; 080F4CAC
bx    r0                        ; 080F4CAE
.pool                           ; 080F4CB0

Sub080F4CB4:
push  {r4-r7,lr}                ; 080F4CB4
mov   r7,r8                     ; 080F4CB6
push  {r7}                      ; 080F4CB8
mov   r2,r0                     ; 080F4CBA
mov   r1,0x0                    ; 080F4CBC
mov   r0,0x2A                   ; 080F4CBE
add   r0,r0,r2                  ; 080F4CC0
mov   r8,r0                     ; 080F4CC2
mov   r3,0x0                    ; 080F4CC4
mov   r7,0x0                    ; 080F4CC6
mov   r12,r7                    ; 080F4CC8
mov   r6,r2                     ; 080F4CCA
add   r6,0xBC                   ; 080F4CCC
mov   r5,r2                     ; 080F4CCE
add   r5,0xBF                   ; 080F4CD0
mov   r4,r2                     ; 080F4CD2
add   r4,0xC2                   ; 080F4CD4
@@Code080F4CD6:
lsl   r0,r1,0x1                 ; 080F4CD6
add   r0,r8                     ; 080F4CD8
mov   r7,r12                    ; 080F4CDA
strh  r7,[r0]                   ; 080F4CDC
add   r0,r6,r1                  ; 080F4CDE
strb  r3,[r0]                   ; 080F4CE0
add   r0,r5,r1                  ; 080F4CE2
strb  r3,[r0]                   ; 080F4CE4
add   r0,r4,r1                  ; 080F4CE6
strb  r3,[r0]                   ; 080F4CE8
add   r0,r1,0x1                 ; 080F4CEA
lsl   r0,r0,0x10                ; 080F4CEC
lsr   r1,r0,0x10                ; 080F4CEE
cmp   r1,0x2                    ; 080F4CF0
bls   @@Code080F4CD6            ; 080F4CF2
mov   r0,0x0                    ; 080F4CF4
mov   r1,0x0                    ; 080F4CF6
strh  r1,[r2,0x30]              ; 080F4CF8
mov   r1,r2                     ; 080F4CFA
add   r1,0xBB                   ; 080F4CFC
strb  r0,[r1]                   ; 080F4CFE
pop   {r3}                      ; 080F4D00
mov   r8,r3                     ; 080F4D02
pop   {r4-r7}                   ; 080F4D04
pop   {r0}                      ; 080F4D06
bx    r0                        ; 080F4D08
.pool                           ; 080F4D0A

Sub080F4D0C:
push  {r4-r7,lr}                ; 080F4D0C
mov   r7,r10                    ; 080F4D0E
mov   r6,r9                     ; 080F4D10
mov   r5,r8                     ; 080F4D12
push  {r5-r7}                   ; 080F4D14
add   sp,-0x10                  ; 080F4D16
mov   r6,r0                     ; 080F4D18
ldr   r2,=0x04000008            ; 080F4D1A
ldr   r4,=0x03002200            ; 080F4D1C
ldr   r0,=0x47C8                ; 080F4D1E
add   r1,r4,r0                  ; 080F4D20
mov   r3,0x0                    ; 080F4D22
ldr   r0,=0xBE03                ; 080F4D24
strh  r0,[r1]                   ; 080F4D26
strh  r0,[r2]                   ; 080F4D28
ldr   r5,=0x0600F000            ; 080F4D2A
mov   r0,sp                     ; 080F4D2C
strh  r3,[r0]                   ; 080F4D2E
ldr   r2,=0x01000800            ; 080F4D30
mov   r1,r5                     ; 080F4D32
bl    swi_MemoryCopy4or2        ; 080F4D34  Memory copy/fill, 4- or 2-byte blocks
mov   r3,0x0                    ; 080F4D38
ldr   r1,=Data0819749A          ; 080F4D3A
mov   r9,r1                     ; 080F4D3C
mov   r4,r6                     ; 080F4D3E
add   r4,0xAC                   ; 080F4D40
mov   r7,0xB0                   ; 080F4D42
add   r7,r7,r6                  ; 080F4D44
mov   r12,r7                    ; 080F4D46
mov   r0,0xB4                   ; 080F4D48
add   r0,r0,r6                  ; 080F4D4A
mov   r8,r0                     ; 080F4D4C
mov   r1,0xB8                   ; 080F4D4E
add   r1,r1,r6                  ; 080F4D50
mov   r10,r1                    ; 080F4D52
mov   r7,r6                     ; 080F4D54
add   r7,0x24                   ; 080F4D56
str   r7,[sp,0x4]               ; 080F4D58
mov   r7,r5                     ; 080F4D5A
mov   r0,r6                     ; 080F4D5C
add   r0,0x32                   ; 080F4D5E
str   r0,[sp,0xC]               ; 080F4D60
mov   r1,r6                     ; 080F4D62
add   r1,0xC5                   ; 080F4D64
str   r1,[sp,0x8]               ; 080F4D66
ldr   r2,=Data08197488          ; 080F4D68
@@Code080F4D6A:
lsl   r0,r3,0x1                 ; 080F4D6A
add   r0,r9                     ; 080F4D6C
ldrh  r0,[r0]                   ; 080F4D6E
add   r5,r0,r7                  ; 080F4D70
mov   r1,0x0                    ; 080F4D72
@@Code080F4D74:
lsl   r0,r1,0x1                 ; 080F4D74
add   r0,r0,r2                  ; 080F4D76
ldrh  r0,[r0]                   ; 080F4D78
strh  r0,[r5]                   ; 080F4D7A
add   r5,0x40                   ; 080F4D7C
add   r0,r1,0x1                 ; 080F4D7E
lsl   r0,r0,0x10                ; 080F4D80
lsr   r1,r0,0x10                ; 080F4D82
cmp   r1,0x8                    ; 080F4D84
bls   @@Code080F4D74            ; 080F4D86
add   r0,r3,0x1                 ; 080F4D88
lsl   r0,r0,0x10                ; 080F4D8A
lsr   r3,r0,0x10                ; 080F4D8C
cmp   r3,0x8                    ; 080F4D8E
bls   @@Code080F4D6A            ; 080F4D90
ldr   r3,=0x03002200            ; 080F4D92
ldr   r7,=0x47C6                ; 080F4D94
add   r2,r3,r7                  ; 080F4D96
ldrh  r1,[r2]                   ; 080F4D98
mov   r3,0x80                   ; 080F4D9A
lsl   r3,r3,0x1                 ; 080F4D9C
mov   r0,r3                     ; 080F4D9E
orr   r0,r1                     ; 080F4DA0
strh  r0,[r2]                   ; 080F4DA2
mov   r3,0x0                    ; 080F4DA4
mov   r7,r4                     ; 080F4DA6
ldr   r2,=Data081974AC          ; 080F4DA8
mov   r5,r12                    ; 080F4DAA
mov   r4,r8                     ; 080F4DAC
@@Code080F4DAE:
add   r1,r7,r3                  ; 080F4DAE
add   r0,r3,r2                  ; 080F4DB0
ldrb  r0,[r0]                   ; 080F4DB2
strb  r0,[r1]                   ; 080F4DB4
add   r1,r5,r3                  ; 080F4DB6
mov   r0,r3                     ; 080F4DB8
add   r0,0x8                    ; 080F4DBA
add   r0,r0,r2                  ; 080F4DBC
ldrb  r0,[r0]                   ; 080F4DBE
strb  r0,[r1]                   ; 080F4DC0
add   r1,r4,r3                  ; 080F4DC2
mov   r0,r3                     ; 080F4DC4
add   r0,0x10                   ; 080F4DC6
add   r0,r0,r2                  ; 080F4DC8
ldrb  r0,[r0]                   ; 080F4DCA
strb  r0,[r1]                   ; 080F4DCC
add   r0,r3,0x1                 ; 080F4DCE
lsl   r0,r0,0x10                ; 080F4DD0
lsr   r3,r0,0x10                ; 080F4DD2
cmp   r3,0x3                    ; 080F4DD4
bls   @@Code080F4DAE            ; 080F4DD6
mov   r3,0x0                    ; 080F4DD8
mov   r5,r10                    ; 080F4DDA
mov   r7,0x4                    ; 080F4DDC
mov   r8,r7                     ; 080F4DDE
ldr   r4,[sp,0x4]               ; 080F4DE0
mov   r0,0xC0                   ; 080F4DE2
lsl   r0,r0,0x6                 ; 080F4DE4
mov   r12,r0                    ; 080F4DE6
ldr   r2,[sp,0xC]               ; 080F4DE8
mov   r1,0xA0                   ; 080F4DEA
lsl   r1,r1,0x6                 ; 080F4DEC
mov   r9,r1                     ; 080F4DEE
@@Code080F4DF0:
add   r0,r5,r3                  ; 080F4DF0
mov   r7,r8                     ; 080F4DF2
strb  r7,[r0]                   ; 080F4DF4
lsl   r1,r3,0x1                 ; 080F4DF6
add   r0,r4,r1                  ; 080F4DF8
mov   r7,r12                    ; 080F4DFA
strh  r7,[r0]                   ; 080F4DFC
add   r1,r2,r1                  ; 080F4DFE
mov   r0,r9                     ; 080F4E00
strh  r0,[r1]                   ; 080F4E02
add   r0,r3,0x1                 ; 080F4E04
lsl   r0,r0,0x10                ; 080F4E06
lsr   r3,r0,0x10                ; 080F4E08
cmp   r3,0x2                    ; 080F4E0A
bls   @@Code080F4DF0            ; 080F4E0C
mov   r0,0x0                    ; 080F4E0E
ldr   r1,[sp,0x8]               ; 080F4E10
strb  r0,[r1]                   ; 080F4E12
mov   r0,r6                     ; 080F4E14
bl    Sub080F4CB4               ; 080F4E16
add   sp,0x10                   ; 080F4E1A
pop   {r3-r5}                   ; 080F4E1C
mov   r8,r3                     ; 080F4E1E
mov   r9,r4                     ; 080F4E20
mov   r10,r5                    ; 080F4E22
pop   {r4-r7}                   ; 080F4E24
pop   {r0}                      ; 080F4E26
bx    r0                        ; 080F4E28
.pool                           ; 080F4E2A

Sub080F4E54:
push  {lr}                      ; 080F4E54
mov   r2,0x0                    ; 080F4E56
mov   r3,r0                     ; 080F4E58
add   r3,0x2A                   ; 080F4E5A
@@Code080F4E5C:
lsl   r0,r2,0x1                 ; 080F4E5C
add   r0,r3,r0                  ; 080F4E5E
ldrh  r1,[r0]                   ; 080F4E60
add   r1,0x10                   ; 080F4E62
strh  r1,[r0]                   ; 080F4E64
add   r0,r2,0x1                 ; 080F4E66
lsl   r0,r0,0x10                ; 080F4E68
lsr   r2,r0,0x10                ; 080F4E6A
cmp   r2,0x2                    ; 080F4E6C
bls   @@Code080F4E5C            ; 080F4E6E
pop   {r0}                      ; 080F4E70
bx    r0                        ; 080F4E72

Sub080F4E74:
push  {r4-r7,lr}                ; 080F4E74
mov   r4,0x0                    ; 080F4E76
mov   r1,0x24                   ; 080F4E78
add   r1,r1,r0                  ; 080F4E7A
mov   r12,r1                    ; 080F4E7C
mov   r6,r0                     ; 080F4E7E
add   r6,0x2A                   ; 080F4E80
mov   r5,r0                     ; 080F4E82
add   r5,0x32                   ; 080F4E84
@@Code080F4E86:
lsl   r1,r4,0x1                 ; 080F4E86
mov   r7,r12                    ; 080F4E88
add   r2,r7,r1                  ; 080F4E8A
add   r3,r6,r1                  ; 080F4E8C
ldrh  r0,[r3]                   ; 080F4E8E
ldrh  r7,[r2]                   ; 080F4E90
add   r0,r0,r7                  ; 080F4E92
strh  r0,[r2]                   ; 080F4E94
add   r1,r5,r1                  ; 080F4E96
ldrh  r0,[r3]                   ; 080F4E98
ldrh  r2,[r1]                   ; 080F4E9A
add   r0,r0,r2                  ; 080F4E9C
strh  r0,[r1]                   ; 080F4E9E
add   r0,r4,0x1                 ; 080F4EA0
lsl   r0,r0,0x10                ; 080F4EA2
lsr   r4,r0,0x10                ; 080F4EA4
cmp   r4,0x2                    ; 080F4EA6
bls   @@Code080F4E86            ; 080F4EA8
pop   {r4-r7}                   ; 080F4EAA
pop   {r0}                      ; 080F4EAC
bx    r0                        ; 080F4EAE

Sub080F4EB0:
push  {r4-r6,lr}                ; 080F4EB0
mov   r4,r0                     ; 080F4EB2
lsl   r1,r1,0x10                ; 080F4EB4
lsr   r6,r1,0x10                ; 080F4EB6
lsl   r1,r6,0x1                 ; 080F4EB8
add   r0,0x24                   ; 080F4EBA
add   r0,r0,r1                  ; 080F4EBC
ldrh  r1,[r0]                   ; 080F4EBE
mov   r0,0xFF                   ; 080F4EC0
lsl   r0,r0,0x8                 ; 080F4EC2
and   r0,r1                     ; 080F4EC4
ldr   r1,=0x3FFF                ; 080F4EC6
cmp   r0,r1                     ; 080F4EC8
bls   @@Code080F4F7C            ; 080F4ECA
ldr   r1,=0x03006258            ; 080F4ECC
mov   r0,0x33                   ; 080F4ECE
bl    PlayYISound               ; 080F4ED0
mov   r1,r4                     ; 080F4ED4
add   r1,0xB8                   ; 080F4ED6
add   r1,r1,r6                  ; 080F4ED8
ldrb  r5,[r1]                   ; 080F4EDA
add   r3,r5,0x1                 ; 080F4EDC
mov   r0,0x7                    ; 080F4EDE
and   r3,r0                     ; 080F4EE0
mov   r5,r3                     ; 080F4EE2
strb  r3,[r1]                   ; 080F4EE4
cmp   r6,0x2                    ; 080F4EE6
bne   @@Code080F4F18            ; 080F4EE8
mov   r2,r4                     ; 080F4EEA
add   r2,0xB6                   ; 080F4EEC
ldrb  r0,[r2]                   ; 080F4EEE
mov   r1,r4                     ; 080F4EF0
add   r1,0xB7                   ; 080F4EF2
strb  r0,[r1]                   ; 080F4EF4
sub   r1,0x2                    ; 080F4EF6
ldrb  r0,[r1]                   ; 080F4EF8
strb  r0,[r2]                   ; 080F4EFA
sub   r2,0x2                    ; 080F4EFC
ldrb  r0,[r2]                   ; 080F4EFE
strb  r0,[r1]                   ; 080F4F00
ldr   r1,=Data081974AC          ; 080F4F02
mov   r0,r3                     ; 080F4F04
add   r0,0x10                   ; 080F4F06
b     @@Code080F4F3A            ; 080F4F08
.pool                           ; 080F4F0A

@@Code080F4F18:
cmp   r6,0x0                    ; 080F4F18
beq   @@Code080F4F48            ; 080F4F1A
mov   r2,r4                     ; 080F4F1C
add   r2,0xB2                   ; 080F4F1E
ldrb  r0,[r2]                   ; 080F4F20
mov   r1,r4                     ; 080F4F22
add   r1,0xB3                   ; 080F4F24
strb  r0,[r1]                   ; 080F4F26
sub   r1,0x2                    ; 080F4F28
ldrb  r0,[r1]                   ; 080F4F2A
strb  r0,[r2]                   ; 080F4F2C
sub   r2,0x2                    ; 080F4F2E
ldrb  r0,[r2]                   ; 080F4F30
strb  r0,[r1]                   ; 080F4F32
ldr   r1,=Data081974AC          ; 080F4F34
mov   r0,r3                     ; 080F4F36
add   r0,0x8                    ; 080F4F38
@@Code080F4F3A:
add   r0,r0,r1                  ; 080F4F3A
ldrb  r0,[r0]                   ; 080F4F3C
strb  r0,[r2]                   ; 080F4F3E
b     @@Code080F4F6A            ; 080F4F40
.pool                           ; 080F4F42

@@Code080F4F48:
mov   r3,r4                     ; 080F4F48
add   r3,0xAE                   ; 080F4F4A
ldrb  r0,[r3]                   ; 080F4F4C
mov   r1,r4                     ; 080F4F4E
add   r1,0xAF                   ; 080F4F50
strb  r0,[r1]                   ; 080F4F52
mov   r2,r4                     ; 080F4F54
add   r2,0xAD                   ; 080F4F56
ldrb  r0,[r2]                   ; 080F4F58
strb  r0,[r3]                   ; 080F4F5A
sub   r1,0x3                    ; 080F4F5C
ldrb  r0,[r1]                   ; 080F4F5E
strb  r0,[r2]                   ; 080F4F60
ldr   r0,=Data081974AC          ; 080F4F62
add   r0,r5,r0                  ; 080F4F64
ldrb  r0,[r0]                   ; 080F4F66
strb  r0,[r1]                   ; 080F4F68
@@Code080F4F6A:
lsl   r0,r6,0x1                 ; 080F4F6A
mov   r1,r4                     ; 080F4F6C
add   r1,0x24                   ; 080F4F6E
add   r1,r1,r0                  ; 080F4F70
ldr   r2,=0xFFFFE000            ; 080F4F72
mov   r0,r2                     ; 080F4F74
ldrh  r2,[r1]                   ; 080F4F76
add   r0,r0,r2                  ; 080F4F78
strh  r0,[r1]                   ; 080F4F7A
@@Code080F4F7C:
pop   {r4-r6}                   ; 080F4F7C
pop   {r0}                      ; 080F4F7E
bx    r0                        ; 080F4F80
.pool                           ; 080F4F82

Sub080F4F8C:
push  {r4-r7,lr}                ; 080F4F8C
mov   r4,r0                     ; 080F4F8E
mov   r5,0x0                    ; 080F4F90
mov   r7,0xC0                   ; 080F4F92
lsl   r7,r7,0x6                 ; 080F4F94
@@Code080F4F96:
lsl   r2,r5,0x1                 ; 080F4F96
mov   r0,r4                     ; 080F4F98
add   r0,0x24                   ; 080F4F9A
add   r6,r0,r2                  ; 080F4F9C
ldrh  r1,[r6]                   ; 080F4F9E
mov   r3,0xFF                   ; 080F4FA0
lsl   r3,r3,0x8                 ; 080F4FA2
mov   r0,r3                     ; 080F4FA4
mov   r3,r0                     ; 080F4FA6
and   r3,r1                     ; 080F4FA8
cmp   r3,r7                     ; 080F4FAA
bne   @@Code080F4FC6            ; 080F4FAC
mov   r0,r4                     ; 080F4FAE
add   r0,0xBC                   ; 080F4FB0
add   r0,r0,r5                  ; 080F4FB2
ldrb  r0,[r0]                   ; 080F4FB4
cmp   r0,0x5                    ; 080F4FB6
bls   @@Code080F4FC6            ; 080F4FB8
mov   r0,r4                     ; 080F4FBA
add   r0,0xBF                   ; 080F4FBC
add   r0,r0,r5                  ; 080F4FBE
ldrb  r0,[r0]                   ; 080F4FC0
cmp   r0,0xFF                   ; 080F4FC2
bne   @@Code080F4FD0            ; 080F4FC4
@@Code080F4FC6:
mov   r0,r4                     ; 080F4FC6
mov   r1,r5                     ; 080F4FC8
bl    Sub080F4EB0               ; 080F4FCA
b     @@Code080F4FE8            ; 080F4FCE
@@Code080F4FD0:
mov   r0,r4                     ; 080F4FD0
add   r0,0x2A                   ; 080F4FD2
add   r0,r0,r2                  ; 080F4FD4
mov   r1,0x0                    ; 080F4FD6
strh  r1,[r0]                   ; 080F4FD8
strh  r3,[r6]                   ; 080F4FDA
mov   r0,r4                     ; 080F4FDC
add   r0,0x32                   ; 080F4FDE
add   r0,r0,r2                  ; 080F4FE0
mov   r1,0xA0                   ; 080F4FE2
lsl   r1,r1,0x6                 ; 080F4FE4
strh  r1,[r0]                   ; 080F4FE6
@@Code080F4FE8:
add   r0,r5,0x1                 ; 080F4FE8
lsl   r0,r0,0x10                ; 080F4FEA
lsr   r5,r0,0x10                ; 080F4FEC
cmp   r5,0x2                    ; 080F4FEE
bls   @@Code080F4F96            ; 080F4FF0
pop   {r4-r7}                   ; 080F4FF2
pop   {r0}                      ; 080F4FF4
bx    r0                        ; 080F4FF6

Sub080F4FF8:
push  {r4-r6,lr}                ; 080F4FF8
mov   r2,0x2                    ; 080F4FFA
mov   r3,r0                     ; 080F4FFC
add   r3,0x32                   ; 080F4FFE
ldr   r6,=0x3FFF                ; 080F5000
ldr   r5,=0xFFFF                ; 080F5002
ldr   r0,=0xFFFFE000            ; 080F5004
mov   r4,r0                     ; 080F5006
@@Code080F5008:
lsl   r0,r2,0x1                 ; 080F5008
add   r1,r3,r0                  ; 080F500A
ldrh  r0,[r1]                   ; 080F500C
cmp   r0,r6                     ; 080F500E
bls   @@Code080F5016            ; 080F5010
add   r0,r0,r4                  ; 080F5012
strh  r0,[r1]                   ; 080F5014
@@Code080F5016:
sub   r0,r2,0x1                 ; 080F5016
lsl   r0,r0,0x10                ; 080F5018
lsr   r2,r0,0x10                ; 080F501A
cmp   r2,r5                     ; 080F501C
bne   @@Code080F5008            ; 080F501E
pop   {r4-r6}                   ; 080F5020
pop   {r0}                      ; 080F5022
bx    r0                        ; 080F5024
.pool                           ; 080F5026

Sub080F5034:
push  {r4-r7,lr}                ; 080F5034
mov   r7,r10                    ; 080F5036
mov   r6,r9                     ; 080F5038
mov   r5,r8                     ; 080F503A
push  {r5-r7}                   ; 080F503C
add   sp,-0xC                   ; 080F503E
str   r0,[sp]                   ; 080F5040
ldr   r2,=0x03002200            ; 080F5042
ldr   r1,=0x47D0                ; 080F5044
add   r0,r2,r1                  ; 080F5046
ldrh  r0,[r0]                   ; 080F5048
lsr   r0,r0,0x2                 ; 080F504A
mov   r8,r0                     ; 080F504C
ldr   r3,=0x030021B0            ; 080F504E
lsl   r0,r0,0x3                 ; 080F5050
mov   r4,0xE0                   ; 080F5052
lsl   r4,r4,0x6                 ; 080F5054
add   r1,r2,r4                  ; 080F5056
add   r0,r0,r1                  ; 080F5058
str   r0,[r3]                   ; 080F505A
mov   r3,0x0                    ; 080F505C
@@Code080F505E:
lsl   r1,r3,0x1                 ; 080F505E
ldr   r0,[sp]                   ; 080F5060
add   r0,0x32                   ; 080F5062
add   r0,r0,r1                  ; 080F5064
ldrh  r0,[r0]                   ; 080F5066
lsr   r4,r0,0x8                 ; 080F5068
sub   r0,r4,0x1                 ; 080F506A
lsl   r0,r0,0x10                ; 080F506C
lsr   r4,r0,0x10                ; 080F506E
ldr   r1,=0x030069EE            ; 080F5070
ldrh  r0,[r1]                   ; 080F5072
sub   r0,r4,r0                  ; 080F5074
lsl   r0,r0,0x10                ; 080F5076
ldr   r2,=0xFFF80000            ; 080F5078
add   r0,r0,r2                  ; 080F507A
lsr   r4,r0,0x10                ; 080F507C
mov   r1,0x0                    ; 080F507E
add   r0,r3,0x1                 ; 080F5080
str   r0,[sp,0x8]               ; 080F5082
lsl   r0,r3,0x2                 ; 080F5084
ldr   r2,=Data081974C4          ; 080F5086
add   r0,r0,r2                  ; 080F5088
str   r0,[sp,0x4]               ; 080F508A
@@Code080F508C:
mov   r0,r4                     ; 080F508C
sub   r0,0xA0                   ; 080F508E
lsl   r0,r0,0x10                ; 080F5090
lsr   r0,r0,0x10                ; 080F5092
mov   r3,0x20                   ; 080F5094
add   r3,r3,r4                  ; 080F5096
mov   r9,r3                     ; 080F5098
add   r1,0x3                    ; 080F509A
mov   r10,r1                    ; 080F509C
ldr   r1,=0xFF58                ; 080F509E
cmp   r0,r1                     ; 080F50A0
bls   @@Code080F5112            ; 080F50A2
ldr   r2,[sp,0x4]               ; 080F50A4
ldrh  r6,[r2]                   ; 080F50A6
mov   r7,0x0                    ; 080F50A8
ldr   r5,=0x030021B0            ; 080F50AA
mov   r3,0x3F                   ; 080F50AC
mov   r12,r3                    ; 080F50AE
@@Code080F50B0:
ldr   r0,[r5]                   ; 080F50B0
strb  r4,[r0]                   ; 080F50B2
ldr   r3,[r5]                   ; 080F50B4
ldr   r1,=0x01FF                ; 080F50B6
mov   r0,r1                     ; 080F50B8
mov   r1,r6                     ; 080F50BA
and   r1,r0                     ; 080F50BC
ldrh  r2,[r3,0x2]               ; 080F50BE
ldr   r0,=0xFFFFFE00            ; 080F50C0
and   r0,r2                     ; 080F50C2
orr   r0,r1                     ; 080F50C4
strh  r0,[r3,0x2]               ; 080F50C6
ldrh  r1,[r3,0x4]               ; 080F50C8
ldr   r0,=0xFFFFFC00            ; 080F50CA
and   r0,r1                     ; 080F50CC
mov   r1,0xD8                   ; 080F50CE
orr   r0,r1                     ; 080F50D0
strh  r0,[r3,0x4]               ; 080F50D2
ldrb  r1,[r3,0x1]               ; 080F50D4
mov   r0,r12                    ; 080F50D6
and   r0,r1                     ; 080F50D8
strb  r0,[r3,0x1]               ; 080F50DA
ldr   r2,[r5]                   ; 080F50DC
ldrb  r1,[r2,0x3]               ; 080F50DE
mov   r0,r12                    ; 080F50E0
and   r0,r1                     ; 080F50E2
strb  r0,[r2,0x3]               ; 080F50E4
ldr   r2,[r5]                   ; 080F50E6
ldrb  r1,[r2,0x5]               ; 080F50E8
mov   r0,0xC                    ; 080F50EA
orr   r1,r0                     ; 080F50EC
strb  r1,[r2,0x5]               ; 080F50EE
ldr   r0,[r5]                   ; 080F50F0
add   r0,0x8                    ; 080F50F2
str   r0,[r5]                   ; 080F50F4
mov   r0,r8                     ; 080F50F6
add   r0,0x1                    ; 080F50F8
lsl   r0,r0,0x10                ; 080F50FA
lsr   r0,r0,0x10                ; 080F50FC
mov   r8,r0                     ; 080F50FE
mov   r0,r6                     ; 080F5100
add   r0,0x8                    ; 080F5102
lsl   r0,r0,0x10                ; 080F5104
lsr   r6,r0,0x10                ; 080F5106
add   r0,r7,0x1                 ; 080F5108
lsl   r0,r0,0x10                ; 080F510A
lsr   r7,r0,0x10                ; 080F510C
cmp   r7,0x2                    ; 080F510E
bls   @@Code080F50B0            ; 080F5110
@@Code080F5112:
mov   r2,r9                     ; 080F5112
lsl   r0,r2,0x10                ; 080F5114
lsr   r4,r0,0x10                ; 080F5116
mov   r3,r10                    ; 080F5118
lsl   r0,r3,0x10                ; 080F511A
lsr   r1,r0,0x10                ; 080F511C
cmp   r1,0x8                    ; 080F511E
bls   @@Code080F508C            ; 080F5120
ldr   r4,[sp,0x8]               ; 080F5122
lsl   r0,r4,0x10                ; 080F5124
lsr   r3,r0,0x10                ; 080F5126
cmp   r3,0x2                    ; 080F5128
bls   @@Code080F505E            ; 080F512A
mov   r0,r8                     ; 080F512C
lsl   r1,r0,0x2                 ; 080F512E
ldr   r2,=0x03002200            ; 080F5130
ldr   r3,=0x47D0                ; 080F5132
add   r0,r2,r3                  ; 080F5134
strh  r1,[r0]                   ; 080F5136
add   sp,0xC                    ; 080F5138
pop   {r3-r5}                   ; 080F513A
mov   r8,r3                     ; 080F513C
mov   r9,r4                     ; 080F513E
mov   r10,r5                    ; 080F5140
pop   {r4-r7}                   ; 080F5142
pop   {r0}                      ; 080F5144
bx    r0                        ; 080F5146
.pool                           ; 080F5148

Sub080F5170:
push  {r4-r7,lr}                ; 080F5170
mov   r7,r10                    ; 080F5172
mov   r6,r9                     ; 080F5174
mov   r5,r8                     ; 080F5176
push  {r5-r7}                   ; 080F5178
add   sp,-0x10                  ; 080F517A
str   r0,[sp]                   ; 080F517C
ldr   r0,=0x03002200            ; 080F517E
ldr   r2,=0x47D0                ; 080F5180
add   r1,r0,r2                  ; 080F5182
ldrh  r1,[r1]                   ; 080F5184
lsr   r1,r1,0x2                 ; 080F5186
mov   r9,r1                     ; 080F5188
mov   r3,0x0                    ; 080F518A
str   r3,[sp,0x4]               ; 080F518C
@@Code080F518E:
ldr   r0,[sp,0x4]               ; 080F518E
lsl   r1,r0,0x1                 ; 080F5190
ldr   r0,[sp]                   ; 080F5192
add   r0,0x24                   ; 080F5194
add   r0,r0,r1                  ; 080F5196
ldrh  r0,[r0]                   ; 080F5198
lsr   r6,r0,0x8                 ; 080F519A
sub   r0,r6,0x1                 ; 080F519C
lsl   r0,r0,0x10                ; 080F519E
lsr   r6,r0,0x10                ; 080F51A0
ldr   r2,=0x03002200            ; 080F51A2
ldr   r3,=0x47EE                ; 080F51A4
add   r0,r2,r3                  ; 080F51A6
ldrh  r0,[r0]                   ; 080F51A8
sub   r0,r6,r0                  ; 080F51AA
lsl   r0,r0,0x10                ; 080F51AC
ldr   r2,=0xFFF80000            ; 080F51AE
add   r0,r0,r2                  ; 080F51B0
lsr   r6,r0,0x10                ; 080F51B2
mov   r4,0x0                    ; 080F51B4
str   r1,[sp,0xC]               ; 080F51B6
ldr   r3,[sp,0x4]               ; 080F51B8
add   r3,0x1                    ; 080F51BA
str   r3,[sp,0x8]               ; 080F51BC
@@Code080F51BE:
mov   r0,r6                     ; 080F51BE
sub   r0,0xA0                   ; 080F51C0
lsl   r0,r0,0x10                ; 080F51C2
lsr   r0,r0,0x10                ; 080F51C4
add   r1,r4,0x4                 ; 080F51C6
mov   r8,r1                     ; 080F51C8
ldr   r2,=0xFF48                ; 080F51CA
cmp   r0,r2                     ; 080F51CC
bhi   @@Code080F51D2            ; 080F51CE
b     @@Code080F5314            ; 080F51D0
@@Code080F51D2:
mov   r3,r9                     ; 080F51D2
lsl   r0,r3,0x3                 ; 080F51D4
ldr   r1,=0x03005A00            ; 080F51D6
add   r0,r0,r1                  ; 080F51D8
ldr   r2,=0x030021B0            ; 080F51DA
str   r0,[r2]                   ; 080F51DC
strb  r6,[r0]                   ; 080F51DE
ldr   r0,[r2]                   ; 080F51E0
strb  r6,[r0,0x8]               ; 080F51E2
mov   r0,r6                     ; 080F51E4
add   r0,0x8                    ; 080F51E6
lsl   r0,r0,0x10                ; 080F51E8
lsr   r6,r0,0x10                ; 080F51EA
ldr   r0,[r2]                   ; 080F51EC
strb  r6,[r0,0x10]              ; 080F51EE
ldr   r0,[r2]                   ; 080F51F0
strb  r6,[r0,0x18]              ; 080F51F2
ldr   r3,[sp,0x4]               ; 080F51F4
lsl   r0,r3,0x2                 ; 080F51F6
ldr   r1,=Data081974C4          ; 080F51F8
add   r0,r0,r1                  ; 080F51FA
ldrh  r1,[r0]                   ; 080F51FC
ldr   r2,=0x030069E6            ; 080F51FE
ldrh  r0,[r2]                   ; 080F5200
sub   r1,r1,r0                  ; 080F5202
lsl   r1,r1,0x10                ; 080F5204
lsr   r1,r1,0x10                ; 080F5206
ldr   r0,=0x030021B0            ; 080F5208
ldr   r3,[r0]                   ; 080F520A
ldr   r2,=0x01FF                ; 080F520C
and   r1,r2                     ; 080F520E
ldrh  r2,[r3,0x2]               ; 080F5210
ldr   r0,=0xFFFFFE00            ; 080F5212
and   r0,r2                     ; 080F5214
orr   r0,r1                     ; 080F5216
strh  r0,[r3,0x2]               ; 080F5218
ldrh  r2,[r3,0x12]              ; 080F521A
ldr   r0,=0xFFFFFE00            ; 080F521C
and   r0,r2                     ; 080F521E
orr   r0,r1                     ; 080F5220
strh  r0,[r3,0x12]              ; 080F5222
ldr   r0,[sp,0xC]               ; 080F5224
add   r0,0x1                    ; 080F5226
lsl   r0,r0,0x1                 ; 080F5228
ldr   r1,=Data081974C4          ; 080F522A
add   r0,r0,r1                  ; 080F522C
ldrh  r1,[r0]                   ; 080F522E
ldr   r2,=0x030069E6            ; 080F5230
ldrh  r0,[r2]                   ; 080F5232
sub   r1,r1,r0                  ; 080F5234
lsl   r1,r1,0x10                ; 080F5236
lsr   r1,r1,0x10                ; 080F5238
ldr   r0,=0x01FF                ; 080F523A
and   r1,r0                     ; 080F523C
ldrh  r2,[r3,0xA]               ; 080F523E
ldr   r0,=0xFFFFFE00            ; 080F5240
and   r0,r2                     ; 080F5242
orr   r0,r1                     ; 080F5244
strh  r0,[r3,0xA]               ; 080F5246
ldrh  r2,[r3,0x1A]              ; 080F5248
ldr   r0,=0xFFFFFE00            ; 080F524A
and   r0,r2                     ; 080F524C
orr   r0,r1                     ; 080F524E
strh  r0,[r3,0x1A]              ; 080F5250
ldr   r1,[sp,0x4]               ; 080F5252
cmp   r1,0x0                    ; 080F5254
bne   @@Code080F528C            ; 080F5256
lsr   r1,r4,0x2                 ; 080F5258
ldr   r0,[sp]                   ; 080F525A
add   r0,0xAC                   ; 080F525C
b     @@Code080F52A0            ; 080F525E
.pool                           ; 080F5260

@@Code080F528C:
ldr   r2,[sp,0x4]               ; 080F528C
cmp   r2,0x1                    ; 080F528E
bne   @@Code080F529A            ; 080F5290
lsr   r1,r4,0x2                 ; 080F5292
ldr   r0,[sp]                   ; 080F5294
add   r0,0xB0                   ; 080F5296
b     @@Code080F52A0            ; 080F5298
@@Code080F529A:
lsr   r1,r4,0x2                 ; 080F529A
ldr   r0,[sp]                   ; 080F529C
add   r0,0xB4                   ; 080F529E
@@Code080F52A0:
add   r0,r0,r1                  ; 080F52A0
ldrb  r5,[r0]                   ; 080F52A2
lsl   r0,r5,0x12                ; 080F52A4
lsr   r5,r0,0x10                ; 080F52A6
mov   r7,0x0                    ; 080F52A8
mov   r3,0x4                    ; 080F52AA
add   r3,r9                     ; 080F52AC
mov   r10,r3                    ; 080F52AE
add   r4,0x4                    ; 080F52B0
mov   r8,r4                     ; 080F52B2
ldr   r0,=0x030021B0            ; 080F52B4
mov   r12,r0                    ; 080F52B6
mov   r1,0x3F                   ; 080F52B8
mov   r9,r1                     ; 080F52BA
@@Code080F52BC:
mov   r2,r12                    ; 080F52BC
ldr   r3,[r2]                   ; 080F52BE
lsl   r4,r7,0x3                 ; 080F52C0
add   r3,r4,r3                  ; 080F52C2
add   r0,r5,r7                  ; 080F52C4
lsl   r0,r0,0x1                 ; 080F52C6
ldr   r1,=Data081974D0          ; 080F52C8
add   r0,r0,r1                  ; 080F52CA
ldrh  r0,[r0]                   ; 080F52CC
ldr   r1,=0x03FF                ; 080F52CE
and   r1,r0                     ; 080F52D0
ldrh  r2,[r3,0x4]               ; 080F52D2
ldr   r0,=0xFFFFFC00            ; 080F52D4
and   r0,r2                     ; 080F52D6
orr   r0,r1                     ; 080F52D8
strh  r0,[r3,0x4]               ; 080F52DA
ldrb  r1,[r3,0x1]               ; 080F52DC
mov   r0,r9                     ; 080F52DE
and   r0,r1                     ; 080F52E0
strb  r0,[r3,0x1]               ; 080F52E2
mov   r3,r12                    ; 080F52E4
ldr   r2,[r3]                   ; 080F52E6
add   r2,r4,r2                  ; 080F52E8
ldrb  r1,[r2,0x3]               ; 080F52EA
mov   r0,r9                     ; 080F52EC
and   r0,r1                     ; 080F52EE
mov   r1,0x40                   ; 080F52F0
orr   r0,r1                     ; 080F52F2
strb  r0,[r2,0x3]               ; 080F52F4
ldr   r0,[r3]                   ; 080F52F6
add   r4,r4,r0                  ; 080F52F8
ldrb  r1,[r4,0x5]               ; 080F52FA
mov   r0,0xC                    ; 080F52FC
orr   r1,r0                     ; 080F52FE
strb  r1,[r4,0x5]               ; 080F5300
add   r0,r7,0x1                 ; 080F5302
lsl   r0,r0,0x10                ; 080F5304
lsr   r7,r0,0x10                ; 080F5306
cmp   r7,0x3                    ; 080F5308
bls   @@Code080F52BC            ; 080F530A
mov   r1,r10                    ; 080F530C
lsl   r0,r1,0x10                ; 080F530E
lsr   r0,r0,0x10                ; 080F5310
mov   r9,r0                     ; 080F5312
@@Code080F5314:
mov   r0,r6                     ; 080F5314
add   r0,0x18                   ; 080F5316
lsl   r0,r0,0x10                ; 080F5318
lsr   r6,r0,0x10                ; 080F531A
mov   r2,r8                     ; 080F531C
lsl   r0,r2,0x10                ; 080F531E
lsr   r4,r0,0x10                ; 080F5320
cmp   r4,0xB                    ; 080F5322
bhi   @@Code080F5328            ; 080F5324
b     @@Code080F51BE            ; 080F5326
@@Code080F5328:
ldr   r3,[sp,0x8]               ; 080F5328
lsl   r0,r3,0x10                ; 080F532A
lsr   r0,r0,0x10                ; 080F532C
str   r0,[sp,0x4]               ; 080F532E
cmp   r0,0x2                    ; 080F5330
bhi   @@Code080F5336            ; 080F5332
b     @@Code080F518E            ; 080F5334
@@Code080F5336:
mov   r0,r9                     ; 080F5336
lsl   r1,r0,0x2                 ; 080F5338
ldr   r2,=0x03002200            ; 080F533A
ldr   r3,=0x47D0                ; 080F533C
add   r0,r2,r3                  ; 080F533E
strh  r1,[r0]                   ; 080F5340
ldr   r0,[sp]                   ; 080F5342
bl    Sub080F5034               ; 080F5344
add   sp,0x10                   ; 080F5348
pop   {r3-r5}                   ; 080F534A
mov   r8,r3                     ; 080F534C
mov   r9,r4                     ; 080F534E
mov   r10,r5                    ; 080F5350
pop   {r4-r7}                   ; 080F5352
pop   {r0}                      ; 080F5354
bx    r0                        ; 080F5356
.pool                           ; 080F5358

Sub080F5370:
push  {r4,lr}                   ; 080F5370
mov   r4,r0                     ; 080F5372
ldrh  r1,[r4,0x2A]              ; 080F5374
cmp   r1,0x0                    ; 080F5376
bne   @@Code080F5394            ; 080F5378
mov   r0,0x4                    ; 080F537A
strh  r0,[r4,0x1C]              ; 080F537C
ldr   r0,=Data08196BA0          ; 080F537E
ldrh  r0,[r0,0x8]               ; 080F5380
bl    Sub080EFDB8               ; 080F5382
mov   r0,r4                     ; 080F5386
bl    Sub080F4E54               ; 080F5388
b     @@Code080F53AE            ; 080F538C
.pool                           ; 080F538E

@@Code080F5394:
ldr   r0,=0x037F                ; 080F5394
cmp   r1,r0                     ; 080F5396
bls   @@Code080F53A8            ; 080F5398
ldrh  r0,[r4,0x10]              ; 080F539A
add   r0,0x1                    ; 080F539C
strh  r0,[r4,0x10]              ; 080F539E
b     @@Code080F53AE            ; 080F53A0
.pool                           ; 080F53A2

@@Code080F53A8:
mov   r0,r4                     ; 080F53A8
bl    Sub080F4E54               ; 080F53AA
@@Code080F53AE:
mov   r0,r4                     ; 080F53AE
bl    Sub080F4E74               ; 080F53B0
mov   r0,r4                     ; 080F53B4
bl    Sub080F4F8C               ; 080F53B6
mov   r0,r4                     ; 080F53BA
bl    Sub080F4FF8               ; 080F53BC
mov   r0,r4                     ; 080F53C0
bl    Sub080F5170               ; 080F53C2
pop   {r4}                      ; 080F53C6
pop   {r0}                      ; 080F53C8
bx    r0                        ; 080F53CA

Sub080F53CC:
push  {r4,lr}                   ; 080F53CC
lsl   r1,r1,0x18                ; 080F53CE
lsr   r1,r1,0x18                ; 080F53D0
mov   r2,r0                     ; 080F53D2
add   r2,0xBC                   ; 080F53D4
add   r2,r2,r1                  ; 080F53D6
ldrb  r3,[r2]                   ; 080F53D8
add   r3,0x1                    ; 080F53DA
lsl   r3,r3,0x18                ; 080F53DC
lsr   r3,r3,0x18                ; 080F53DE
strb  r3,[r2]                   ; 080F53E0
mov   r4,r0                     ; 080F53E2
add   r4,0xBF                   ; 080F53E4
add   r4,r4,r1                  ; 080F53E6
ldr   r2,=Data08197500          ; 080F53E8
add   r2,r3,r2                  ; 080F53EA
ldrb  r2,[r2]                   ; 080F53EC
strb  r2,[r4]                   ; 080F53EE
sub   r3,0x1                    ; 080F53F0
lsl   r3,r3,0x18                ; 080F53F2
lsl   r1,r1,0x1                 ; 080F53F4
add   r0,0x2A                   ; 080F53F6
add   r0,r0,r1                  ; 080F53F8
ldr   r1,=Data08197506          ; 080F53FA
lsr   r3,r3,0x17                ; 080F53FC
add   r3,r3,r1                  ; 080F53FE
ldrh  r1,[r3]                   ; 080F5400
strh  r1,[r0]                   ; 080F5402
pop   {r4}                      ; 080F5404
pop   {r0}                      ; 080F5406
bx    r0                        ; 080F5408
.pool                           ; 080F540A

Sub080F5414:
ldr   r1,=Data08197512          ; 080F5414
add   r0,0xBB                   ; 080F5416
ldrb  r0,[r0]                   ; 080F5418
lsl   r0,r0,0x1                 ; 080F541A
add   r0,r0,r1                  ; 080F541C
ldrh  r1,[r0]                   ; 080F541E
ldr   r0,=0x0600B000            ; 080F5420
add   r2,r1,r0                  ; 080F5422
ldr   r3,=0x70F5                ; 080F5424
mov   r0,r3                     ; 080F5426
strh  r0,[r2]                   ; 080F5428
ldr   r0,=0x0600B040            ; 080F542A
add   r2,r1,r0                  ; 080F542C
ldr   r1,=0x70F8                ; 080F542E
mov   r0,r1                     ; 080F5430
strh  r0,[r2]                   ; 080F5432
bx    lr                        ; 080F5434
.pool                           ; 080F5436

Sub080F544C:
push  {r4-r7,lr}                ; 080F544C
mov   r7,r8                     ; 080F544E
push  {r7}                      ; 080F5450
mov   r5,r0                     ; 080F5452
mov   r6,r5                     ; 080F5454
add   r6,0xC2                   ; 080F5456
add   r0,0xC3                   ; 080F5458
ldrb  r1,[r6]                   ; 080F545A
ldrb  r0,[r0]                   ; 080F545C
and   r0,r1                     ; 080F545E
mov   r1,r5                     ; 080F5460
add   r1,0xC4                   ; 080F5462
ldrb  r1,[r1]                   ; 080F5464
and   r0,r1                     ; 080F5466
cmp   r0,0x0                    ; 080F5468
bne   @@Code080F552E            ; 080F546A
ldr   r0,=0x03002200            ; 080F546C
mov   r8,r0                     ; 080F546E
ldr   r0,=0x47C0                ; 080F5470
add   r0,r8                     ; 080F5472
ldrh  r2,[r0]                   ; 080F5474
mov   r0,0x30                   ; 080F5476
and   r0,r2                     ; 080F5478
cmp   r0,0x0                    ; 080F547A
beq   @@Code080F54D8            ; 080F547C
mov   r1,r5                     ; 080F547E
add   r1,0xBB                   ; 080F5480
ldrb  r4,[r1]                   ; 080F5482
mov   r0,0x20                   ; 080F5484
and   r0,r2                     ; 080F5486
mov   r7,r1                     ; 080F5488
cmp   r0,0x0                    ; 080F548A
beq   @@Code080F54B0            ; 080F548C
mov   r1,r6                     ; 080F548E
@@Code080F5490:
sub   r0,r4,0x1                 ; 080F5490
lsl   r0,r0,0x18                ; 080F5492
lsr   r4,r0,0x18                ; 080F5494
cmp   r4,0xFF                   ; 080F5496
bne   @@Code080F549C            ; 080F5498
mov   r4,0x2                    ; 080F549A
@@Code080F549C:
add   r0,r1,r4                  ; 080F549C
ldrb  r0,[r0]                   ; 080F549E
cmp   r0,0x0                    ; 080F54A0
bne   @@Code080F5490            ; 080F54A2
b     @@Code080F54C6            ; 080F54A4
.pool                           ; 080F54A6

@@Code080F54B0:
mov   r1,r6                     ; 080F54B0
@@Code080F54B2:
add   r0,r4,0x1                 ; 080F54B2
lsl   r0,r0,0x18                ; 080F54B4
lsr   r4,r0,0x18                ; 080F54B6
cmp   r4,0x2                    ; 080F54B8
bls   @@Code080F54BE            ; 080F54BA
mov   r4,0x0                    ; 080F54BC
@@Code080F54BE:
add   r0,r1,r4                  ; 080F54BE
ldrb  r0,[r0]                   ; 080F54C0
cmp   r0,0x0                    ; 080F54C2
bne   @@Code080F54B2            ; 080F54C4
@@Code080F54C6:
ldrb  r0,[r7]                   ; 080F54C6
cmp   r0,r4                     ; 080F54C8
beq   @@Code080F54D4            ; 080F54CA
mov   r0,0x22                   ; 080F54CC
mov   r1,0x0                    ; 080F54CE
bl    PlayYISound               ; 080F54D0
@@Code080F54D4:
strb  r4,[r7]                   ; 080F54D4
b     @@Code080F552E            ; 080F54D6
@@Code080F54D8:
mov   r0,0x1                    ; 080F54D8
and   r0,r2                     ; 080F54DA
cmp   r0,0x0                    ; 080F54DC
beq   @@Code080F552E            ; 080F54DE
mov   r1,r5                     ; 080F54E0
add   r1,0xBB                   ; 080F54E2
ldrb  r4,[r1]                   ; 080F54E4
add   r2,r6,r4                  ; 080F54E6
ldrb  r0,[r2]                   ; 080F54E8
mov   r7,r1                     ; 080F54EA
cmp   r0,0x0                    ; 080F54EC
bne   @@Code080F552E            ; 080F54EE
mov   r0,0x1                    ; 080F54F0
strb  r0,[r2]                   ; 080F54F2
mov   r0,r5                     ; 080F54F4
mov   r1,r4                     ; 080F54F6
bl    Sub080F53CC               ; 080F54F8
ldr   r1,=0x4058                ; 080F54FC
add   r1,r8                     ; 080F54FE
mov   r0,0xE                    ; 080F5500
bl    PlayYISound               ; 080F5502
mov   r0,r5                     ; 080F5506
bl    Sub080F5414               ; 080F5508
mov   r1,r6                     ; 080F550C
b     @@Code080F551C            ; 080F550E
.pool                           ; 080F5510

@@Code080F5514:
add   r0,r1,r4                  ; 080F5514
ldrb  r0,[r0]                   ; 080F5516
cmp   r0,0x0                    ; 080F5518
beq   @@Code080F54D4            ; 080F551A
@@Code080F551C:
add   r0,r4,0x1                 ; 080F551C
lsl   r0,r0,0x18                ; 080F551E
lsr   r4,r0,0x18                ; 080F5520
cmp   r4,0x2                    ; 080F5522
bls   @@Code080F5528            ; 080F5524
mov   r4,0x0                    ; 080F5526
@@Code080F5528:
ldrb  r0,[r7]                   ; 080F5528
cmp   r0,r4                     ; 080F552A
bne   @@Code080F5514            ; 080F552C
@@Code080F552E:
pop   {r3}                      ; 080F552E
mov   r8,r3                     ; 080F5530
pop   {r4-r7}                   ; 080F5532
pop   {r0}                      ; 080F5534
bx    r0                        ; 080F5536

Sub080F5538:
push  {r4-r5,lr}                ; 080F5538
mov   r5,r0                     ; 080F553A
mov   r4,0x0                    ; 080F553C
@@Code080F553E:
mov   r0,r5                     ; 080F553E
add   r0,0xBC                   ; 080F5540
add   r2,r0,r4                  ; 080F5542
ldrb  r0,[r2]                   ; 080F5544
cmp   r0,0x0                    ; 080F5546
beq   @@Code080F556E            ; 080F5548
mov   r1,r5                     ; 080F554A
add   r1,0xBF                   ; 080F554C
add   r1,r1,r4                  ; 080F554E
ldrb  r0,[r1]                   ; 080F5550
sub   r0,0x1                    ; 080F5552
strb  r0,[r1]                   ; 080F5554
lsl   r0,r0,0x18                ; 080F5556
lsr   r0,r0,0x18                ; 080F5558
cmp   r0,0xFF                   ; 080F555A
bne   @@Code080F556E            ; 080F555C
ldrb  r0,[r2]                   ; 080F555E
cmp   r0,0x6                    ; 080F5560
beq   @@Code080F556E            ; 080F5562
lsl   r1,r4,0x18                ; 080F5564
lsr   r1,r1,0x18                ; 080F5566
mov   r0,r5                     ; 080F5568
bl    Sub080F53CC               ; 080F556A
@@Code080F556E:
add   r0,r4,0x1                 ; 080F556E
lsl   r0,r0,0x10                ; 080F5570
lsr   r4,r0,0x10                ; 080F5572
cmp   r4,0x2                    ; 080F5574
bls   @@Code080F553E            ; 080F5576
pop   {r4-r5}                   ; 080F5578
pop   {r0}                      ; 080F557A
bx    r0                        ; 080F557C
.pool                           ; 080F557E

Sub080F5580:
push  {r4-r7,lr}                ; 080F5580
mov   r6,r0                     ; 080F5582
add   r0,0xC5                   ; 080F5584
ldrb  r0,[r0]                   ; 080F5586
cmp   r0,0x0                    ; 080F5588
beq   @@Code080F564E            ; 080F558A
ldr   r3,=0x03002200            ; 080F558C
ldr   r1,=0x47D0                ; 080F558E
add   r0,r3,r1                  ; 080F5590
ldrh  r0,[r0]                   ; 080F5592
lsr   r7,r0,0x2                 ; 080F5594
ldr   r4,=0x030021B0            ; 080F5596
lsl   r1,r7,0x3                 ; 080F5598
mov   r2,0xE0                   ; 080F559A
lsl   r2,r2,0x6                 ; 080F559C
add   r0,r3,r2                  ; 080F559E
add   r1,r1,r0                  ; 080F55A0
str   r1,[r4]                   ; 080F55A2
ldr   r2,=0x47EE                ; 080F55A4
add   r0,r3,r2                  ; 080F55A6
ldrb  r2,[r0]                   ; 080F55A8
mov   r0,0x88                   ; 080F55AA
sub   r0,r0,r2                  ; 080F55AC
strb  r0,[r1]                   ; 080F55AE
ldr   r5,[r4]                   ; 080F55B0
ldr   r1,=Data08197518          ; 080F55B2
mov   r0,r6                     ; 080F55B4
add   r0,0xBB                   ; 080F55B6
ldrb  r0,[r0]                   ; 080F55B8
lsl   r0,r0,0x1                 ; 080F55BA
add   r0,r0,r1                  ; 080F55BC
ldrh  r1,[r0]                   ; 080F55BE
ldr   r2,=0x01FF                ; 080F55C0
mov   r0,r2                     ; 080F55C2
and   r1,r0                     ; 080F55C4
ldrh  r2,[r5,0x2]               ; 080F55C6
ldr   r0,=0xFFFFFE00            ; 080F55C8
and   r0,r2                     ; 080F55CA
orr   r0,r1                     ; 080F55CC
strh  r0,[r5,0x2]               ; 080F55CE
ldr   r1,=0x47C0                ; 080F55D0
add   r0,r3,r1                  ; 080F55D2
ldrh  r1,[r0]                   ; 080F55D4
mov   r0,0x1                    ; 080F55D6
and   r0,r1                     ; 080F55D8
mov   r6,r3                     ; 080F55DA
cmp   r0,0x0                    ; 080F55DC
beq   @@Code080F5610            ; 080F55DE
ldrh  r0,[r5,0x4]               ; 080F55E0
ldr   r1,=0xFFFFFC00            ; 080F55E2
and   r1,r0                     ; 080F55E4
mov   r0,0xD2                   ; 080F55E6
b     @@Code080F5618            ; 080F55E8
.pool                           ; 080F55EA

@@Code080F5610:
ldrh  r0,[r5,0x4]               ; 080F5610
ldr   r1,=0xFFFFFC00            ; 080F5612
and   r1,r0                     ; 080F5614
mov   r0,0xD0                   ; 080F5616
@@Code080F5618:
orr   r1,r0                     ; 080F5618
strh  r1,[r5,0x4]               ; 080F561A
ldr   r3,[r4]                   ; 080F561C
ldrb  r2,[r3,0x1]               ; 080F561E
mov   r1,0x3F                   ; 080F5620
mov   r0,r1                     ; 080F5622
and   r0,r2                     ; 080F5624
strb  r0,[r3,0x1]               ; 080F5626
ldr   r2,[r4]                   ; 080F5628
ldrb  r0,[r2,0x3]               ; 080F562A
and   r1,r0                     ; 080F562C
mov   r0,0x40                   ; 080F562E
orr   r1,r0                     ; 080F5630
strb  r1,[r2,0x3]               ; 080F5632
ldr   r2,[r4]                   ; 080F5634
ldrb  r1,[r2,0x5]               ; 080F5636
mov   r0,0xD                    ; 080F5638
neg   r0,r0                     ; 080F563A
and   r0,r1                     ; 080F563C
mov   r1,0x8                    ; 080F563E
orr   r0,r1                     ; 080F5640
strb  r0,[r2,0x5]               ; 080F5642
add   r0,r7,0x1                 ; 080F5644
lsl   r0,r0,0x2                 ; 080F5646
ldr   r2,=0x47D0                ; 080F5648
add   r1,r6,r2                  ; 080F564A
strh  r0,[r1]                   ; 080F564C
@@Code080F564E:
pop   {r4-r7}                   ; 080F564E
pop   {r0}                      ; 080F5650
bx    r0                        ; 080F5652
.pool                           ; 080F5654

Sub080F565C:
push  {r4,lr}                   ; 080F565C
mov   r4,r0                     ; 080F565E
mov   r0,0x11                   ; 080F5660
mov   r1,0x0                    ; 080F5662
bl    PlayYISound               ; 080F5664
mov   r0,0x3                    ; 080F5668
strh  r0,[r4,0x1C]              ; 080F566A
ldr   r0,=Data08196BA0          ; 080F566C
ldrh  r0,[r0,0x6]               ; 080F566E
bl    Sub080EFDB8               ; 080F5670
pop   {r4}                      ; 080F5674
pop   {r0}                      ; 080F5676
bx    r0                        ; 080F5678
.pool                           ; 080F567A

Sub080F5680:
push  {lr}                      ; 080F5680
mov   r1,r0                     ; 080F5682
add   r0,0xAD                   ; 080F5684
ldrb  r2,[r0]                   ; 080F5686
cmp   r2,0x2                    ; 080F5688
bne   @@Code080F56B4            ; 080F568A
add   r0,0x4                    ; 080F568C
ldrb  r0,[r0]                   ; 080F568E
cmp   r0,0x3                    ; 080F5690
bne   @@Code080F56B4            ; 080F5692
mov   r0,r1                     ; 080F5694
add   r0,0xB5                   ; 080F5696
ldrb  r0,[r0]                   ; 080F5698
cmp   r0,0x4                    ; 080F569A
bne   @@Code080F56C8            ; 080F569C
mov   r0,0x1                    ; 080F569E
strh  r0,[r1,0x30]              ; 080F56A0
strh  r2,[r1,0x1C]              ; 080F56A2
ldr   r0,=Data08196BA0          ; 080F56A4
ldrh  r0,[r0,0x4]               ; 080F56A6
bl    Sub080EFDB8               ; 080F56A8
b     @@Code080F56F8            ; 080F56AC
.pool                           ; 080F56AE

@@Code080F56B4:
mov   r0,r1                     ; 080F56B4
add   r0,0xB1                   ; 080F56B6
ldrb  r0,[r0]                   ; 080F56B8
cmp   r2,r0                     ; 080F56BA
bne   @@Code080F56C8            ; 080F56BC
mov   r0,r1                     ; 080F56BE
add   r0,0xB5                   ; 080F56C0
ldrb  r0,[r0]                   ; 080F56C2
cmp   r2,r0                     ; 080F56C4
beq   @@Code080F56D0            ; 080F56C6
@@Code080F56C8:
mov   r0,r1                     ; 080F56C8
bl    Sub080F565C               ; 080F56CA
b     @@Code080F56F8            ; 080F56CE
@@Code080F56D0:
cmp   r2,0x0                    ; 080F56D0
bne   @@Code080F56D8            ; 080F56D2
mov   r0,0x2                    ; 080F56D4
b     @@Code080F56EA            ; 080F56D6
@@Code080F56D8:
cmp   r2,0x1                    ; 080F56D8
bne   @@Code080F56E0            ; 080F56DA
mov   r0,0x3                    ; 080F56DC
b     @@Code080F56EA            ; 080F56DE
@@Code080F56E0:
cmp   r2,0x5                    ; 080F56E0
bne   @@Code080F56E8            ; 080F56E2
strh  r2,[r1,0x30]              ; 080F56E4
b     @@Code080F56EC            ; 080F56E6
@@Code080F56E8:
mov   r0,0x1                    ; 080F56E8
@@Code080F56EA:
strh  r0,[r1,0x30]              ; 080F56EA
@@Code080F56EC:
mov   r0,0x2                    ; 080F56EC
strh  r0,[r1,0x1C]              ; 080F56EE
ldr   r0,=Data08196BA0          ; 080F56F0
ldrh  r0,[r0,0x4]               ; 080F56F2
bl    Sub080EFDB8               ; 080F56F4
@@Code080F56F8:
pop   {r0}                      ; 080F56F8
bx    r0                        ; 080F56FA
.pool                           ; 080F56FC

Sub080F5700:
push  {r4,lr}                   ; 080F5700
mov   r4,r0                     ; 080F5702
ldrh  r0,[r4,0x2A]              ; 080F5704
ldrh  r1,[r4,0x2C]              ; 080F5706
orr   r0,r1                     ; 080F5708
ldrh  r1,[r4,0x2E]              ; 080F570A
orr   r0,r1                     ; 080F570C
cmp   r0,0x0                    ; 080F570E
bne   @@Code080F5752            ; 080F5710
mov   r0,r4                     ; 080F5712
bl    Sub080F5680               ; 080F5714
mov   r0,0x80                   ; 080F5718
strh  r0,[r4,0x12]              ; 080F571A
ldrh  r0,[r4,0x10]              ; 080F571C
add   r1,r0,0x1                 ; 080F571E
strh  r1,[r4,0x10]              ; 080F5720
ldrh  r0,[r4,0x30]              ; 080F5722
cmp   r0,0x0                    ; 080F5724
beq   @@Code080F574C            ; 080F5726
mov   r0,0x90                   ; 080F5728
strh  r0,[r4,0x3E]              ; 080F572A
mov   r0,0x20                   ; 080F572C  20: Goal/x-4 victory
bl    Sub0812C3B4               ; 080F572E  Change music (YI)
ldr   r1,=0x03002200            ; 080F5732
ldr   r0,=0x4A48                ; 080F5734
add   r1,r1,r0                  ; 080F5736
ldrb  r0,[r1]                   ; 080F5738
mov   r2,0x4                    ; 080F573A
orr   r0,r2                     ; 080F573C
strb  r0,[r1]                   ; 080F573E
b     @@Code080F5776            ; 080F5740
.pool                           ; 080F5742

@@Code080F574C:
add   r0,r1,0x1                 ; 080F574C
strh  r0,[r4,0x10]              ; 080F574E
b     @@Code080F5776            ; 080F5750
@@Code080F5752:
mov   r0,r4                     ; 080F5752
bl    Sub080F544C               ; 080F5754
mov   r0,r4                     ; 080F5758
bl    Sub080F5538               ; 080F575A
mov   r0,r4                     ; 080F575E
bl    Sub080F4E74               ; 080F5760
mov   r0,r4                     ; 080F5764
bl    Sub080F4F8C               ; 080F5766
mov   r0,r4                     ; 080F576A
bl    Sub080F4FF8               ; 080F576C
mov   r0,r4                     ; 080F5770
bl    Sub080F5580               ; 080F5772
@@Code080F5776:
mov   r0,r4                     ; 080F5776
bl    Sub080F5170               ; 080F5778
pop   {r4}                      ; 080F577C
pop   {r0}                      ; 080F577E
bx    r0                        ; 080F5780
.pool                           ; 080F5782

Sub080F5784:
push  {r4-r5,lr}                ; 080F5784
ldr   r5,=0x0600A324            ; 080F5786
ldrh  r1,[r0,0x3E]              ; 080F5788
mov   r0,0x4                    ; 080F578A
and   r0,r1                     ; 080F578C
lsl   r0,r0,0x10                ; 080F578E
lsr   r1,r0,0x12                ; 080F5790
ldr   r0,=Data08197524          ; 080F5792
lsl   r1,r1,0x1                 ; 080F5794
add   r1,r1,r0                  ; 080F5796
mov   r2,0xC0                   ; 080F5798
lsl   r2,r2,0x6                 ; 080F579A
mov   r0,r2                     ; 080F579C
ldrh  r1,[r1]                   ; 080F579E
add   r0,r0,r1                  ; 080F57A0
lsl   r0,r0,0x10                ; 080F57A2
lsr   r1,r0,0x10                ; 080F57A4
mov   r3,0x0                    ; 080F57A6
mov   r4,0x80                   ; 080F57A8
lsl   r4,r4,0x1                 ; 080F57AA
@@Code080F57AC:
lsl   r0,r3,0x1                 ; 080F57AC
add   r2,r0,r5                  ; 080F57AE
strh  r1,[r2]                   ; 080F57B0
mov   r0,r2                     ; 080F57B2
add   r0,0x40                   ; 080F57B4
strh  r1,[r0]                   ; 080F57B6
add   r0,0x40                   ; 080F57B8
strh  r1,[r0]                   ; 080F57BA
add   r0,0x40                   ; 080F57BC
strh  r1,[r0]                   ; 080F57BE
add   r0,r2,r4                  ; 080F57C0
strh  r1,[r0]                   ; 080F57C2
add   r0,r3,0x1                 ; 080F57C4
lsl   r0,r0,0x10                ; 080F57C6
lsr   r3,r0,0x10                ; 080F57C8
cmp   r3,0x6                    ; 080F57CA
bls   @@Code080F57AC            ; 080F57CC
pop   {r4-r5}                   ; 080F57CE
pop   {r0}                      ; 080F57D0
bx    r0                        ; 080F57D2
.pool                           ; 080F57D4

Sub080F57DC:
push  {r4,lr}                   ; 080F57DC
mov   r3,r0                     ; 080F57DE
ldrh  r0,[r3,0x30]              ; 080F57E0
sub   r0,0x2                    ; 080F57E2
lsl   r0,r0,0x10                ; 080F57E4
lsr   r2,r0,0x10                ; 080F57E6
cmp   r2,0x2                    ; 080F57E8
bls   @@Code080F57EE            ; 080F57EA
mov   r2,0x2                    ; 080F57EC
@@Code080F57EE:
ldr   r1,=Data0819751E          ; 080F57EE
lsl   r0,r2,0x1                 ; 080F57F0
add   r0,r0,r1                  ; 080F57F2
ldrh  r0,[r0]                   ; 080F57F4
ldr   r1,=0x0600A000            ; 080F57F6
add   r4,r0,r1                  ; 080F57F8
ldrh  r1,[r3,0x3E]              ; 080F57FA
mov   r0,0x4                    ; 080F57FC
and   r0,r1                     ; 080F57FE
lsl   r0,r0,0x10                ; 080F5800
lsr   r2,r0,0x12                ; 080F5802
ldr   r0,=Data08197524          ; 080F5804
lsl   r1,r2,0x1                 ; 080F5806
add   r1,r1,r0                  ; 080F5808
mov   r2,0xC0                   ; 080F580A
lsl   r2,r2,0x6                 ; 080F580C
mov   r0,r2                     ; 080F580E
ldrh  r1,[r1]                   ; 080F5810
add   r0,r0,r1                  ; 080F5812
lsl   r0,r0,0x10                ; 080F5814
lsr   r2,r0,0x10                ; 080F5816
mov   r1,0x0                    ; 080F5818
@@Code080F581A:
lsl   r0,r1,0x1                 ; 080F581A
add   r0,r0,r4                  ; 080F581C
strh  r2,[r0]                   ; 080F581E
add   r0,0x40                   ; 080F5820
strh  r2,[r0]                   ; 080F5822
add   r0,r1,0x1                 ; 080F5824
lsl   r0,r0,0x10                ; 080F5826
lsr   r1,r0,0x10                ; 080F5828
cmp   r1,0x6                    ; 080F582A
bls   @@Code080F581A            ; 080F582C
pop   {r4}                      ; 080F582E
pop   {r0}                      ; 080F5830
bx    r0                        ; 080F5832
.pool                           ; 080F5834

Sub080F5840:
push  {r4,lr}                   ; 080F5840
mov   r4,r0                     ; 080F5842
bl    Sub080F5170               ; 080F5844
ldrh  r0,[r4,0x3E]              ; 080F5848
sub   r0,0x1                    ; 080F584A
strh  r0,[r4,0x3E]              ; 080F584C
lsl   r0,r0,0x10                ; 080F584E
ldr   r1,=0xFFFF0000            ; 080F5850
cmp   r0,r1                     ; 080F5852
bne   @@Code080F5868            ; 080F5854
mov   r0,0x1                    ; 080F5856
strh  r0,[r4,0x12]              ; 080F5858
ldrh  r0,[r4,0x10]              ; 080F585A
add   r0,0x1                    ; 080F585C
strh  r0,[r4,0x10]              ; 080F585E
b     @@Code080F5880            ; 080F5860
.pool                           ; 080F5862

@@Code080F5868:
ldr   r0,=CodePtrs08197528      ; 080F5868
ldrh  r1,[r4,0x30]              ; 080F586A
sub   r1,0x1                    ; 080F586C
lsl   r1,r1,0x2                 ; 080F586E
add   r1,r1,r0                  ; 080F5870
ldr   r1,[r1]                   ; 080F5872
mov   r0,r4                     ; 080F5874
bl    Sub_bx_r1                 ; 080F5876  bx r1
mov   r0,r4                     ; 080F587A
bl    Sub080F5170               ; 080F587C
@@Code080F5880:
pop   {r4}                      ; 080F5880
pop   {r0}                      ; 080F5882
bx    r0                        ; 080F5884
.pool                           ; 080F5886

Sub080F588C:
push  {r4,lr}                   ; 080F588C
mov   r4,r0                     ; 080F588E
ldrh  r0,[r4,0x12]              ; 080F5890
sub   r0,0x1                    ; 080F5892
strh  r0,[r4,0x12]              ; 080F5894
lsl   r0,r0,0x10                ; 080F5896
cmp   r0,0x0                    ; 080F5898
bne   @@Code080F58BA            ; 080F589A
ldrh  r2,[r4,0x30]              ; 080F589C
cmp   r2,0x0                    ; 080F589E
beq   @@Code080F58B0            ; 080F58A0
ldr   r0,=0x03002200            ; 080F58A2
ldr   r1,=0x407E                ; 080F58A4
add   r3,r0,r1                  ; 080F58A6
ldrh  r1,[r3]                   ; 080F58A8
ldr   r0,=0x03E6                ; 080F58AA
cmp   r1,r0                     ; 080F58AC
bls   @@Code080F58D0            ; 080F58AE
@@Code080F58B0:
mov   r0,0x80                   ; 080F58B0
strh  r0,[r4,0x12]              ; 080F58B2
ldrh  r0,[r4,0x10]              ; 080F58B4
add   r0,0x1                    ; 080F58B6
strh  r0,[r4,0x10]              ; 080F58B8
@@Code080F58BA:
mov   r0,r4                     ; 080F58BA
bl    Sub080F5170               ; 080F58BC
b     @@Code080F58EE            ; 080F58C0
.pool                           ; 080F58C2

@@Code080F58D0:
sub   r0,r2,0x1                 ; 080F58D0
strh  r0,[r4,0x30]              ; 080F58D2
add   r0,r1,0x1                 ; 080F58D4
strh  r0,[r3]                   ; 080F58D6
bl    Sub080EF708               ; 080F58D8
mov   r0,0x6E                   ; 080F58DC
mov   r1,0x0                    ; 080F58DE
bl    PlayYISound               ; 080F58E0
mov   r0,0x30                   ; 080F58E4
strh  r0,[r4,0x12]              ; 080F58E6
mov   r0,r4                     ; 080F58E8
bl    Sub080F5170               ; 080F58EA
@@Code080F58EE:
pop   {r4}                      ; 080F58EE
pop   {r0}                      ; 080F58F0
bx    r0                        ; 080F58F2

Sub080F58F4:
push  {lr}                      ; 080F58F4
ldr   r2,=CodePtrs0819753C      ; 080F58F6
ldrh  r1,[r0,0x10]              ; 080F58F8
lsl   r1,r1,0x2                 ; 080F58FA
add   r1,r1,r2                  ; 080F58FC
ldr   r1,[r1]                   ; 080F58FE
bl    Sub_bx_r1                 ; 080F5900  bx r1
pop   {r0}                      ; 080F5904
bx    r0                        ; 080F5906
.pool                           ; 080F5908
