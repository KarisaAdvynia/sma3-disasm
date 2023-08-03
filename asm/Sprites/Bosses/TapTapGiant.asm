TapTapGiant_Init:
; sprite 03C init
push  {r4-r7,lr}                    ; 080D367C
mov   r7,r8                         ; 080D367E
push  {r7}                          ; 080D3680
mov   r7,r0                         ; 080D3682
bl    Sub0804B208                   ; 080D3684
lsl   r0,r0,0x18                    ; 080D3688
cmp   r0,0x0                        ; 080D368A
beq   @@Code080D3732                ; 080D368C
ldr   r4,=Data082A51A4              ; 080D368E
ldr   r1,=0x06013200                ; 080D3690
mov   r0,r4                         ; 080D3692
mov   r2,0x40                       ; 080D3694
bl    swi_MemoryCopy32              ; 080D3696  Memory copy/fill, 32-byte blocks
mov   r6,0x80                       ; 080D369A
lsl   r6,r6,0x3                     ; 080D369C  400
add   r0,r4,r6                      ; 080D369E
ldr   r1,=0x06013600                ; 080D36A0
mov   r2,0x40                       ; 080D36A2
bl    swi_MemoryCopy32              ; 080D36A4  Memory copy/fill, 32-byte blocks
mov   r5,0x80                       ; 080D36A8
lsl   r5,r5,0x4                     ; 080D36AA  800
add   r0,r4,r5                      ; 080D36AC
ldr   r1,=0x06013A00                ; 080D36AE
mov   r2,0x40                       ; 080D36B0
bl    swi_MemoryCopy32              ; 080D36B2  Memory copy/fill, 32-byte blocks
mov   r0,0xC0                       ; 080D36B6
lsl   r0,r0,0x4                     ; 080D36B8  C00
mov   r8,r0                         ; 080D36BA
add   r0,r4,r0                      ; 080D36BC
ldr   r1,=0x06013E00                ; 080D36BE
mov   r2,0x40                       ; 080D36C0
bl    swi_MemoryCopy32              ; 080D36C2  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080D36C6
lsl   r1,r1,0x5                     ; 080D36C8  1000
add   r0,r4,r1                      ; 080D36CA
ldr   r1,=0x06014200                ; 080D36CC
mov   r2,0x40                       ; 080D36CE
bl    swi_MemoryCopy32              ; 080D36D0  Memory copy/fill, 32-byte blocks
mov   r1,0xA0                       ; 080D36D4
lsl   r1,r1,0x5                     ; 080D36D6  1400
add   r0,r4,r1                      ; 080D36D8
ldr   r1,=0x06014600                ; 080D36DA
mov   r2,0x40                       ; 080D36DC
bl    swi_MemoryCopy32              ; 080D36DE  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 080D36E2
lsl   r1,r1,0x5                     ; 080D36E4  1800
add   r0,r4,r1                      ; 080D36E6
ldr   r1,=0x06014A00                ; 080D36E8
mov   r2,0x40                       ; 080D36EA
bl    swi_MemoryCopy32              ; 080D36EC  Memory copy/fill, 32-byte blocks
mov   r1,0xE0                       ; 080D36F0
lsl   r1,r1,0x5                     ; 080D36F2  1C00
add   r0,r4,r1                      ; 080D36F4
ldr   r1,=0x06014E00                ; 080D36F6
mov   r2,0x40                       ; 080D36F8
bl    swi_MemoryCopy32              ; 080D36FA  Memory copy/fill, 32-byte blocks
mov   r0,0x9F                       ; 080D36FE
lsl   r0,r0,0x7                     ; 080D3700  4F80
add   r4,r4,r0                      ; 080D3702
ldr   r1,=0x06013380                ; 080D3704
mov   r0,r4                         ; 080D3706
mov   r2,0x20                       ; 080D3708
bl    swi_MemoryCopy32              ; 080D370A  Memory copy/fill, 32-byte blocks
add   r6,r4,r6                      ; 080D370E
ldr   r1,=0x06013780                ; 080D3710
mov   r0,r6                         ; 080D3712
mov   r2,0x20                       ; 080D3714
bl    swi_MemoryCopy32              ; 080D3716  Memory copy/fill, 32-byte blocks
add   r5,r4,r5                      ; 080D371A
ldr   r1,=0x06013B80                ; 080D371C
mov   r0,r5                         ; 080D371E
mov   r2,0x20                       ; 080D3720
bl    swi_MemoryCopy32              ; 080D3722  Memory copy/fill, 32-byte blocks
add   r4,r8                         ; 080D3726
ldr   r1,=0x06013F80                ; 080D3728
mov   r0,r4                         ; 080D372A
mov   r2,0x20                       ; 080D372C
bl    swi_MemoryCopy32              ; 080D372E  Memory copy/fill, 32-byte blocks
@@Code080D3732:
mov   r0,0x0                        ; 080D3732
str   r0,[r7,0x14]                  ; 080D3734
mov   r1,0x0                        ; 080D3736
mov   r0,0x18                       ; 080D3738
strh  r0,[r7,0x3A]                  ; 080D373A
mov   r0,0x8A                       ; 080D373C
lsl   r0,r0,0x6                     ; 080D373E
strh  r0,[r7,0x28]                  ; 080D3740
ldr   r3,=0x0202B360                ; 080D3742
ldr   r2,=0x0202B366                ; 080D3744
ldr   r0,=0x0202B367                ; 080D3746
strb  r1,[r0]                       ; 080D3748
strb  r1,[r2]                       ; 080D374A
strb  r1,[r3]                       ; 080D374C
ldr   r0,[r7,0x4]                   ; 080D374E
mov   r1,0x80                       ; 080D3750
lsl   r1,r1,0x5                     ; 080D3752
add   r0,r0,r1                      ; 080D3754
str   r0,[r7,0x4]                   ; 080D3756
ldr   r1,=0x0202B358                ; 080D3758
mov   r0,0x58                       ; 080D375A
strb  r0,[r1]                       ; 080D375C
mov   r1,r7                         ; 080D375E
add   r1,0x42                       ; 080D3760
mov   r0,0x40                       ; 080D3762
strh  r0,[r1]                       ; 080D3764
mov   r0,0x10                       ; 080D3766
strh  r0,[r7,0x38]                  ; 080D3768
ldr   r0,=0x03002200                ; 080D376A
ldr   r1,=0x4088                    ; 080D376C
add   r0,r0,r1                      ; 080D376E
ldrb  r0,[r0]                       ; 080D3770
cmp   r0,0x3F                       ; 080D3772
bne   @@Code080D377C                ; 080D3774
mov   r0,0x16                       ; 080D3776
bl    LoadBossPalette               ; 080D3778
@@Code080D377C:
pop   {r3}                          ; 080D377C
mov   r8,r3                         ; 080D377E
pop   {r4-r7}                       ; 080D3780
pop   {r0}                          ; 080D3782
bx    r0                            ; 080D3784
.pool                               ; 080D3786

TapTapGiant_Main:
; sprite 03C main
push  {r4-r7,lr}                    ; 080D37D4
mov   r5,r0                         ; 080D37D6
bl    Sub080D3870                   ; 080D37D8
mov   r0,r5                         ; 080D37DC
bl    Sub0804C330                   ; 080D37DE
mov   r7,r0                         ; 080D37E2
cmp   r7,0x0                        ; 080D37E4
beq   @@Code080D37F6                ; 080D37E6
mov   r0,r5                         ; 080D37E8
bl    Sub080D3968                   ; 080D37EA
mov   r0,r5                         ; 080D37EE
bl    Sub080D3EB4                   ; 080D37F0
b     @@Code080D3850                ; 080D37F4
@@Code080D37F6:
mov   r0,r5                         ; 080D37F6
bl    Sub080D3968                   ; 080D37F8
mov   r0,r5                         ; 080D37FC
bl    Sub080D3EB4                   ; 080D37FE
mov   r0,r5                         ; 080D3802
bl    Sub080D4358                   ; 080D3804
mov   r6,r5                         ; 080D3808
add   r6,0xA1                       ; 080D380A
ldrb  r0,[r6]                       ; 080D380C
cmp   r0,0x18                       ; 080D380E
bne   @@Code080D3850                ; 080D3810
ldr   r1,=0x03002200                ; 080D3812
mov   r2,r5                         ; 080D3814
add   r2,0x5A                       ; 080D3816
ldr   r3,=0x47E4                    ; 080D3818
add   r0,r1,r3                      ; 080D381A
ldrh  r2,[r2]                       ; 080D381C
ldrh  r0,[r0]                       ; 080D381E
sub   r2,r2,r0                      ; 080D3820
ldr   r0,=0x4058                    ; 080D3822
add   r1,r1,r0                      ; 080D3824
mov   r4,0x0                        ; 080D3826
strh  r2,[r1]                       ; 080D3828
mov   r0,0x87                       ; 080D382A
bl    PlayYISound                   ; 080D382C
strb  r4,[r6]                       ; 080D3830
mov   r0,r5                         ; 080D3832
bl    Sub080D4E7C                   ; 080D3834
ldr   r1,=0x0202B353                ; 080D3838
mov   r0,0xE                        ; 080D383A
strb  r0,[r1]                       ; 080D383C
ldrh  r1,[r5,0x26]                  ; 080D383E
ldr   r0,=0xF9DF                    ; 080D3840
and   r0,r1                         ; 080D3842
strh  r0,[r5,0x26]                  ; 080D3844
ldrh  r1,[r5,0x28]                  ; 080D3846
ldr   r0,=0xFFE0                    ; 080D3848
and   r0,r1                         ; 080D384A
strh  r0,[r5,0x28]                  ; 080D384C
str   r7,[r5,0x14]                  ; 080D384E
@@Code080D3850:
pop   {r4-r7}                       ; 080D3850
pop   {r0}                          ; 080D3852
bx    r0                            ; 080D3854
.pool                               ; 080D3856

Sub080D3870:
push  {r4-r7,lr}                    ; 080D3870
mov   r7,r10                        ; 080D3872
mov   r6,r9                         ; 080D3874
mov   r5,r8                         ; 080D3876
push  {r5-r7}                       ; 080D3878
add   sp,-0x4                       ; 080D387A
str   r0,[sp]                       ; 080D387C
ldrh  r0,[r0,0x38]                  ; 080D387E
cmp   r0,0x0                        ; 080D3880
bne   @@Code080D394A                ; 080D3882
ldr   r0,=Data08190068              ; 080D3884
add   r0,0xF0                       ; 080D3886
ldr   r5,[r0]                       ; 080D3888
ldr   r1,[sp]                       ; 080D388A
ldrh  r0,[r1,0x34]                  ; 080D388C
lsr   r0,r0,0x2                     ; 080D388E
lsl   r0,r0,0x3                     ; 080D3890
ldr   r1,=0x03005A00                ; 080D3892
add   r4,r0,r1                      ; 080D3894
mov   r6,0x4                        ; 080D3896
ldr   r2,[sp]                       ; 080D3898
mov   r7,0x20                       ; 080D389A
ldsh  r2,[r2,r7]                    ; 080D389C
mov   r12,r2                        ; 080D389E
ldr   r0,[sp]                       ; 080D38A0
mov   r1,0x22                       ; 080D38A2
ldsh  r0,[r0,r1]                    ; 080D38A4
mov   r8,r0                         ; 080D38A6
mov   r2,0x50                       ; 080D38A8
neg   r2,r2                         ; 080D38AA
mov   r10,r2                        ; 080D38AC
ldr   r7,=0x01FF                    ; 080D38AE
mov   r9,r7                         ; 080D38B0
@@Code080D38B2:
ldr   r1,[sp]                       ; 080D38B2
ldrh  r0,[r1,0x36]                  ; 080D38B4
cmp   r0,0x0                        ; 080D38B6
beq   @@Code080D38D0                ; 080D38B8
mov   r0,0x0                        ; 080D38BA
ldsb  r0,[r5,r0]                    ; 080D38BC
mov   r2,r12                        ; 080D38BE
sub   r0,r2,r0                      ; 080D38C0
b     @@Code080D38D6                ; 080D38C2
.pool                               ; 080D38C4

@@Code080D38D0:
mov   r0,0x0                        ; 080D38D0
ldsb  r0,[r5,r0]                    ; 080D38D2
add   r0,r12                        ; 080D38D4
@@Code080D38D6:
lsl   r0,r0,0x10                    ; 080D38D6
lsr   r1,r0,0x10                    ; 080D38D8
mov   r0,0x1                        ; 080D38DA
ldsb  r0,[r5,r0]                    ; 080D38DC
add   r0,r8                         ; 080D38DE
lsl   r0,r0,0x10                    ; 080D38E0
lsr   r2,r0,0x10                    ; 080D38E2
add   r5,0x5                        ; 080D38E4
lsl   r0,r1,0x10                    ; 080D38E6
asr   r3,r0,0x10                    ; 080D38E8
mov   r7,0xA0                       ; 080D38EA
lsl   r7,r7,0xF                     ; 080D38EC
add   r0,r0,r7                      ; 080D38EE
lsr   r0,r0,0x10                    ; 080D38F0
ldr   r1,=0x018F                    ; 080D38F2
cmp   r0,r1                         ; 080D38F4
bhi   @@Code080D3904                ; 080D38F6
lsl   r0,r2,0x10                    ; 080D38F8
asr   r0,r0,0x10                    ; 080D38FA
cmp   r0,0xBF                       ; 080D38FC
bgt   @@Code080D3904                ; 080D38FE
cmp   r0,r10                        ; 080D3900
bge   @@Code080D3914                ; 080D3902
@@Code080D3904:
mov   r0,0xC0                       ; 080D3904
strh  r0,[r4]                       ; 080D3906
mov   r0,0x0                        ; 080D3908
strh  r0,[r4,0x2]                   ; 080D390A
b     @@Code080D3940                ; 080D390C
.pool                               ; 080D390E

@@Code080D3914:
mov   r1,0xFF                       ; 080D3914
and   r1,r0                         ; 080D3916
lsl   r2,r6,0x1                     ; 080D3918
ldr   r7,=Data0817C7C8              ; 080D391A
add   r0,r2,r7                      ; 080D391C
ldrh  r0,[r0]                       ; 080D391E
orr   r1,r0                         ; 080D3920
strh  r1,[r4]                       ; 080D3922
mov   r0,r9                         ; 080D3924
and   r3,r0                         ; 080D3926
ldr   r1,=Data0817C7D2              ; 080D3928
add   r0,r2,r1                      ; 080D392A
ldrh  r0,[r0]                       ; 080D392C
orr   r3,r0                         ; 080D392E
strh  r3,[r4,0x2]                   ; 080D3930
ldr   r7,=Data0817C7DC              ; 080D3932
add   r2,r2,r7                      ; 080D3934
ldrh  r0,[r2]                       ; 080D3936
mov   r2,0xD0                       ; 080D3938
lsl   r2,r2,0x7                     ; 080D393A
mov   r1,r2                         ; 080D393C
orr   r0,r1                         ; 080D393E
@@Code080D3940:
strh  r0,[r4,0x4]                   ; 080D3940
add   r4,0x8                        ; 080D3942
sub   r6,0x1                        ; 080D3944
cmp   r6,0x0                        ; 080D3946
bge   @@Code080D38B2                ; 080D3948
@@Code080D394A:
add   sp,0x4                        ; 080D394A
pop   {r3-r5}                       ; 080D394C
mov   r8,r3                         ; 080D394E
mov   r9,r4                         ; 080D3950
mov   r10,r5                        ; 080D3952
pop   {r4-r7}                       ; 080D3954
pop   {r0}                          ; 080D3956
bx    r0                            ; 080D3958
.pool                               ; 080D395A

Sub080D3968:
push  {r4-r7,lr}                    ; 080D3968
mov   r5,r0                         ; 080D396A
ldrh  r0,[r5,0x38]                  ; 080D396C
cmp   r0,0x0                        ; 080D396E
beq   @@Code080D3974                ; 080D3970
b     @@Code080D3B4E                ; 080D3972
@@Code080D3974:
mov   r1,0x34                       ; 080D3974
ldsh  r0,[r5,r1]                    ; 080D3976
cmp   r0,0x0                        ; 080D3978
bge   @@Code080D397E                ; 080D397A
b     @@Code080D3B4E                ; 080D397C
@@Code080D397E:
ldr   r1,=Data0817C90F              ; 080D397E
ldr   r4,=0x0202B357                ; 080D3980
ldrb  r0,[r4]                       ; 080D3982
add   r0,r0,r1                      ; 080D3984
ldrb  r1,[r0]                       ; 080D3986
mov   r0,r5                         ; 080D3988
add   r0,0x7C                       ; 080D398A
strh  r1,[r0]                       ; 080D398C
ldrh  r0,[r5,0x36]                  ; 080D398E
cmp   r0,0x0                        ; 080D3990
beq   @@Code080D39BC                ; 080D3992
ldr   r3,=0x0202B352                ; 080D3994
ldr   r2,=0x0202B351                ; 080D3996
ldr   r1,=Data0817C8EE              ; 080D3998
ldrb  r0,[r4]                       ; 080D399A
add   r0,r0,r1                      ; 080D399C
ldrb  r1,[r0]                       ; 080D399E
lsl   r1,r1,0x3                     ; 080D39A0
ldrb  r0,[r2]                       ; 080D39A2
sub   r0,r0,r1                      ; 080D39A4
b     @@Code080D39CE                ; 080D39A6
.pool                               ; 080D39A8

@@Code080D39BC:
ldr   r3,=0x0202B352                ; 080D39BC
ldr   r2,=0x0202B351                ; 080D39BE
ldr   r1,=Data0817C8EE              ; 080D39C0
ldrb  r0,[r4]                       ; 080D39C2
add   r0,r0,r1                      ; 080D39C4
ldrb  r0,[r0]                       ; 080D39C6
lsl   r0,r0,0x3                     ; 080D39C8
ldrb  r2,[r2]                       ; 080D39CA
add   r0,r0,r2                      ; 080D39CC
@@Code080D39CE:
strb  r0,[r3]                       ; 080D39CE
mov   r4,0x3                        ; 080D39D0
ldr   r6,=0x03007240                ; 080D39D2  Normal gameplay IWRAM (Ptr to 0300220C)
@@Code080D39D4:
ldr   r0,=0x0202B357                ; 080D39D4
ldrb  r0,[r0]                       ; 080D39D6
lsl   r0,r0,0x2                     ; 080D39D8
add   r0,r0,r4                      ; 080D39DA
lsl   r0,r0,0x18                    ; 080D39DC
lsr   r3,r0,0x18                    ; 080D39DE
ldr   r0,=0x0202B358                ; 080D39E0
ldrb  r0,[r0]                       ; 080D39E2
add   r1,r0,0x1                     ; 080D39E4
cmp   r1,0x0                        ; 080D39E6
bne   @@Code080D3A10                ; 080D39E8
ldr   r0,[r6]                       ; 080D39EA
ldr   r2,=0x2A2E                    ; 080D39EC
add   r0,r0,r2                      ; 080D39EE
strh  r1,[r0]                       ; 080D39F0
b     @@Code080D3A28                ; 080D39F2
.pool                               ; 080D39F4

@@Code080D3A10:
ldr   r2,[r6]                       ; 080D3A10
ldr   r0,=Data0817C86A              ; 080D3A12
add   r0,r3,r0                      ; 080D3A14
ldrb  r0,[r0]                       ; 080D3A16
mul   r0,r1                         ; 080D3A18
add   r0,0x80                       ; 080D3A1A
asr   r0,r0,0x8                     ; 080D3A1C
mov   r1,0xFF                       ; 080D3A1E
and   r0,r1                         ; 080D3A20
ldr   r1,=0x2A2E                    ; 080D3A22
add   r2,r2,r1                      ; 080D3A24
strh  r0,[r2]                       ; 080D3A26
@@Code080D3A28:
ldr   r7,=0x03007240                ; 080D3A28  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r0,[r5,0x36]                  ; 080D3A2A
cmp   r0,0x0                        ; 080D3A2C
beq   @@Code080D3A5C                ; 080D3A2E
ldr   r2,[r7]                       ; 080D3A30
ldr   r0,=Data0817C7E6              ; 080D3A32
add   r0,r3,r0                      ; 080D3A34
ldrb  r1,[r0]                       ; 080D3A36
neg   r1,r1                         ; 080D3A38
mov   r0,0xFF                       ; 080D3A3A
and   r1,r0                         ; 080D3A3C
ldr   r3,=0x2A12                    ; 080D3A3E
add   r2,r2,r3                      ; 080D3A40
strh  r1,[r2]                       ; 080D3A42
b     @@Code080D3A6A                ; 080D3A44
.pool                               ; 080D3A46

@@Code080D3A5C:
ldr   r0,[r7]                       ; 080D3A5C
ldr   r1,=Data0817C7E6              ; 080D3A5E
add   r1,r3,r1                      ; 080D3A60
ldrb  r1,[r1]                       ; 080D3A62
ldr   r2,=0x2A12                    ; 080D3A64
add   r0,r0,r2                      ; 080D3A66
strh  r1,[r0]                       ; 080D3A68
@@Code080D3A6A:
ldr   r0,[r6]                       ; 080D3A6A
ldr   r3,=0x2A26                    ; 080D3A6C
add   r0,r0,r3                      ; 080D3A6E
strh  r4,[r0]                       ; 080D3A70
mov   r0,r5                         ; 080D3A72
bl    Sub080D3B64                   ; 080D3A74
sub   r4,0x1                        ; 080D3A78
cmp   r4,0x0                        ; 080D3A7A
bge   @@Code080D39D4                ; 080D3A7C
ldr   r1,=Data0817C930              ; 080D3A7E
ldr   r0,=0x0202B357                ; 080D3A80
ldrb  r0,[r0]                       ; 080D3A82
add   r0,r0,r1                      ; 080D3A84
ldr   r1,=0x03007240                ; 080D3A86  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D3A88
ldrb  r4,[r0]                       ; 080D3A8A
ldrb  r0,[r0]                       ; 080D3A8C
lsl   r0,r0,0x18                    ; 080D3A8E
asr   r0,r0,0x18                    ; 080D3A90
mov   r7,r1                         ; 080D3A92
cmp   r0,0x0                        ; 080D3A94
bge   @@Code080D3AB4                ; 080D3A96
neg   r1,r0                         ; 080D3A98
b     @@Code080D3AB6                ; 080D3A9A
.pool                               ; 080D3A9C

@@Code080D3AB4:
mov   r1,r4                         ; 080D3AB4
@@Code080D3AB6:
ldr   r3,=0x2A2E                    ; 080D3AB6
add   r0,r2,r3                      ; 080D3AB8
strh  r1,[r0]                       ; 080D3ABA
ldr   r2,[r7]                       ; 080D3ABC
ldr   r0,=0x0202B351                ; 080D3ABE
ldrb  r0,[r0]                       ; 080D3AC0
add   r0,0x80                       ; 080D3AC2
mov   r1,0xFF                       ; 080D3AC4
and   r0,r1                         ; 080D3AC6
ldr   r1,=0x2A2A                    ; 080D3AC8
add   r2,r2,r1                      ; 080D3ACA
strh  r0,[r2]                       ; 080D3ACC
mov   r0,r5                         ; 080D3ACE
bl    Sub0805F114                   ; 080D3AD0
lsl   r0,r4,0x18                    ; 080D3AD4
cmp   r0,0x0                        ; 080D3AD6
bge   @@Code080D3B24                ; 080D3AD8
ldr   r2,=0x03002200                ; 080D3ADA
ldr   r0,[r7]                       ; 080D3ADC
ldr   r3,=0x2A16                    ; 080D3ADE
add   r0,r0,r3                      ; 080D3AE0
ldrb  r0,[r0]                       ; 080D3AE2
lsl   r0,r0,0x18                    ; 080D3AE4
asr   r0,r0,0x18                    ; 080D3AE6
neg   r0,r0                         ; 080D3AE8
ldr   r3,=0x47F6                    ; 080D3AEA
add   r1,r2,r3                      ; 080D3AEC
strh  r0,[r1]                       ; 080D3AEE
ldr   r0,[r7]                       ; 080D3AF0
ldr   r1,=0x2A12                    ; 080D3AF2
add   r0,r0,r1                      ; 080D3AF4
ldrb  r0,[r0]                       ; 080D3AF6
lsl   r0,r0,0x18                    ; 080D3AF8
asr   r0,r0,0x18                    ; 080D3AFA
neg   r0,r0                         ; 080D3AFC
add   r3,0x2                        ; 080D3AFE
add   r2,r2,r3                      ; 080D3B00
strh  r0,[r2]                       ; 080D3B02
b     @@Code080D3B48                ; 080D3B04
.pool                               ; 080D3B06

@@Code080D3B24:
ldr   r1,=0x03002200                ; 080D3B24
ldr   r0,[r7]                       ; 080D3B26
ldr   r2,=0x2A16                    ; 080D3B28
add   r0,r0,r2                      ; 080D3B2A
mov   r2,0x0                        ; 080D3B2C
ldsb  r2,[r0,r2]                    ; 080D3B2E
ldr   r3,=0x47F6                    ; 080D3B30
add   r0,r1,r3                      ; 080D3B32
strh  r2,[r0]                       ; 080D3B34
ldr   r0,[r7]                       ; 080D3B36
ldr   r2,=0x2A12                    ; 080D3B38
add   r0,r0,r2                      ; 080D3B3A
ldrb  r0,[r0]                       ; 080D3B3C
lsl   r0,r0,0x18                    ; 080D3B3E
asr   r0,r0,0x18                    ; 080D3B40
add   r3,0x2                        ; 080D3B42
add   r1,r1,r3                      ; 080D3B44
strh  r0,[r1]                       ; 080D3B46
@@Code080D3B48:
mov   r0,r5                         ; 080D3B48
bl    Sub080D3E30                   ; 080D3B4A
@@Code080D3B4E:
pop   {r4-r7}                       ; 080D3B4E
pop   {r0}                          ; 080D3B50
bx    r0                            ; 080D3B52
.pool                               ; 080D3B54

Sub080D3B64:
push  {r4,lr}                       ; 080D3B64
ldr   r1,=0x03007240                ; 080D3B66  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r1]                       ; 080D3B68
ldr   r4,=0x0202B351                ; 080D3B6A
ldr   r1,=0x0202B367                ; 080D3B6C
ldrb  r2,[r1]                       ; 080D3B6E
ldrb  r4,[r4]                       ; 080D3B70
add   r2,r2,r4                      ; 080D3B72
ldr   r4,=0x2A12                    ; 080D3B74
add   r1,r3,r4                      ; 080D3B76
ldrb  r1,[r1]                       ; 080D3B78
add   r1,r1,r2                      ; 080D3B7A
lsl   r1,r1,0x18                    ; 080D3B7C
lsr   r1,r1,0x18                    ; 080D3B7E
ldr   r2,=0x2A2A                    ; 080D3B80
add   r3,r3,r2                      ; 080D3B82
strh  r1,[r3]                       ; 080D3B84
ldr   r2,=CodePtrs0817C994          ; 080D3B86
lsr   r1,r1,0x6                     ; 080D3B88
lsl   r1,r1,0x2                     ; 080D3B8A
add   r1,r1,r2                      ; 080D3B8C
ldr   r1,[r1]                       ; 080D3B8E
bl    Sub_bx_r1                     ; 080D3B90
pop   {r4}                          ; 080D3B94
pop   {r0}                          ; 080D3B96
bx    r0                            ; 080D3B98
.pool                               ; 080D3B9A

Sub080D3BB4:
push  {r4-r7,lr}                    ; 080D3BB4
ldr   r1,=0x03007240                ; 080D3BB6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                       ; 080D3BB8
ldr   r2,=0x2A2A                    ; 080D3BBA
add   r1,r4,r2                      ; 080D3BBC
ldrb  r1,[r1]                       ; 080D3BBE
mov   r3,0x3F                       ; 080D3BC0
and   r3,r1                         ; 080D3BC2
ldr   r6,=Data0817C951              ; 080D3BC4
add   r1,r3,r6                      ; 080D3BC6
ldrb  r2,[r1]                       ; 080D3BC8
ldr   r7,=0x2A2E                    ; 080D3BCA
add   r5,r4,r7                      ; 080D3BCC
ldrh  r1,[r5]                       ; 080D3BCE
mul   r1,r2                         ; 080D3BD0
add   r1,0x80                       ; 080D3BD2
asr   r1,r1,0x8                     ; 080D3BD4
lsl   r1,r1,0x18                    ; 080D3BD6
lsr   r1,r1,0x18                    ; 080D3BD8
sub   r7,0x1C                       ; 080D3BDA
add   r2,r4,r7                      ; 080D3BDC
strh  r1,[r2]                       ; 080D3BDE
mov   r1,0x40                       ; 080D3BE0
sub   r1,r1,r3                      ; 080D3BE2
add   r1,r1,r6                      ; 080D3BE4
ldrb  r2,[r1]                       ; 080D3BE6
ldrh  r1,[r5]                       ; 080D3BE8
mul   r1,r2                         ; 080D3BEA
add   r1,0x80                       ; 080D3BEC
asr   r1,r1,0x8                     ; 080D3BEE
lsl   r1,r1,0x18                    ; 080D3BF0
lsr   r1,r1,0x18                    ; 080D3BF2
ldr   r2,=0x2A16                    ; 080D3BF4
add   r4,r4,r2                      ; 080D3BF6
strh  r1,[r4]                       ; 080D3BF8
bl    Sub080D3D50                   ; 080D3BFA
pop   {r4-r7}                       ; 080D3BFE
pop   {r0}                          ; 080D3C00
bx    r0                            ; 080D3C02
.pool                               ; 080D3C04

Sub080D3C18:
push  {r4-r7,lr}                    ; 080D3C18
ldr   r1,=0x03007240                ; 080D3C1A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                       ; 080D3C1C
ldr   r2,=0x2A2A                    ; 080D3C1E
add   r1,r4,r2                      ; 080D3C20
ldrb  r1,[r1]                       ; 080D3C22
mov   r3,0x3F                       ; 080D3C24
and   r3,r1                         ; 080D3C26
ldr   r6,=Data0817C951              ; 080D3C28
add   r1,r3,r6                      ; 080D3C2A
ldrb  r2,[r1]                       ; 080D3C2C
ldr   r7,=0x2A2E                    ; 080D3C2E
add   r5,r4,r7                      ; 080D3C30
ldrh  r1,[r5]                       ; 080D3C32
mul   r1,r2                         ; 080D3C34
add   r1,0x80                       ; 080D3C36
asr   r1,r1,0x8                     ; 080D3C38
lsl   r1,r1,0x18                    ; 080D3C3A
lsr   r1,r1,0x18                    ; 080D3C3C
sub   r7,0x18                       ; 080D3C3E
add   r2,r4,r7                      ; 080D3C40
strh  r1,[r2]                       ; 080D3C42
mov   r1,0x40                       ; 080D3C44
sub   r1,r1,r3                      ; 080D3C46
add   r1,r1,r6                      ; 080D3C48
ldrb  r2,[r1]                       ; 080D3C4A
ldrh  r1,[r5]                       ; 080D3C4C
mul   r1,r2                         ; 080D3C4E
add   r1,0x80                       ; 080D3C50
asr   r1,r1,0x8                     ; 080D3C52
neg   r1,r1                         ; 080D3C54
lsl   r1,r1,0x18                    ; 080D3C56
lsr   r1,r1,0x18                    ; 080D3C58
ldr   r2,=0x2A12                    ; 080D3C5A
add   r4,r4,r2                      ; 080D3C5C
strh  r1,[r4]                       ; 080D3C5E
bl    Sub080D3D50                   ; 080D3C60
pop   {r4-r7}                       ; 080D3C64
pop   {r0}                          ; 080D3C66
bx    r0                            ; 080D3C68
.pool                               ; 080D3C6A

Sub080D3C80:
push  {r4-r7,lr}                    ; 080D3C80
ldr   r1,=0x03007240                ; 080D3C82  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                       ; 080D3C84
ldr   r2,=0x2A2A                    ; 080D3C86
add   r1,r4,r2                      ; 080D3C88
ldrb  r1,[r1]                       ; 080D3C8A
mov   r3,0x3F                       ; 080D3C8C
and   r3,r1                         ; 080D3C8E
ldr   r6,=Data0817C951              ; 080D3C90
add   r1,r3,r6                      ; 080D3C92
ldrb  r2,[r1]                       ; 080D3C94
ldr   r7,=0x2A2E                    ; 080D3C96
add   r5,r4,r7                      ; 080D3C98
ldrh  r1,[r5]                       ; 080D3C9A
mul   r1,r2                         ; 080D3C9C
add   r1,0x80                       ; 080D3C9E
asr   r1,r1,0x8                     ; 080D3CA0
neg   r1,r1                         ; 080D3CA2
lsl   r1,r1,0x18                    ; 080D3CA4
lsr   r1,r1,0x18                    ; 080D3CA6
sub   r7,0x1C                       ; 080D3CA8
add   r2,r4,r7                      ; 080D3CAA
strh  r1,[r2]                       ; 080D3CAC
mov   r1,0x40                       ; 080D3CAE
sub   r1,r1,r3                      ; 080D3CB0
add   r1,r1,r6                      ; 080D3CB2
ldrb  r2,[r1]                       ; 080D3CB4
ldrh  r1,[r5]                       ; 080D3CB6
mul   r1,r2                         ; 080D3CB8
add   r1,0x80                       ; 080D3CBA
asr   r1,r1,0x8                     ; 080D3CBC
neg   r1,r1                         ; 080D3CBE
lsl   r1,r1,0x18                    ; 080D3CC0
lsr   r1,r1,0x18                    ; 080D3CC2
ldr   r2,=0x2A16                    ; 080D3CC4
add   r4,r4,r2                      ; 080D3CC6
strh  r1,[r4]                       ; 080D3CC8
bl    Sub080D3D50                   ; 080D3CCA
pop   {r4-r7}                       ; 080D3CCE
pop   {r0}                          ; 080D3CD0
bx    r0                            ; 080D3CD2
.pool                               ; 080D3CD4

Sub080D3CE8:
push  {r4-r7,lr}                    ; 080D3CE8
ldr   r1,=0x03007240                ; 080D3CEA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                       ; 080D3CEC
ldr   r2,=0x2A2A                    ; 080D3CEE
add   r1,r4,r2                      ; 080D3CF0
ldrb  r1,[r1]                       ; 080D3CF2
mov   r3,0x3F                       ; 080D3CF4
and   r3,r1                         ; 080D3CF6
ldr   r6,=Data0817C951              ; 080D3CF8
add   r1,r3,r6                      ; 080D3CFA
ldrb  r2,[r1]                       ; 080D3CFC
ldr   r7,=0x2A2E                    ; 080D3CFE
add   r5,r4,r7                      ; 080D3D00
ldrh  r1,[r5]                       ; 080D3D02
mul   r1,r2                         ; 080D3D04
add   r1,0x80                       ; 080D3D06
asr   r1,r1,0x8                     ; 080D3D08
neg   r1,r1                         ; 080D3D0A
lsl   r1,r1,0x18                    ; 080D3D0C
lsr   r1,r1,0x18                    ; 080D3D0E
sub   r7,0x18                       ; 080D3D10
add   r2,r4,r7                      ; 080D3D12
strh  r1,[r2]                       ; 080D3D14
mov   r1,0x40                       ; 080D3D16
sub   r1,r1,r3                      ; 080D3D18
add   r1,r1,r6                      ; 080D3D1A
ldrb  r2,[r1]                       ; 080D3D1C
ldrh  r1,[r5]                       ; 080D3D1E
mul   r1,r2                         ; 080D3D20
add   r1,0x80                       ; 080D3D22
asr   r1,r1,0x8                     ; 080D3D24
lsl   r1,r1,0x18                    ; 080D3D26
lsr   r1,r1,0x18                    ; 080D3D28
ldr   r2,=0x2A12                    ; 080D3D2A
add   r4,r4,r2                      ; 080D3D2C
strh  r1,[r4]                       ; 080D3D2E
bl    Sub080D3D50                   ; 080D3D30
pop   {r4-r7}                       ; 080D3D34
pop   {r0}                          ; 080D3D36
bx    r0                            ; 080D3D38
.pool                               ; 080D3D3A

Sub080D3D50:
push  {r4-r7,lr}                    ; 080D3D50
mov   r3,r0                         ; 080D3D52
ldr   r2,=0x03007240                ; 080D3D54  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,[r2]                       ; 080D3D56
ldr   r1,=0x2A26                    ; 080D3D58
add   r0,r6,r1                      ; 080D3D5A
ldrb  r0,[r0]                       ; 080D3D5C
mov   r5,0xF                        ; 080D3D5E
and   r5,r0                         ; 080D3D60
ldr   r0,=Data0817C9A4              ; 080D3D62
add   r0,r5,r0                      ; 080D3D64
ldrb  r0,[r0]                       ; 080D3D66
ldrh  r1,[r3,0x34]                  ; 080D3D68
add   r0,r0,r1                      ; 080D3D6A
asr   r0,r0,0x2                     ; 080D3D6C
lsl   r0,r0,0x3                     ; 080D3D6E
ldr   r1,=0x03005A00                ; 080D3D70
add   r4,r0,r1                      ; 080D3D72
mov   r12,r2                        ; 080D3D74
cmp   r5,0x0                        ; 080D3D76
beq   @@Code080D3DAC                ; 080D3D78
ldrh  r0,[r3,0x36]                  ; 080D3D7A
cmp   r0,0x0                        ; 080D3D7C
beq   @@Code080D3DAC                ; 080D3D7E
ldrh  r0,[r4,0x2]                   ; 080D3D80
mov   r2,0xFE                       ; 080D3D82
lsl   r2,r2,0x8                     ; 080D3D84
and   r2,r0                         ; 080D3D86
ldr   r3,=0x01FF                    ; 080D3D88
mov   r1,r3                         ; 080D3D8A
and   r1,r0                         ; 080D3D8C
ldr   r7,=0x2A16                    ; 080D3D8E
add   r0,r6,r7                      ; 080D3D90
b     @@Code080D3DC2                ; 080D3D92
.pool                               ; 080D3D94

@@Code080D3DAC:
ldrh  r0,[r4,0x2]                   ; 080D3DAC
mov   r2,0xFE                       ; 080D3DAE
lsl   r2,r2,0x8                     ; 080D3DB0
and   r2,r0                         ; 080D3DB2
ldr   r3,=0x01FF                    ; 080D3DB4
mov   r1,r3                         ; 080D3DB6
and   r1,r0                         ; 080D3DB8
mov   r6,r12                        ; 080D3DBA
ldr   r0,[r6]                       ; 080D3DBC
ldr   r7,=0x2A16                    ; 080D3DBE
add   r0,r0,r7                      ; 080D3DC0
@@Code080D3DC2:
ldrb  r0,[r0]                       ; 080D3DC2
lsl   r0,r0,0x18                    ; 080D3DC4
asr   r0,r0,0x18                    ; 080D3DC6
add   r0,r0,r1                      ; 080D3DC8
and   r0,r3                         ; 080D3DCA
orr   r2,r0                         ; 080D3DCC
strh  r2,[r4,0x2]                   ; 080D3DCE
ldrh  r0,[r4]                       ; 080D3DD0
mov   r2,0xFF                       ; 080D3DD2
lsl   r2,r2,0x8                     ; 080D3DD4
and   r2,r0                         ; 080D3DD6
mov   r3,0xFF                       ; 080D3DD8
mov   r1,0xFF                       ; 080D3DDA
and   r1,r0                         ; 080D3DDC
mov   r6,r12                        ; 080D3DDE
ldr   r0,[r6]                       ; 080D3DE0
ldr   r7,=0x2A12                    ; 080D3DE2
add   r0,r0,r7                      ; 080D3DE4
ldrb  r0,[r0]                       ; 080D3DE6
lsl   r0,r0,0x18                    ; 080D3DE8
asr   r0,r0,0x18                    ; 080D3DEA
add   r0,r0,r1                      ; 080D3DEC
and   r0,r3                         ; 080D3DEE
orr   r2,r0                         ; 080D3DF0
strh  r2,[r4]                       ; 080D3DF2
cmp   r5,0x0                        ; 080D3DF4
bne   @@Code080D3E16                ; 080D3DF6
ldr   r0,=0x0202B358                ; 080D3DF8
ldrb  r0,[r0]                       ; 080D3DFA
sub   r0,0x50                       ; 080D3DFC
asr   r0,r0,0x4                     ; 080D3DFE
lsl   r0,r0,0x18                    ; 080D3E00
lsr   r5,r0,0x18                    ; 080D3E02
ldrh  r0,[r4,0x4]                   ; 080D3E04
mov   r1,0xFC                       ; 080D3E06
lsl   r1,r1,0x8                     ; 080D3E08
and   r1,r0                         ; 080D3E0A
ldr   r0,=Data0817C9A8              ; 080D3E0C
add   r0,r5,r0                      ; 080D3E0E
ldrb  r0,[r0]                       ; 080D3E10
orr   r0,r1                         ; 080D3E12
strh  r0,[r4,0x4]                   ; 080D3E14
@@Code080D3E16:
pop   {r4-r7}                       ; 080D3E16
pop   {r0}                          ; 080D3E18
bx    r0                            ; 080D3E1A
.pool                               ; 080D3E1C

Sub080D3E30:
push  {r4-r7,lr}                    ; 080D3E30
mov   r7,r10                        ; 080D3E32
mov   r6,r9                         ; 080D3E34
mov   r5,r8                         ; 080D3E36
push  {r5-r7}                       ; 080D3E38
ldrh  r0,[r0,0x34]                  ; 080D3E3A
lsr   r0,r0,0x2                     ; 080D3E3C
lsl   r0,r0,0x3                     ; 080D3E3E
ldr   r1,=0x03005A00                ; 080D3E40
add   r3,r0,r1                      ; 080D3E42
mov   r4,0x4                        ; 080D3E44
mov   r0,0xFF                       ; 080D3E46
lsl   r0,r0,0x8                     ; 080D3E48
mov   r10,r0                        ; 080D3E4A
mov   r2,0xFF                       ; 080D3E4C
mov   r9,r2                         ; 080D3E4E
ldr   r7,=0x0FF8                    ; 080D3E50
add   r7,r7,r1                      ; 080D3E52
mov   r8,r7                         ; 080D3E54
ldr   r5,=0x01FF                    ; 080D3E56
mov   r0,0xFF                       ; 080D3E58
mov   r12,r0                        ; 080D3E5A
ldr   r2,=0x0FF6                    ; 080D3E5C
add   r6,r1,r2                      ; 080D3E5E
@@Code080D3E60:
ldrh  r2,[r3]                       ; 080D3E60
mov   r1,r10                        ; 080D3E62
and   r1,r2                         ; 080D3E64
mov   r0,r12                        ; 080D3E66
and   r0,r2                         ; 080D3E68
mov   r7,r8                         ; 080D3E6A
ldrh  r7,[r7]                       ; 080D3E6C
add   r0,r0,r7                      ; 080D3E6E
mov   r2,r9                         ; 080D3E70
and   r0,r2                         ; 080D3E72
orr   r1,r0                         ; 080D3E74
strh  r1,[r3]                       ; 080D3E76
ldrh  r2,[r3,0x2]                   ; 080D3E78
mov   r1,0xFE                       ; 080D3E7A
lsl   r1,r1,0x8                     ; 080D3E7C
and   r1,r2                         ; 080D3E7E
mov   r0,r5                         ; 080D3E80
and   r0,r2                         ; 080D3E82
ldrh  r7,[r6]                       ; 080D3E84
add   r0,r0,r7                      ; 080D3E86
and   r0,r5                         ; 080D3E88
orr   r1,r0                         ; 080D3E8A
strh  r1,[r3,0x2]                   ; 080D3E8C
add   r3,0x8                        ; 080D3E8E
sub   r4,0x1                        ; 080D3E90
cmp   r4,0x0                        ; 080D3E92
bge   @@Code080D3E60                ; 080D3E94
pop   {r3-r5}                       ; 080D3E96
mov   r8,r3                         ; 080D3E98
mov   r9,r4                         ; 080D3E9A
mov   r10,r5                        ; 080D3E9C
pop   {r4-r7}                       ; 080D3E9E
pop   {r0}                          ; 080D3EA0
bx    r0                            ; 080D3EA2
.pool                               ; 080D3EA4

Sub080D3EB4:
push  {r4,lr}                       ; 080D3EB4
mov   r4,r0                         ; 080D3EB6
ldrh  r0,[r4,0x38]                  ; 080D3EB8
cmp   r0,0x0                        ; 080D3EBA
bne   @@Code080D3ED0                ; 080D3EBC
mov   r0,r4                         ; 080D3EBE
bl    Sub080D4058                   ; 080D3EC0
mov   r0,r4                         ; 080D3EC4
bl    Sub080D3ED8                   ; 080D3EC6
mov   r0,r4                         ; 080D3ECA
bl    Sub080D4230                   ; 080D3ECC
@@Code080D3ED0:
pop   {r4}                          ; 080D3ED0
pop   {r0}                          ; 080D3ED2
bx    r0                            ; 080D3ED4
.pool                               ; 080D3ED6

Sub080D3ED8:
push  {r4-r7,lr}                    ; 080D3ED8
mov   r7,r0                         ; 080D3EDA
add   r0,0x94                       ; 080D3EDC
ldrb  r0,[r0]                       ; 080D3EDE
cmp   r0,0xFF                       ; 080D3EE0
bne   @@Code080D3EE6                ; 080D3EE2
b     @@Code080D4046                ; 080D3EE4
@@Code080D3EE6:
ldr   r2,=DataPtrs0817C9B4          ; 080D3EE6
mov   r0,r7                         ; 080D3EE8
add   r0,0x7C                       ; 080D3EEA
ldrh  r1,[r0]                       ; 080D3EEC
mov   r0,0xF                        ; 080D3EEE
and   r0,r1                         ; 080D3EF0
lsl   r0,r0,0x2                     ; 080D3EF2
add   r0,r0,r2                      ; 080D3EF4
ldr   r4,[r0]                       ; 080D3EF6
ldr   r1,=0x06013300                ; 080D3EF8
mov   r0,r4                         ; 080D3EFA
mov   r2,0x20                       ; 080D3EFC
bl    swi_MemoryCopy32              ; 080D3EFE  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080D3F02
lsl   r1,r1,0x3                     ; 080D3F04
add   r0,r4,r1                      ; 080D3F06
ldr   r1,=0x06013700                ; 080D3F08
mov   r2,0x20                       ; 080D3F0A
bl    swi_MemoryCopy32              ; 080D3F0C  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080D3F10
lsl   r1,r1,0x4                     ; 080D3F12
add   r0,r4,r1                      ; 080D3F14
ldr   r1,=0x06013B00                ; 080D3F16
mov   r2,0x20                       ; 080D3F18
bl    swi_MemoryCopy32              ; 080D3F1A  Memory copy/fill, 32-byte blocks
mov   r0,0xC0                       ; 080D3F1E
lsl   r0,r0,0x4                     ; 080D3F20
add   r4,r4,r0                      ; 080D3F22
ldr   r1,=0x06013F00                ; 080D3F24
mov   r0,r4                         ; 080D3F26
mov   r2,0x20                       ; 080D3F28
bl    swi_MemoryCopy32              ; 080D3F2A  Memory copy/fill, 32-byte blocks
ldrh  r0,[r7,0x36]                  ; 080D3F2E
mov   r6,0x0                        ; 080D3F30
cmp   r0,0x0                        ; 080D3F32
beq   @@Code080D3F38                ; 080D3F34
ldr   r6,=0xFFF0                    ; 080D3F36
@@Code080D3F38:
ldr   r0,=0x030021A4                ; 080D3F38
ldrh  r1,[r7,0x34]                  ; 080D3F3A
add   r1,0xC                        ; 080D3F3C
asr   r1,r1,0x2                     ; 080D3F3E
lsl   r1,r1,0x3                     ; 080D3F40
ldr   r5,=0x03005A02                ; 080D3F42
add   r1,r1,r5                      ; 080D3F44
str   r1,[r0]                       ; 080D3F46
ldrh  r4,[r1]                       ; 080D3F48
mov   r2,0xFE                       ; 080D3F4A
lsl   r2,r2,0x8                     ; 080D3F4C
and   r2,r4                         ; 080D3F4E
ldr   r3,=0x01FF                    ; 080D3F50
mov   r0,r3                         ; 080D3F52
and   r0,r4                         ; 080D3F54
add   r0,r0,r6                      ; 080D3F56
and   r0,r3                         ; 080D3F58
orr   r2,r0                         ; 080D3F5A
strh  r2,[r1]                       ; 080D3F5C
ldrh  r2,[r7,0x34]                  ; 080D3F5E
add   r2,0xC                        ; 080D3F60
asr   r2,r2,0x2                     ; 080D3F62
lsl   r2,r2,0x3                     ; 080D3F64
sub   r4,r5,0x2                     ; 080D3F66
add   r2,r2,r4                      ; 080D3F68
mov   r1,0xFD                       ; 080D3F6A
lsl   r1,r1,0x4                     ; 080D3F6C
add   r5,r5,r1                      ; 080D3F6E
ldrh  r1,[r5]                       ; 080D3F70
lsr   r1,r1,0x4                     ; 080D3F72
mov   r6,0x1                        ; 080D3F74
and   r1,r6                         ; 080D3F76
lsl   r1,r1,0x5                     ; 080D3F78
ldrb  r3,[r2,0x3]                   ; 080D3F7A
mov   r0,0x21                       ; 080D3F7C
neg   r0,r0                         ; 080D3F7E
and   r0,r3                         ; 080D3F80
orr   r0,r1                         ; 080D3F82
strb  r0,[r2,0x3]                   ; 080D3F84
ldrh  r2,[r7,0x34]                  ; 080D3F86
add   r2,0xC                        ; 080D3F88
asr   r2,r2,0x2                     ; 080D3F8A
lsl   r2,r2,0x3                     ; 080D3F8C
add   r2,r2,r4                      ; 080D3F8E
ldrh  r1,[r5]                       ; 080D3F90
lsr   r1,r1,0x3                     ; 080D3F92
and   r1,r6                         ; 080D3F94
lsl   r1,r1,0x4                     ; 080D3F96
ldrb  r3,[r2,0x3]                   ; 080D3F98
mov   r0,0x11                       ; 080D3F9A
neg   r0,r0                         ; 080D3F9C
and   r0,r3                         ; 080D3F9E
orr   r0,r1                         ; 080D3FA0
strb  r0,[r2,0x3]                   ; 080D3FA2
ldrh  r1,[r7,0x34]                  ; 080D3FA4
add   r1,0xC                        ; 080D3FA6
asr   r1,r1,0x2                     ; 080D3FA8
lsl   r1,r1,0x3                     ; 080D3FAA
add   r1,r1,r4                      ; 080D3FAC
ldrh  r0,[r5]                       ; 080D3FAE
mov   r2,0x7                        ; 080D3FB0
and   r2,r0                         ; 080D3FB2
lsl   r2,r2,0x1                     ; 080D3FB4
ldrb  r3,[r1,0x3]                   ; 080D3FB6
mov   r0,0xF                        ; 080D3FB8
neg   r0,r0                         ; 080D3FBA
and   r0,r3                         ; 080D3FBC
orr   r0,r2                         ; 080D3FBE
strb  r0,[r1,0x3]                   ; 080D3FC0
ldr   r1,=Data081AF2CC              ; 080D3FC2
ldr   r0,=0x0202B358                ; 080D3FC4
ldrb  r0,[r0]                       ; 080D3FC6
add   r0,0x1                        ; 080D3FC8
lsl   r0,r0,0x1                     ; 080D3FCA
add   r0,r0,r1                      ; 080D3FCC
ldrh  r2,[r0]                       ; 080D3FCE
ldr   r0,=0x0202B351                ; 080D3FD0
ldrb  r0,[r0]                       ; 080D3FD2
ldr   r1,=0x0202B367                ; 080D3FD4
ldrb  r1,[r1]                       ; 080D3FD6
add   r0,r0,r1                      ; 080D3FD8
lsl   r0,r0,0x18                    ; 080D3FDA
lsr   r3,r0,0x10                    ; 080D3FDC
ldrh  r0,[r7,0x36]                  ; 080D3FDE
cmp   r0,0x0                        ; 080D3FE0
beq   @@Code080D4028                ; 080D3FE2
ldr   r1,=0x030021A8                ; 080D3FE4
neg   r0,r2                         ; 080D3FE6
strh  r0,[r1]                       ; 080D3FE8
mov   r0,r1                         ; 080D3FEA
b     @@Code080D402C                ; 080D3FEC
.pool                               ; 080D3FEE

@@Code080D4028:
ldr   r0,=0x030021A8                ; 080D4028
strh  r2,[r0]                       ; 080D402A
@@Code080D402C:
strh  r2,[r0,0x2]                   ; 080D402C
strh  r3,[r0,0x4]                   ; 080D402E
ldr   r4,=0x03002200                ; 080D4030
ldr   r0,=0x47D2                    ; 080D4032
add   r4,r4,r0                      ; 080D4034
ldrb  r0,[r4]                       ; 080D4036
lsl   r0,r0,0x1A                    ; 080D4038
lsr   r0,r0,0x18                    ; 080D403A
bl    Sub0804CA78                   ; 080D403C
ldrh  r0,[r4]                       ; 080D4040
add   r0,0x1                        ; 080D4042
strh  r0,[r4]                       ; 080D4044
@@Code080D4046:
pop   {r4-r7}                       ; 080D4046
pop   {r0}                          ; 080D4048
bx    r0                            ; 080D404A
.pool                               ; 080D404C

Sub080D4058:
push  {r4-r7,lr}                    ; 080D4058
mov   r7,r10                        ; 080D405A
mov   r6,r9                         ; 080D405C
mov   r5,r8                         ; 080D405E
push  {r5-r7}                       ; 080D4060
add   sp,-0x4                       ; 080D4062
mov   r7,r0                         ; 080D4064
add   r0,0x94                       ; 080D4066
ldrb  r0,[r0]                       ; 080D4068
cmp   r0,0xFF                       ; 080D406A
bne   @@Code080D4070                ; 080D406C
b     @@Code080D4212                ; 080D406E
@@Code080D4070:
ldrh  r0,[r7,0x36]                  ; 080D4070
mov   r1,0x0                        ; 080D4072
str   r1,[sp]                       ; 080D4074
cmp   r0,0x0                        ; 080D4076
beq   @@Code080D407E                ; 080D4078
ldr   r2,=0xFFF0                    ; 080D407A
str   r2,[sp]                       ; 080D407C
@@Code080D407E:
ldrh  r1,[r7,0x34]                  ; 080D407E
add   r1,0x4                        ; 080D4080
asr   r1,r1,0x2                     ; 080D4082
lsl   r1,r1,0x3                     ; 080D4084
ldr   r3,=0x03005A02                ; 080D4086
mov   r10,r3                        ; 080D4088
add   r1,r10                        ; 080D408A
ldr   r0,=0x030021A4                ; 080D408C
str   r1,[r0]                       ; 080D408E
ldrh  r3,[r1]                       ; 080D4090
mov   r2,0xFE                       ; 080D4092
lsl   r2,r2,0x8                     ; 080D4094
mov   r9,r2                         ; 080D4096
and   r2,r3                         ; 080D4098
ldr   r0,=0x01FF                    ; 080D409A
and   r0,r3                         ; 080D409C
ldr   r3,[sp]                       ; 080D409E
add   r0,r0,r3                      ; 080D40A0
ldr   r3,=0x01FF                    ; 080D40A2
and   r0,r3                         ; 080D40A4
orr   r2,r0                         ; 080D40A6
strh  r2,[r1]                       ; 080D40A8
ldrh  r2,[r7,0x34]                  ; 080D40AA
add   r2,0x4                        ; 080D40AC
asr   r2,r2,0x2                     ; 080D40AE
lsl   r2,r2,0x3                     ; 080D40B0
mov   r0,0x2                        ; 080D40B2
neg   r0,r0                         ; 080D40B4
add   r0,r10                        ; 080D40B6
mov   r12,r0                        ; 080D40B8
add   r2,r12                        ; 080D40BA
mov   r1,0xFD                       ; 080D40BC
lsl   r1,r1,0x4                     ; 080D40BE
add   r10,r1                        ; 080D40C0
mov   r3,r10                        ; 080D40C2
ldrh  r1,[r3]                       ; 080D40C4
lsr   r1,r1,0x4                     ; 080D40C6
mov   r0,0x1                        ; 080D40C8
and   r1,r0                         ; 080D40CA
lsl   r1,r1,0x5                     ; 080D40CC
ldrb  r3,[r2,0x3]                   ; 080D40CE
mov   r6,0x21                       ; 080D40D0
neg   r6,r6                         ; 080D40D2
mov   r0,r6                         ; 080D40D4
and   r0,r3                         ; 080D40D6
orr   r0,r1                         ; 080D40D8
strb  r0,[r2,0x3]                   ; 080D40DA
ldrh  r2,[r7,0x34]                  ; 080D40DC
add   r2,0x4                        ; 080D40DE
asr   r2,r2,0x2                     ; 080D40E0
lsl   r2,r2,0x3                     ; 080D40E2
add   r2,r12                        ; 080D40E4
mov   r3,r10                        ; 080D40E6
ldrh  r1,[r3]                       ; 080D40E8
lsr   r1,r1,0x3                     ; 080D40EA
mov   r0,0x1                        ; 080D40EC
and   r1,r0                         ; 080D40EE
lsl   r1,r1,0x4                     ; 080D40F0
ldrb  r3,[r2,0x3]                   ; 080D40F2
mov   r5,0x11                       ; 080D40F4
neg   r5,r5                         ; 080D40F6
mov   r0,r5                         ; 080D40F8
and   r0,r3                         ; 080D40FA
orr   r0,r1                         ; 080D40FC
strb  r0,[r2,0x3]                   ; 080D40FE
ldrh  r1,[r7,0x34]                  ; 080D4100
add   r1,0x4                        ; 080D4102
asr   r1,r1,0x2                     ; 080D4104
lsl   r1,r1,0x3                     ; 080D4106
add   r1,r12                        ; 080D4108
mov   r2,r10                        ; 080D410A
ldrh  r0,[r2]                       ; 080D410C
mov   r3,0x7                        ; 080D410E
mov   r8,r3                         ; 080D4110
mov   r2,r8                         ; 080D4112
and   r2,r0                         ; 080D4114
lsl   r2,r2,0x1                     ; 080D4116
ldrb  r3,[r1,0x3]                   ; 080D4118
mov   r4,0xF                        ; 080D411A
neg   r4,r4                         ; 080D411C
mov   r0,r4                         ; 080D411E
and   r0,r3                         ; 080D4120
orr   r0,r2                         ; 080D4122
strb  r0,[r1,0x3]                   ; 080D4124
ldr   r0,=0x030021A4                ; 080D4126
ldr   r2,[r0]                       ; 080D4128
mov   r0,r2                         ; 080D412A
add   r0,0x8                        ; 080D412C
ldr   r1,=0x030021A4                ; 080D412E
str   r0,[r1]                       ; 080D4130
ldrh  r1,[r2,0x8]                   ; 080D4132
mov   r3,r9                         ; 080D4134
and   r3,r1                         ; 080D4136
mov   r9,r3                         ; 080D4138
ldr   r0,=0x01FF                    ; 080D413A
and   r0,r1                         ; 080D413C
ldr   r1,[sp]                       ; 080D413E
add   r0,r0,r1                      ; 080D4140
ldr   r3,=0x01FF                    ; 080D4142
and   r0,r3                         ; 080D4144
mov   r1,r9                         ; 080D4146
orr   r1,r0                         ; 080D4148
strh  r1,[r2,0x8]                   ; 080D414A
ldrh  r1,[r7,0x34]                  ; 080D414C
add   r1,0x8                        ; 080D414E
asr   r1,r1,0x2                     ; 080D4150
lsl   r1,r1,0x3                     ; 080D4152
add   r1,r12                        ; 080D4154
mov   r2,r10                        ; 080D4156
ldrh  r0,[r2]                       ; 080D4158
lsr   r0,r0,0x4                     ; 080D415A
mov   r3,0x1                        ; 080D415C
and   r0,r3                         ; 080D415E
lsl   r0,r0,0x5                     ; 080D4160
ldrb  r2,[r1,0x3]                   ; 080D4162
and   r6,r2                         ; 080D4164
orr   r6,r0                         ; 080D4166
strb  r6,[r1,0x3]                   ; 080D4168
ldrh  r1,[r7,0x34]                  ; 080D416A
add   r1,0x8                        ; 080D416C
asr   r1,r1,0x2                     ; 080D416E
lsl   r1,r1,0x3                     ; 080D4170
add   r1,r12                        ; 080D4172
mov   r2,r10                        ; 080D4174
ldrh  r0,[r2]                       ; 080D4176
lsr   r0,r0,0x3                     ; 080D4178
and   r0,r3                         ; 080D417A
lsl   r0,r0,0x4                     ; 080D417C
ldrb  r2,[r1,0x3]                   ; 080D417E
and   r5,r2                         ; 080D4180
orr   r5,r0                         ; 080D4182
strb  r5,[r1,0x3]                   ; 080D4184
ldrh  r0,[r7,0x34]                  ; 080D4186
add   r0,0x8                        ; 080D4188
asr   r0,r0,0x2                     ; 080D418A
lsl   r0,r0,0x3                     ; 080D418C
add   r0,r12                        ; 080D418E
mov   r3,r10                        ; 080D4190
ldrh  r1,[r3]                       ; 080D4192
mov   r2,r8                         ; 080D4194
and   r2,r1                         ; 080D4196
lsl   r2,r2,0x1                     ; 080D4198
ldrb  r1,[r0,0x3]                   ; 080D419A
and   r4,r1                         ; 080D419C
orr   r4,r2                         ; 080D419E
strb  r4,[r0,0x3]                   ; 080D41A0
ldr   r1,=Data081AF2CC              ; 080D41A2
ldr   r0,=0x0202B358                ; 080D41A4
ldrb  r0,[r0]                       ; 080D41A6
add   r0,0x1                        ; 080D41A8
lsl   r0,r0,0x1                     ; 080D41AA
add   r0,r0,r1                      ; 080D41AC
ldrh  r2,[r0]                       ; 080D41AE
ldr   r0,=0x0202B352                ; 080D41B0
ldrb  r0,[r0]                       ; 080D41B2
ldr   r1,=0x0202B367                ; 080D41B4
ldrb  r1,[r1]                       ; 080D41B6
add   r0,r0,r1                      ; 080D41B8
lsl   r0,r0,0x18                    ; 080D41BA
lsr   r3,r0,0x10                    ; 080D41BC
ldrh  r0,[r7,0x36]                  ; 080D41BE
cmp   r0,0x0                        ; 080D41C0
beq   @@Code080D41F4                ; 080D41C2
ldr   r1,=0x030021A8                ; 080D41C4
neg   r0,r2                         ; 080D41C6
strh  r0,[r1]                       ; 080D41C8
mov   r0,r1                         ; 080D41CA
b     @@Code080D41F8                ; 080D41CC
.pool                               ; 080D41CE

@@Code080D41F4:
ldr   r0,=0x030021A8                ; 080D41F4
strh  r2,[r0]                       ; 080D41F6
@@Code080D41F8:
strh  r2,[r0,0x2]                   ; 080D41F8
strh  r3,[r0,0x4]                   ; 080D41FA
ldr   r4,=0x03002200                ; 080D41FC
ldr   r3,=0x47D2                    ; 080D41FE
add   r4,r4,r3                      ; 080D4200
ldrb  r0,[r4]                       ; 080D4202
lsl   r0,r0,0x1A                    ; 080D4204
lsr   r0,r0,0x18                    ; 080D4206
bl    Sub0804CA78                   ; 080D4208
ldrh  r0,[r4]                       ; 080D420C
add   r0,0x1                        ; 080D420E
strh  r0,[r4]                       ; 080D4210
@@Code080D4212:
add   sp,0x4                        ; 080D4212
pop   {r3-r5}                       ; 080D4214
mov   r8,r3                         ; 080D4216
mov   r9,r4                         ; 080D4218
mov   r10,r5                        ; 080D421A
pop   {r4-r7}                       ; 080D421C
pop   {r0}                          ; 080D421E
bx    r0                            ; 080D4220
.pool                               ; 080D4222

Sub080D4230:
push  {r4-r7,lr}                    ; 080D4230
mov   r7,r0                         ; 080D4232
add   r0,0x94                       ; 080D4234
ldrb  r0,[r0]                       ; 080D4236
cmp   r0,0xFF                       ; 080D4238
bne   @@Code080D423E                ; 080D423A
b     @@Code080D4346                ; 080D423C
@@Code080D423E:
ldrh  r0,[r7,0x36]                  ; 080D423E
mov   r6,0x0                        ; 080D4240
cmp   r0,0x0                        ; 080D4242
beq   @@Code080D4248                ; 080D4244
ldr   r6,=0xFFD0                    ; 080D4246
@@Code080D4248:
ldr   r0,=0x030021A4                ; 080D4248
ldrh  r1,[r7,0x34]                  ; 080D424A
add   r1,0x10                       ; 080D424C
asr   r1,r1,0x2                     ; 080D424E
lsl   r1,r1,0x3                     ; 080D4250
ldr   r5,=0x03005A02                ; 080D4252
add   r1,r1,r5                      ; 080D4254
str   r1,[r0]                       ; 080D4256
ldrh  r4,[r1]                       ; 080D4258
mov   r2,0xFE                       ; 080D425A
lsl   r2,r2,0x8                     ; 080D425C
and   r2,r4                         ; 080D425E
ldr   r3,=0x01FF                    ; 080D4260
mov   r0,r3                         ; 080D4262
and   r0,r4                         ; 080D4264
add   r0,r0,r6                      ; 080D4266
and   r0,r3                         ; 080D4268
orr   r2,r0                         ; 080D426A
strh  r2,[r1]                       ; 080D426C
ldrh  r2,[r7,0x34]                  ; 080D426E
add   r2,0x10                       ; 080D4270
asr   r2,r2,0x2                     ; 080D4272
lsl   r2,r2,0x3                     ; 080D4274
sub   r4,r5,0x2                     ; 080D4276
add   r2,r2,r4                      ; 080D4278
mov   r0,0xFD                       ; 080D427A
lsl   r0,r0,0x4                     ; 080D427C
add   r5,r5,r0                      ; 080D427E
ldrh  r1,[r5]                       ; 080D4280
lsr   r1,r1,0x4                     ; 080D4282
mov   r6,0x1                        ; 080D4284
and   r1,r6                         ; 080D4286
lsl   r1,r1,0x5                     ; 080D4288
ldrb  r3,[r2,0x3]                   ; 080D428A
mov   r0,0x21                       ; 080D428C
neg   r0,r0                         ; 080D428E
and   r0,r3                         ; 080D4290
orr   r0,r1                         ; 080D4292
strb  r0,[r2,0x3]                   ; 080D4294
ldrh  r2,[r7,0x34]                  ; 080D4296
add   r2,0x10                       ; 080D4298
asr   r2,r2,0x2                     ; 080D429A
lsl   r2,r2,0x3                     ; 080D429C
add   r2,r2,r4                      ; 080D429E
ldrh  r1,[r5]                       ; 080D42A0
lsr   r1,r1,0x3                     ; 080D42A2
and   r1,r6                         ; 080D42A4
lsl   r1,r1,0x4                     ; 080D42A6
ldrb  r3,[r2,0x3]                   ; 080D42A8
mov   r0,0x11                       ; 080D42AA
neg   r0,r0                         ; 080D42AC
and   r0,r3                         ; 080D42AE
orr   r0,r1                         ; 080D42B0
strb  r0,[r2,0x3]                   ; 080D42B2
ldrh  r1,[r7,0x34]                  ; 080D42B4
add   r1,0x10                       ; 080D42B6
asr   r1,r1,0x2                     ; 080D42B8
lsl   r1,r1,0x3                     ; 080D42BA
add   r1,r1,r4                      ; 080D42BC
ldrh  r0,[r5]                       ; 080D42BE
mov   r2,0x7                        ; 080D42C0
and   r2,r0                         ; 080D42C2
lsl   r2,r2,0x1                     ; 080D42C4
ldrb  r3,[r1,0x3]                   ; 080D42C6
mov   r0,0xF                        ; 080D42C8
neg   r0,r0                         ; 080D42CA
and   r0,r3                         ; 080D42CC
orr   r0,r2                         ; 080D42CE
strb  r0,[r1,0x3]                   ; 080D42D0
ldr   r1,=Data081AF2CC              ; 080D42D2
ldr   r0,=0x0202B358                ; 080D42D4
ldrb  r0,[r0]                       ; 080D42D6
add   r0,0x1                        ; 080D42D8
lsl   r0,r0,0x1                     ; 080D42DA
add   r0,r0,r1                      ; 080D42DC
ldrh  r2,[r0]                       ; 080D42DE
ldr   r0,=0x0202B351                ; 080D42E0
ldrb  r0,[r0]                       ; 080D42E2
ldr   r1,=0x0202B367                ; 080D42E4
ldrb  r1,[r1]                       ; 080D42E6
add   r0,r0,r1                      ; 080D42E8
lsl   r0,r0,0x18                    ; 080D42EA
lsr   r3,r0,0x10                    ; 080D42EC
ldrh  r1,[r7,0x36]                  ; 080D42EE
mov   r0,0x2                        ; 080D42F0
and   r0,r1                         ; 080D42F2
cmp   r0,0x0                        ; 080D42F4
beq   @@Code080D4328                ; 080D42F6
ldr   r1,=0x030021A8                ; 080D42F8
neg   r0,r2                         ; 080D42FA
strh  r0,[r1]                       ; 080D42FC
mov   r0,r1                         ; 080D42FE
b     @@Code080D432C                ; 080D4300
.pool                               ; 080D4302

@@Code080D4328:
ldr   r0,=0x030021A8                ; 080D4328
strh  r2,[r0]                       ; 080D432A
@@Code080D432C:
strh  r2,[r0,0x2]                   ; 080D432C
strh  r3,[r0,0x4]                   ; 080D432E
ldr   r4,=0x03002200                ; 080D4330
ldr   r0,=0x47D2                    ; 080D4332
add   r4,r4,r0                      ; 080D4334
ldrb  r0,[r4]                       ; 080D4336
lsl   r0,r0,0x1A                    ; 080D4338
lsr   r0,r0,0x18                    ; 080D433A
bl    Sub0804CA78                   ; 080D433C
ldrh  r0,[r4]                       ; 080D4340
add   r0,0x1                        ; 080D4342
strh  r0,[r4]                       ; 080D4344
@@Code080D4346:
pop   {r4-r7}                       ; 080D4346
pop   {r0}                          ; 080D4348
bx    r0                            ; 080D434A
.pool                               ; 080D434C

Sub080D4358:
push  {r4,lr}                       ; 080D4358
mov   r4,r0                         ; 080D435A
bl    Sub080D4408                   ; 080D435C
ldr   r1,=0x0202B354                ; 080D4360
ldrb  r0,[r1]                       ; 080D4362
cmp   r0,0x0                        ; 080D4364
beq   @@Code080D436C                ; 080D4366
sub   r0,0x1                        ; 080D4368
strb  r0,[r1]                       ; 080D436A
@@Code080D436C:
ldr   r1,=0x0202B355                ; 080D436C
ldrb  r0,[r1]                       ; 080D436E
cmp   r0,0x0                        ; 080D4370
beq   @@Code080D4378                ; 080D4372
sub   r0,0x1                        ; 080D4374
strb  r0,[r1]                       ; 080D4376
@@Code080D4378:
ldr   r1,=0x0202B35D                ; 080D4378
ldrb  r0,[r1]                       ; 080D437A
cmp   r0,0x0                        ; 080D437C
beq   @@Code080D4384                ; 080D437E
sub   r0,0x1                        ; 080D4380
strb  r0,[r1]                       ; 080D4382
@@Code080D4384:
mov   r0,r4                         ; 080D4384
bl    Sub080D453C                   ; 080D4386
mov   r0,r4                         ; 080D438A
bl    Sub080D458C                   ; 080D438C
ldr   r2,=0x0202B368                ; 080D4390
ldrh  r1,[r4,0x3E]                  ; 080D4392
mov   r0,0x1                        ; 080D4394
and   r0,r1                         ; 080D4396
strb  r0,[r2]                       ; 080D4398
ldr   r2,=0x03002200                ; 080D439A
ldr   r1,=0x4088                    ; 080D439C
add   r0,r2,r1                      ; 080D439E
ldrh  r0,[r0]                       ; 080D43A0
cmp   r0,0x3F                       ; 080D43A2
beq   @@Code080D43DC                ; 080D43A4
ldr   r0,[r4,0x4]                   ; 080D43A6
asr   r0,r0,0x8                     ; 080D43A8
ldr   r1,=0x47EC                    ; 080D43AA
add   r3,r2,r1                      ; 080D43AC
ldrh  r1,[r3]                       ; 080D43AE
sub   r0,r0,r1                      ; 080D43B0
lsl   r0,r0,0x10                    ; 080D43B2
lsr   r0,r0,0x10                    ; 080D43B4
ldr   r1,=0x011F                    ; 080D43B6
cmp   r0,r1                         ; 080D43B8
bls   @@Code080D43DC                ; 080D43BA
lsl   r0,r0,0x10                    ; 080D43BC
asr   r0,r0,0x10                    ; 080D43BE
cmp   r0,r1                         ; 080D43C0
ble   @@Code080D43DC                ; 080D43C2
ldrh  r0,[r3]                       ; 080D43C4
sub   r0,0x40                       ; 080D43C6
lsl   r0,r0,0x8                     ; 080D43C8
str   r0,[r4,0x4]                   ; 080D43CA
ldr   r1,=0x47E4                    ; 080D43CC
add   r0,r2,r1                      ; 080D43CE
ldrh  r0,[r0]                       ; 080D43D0
mov   r1,0xC0                       ; 080D43D2
lsl   r1,r1,0x1                     ; 080D43D4
add   r0,r0,r1                      ; 080D43D6
lsl   r0,r0,0x8                     ; 080D43D8
str   r0,[r4]                       ; 080D43DA
@@Code080D43DC:
pop   {r4}                          ; 080D43DC
pop   {r0}                          ; 080D43DE
bx    r0                            ; 080D43E0
.pool                               ; 080D43E2

Sub080D4408:
push  {r4-r7,lr}                    ; 080D4408
mov   r7,r10                        ; 080D440A
mov   r6,r9                         ; 080D440C
mov   r5,r8                         ; 080D440E
push  {r5-r7}                       ; 080D4410
mov   r12,r0                        ; 080D4412
mov   r0,0xA3                       ; 080D4414
add   r0,r12                        ; 080D4416
mov   r10,r0                        ; 080D4418
ldrb  r0,[r0]                       ; 080D441A
sub   r0,0x1                        ; 080D441C
lsl   r0,r0,0x18                    ; 080D441E
asr   r2,r0,0x18                    ; 080D4420
cmp   r2,0x0                        ; 080D4422
blt   @@Code080D44FE                ; 080D4424
ldr   r1,=0x0202B35D                ; 080D4426
ldrb  r7,[r1]                       ; 080D4428
cmp   r7,0x0                        ; 080D442A
bne   @@Code080D44FE                ; 080D442C
ldr   r1,=0x03007240                ; 080D442E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D4430
mul   r0,r2                         ; 080D4432
mov   r2,0x95                       ; 080D4434
lsl   r2,r2,0x2                     ; 080D4436
add   r0,r0,r2                      ; 080D4438
ldr   r1,[r1]                       ; 080D443A
add   r5,r1,r0                      ; 080D443C
ldrh  r0,[r5,0x24]                  ; 080D443E
cmp   r0,0x8                        ; 080D4440
bne   @@Code080D44FE                ; 080D4442
mov   r3,0x5E                       ; 080D4444
add   r3,r3,r5                      ; 080D4446
mov   r9,r3                         ; 080D4448
ldrh  r0,[r3]                       ; 080D444A
cmp   r0,0x0                        ; 080D444C
beq   @@Code080D44FE                ; 080D444E
ldr   r0,[r5,0x14]                  ; 080D4450
ldr   r2,=0x2A12                    ; 080D4452
add   r6,r1,r2                      ; 080D4454
strh  r0,[r6]                       ; 080D4456
ldr   r0,[r5,0x8]                   ; 080D4458
lsr   r4,r0,0x1F                    ; 080D445A
ldr   r3,=0x0202B353                ; 080D445C
mov   r8,r3                         ; 080D445E
mov   r0,0xB                        ; 080D4460
strb  r0,[r3]                       ; 080D4462
mov   r0,r12                        ; 080D4464
add   r0,0x40                       ; 080D4466
strh  r7,[r0]                       ; 080D4468
ldr   r1,=0x0202B366                ; 080D446A
ldr   r0,=Data0817C9C0              ; 080D446C
mov   r3,r4                         ; 080D446E
add   r0,r3,r0                      ; 080D4470
ldrb  r0,[r0]                       ; 080D4472
strb  r0,[r1]                       ; 080D4474
mov   r2,r12                        ; 080D4476
add   r2,0x95                       ; 080D4478
lsr   r0,r0,0x1                     ; 080D447A
lsl   r1,r3,0x7                     ; 080D447C
ldrb  r2,[r2]                       ; 080D447E
orr   r0,r1                         ; 080D4480
cmp   r2,r0                         ; 080D4482
beq   @@Code080D448A                ; 080D4484
add   r0,r3,0x2                     ; 080D4486
mov   r4,r0                         ; 080D4488
@@Code080D448A:
ldrh  r0,[r6]                       ; 080D448A
cmp   r0,0x0                        ; 080D448C
bne   @@Code080D44A0                ; 080D448E
lsl   r0,r4,0x18                    ; 080D4490
mov   r1,0x80                       ; 080D4492
lsl   r1,r1,0x13                    ; 080D4494
add   r0,r0,r1                      ; 080D4496
lsr   r4,r0,0x18                    ; 080D4498
mov   r0,0xA                        ; 080D449A
mov   r2,r8                         ; 080D449C
strb  r0,[r2]                       ; 080D449E
@@Code080D44A0:
ldr   r1,=Data0817C9C2              ; 080D44A0
lsl   r0,r4,0x18                    ; 080D44A2
asr   r0,r0,0x17                    ; 080D44A4
add   r0,r0,r1                      ; 080D44A6
mov   r3,0x0                        ; 080D44A8
ldsh  r0,[r0,r3]                    ; 080D44AA
mov   r1,r12                        ; 080D44AC
str   r0,[r1,0x8]                   ; 080D44AE
ldrh  r1,[r1,0x3E]                  ; 080D44B0
mov   r0,0x1                        ; 080D44B2
and   r0,r1                         ; 080D44B4
cmp   r0,0x0                        ; 080D44B6
bne   @@Code080D44CC                ; 080D44B8
ldr   r0,[r5,0x8]                   ; 080D44BA
asr   r0,r0,0x3                     ; 080D44BC
mov   r2,r12                        ; 080D44BE
str   r0,[r2,0x8]                   ; 080D44C0
ldr   r0,=0xFFFFFE00                ; 080D44C2
str   r0,[r2,0xC]                   ; 080D44C4
ldr   r0,=0xFFFE                    ; 080D44C6
and   r0,r1                         ; 080D44C8
strh  r0,[r2,0x3E]                  ; 080D44CA
@@Code080D44CC:
ldr   r1,=0x03002200                ; 080D44CC
mov   r0,r12                        ; 080D44CE
add   r0,0x5A                       ; 080D44D0
ldr   r3,=0x47E4                    ; 080D44D2
add   r2,r1,r3                      ; 080D44D4
ldrh  r0,[r0]                       ; 080D44D6
ldrh  r2,[r2]                       ; 080D44D8
sub   r0,r0,r2                      ; 080D44DA
ldr   r2,=0x4058                    ; 080D44DC
add   r1,r1,r2                      ; 080D44DE
strh  r0,[r1]                       ; 080D44E0
mov   r0,0x75                       ; 080D44E2
bl    PlayYISound                   ; 080D44E4
mov   r0,0x20                       ; 080D44E8
ldr   r3,=0x0202B35D                ; 080D44EA
strb  r0,[r3]                       ; 080D44EC
mov   r0,r9                         ; 080D44EE
strh  r7,[r0]                       ; 080D44F0
mov   r2,r10                        ; 080D44F2
ldrb  r1,[r2]                       ; 080D44F4
sub   r1,0x1                        ; 080D44F6
mov   r0,r5                         ; 080D44F8
bl    Sub0804BA6C                   ; 080D44FA
@@Code080D44FE:
pop   {r3-r5}                       ; 080D44FE
mov   r8,r3                         ; 080D4500
mov   r9,r4                         ; 080D4502
mov   r10,r5                        ; 080D4504
pop   {r4-r7}                       ; 080D4506
pop   {r0}                          ; 080D4508
bx    r0                            ; 080D450A
.pool                               ; 080D450C

Sub080D453C:
push  {lr}                          ; 080D453C
mov   r2,r0                         ; 080D453E
ldrh  r1,[r2,0x3E]                  ; 080D4540
mov   r0,0x1                        ; 080D4542
and   r0,r1                         ; 080D4544
cmp   r0,0x0                        ; 080D4546
beq   @@Code080D4588                ; 080D4548
mov   r0,0x0                        ; 080D454A
str   r0,[r2,0xC]                   ; 080D454C
mov   r0,r2                         ; 080D454E
add   r0,0x95                       ; 080D4550
ldrb  r1,[r0]                       ; 080D4552
mov   r3,r1                         ; 080D4554
ldr   r0,=0x0202B368                ; 080D4556
ldrb  r0,[r0]                       ; 080D4558
cmp   r0,0x0                        ; 080D455A
bne   @@Code080D456C                ; 080D455C
ldr   r0,=0x0202B351                ; 080D455E
strb  r1,[r0]                       ; 080D4560
b     @@Code080D4588                ; 080D4562
.pool                               ; 080D4564

@@Code080D456C:
ldr   r2,=0x0202B351                ; 080D456C
ldrb  r1,[r2]                       ; 080D456E
cmp   r3,r1                         ; 080D4570
beq   @@Code080D4588                ; 080D4572
sub   r0,r3,r1                      ; 080D4574
lsl   r0,r0,0x18                    ; 080D4576
cmp   r0,0x0                        ; 080D4578
blt   @@Code080D4584                ; 080D457A
add   r0,r1,0x2                     ; 080D457C
b     @@Code080D4586                ; 080D457E
.pool                               ; 080D4580

@@Code080D4584:
sub   r0,r1,0x2                     ; 080D4584
@@Code080D4586:
strb  r0,[r2]                       ; 080D4586
@@Code080D4588:
pop   {r0}                          ; 080D4588
bx    r0                            ; 080D458A

Sub080D458C:
push  {r4,lr}                       ; 080D458C
mov   r4,r0                         ; 080D458E
bl    Sub0805F334                   ; 080D4590
ldr   r0,=0x0300702C                ; 080D4594  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D4596
ldr   r1,=0x159C                    ; 080D4598
add   r0,r0,r1                      ; 080D459A
mov   r2,0x0                        ; 080D459C
ldsh  r0,[r0,r2]                    ; 080D459E
cmp   r0,0x0                        ; 080D45A0
bgt   @@Code080D45C8                ; 080D45A2
ldr   r1,=CodePtrs0817C9D4          ; 080D45A4
ldr   r0,=0x0202B353                ; 080D45A6
ldrb  r0,[r0]                       ; 080D45A8
lsl   r0,r0,0x2                     ; 080D45AA
add   r0,r0,r1                      ; 080D45AC
ldr   r1,[r0]                       ; 080D45AE
mov   r0,r4                         ; 080D45B0
bl    Sub_bx_r1                     ; 080D45B2
b     @@Code080D45D8                ; 080D45B6
.pool                               ; 080D45B8

@@Code080D45C8:
ldrh  r0,[r4,0x28]                  ; 080D45C8
ldr   r1,=0xFCFF                    ; 080D45CA
and   r1,r0                         ; 080D45CC
mov   r2,0x80                       ; 080D45CE
lsl   r2,r2,0x2                     ; 080D45D0
mov   r0,r2                         ; 080D45D2
orr   r1,r0                         ; 080D45D4
strh  r1,[r4,0x28]                  ; 080D45D6
@@Code080D45D8:
pop   {r4}                          ; 080D45D8
pop   {r0}                          ; 080D45DA
bx    r0                            ; 080D45DC
.pool                               ; 080D45DE

Sub080D45E4:
push  {lr}                          ; 080D45E4
mov   r3,r0                         ; 080D45E6
ldr   r0,=0x03002200                ; 080D45E8
ldr   r1,=0x4088                    ; 080D45EA
add   r0,r0,r1                      ; 080D45EC
ldrh  r0,[r0]                       ; 080D45EE
cmp   r0,0x3F                       ; 080D45F0
beq   @@Code080D4644                ; 080D45F2
ldr   r2,=0x0202B357                ; 080D45F4
ldr   r1,=0x0202B361                ; 080D45F6
mov   r0,0x6                        ; 080D45F8
strb  r0,[r1]                       ; 080D45FA
strb  r0,[r2]                       ; 080D45FC
mov   r0,0x0                        ; 080D45FE
strh  r0,[r3,0x38]                  ; 080D4600
sub   r1,0x9                        ; 080D4602
mov   r0,0xFF                       ; 080D4604
strb  r0,[r1]                       ; 080D4606
mov   r0,0x40                       ; 080D4608
str   r0,[r3,0x14]                  ; 080D460A
mov   r1,r3                         ; 080D460C
add   r1,0x42                       ; 080D460E
strh  r0,[r1]                       ; 080D4610
ldr   r1,=0x0202B353                ; 080D4612
mov   r0,0x4                        ; 080D4614
strb  r0,[r1]                       ; 080D4616
ldrh  r1,[r3,0x28]                  ; 080D4618
mov   r0,0xFF                       ; 080D461A
lsl   r0,r0,0x8                     ; 080D461C
and   r0,r1                         ; 080D461E
mov   r1,0x81                       ; 080D4620
orr   r0,r1                         ; 080D4622
strh  r0,[r3,0x28]                  ; 080D4624
ldr   r0,=0x2801                    ; 080D4626
strh  r0,[r3,0x2A]                  ; 080D4628
b     @@Code080D4662                ; 080D462A
.pool                               ; 080D462C

@@Code080D4644:
mov   r0,r3                         ; 080D4644
add   r0,0x42                       ; 080D4646
ldrh  r0,[r0]                       ; 080D4648
cmp   r0,0x0                        ; 080D464A
bne   @@Code080D4662                ; 080D464C
ldr   r1,=0x0202B353                ; 080D464E
ldrb  r0,[r1]                       ; 080D4650
add   r0,0x1                        ; 080D4652
strb  r0,[r1]                       ; 080D4654
ldr   r0,=0x0300702C                ; 080D4656  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D4658
ldr   r1,=0x159C                    ; 080D465A
add   r0,r0,r1                      ; 080D465C
mov   r1,0x1                        ; 080D465E
strh  r1,[r0]                       ; 080D4660
@@Code080D4662:
pop   {r0}                          ; 080D4662
bx    r0                            ; 080D4664
.pool                               ; 080D4666

Sub080D4674:
push  {r4,lr}                       ; 080D4674
mov   r1,r0                         ; 080D4676
mov   r3,r1                         ; 080D4678
add   r3,0x42                       ; 080D467A
ldrh  r2,[r3]                       ; 080D467C
cmp   r2,0x0                        ; 080D467E
bne   @@Code080D46A4                ; 080D4680
ldr   r0,=0xFFFFFC00                ; 080D4682
str   r0,[r1,0xC]                   ; 080D4684
mov   r0,0x18                       ; 080D4686
str   r0,[r1,0x14]                  ; 080D4688
ldr   r0,=0x0300702C                ; 080D468A  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D468C
ldr   r4,=0x159C                    ; 080D468E
add   r0,r0,r4                      ; 080D4690
strh  r2,[r0]                       ; 080D4692
mov   r0,0x11                       ; 080D4694
strh  r0,[r1,0x38]                  ; 080D4696
mov   r0,0xC                        ; 080D4698
strh  r0,[r3]                       ; 080D469A
ldr   r1,=0x0202B353                ; 080D469C
ldrb  r0,[r1]                       ; 080D469E
add   r0,0x1                        ; 080D46A0
strb  r0,[r1]                       ; 080D46A2
@@Code080D46A4:
pop   {r4}                          ; 080D46A4
pop   {r0}                          ; 080D46A6
bx    r0                            ; 080D46A8
.pool                               ; 080D46AA

Sub080D46BC:
push  {lr}                          ; 080D46BC
mov   r2,r0                         ; 080D46BE
add   r0,0x42                       ; 080D46C0
ldrh  r0,[r0]                       ; 080D46C2
cmp   r0,0x0                        ; 080D46C4
beq   @@Code080D46E4                ; 080D46C6
cmp   r0,0x1                        ; 080D46C8
bne   @@Code080D4728                ; 080D46CA
mov   r0,0x0                        ; 080D46CC
strh  r0,[r2,0x38]                  ; 080D46CE
ldr   r0,=0x2801                    ; 080D46D0
strh  r0,[r2,0x2A]                  ; 080D46D2
ldr   r1,=0x0202B357                ; 080D46D4
mov   r0,0x12                       ; 080D46D6
b     @@Code080D4726                ; 080D46D8
.pool                               ; 080D46DA

@@Code080D46E4:
ldr   r1,=0x0202B358                ; 080D46E4
ldrb  r0,[r1]                       ; 080D46E6
cmp   r0,0xFF                       ; 080D46E8
beq   @@Code080D46F6                ; 080D46EA
add   r0,0x6                        ; 080D46EC
cmp   r0,0xFF                       ; 080D46EE
ble   @@Code080D46F4                ; 080D46F0
mov   r0,0xFF                       ; 080D46F2
@@Code080D46F4:
strb  r0,[r1]                       ; 080D46F4
@@Code080D46F6:
ldr   r1,=0x0202B351                ; 080D46F6
ldrb  r0,[r1]                       ; 080D46F8
add   r0,0x8                        ; 080D46FA
strb  r0,[r1]                       ; 080D46FC
lsl   r0,r0,0x18                    ; 080D46FE
lsr   r3,r0,0x18                    ; 080D4700
cmp   r3,0x0                        ; 080D4702
bne   @@Code080D4728                ; 080D4704
mov   r0,0xFF                       ; 080D4706
str   r0,[r2,0x14]                  ; 080D4708
add   r1,0x6                        ; 080D470A
mov   r0,0x6                        ; 080D470C
strb  r0,[r1]                       ; 080D470E
str   r3,[r2,0xC]                   ; 080D4710
ldrh  r1,[r2,0x28]                  ; 080D4712
mov   r0,0xFF                       ; 080D4714
lsl   r0,r0,0x8                     ; 080D4716
and   r0,r1                         ; 080D4718
mov   r1,0x81                       ; 080D471A
orr   r0,r1                         ; 080D471C
strh  r0,[r2,0x28]                  ; 080D471E
ldr   r1,=0x0202B353                ; 080D4720
ldrb  r0,[r1]                       ; 080D4722
add   r0,0x1                        ; 080D4724
@@Code080D4726:
strb  r0,[r1]                       ; 080D4726
@@Code080D4728:
pop   {r0}                          ; 080D4728
bx    r0                            ; 080D472A
.pool                               ; 080D472C

Sub080D4738:
push  {r4-r5,lr}                    ; 080D4738
mov   r5,r0                         ; 080D473A
ldrh  r1,[r5,0x3E]                  ; 080D473C
mov   r0,0x1                        ; 080D473E
and   r0,r1                         ; 080D4740
cmp   r0,0x0                        ; 080D4742
beq   @@Code080D4790                ; 080D4744
ldr   r2,=0x0202B357                ; 080D4746
ldr   r1,=0x0202B361                ; 080D4748
mov   r0,0x6                        ; 080D474A
strb  r0,[r1]                       ; 080D474C
strb  r0,[r2]                       ; 080D474E
ldr   r1,=0x03002200                ; 080D4750
mov   r2,r5                         ; 080D4752
add   r2,0x5A                       ; 080D4754
ldr   r3,=0x47E4                    ; 080D4756
add   r0,r1,r3                      ; 080D4758
ldrh  r2,[r2]                       ; 080D475A
ldrh  r0,[r0]                       ; 080D475C
sub   r2,r2,r0                      ; 080D475E
ldr   r0,=0x4058                    ; 080D4760
add   r1,r1,r0                      ; 080D4762
mov   r4,0x0                        ; 080D4764
strh  r2,[r1]                       ; 080D4766
mov   r0,0x4F                       ; 080D4768
bl    PlayYISound                   ; 080D476A
ldr   r2,=0x03006D80                ; 080D476E
mov   r3,0xE0                       ; 080D4770
lsl   r3,r3,0x1                     ; 080D4772
add   r1,r2,r3                      ; 080D4774
mov   r0,0x18                       ; 080D4776
strh  r0,[r1]                       ; 080D4778
mov   r0,0x40                       ; 080D477A
str   r0,[r5,0x14]                  ; 080D477C
mov   r1,r5                         ; 080D477E
add   r1,0x42                       ; 080D4780
mov   r0,0xA0                       ; 080D4782
strh  r0,[r1]                       ; 080D4784
strh  r4,[r2,0x30]                  ; 080D4786
ldr   r1,=0x0202B353                ; 080D4788
ldrb  r0,[r1]                       ; 080D478A
add   r0,0x1                        ; 080D478C
strb  r0,[r1]                       ; 080D478E
@@Code080D4790:
pop   {r4-r5}                       ; 080D4790
pop   {r0}                          ; 080D4792
bx    r0                            ; 080D4794
.pool                               ; 080D4796

Sub080D47B4:
push  {lr}                          ; 080D47B4
mov   r1,r0                         ; 080D47B6
add   r0,0x42                       ; 080D47B8
ldrh  r0,[r0]                       ; 080D47BA
cmp   r0,0x0                        ; 080D47BC
bne   @@Code080D47C6                ; 080D47BE
mov   r0,r1                         ; 080D47C0
bl    Sub080D4EE8                   ; 080D47C2
@@Code080D47C6:
pop   {r0}                          ; 080D47C6
bx    r0                            ; 080D47C8
.pool                               ; 080D47CA

Sub080D47CC:
push  {r4-r7,lr}                    ; 080D47CC
mov   r5,r0                         ; 080D47CE
mov   r0,0x40                       ; 080D47D0
str   r0,[r5,0x14]                  ; 080D47D2
mov   r0,r5                         ; 080D47D4
bl    Sub080D4F0C                   ; 080D47D6
ldr   r7,=0x0202B355                ; 080D47DA
ldrb  r0,[r7]                       ; 080D47DC
cmp   r0,0x0                        ; 080D47DE
bne   @@Code080D4856                ; 080D47E0
ldr   r1,=0x0202B360                ; 080D47E2
ldrb  r0,[r1]                       ; 080D47E4
sub   r0,0x1                        ; 080D47E6
strb  r0,[r1]                       ; 080D47E8
lsl   r0,r0,0x18                    ; 080D47EA
cmp   r0,0x0                        ; 080D47EC
bge   @@Code080D4856                ; 080D47EE
mov   r0,0x1                        ; 080D47F0
strb  r0,[r1]                       ; 080D47F2
ldr   r2,=0x0202B361                ; 080D47F4
ldrb  r0,[r2]                       ; 080D47F6
add   r0,0x1                        ; 080D47F8
mov   r1,0xF                        ; 080D47FA
and   r0,r1                         ; 080D47FC
strb  r0,[r2]                       ; 080D47FE
ldr   r4,=0x0202B357                ; 080D4800
ldr   r1,=Data0817CA1C              ; 080D4802
ldrb  r0,[r2]                       ; 080D4804
add   r0,r0,r1                      ; 080D4806
ldrb  r0,[r0]                       ; 080D4808
strb  r0,[r4]                       ; 080D480A
ldrb  r0,[r4]                       ; 080D480C
sub   r0,0x1                        ; 080D480E
mov   r6,0x7                        ; 080D4810
and   r0,r6                         ; 080D4812
cmp   r0,0x0                        ; 080D4814
bne   @@Code080D481E                ; 080D4816
mov   r0,r5                         ; 080D4818
bl    Sub080D4F24                   ; 080D481A
@@Code080D481E:
ldrb  r0,[r4]                       ; 080D481E
mov   r4,r6                         ; 080D4820
and   r4,r0                         ; 080D4822
cmp   r4,0x0                        ; 080D4824
bne   @@Code080D4856                ; 080D4826
ldr   r0,=0x03006D80                ; 080D4828
mov   r1,0xE0                       ; 080D482A
lsl   r1,r1,0x1                     ; 080D482C
add   r0,r0,r1                      ; 080D482E
mov   r1,0xC                        ; 080D4830
strh  r1,[r0]                       ; 080D4832
mov   r0,0x10                       ; 080D4834
strb  r0,[r7]                       ; 080D4836
ldr   r1,=0x03002200                ; 080D4838
mov   r0,r5                         ; 080D483A
add   r0,0x5A                       ; 080D483C
ldr   r3,=0x47E4                    ; 080D483E
add   r2,r1,r3                      ; 080D4840
ldrh  r0,[r0]                       ; 080D4842
ldrh  r2,[r2]                       ; 080D4844
sub   r0,r0,r2                      ; 080D4846
ldr   r2,=0x4058                    ; 080D4848
add   r1,r1,r2                      ; 080D484A
strh  r0,[r1]                       ; 080D484C
mov   r0,0xAF                       ; 080D484E
bl    PlayYISound                   ; 080D4850
str   r4,[r5,0x8]                   ; 080D4854
@@Code080D4856:
ldr   r2,=0x0202B363                ; 080D4856
ldrh  r1,[r5,0x3E]                  ; 080D4858
mov   r0,0xC                        ; 080D485A
and   r0,r1                         ; 080D485C
strb  r0,[r2]                       ; 080D485E
cmp   r0,0x0                        ; 080D4860
bne   @@Code080D4876                ; 080D4862
ldrh  r1,[r5,0x3E]                  ; 080D4864
mov   r0,0x1                        ; 080D4866
and   r0,r1                         ; 080D4868
cmp   r0,0x0                        ; 080D486A
bne   @@Code080D48AC                ; 080D486C
ldr   r0,=0x0202B368                ; 080D486E
ldrb  r0,[r0]                       ; 080D4870
cmp   r0,0x0                        ; 080D4872
beq   @@Code080D48AC                ; 080D4874
@@Code080D4876:
mov   r0,r5                         ; 080D4876
bl    Sub080D4F64                   ; 080D4878
b     @@Code080D48C6                ; 080D487C
.pool                               ; 080D487E

@@Code080D48AC:
ldr   r0,=0x0202B357                ; 080D48AC
ldrb  r0,[r0]                       ; 080D48AE
cmp   r0,0x0                        ; 080D48B0
beq   @@Code080D48C0                ; 080D48B2
cmp   r0,0x1                        ; 080D48B4
beq   @@Code080D48C0                ; 080D48B6
cmp   r0,0xE                        ; 080D48B8
beq   @@Code080D48C0                ; 080D48BA
cmp   r0,0xF                        ; 080D48BC
bne   @@Code080D48C6                ; 080D48BE
@@Code080D48C0:
mov   r0,r5                         ; 080D48C0
bl    Sub080D4F78                   ; 080D48C2
@@Code080D48C6:
pop   {r4-r7}                       ; 080D48C6
pop   {r0}                          ; 080D48C8
bx    r0                            ; 080D48CA
.pool                               ; 080D48CC

Sub080D48D0:
push  {r4,lr}                       ; 080D48D0
mov   r4,r0                         ; 080D48D2
mov   r0,0x40                       ; 080D48D4
str   r0,[r4,0x14]                  ; 080D48D6
mov   r0,r4                         ; 080D48D8
bl    Sub080D4F0C                   ; 080D48DA
mov   r0,0x0                        ; 080D48DE
str   r0,[r4,0x8]                   ; 080D48E0
ldr   r0,=0x0202B354                ; 080D48E2
ldrb  r3,[r0]                       ; 080D48E4
cmp   r3,0x0                        ; 080D48E6
bne   @@Code080D48F8                ; 080D48E8
mov   r0,r4                         ; 080D48EA
bl    Sub080D4EE8                   ; 080D48EC
b     @@Code080D4910                ; 080D48F0
.pool                               ; 080D48F2

@@Code080D48F8:
ldr   r2,=0x0202B357                ; 080D48F8
ldr   r1,=Data0817CA34              ; 080D48FA
ldrb  r0,[r0]                       ; 080D48FC
add   r0,r0,r1                      ; 080D48FE
ldrb  r0,[r0]                       ; 080D4900
strb  r0,[r2]                       ; 080D4902
cmp   r3,0x8                        ; 080D4904
bne   @@Code080D4910                ; 080D4906
ldrh  r0,[r4,0x36]                  ; 080D4908
mov   r1,0x2                        ; 080D490A
eor   r0,r1                         ; 080D490C
strh  r0,[r4,0x36]                  ; 080D490E
@@Code080D4910:
pop   {r4}                          ; 080D4910
pop   {r0}                          ; 080D4912
bx    r0                            ; 080D4914
.pool                               ; 080D4916

Sub080D4920:
push  {r4-r6,lr}                    ; 080D4920
mov   r4,r0                         ; 080D4922
mov   r0,0x40                       ; 080D4924
str   r0,[r4,0x14]                  ; 080D4926
mov   r0,r4                         ; 080D4928
bl    Sub080D4F0C                   ; 080D492A
mov   r6,0x0                        ; 080D492E
str   r6,[r4,0x8]                   ; 080D4930
ldr   r2,=Data0817CA4E              ; 080D4932
mov   r5,r4                         ; 080D4934
add   r5,0x40                       ; 080D4936
ldrh  r0,[r5]                       ; 080D4938
add   r1,r0,r2                      ; 080D493A
ldrb  r1,[r1]                       ; 080D493C
add   r0,0x1                        ; 080D493E
strh  r0,[r5]                       ; 080D4940
lsl   r1,r1,0x18                    ; 080D4942
cmp   r1,0x0                        ; 080D4944
blt   @@Code080D4960                ; 080D4946
ldr   r0,=0x0202B357                ; 080D4948
ldrh  r1,[r5]                       ; 080D494A
sub   r1,0x1                        ; 080D494C
add   r1,r1,r2                      ; 080D494E
ldrb  r1,[r1]                       ; 080D4950
strb  r1,[r0]                       ; 080D4952
b     @@Code080D4998                ; 080D4954
.pool                               ; 080D4956

@@Code080D4960:
ldr   r1,=0x03002200                ; 080D4960
mov   r0,r4                         ; 080D4962
add   r0,0x5A                       ; 080D4964
ldr   r3,=0x47E4                    ; 080D4966
add   r2,r1,r3                      ; 080D4968
ldrh  r0,[r0]                       ; 080D496A
ldrh  r2,[r2]                       ; 080D496C
sub   r0,r0,r2                      ; 080D496E
ldr   r2,=0x4058                    ; 080D4970
add   r1,r1,r2                      ; 080D4972
strh  r0,[r1]                       ; 080D4974
mov   r0,0xD                        ; 080D4976
bl    PlayYISound                   ; 080D4978
ldr   r0,=0xFFFFF900                ; 080D497C
str   r0,[r4,0xC]                   ; 080D497E
ldrh  r1,[r4,0x3E]                  ; 080D4980
ldr   r0,=0xFFFE                    ; 080D4982
and   r0,r1                         ; 080D4984
strh  r0,[r4,0x3E]                  ; 080D4986
ldr   r1,=0x0202B353                ; 080D4988
ldrb  r0,[r1]                       ; 080D498A
add   r0,0x1                        ; 080D498C
strb  r0,[r1]                       ; 080D498E
strh  r6,[r5]                       ; 080D4990
mov   r0,r4                         ; 080D4992
bl    Sub080D4FC4                   ; 080D4994
@@Code080D4998:
pop   {r4-r6}                       ; 080D4998
pop   {r0}                          ; 080D499A
bx    r0                            ; 080D499C
.pool                               ; 080D499E

Sub080D49B8:
push  {r4-r6,lr}                    ; 080D49B8
mov   r5,r0                         ; 080D49BA
mov   r0,0x40                       ; 080D49BC
str   r0,[r5,0x14]                  ; 080D49BE
mov   r0,r5                         ; 080D49C0
bl    Sub080D4F0C                   ; 080D49C2
ldrh  r1,[r5,0x3E]                  ; 080D49C6
mov   r0,0xC                        ; 080D49C8
and   r0,r1                         ; 080D49CA
cmp   r0,0x0                        ; 080D49CC
bne   @@Code080D49D6                ; 080D49CE
mov   r0,r5                         ; 080D49D0
bl    Sub080D4FC4                   ; 080D49D2
@@Code080D49D6:
ldr   r2,=0x0202B357                ; 080D49D6
ldr   r1,=Data0817CA7F              ; 080D49D8
mov   r6,r5                         ; 080D49DA
add   r6,0x40                       ; 080D49DC
ldrh  r0,[r6]                       ; 080D49DE
add   r0,r0,r1                      ; 080D49E0
ldrb  r0,[r0]                       ; 080D49E2
strb  r0,[r2]                       ; 080D49E4
ldrh  r0,[r6]                       ; 080D49E6
cmp   r0,0x1B                       ; 080D49E8
bhi   @@Code080D49F0                ; 080D49EA
add   r0,0x1                        ; 080D49EC
strh  r0,[r6]                       ; 080D49EE
@@Code080D49F0:
ldrh  r1,[r5,0x3E]                  ; 080D49F0
mov   r0,0x1                        ; 080D49F2
and   r0,r1                         ; 080D49F4
cmp   r0,0x0                        ; 080D49F6
beq   @@Code080D4A2E                ; 080D49F8
ldr   r0,=0x03006D80                ; 080D49FA
mov   r1,0xE0                       ; 080D49FC
lsl   r1,r1,0x1                     ; 080D49FE
add   r0,r0,r1                      ; 080D4A00
mov   r4,0x0                        ; 080D4A02
mov   r1,0x18                       ; 080D4A04
strh  r1,[r0]                       ; 080D4A06
ldr   r1,=0x03002200                ; 080D4A08
mov   r0,r5                         ; 080D4A0A
add   r0,0x5A                       ; 080D4A0C
ldr   r3,=0x47E4                    ; 080D4A0E
add   r2,r1,r3                      ; 080D4A10
ldrh  r0,[r0]                       ; 080D4A12
ldrh  r2,[r2]                       ; 080D4A14
sub   r0,r0,r2                      ; 080D4A16
ldr   r2,=0x4058                    ; 080D4A18
add   r1,r1,r2                      ; 080D4A1A
strh  r0,[r1]                       ; 080D4A1C
mov   r0,0x4F                       ; 080D4A1E
bl    PlayYISound                   ; 080D4A20
str   r4,[r5,0xC]                   ; 080D4A24
ldr   r1,=0x0202B353                ; 080D4A26
mov   r0,0x9                        ; 080D4A28
strb  r0,[r1]                       ; 080D4A2A
strh  r4,[r6]                       ; 080D4A2C
@@Code080D4A2E:
pop   {r4-r6}                       ; 080D4A2E
pop   {r0}                          ; 080D4A30
bx    r0                            ; 080D4A32
.pool                               ; 080D4A34

Sub080D4A50:
push  {r4,lr}                       ; 080D4A50
mov   r4,r0                         ; 080D4A52
mov   r0,0x40                       ; 080D4A54
str   r0,[r4,0x14]                  ; 080D4A56
mov   r0,r4                         ; 080D4A58
bl    Sub080D4F0C                   ; 080D4A5A
mov   r0,0x0                        ; 080D4A5E
str   r0,[r4,0x8]                   ; 080D4A60
ldr   r1,=Data0817CA9D              ; 080D4A62
mov   r2,r4                         ; 080D4A64
add   r2,0x40                       ; 080D4A66
ldrh  r0,[r2]                       ; 080D4A68
add   r1,r0,r1                      ; 080D4A6A
ldrb  r1,[r1]                       ; 080D4A6C
add   r0,0x1                        ; 080D4A6E
strh  r0,[r2]                       ; 080D4A70
lsl   r0,r1,0x18                    ; 080D4A72
cmp   r0,0x0                        ; 080D4A74
blt   @@Code080D4A88                ; 080D4A76
ldr   r0,=0x0202B357                ; 080D4A78
strb  r1,[r0]                       ; 080D4A7A
b     @@Code080D4A94                ; 080D4A7C
.pool                               ; 080D4A7E

@@Code080D4A88:
mov   r0,r4                         ; 080D4A88
bl    Sub080D4EE8                   ; 080D4A8A
mov   r0,r4                         ; 080D4A8E
bl    Sub080D4F78                   ; 080D4A90
@@Code080D4A94:
pop   {r4}                          ; 080D4A94
pop   {r0}                          ; 080D4A96
bx    r0                            ; 080D4A98
.pool                               ; 080D4A9A

Sub080D4A9C:
push  {r4,lr}                       ; 080D4A9C
mov   r3,r0                         ; 080D4A9E
mov   r0,0x40                       ; 080D4AA0
str   r0,[r3,0x14]                  ; 080D4AA2
ldr   r1,=0x0202B357                ; 080D4AA4
mov   r0,0x12                       ; 080D4AA6
strb  r0,[r1]                       ; 080D4AA8
ldrh  r1,[r3,0x3E]                  ; 080D4AAA
mov   r0,0x1                        ; 080D4AAC
and   r0,r1                         ; 080D4AAE
cmp   r0,0x0                        ; 080D4AB0
bne   @@Code080D4AD8                ; 080D4AB2
ldr   r0,[r3,0x4]                   ; 080D4AB4
asr   r0,r0,0x8                     ; 080D4AB6
lsl   r0,r0,0x18                    ; 080D4AB8
lsr   r0,r0,0x18                    ; 080D4ABA
cmp   r0,0x9F                       ; 080D4ABC
bhi   @@Code080D4AD8                ; 080D4ABE
ldr   r0,=0x0202B368                ; 080D4AC0
ldrb  r0,[r0]                       ; 080D4AC2
cmp   r0,0x0                        ; 080D4AC4
beq   @@Code080D4AD8                ; 080D4AC6
mov   r0,r3                         ; 080D4AC8
bl    Sub080D4FFC                   ; 080D4ACA
b     @@Code080D4AF8                ; 080D4ACE
.pool                               ; 080D4AD0

@@Code080D4AD8:
ldr   r1,=0x0202B367                ; 080D4AD8
ldr   r0,=0x0202B366                ; 080D4ADA
ldrb  r0,[r0]                       ; 080D4ADC
ldrb  r4,[r1]                       ; 080D4ADE
add   r2,r0,r4                      ; 080D4AE0
strb  r2,[r1]                       ; 080D4AE2
ldr   r0,=0x0202B354                ; 080D4AE4
ldrb  r0,[r0]                       ; 080D4AE6
cmp   r0,0x0                        ; 080D4AE8
bne   @@Code080D4AF8                ; 080D4AEA
lsl   r0,r2,0x18                    ; 080D4AEC
cmp   r0,0x0                        ; 080D4AEE
bne   @@Code080D4AF8                ; 080D4AF0
mov   r0,r3                         ; 080D4AF2
bl    Sub080D5010                   ; 080D4AF4
@@Code080D4AF8:
pop   {r4}                          ; 080D4AF8
pop   {r0}                          ; 080D4AFA
bx    r0                            ; 080D4AFC
.pool                               ; 080D4AFE

Sub080D4B0C:
push  {r4,lr}                       ; 080D4B0C
mov   r4,r0                         ; 080D4B0E
mov   r0,0x40                       ; 080D4B10
str   r0,[r4,0x14]                  ; 080D4B12
mov   r0,r4                         ; 080D4B14
bl    Sub080D502C                   ; 080D4B16
ldr   r1,=Data0817CAC2              ; 080D4B1A
mov   r2,r4                         ; 080D4B1C
add   r2,0x40                       ; 080D4B1E
ldrh  r0,[r2]                       ; 080D4B20
add   r1,r0,r1                      ; 080D4B22
ldrb  r1,[r1]                       ; 080D4B24
add   r0,0x1                        ; 080D4B26
strh  r0,[r2]                       ; 080D4B28
lsl   r0,r1,0x18                    ; 080D4B2A
cmp   r0,0x0                        ; 080D4B2C
blt   @@Code080D4B40                ; 080D4B2E
ldr   r0,=0x0202B357                ; 080D4B30
strb  r1,[r0]                       ; 080D4B32
b     @@Code080D4B46                ; 080D4B34
.pool                               ; 080D4B36

@@Code080D4B40:
mov   r0,r4                         ; 080D4B40
bl    Sub080D5010                   ; 080D4B42
@@Code080D4B46:
pop   {r4}                          ; 080D4B46
pop   {r0}                          ; 080D4B48
bx    r0                            ; 080D4B4A

Sub080D4B4C:
push  {r4-r5,lr}                    ; 080D4B4C
mov   r4,r0                         ; 080D4B4E
mov   r0,0x40                       ; 080D4B50
str   r0,[r4,0x14]                  ; 080D4B52
mov   r0,r4                         ; 080D4B54
bl    Sub080D502C                   ; 080D4B56
mov   r2,r4                         ; 080D4B5A
add   r2,0x40                       ; 080D4B5C
ldrh  r1,[r2]                       ; 080D4B5E
ldr   r0,=Data0817CAEB              ; 080D4B60
mov   r3,0x0                        ; 080D4B62
ldsb  r3,[r2,r3]                    ; 080D4B64
add   r0,r3,r0                      ; 080D4B66
ldrb  r5,[r0]                       ; 080D4B68
add   r1,0x1                        ; 080D4B6A
strh  r1,[r2]                       ; 080D4B6C
lsl   r0,r5,0x18                    ; 080D4B6E
cmp   r0,0x0                        ; 080D4B70
bge   @@Code080D4B80                ; 080D4B72
mov   r0,r4                         ; 080D4B74
bl    Sub080D4EE8                   ; 080D4B76
b     @@Code080D4BB0                ; 080D4B7A
.pool                               ; 080D4B7C

@@Code080D4B80:
ldr   r0,=0x0202B357                ; 080D4B80
strb  r5,[r0]                       ; 080D4B82
cmp   r3,0x30                       ; 080D4B84
bne   @@Code080D4BA4                ; 080D4B86
ldr   r0,=0xFFFFFD80                ; 080D4B88
str   r0,[r4,0xC]                   ; 080D4B8A
ldrh  r1,[r4,0x3E]                  ; 080D4B8C
ldr   r0,=0xFFFE                    ; 080D4B8E
and   r0,r1                         ; 080D4B90
strh  r0,[r4,0x3E]                  ; 080D4B92
b     @@Code080D4BAC                ; 080D4B94
.pool                               ; 080D4B96

@@Code080D4BA4:
cmp   r3,0x2B                       ; 080D4BA4
ble   @@Code080D4BB0                ; 080D4BA6
cmp   r3,0x37                       ; 080D4BA8
bgt   @@Code080D4BB0                ; 080D4BAA
@@Code080D4BAC:
mov   r0,0x0                        ; 080D4BAC
str   r0,[r4,0x8]                   ; 080D4BAE
@@Code080D4BB0:
pop   {r4-r5}                       ; 080D4BB0
pop   {r0}                          ; 080D4BB2
bx    r0                            ; 080D4BB4
.pool                               ; 080D4BB6

Sub080D4BB8:
push  {r4-r5,lr}                    ; 080D4BB8
mov   r4,r0                         ; 080D4BBA
ldrh  r1,[r4,0x28]                  ; 080D4BBC
ldr   r0,=0xFCFF                    ; 080D4BBE
and   r0,r1                         ; 080D4BC0
strh  r0,[r4,0x28]                  ; 080D4BC2
ldr   r2,=0x0202B367                ; 080D4BC4
ldrb  r1,[r2]                       ; 080D4BC6
mov   r5,r1                         ; 080D4BC8
cmp   r5,0x0                        ; 080D4BCA
bne   @@Code080D4C50                ; 080D4BCC
mov   r3,r4                         ; 080D4BCE
add   r3,0x40                       ; 080D4BD0
ldrh  r0,[r3]                       ; 080D4BD2
lsr   r0,r0,0x1                     ; 080D4BD4
mov   r1,0x2                        ; 080D4BD6
and   r0,r1                         ; 080D4BD8
lsl   r0,r0,0x10                    ; 080D4BDA
lsr   r0,r0,0x10                    ; 080D4BDC
ldrh  r1,[r4,0x36]                  ; 080D4BDE
add   r0,r0,r1                      ; 080D4BE0
mov   r1,0xFF                       ; 080D4BE2
lsl   r1,r1,0x1                     ; 080D4BE4
ldr   r2,=Data0817CBD2              ; 080D4BE6
and   r0,r1                         ; 080D4BE8
add   r0,r0,r2                      ; 080D4BEA
mov   r1,0x0                        ; 080D4BEC
ldsh  r0,[r0,r1]                    ; 080D4BEE
str   r0,[r4,0x8]                   ; 080D4BF0
str   r5,[r4,0x14]                  ; 080D4BF2
str   r5,[r4,0xC]                   ; 080D4BF4
ldrh  r0,[r3]                       ; 080D4BF6
ldrb  r1,[r3]                       ; 080D4BF8
add   r0,0x1                        ; 080D4BFA
strh  r0,[r3]                       ; 080D4BFC
ldr   r0,=Data0817CB40              ; 080D4BFE
add   r0,r1,r0                      ; 080D4C00
ldrb  r3,[r0]                       ; 080D4C02
mov   r2,0x0                        ; 080D4C04
ldsb  r2,[r0,r2]                    ; 080D4C06
cmp   r2,0x0                        ; 080D4C08
bge   @@Code080D4C24                ; 080D4C0A
mov   r0,r4                         ; 080D4C0C
bl    Sub080D4EE8                   ; 080D4C0E
b     @@Code080D4C5E                ; 080D4C12
.pool                               ; 080D4C14

@@Code080D4C24:
ldr   r0,=0x0202B366                ; 080D4C24
ldrb  r0,[r0]                       ; 080D4C26
lsl   r0,r0,0x18                    ; 080D4C28
asr   r0,r0,0x18                    ; 080D4C2A
mvn   r0,r0                         ; 080D4C2C
asr   r0,r0,0x1F                    ; 080D4C2E
mov   r1,0x2                        ; 080D4C30
and   r0,r1                         ; 080D4C32
ldrh  r4,[r4,0x36]                  ; 080D4C34
cmp   r0,r4                         ; 080D4C36
bne   @@Code080D4C40                ; 080D4C38
add   r0,r2,0x4                     ; 080D4C3A
lsl   r0,r0,0x18                    ; 080D4C3C
lsr   r3,r0,0x18                    ; 080D4C3E
@@Code080D4C40:
ldr   r0,=0x0202B357                ; 080D4C40
strb  r3,[r0]                       ; 080D4C42
b     @@Code080D4C5E                ; 080D4C44
.pool                               ; 080D4C46

@@Code080D4C50:
ldr   r0,=0x0202B366                ; 080D4C50
ldrb  r0,[r0]                       ; 080D4C52
add   r0,r1,r0                      ; 080D4C54
strb  r0,[r2]                       ; 080D4C56
ldr   r1,=0x0202B357                ; 080D4C58
mov   r0,0x12                       ; 080D4C5A
strb  r0,[r1]                       ; 080D4C5C
@@Code080D4C5E:
pop   {r4-r5}                       ; 080D4C5E
pop   {r0}                          ; 080D4C60
bx    r0                            ; 080D4C62
.pool                               ; 080D4C64

Sub080D4C6C:
push  {r4-r5,lr}                    ; 080D4C6C
mov   r3,r0                         ; 080D4C6E
ldr   r1,=0x0202B357                ; 080D4C70
mov   r0,0x12                       ; 080D4C72
strb  r0,[r1]                       ; 080D4C74
ldr   r0,[r3,0x4]                   ; 080D4C76
asr   r0,r0,0x8                     ; 080D4C78
lsl   r0,r0,0x18                    ; 080D4C7A
lsr   r0,r0,0x18                    ; 080D4C7C
cmp   r0,0xCF                       ; 080D4C7E
bls   @@Code080D4C92                ; 080D4C80
ldr   r0,=0x0202B353                ; 080D4C82
ldrb  r1,[r0]                       ; 080D4C84
add   r1,0x1                        ; 080D4C86
strb  r1,[r0]                       ; 080D4C88
mov   r1,r3                         ; 080D4C8A
add   r1,0x42                       ; 080D4C8C
mov   r0,0x60                       ; 080D4C8E
strh  r0,[r1]                       ; 080D4C90
@@Code080D4C92:
ldr   r2,=0x0202B367                ; 080D4C92
ldrb  r1,[r2]                       ; 080D4C94
cmp   r1,0x0                        ; 080D4C96
beq   @@Code080D4CA2                ; 080D4C98
ldr   r0,=0x0202B366                ; 080D4C9A
ldrb  r0,[r0]                       ; 080D4C9C
add   r0,r1,r0                      ; 080D4C9E
strb  r0,[r2]                       ; 080D4CA0
@@Code080D4CA2:
mov   r4,0x1                        ; 080D4CA2
ldr   r1,=0x03002200                ; 080D4CA4
ldr   r2,=0x4901                    ; 080D4CA6
add   r0,r1,r2                      ; 080D4CA8
ldrb  r2,[r0]                       ; 080D4CAA
mov   r0,0x3                        ; 080D4CAC
and   r0,r2                         ; 080D4CAE
mov   r5,r1                         ; 080D4CB0
cmp   r0,0x0                        ; 080D4CB2
bne   @@Code080D4CC8                ; 080D4CB4
mov   r0,0x20                       ; 080D4CB6
and   r0,r2                         ; 080D4CB8
cmp   r0,0x0                        ; 080D4CBA
beq   @@Code080D4CC0                ; 080D4CBC
mov   r4,0xFF                       ; 080D4CBE
@@Code080D4CC0:
ldr   r1,=0x0202B351                ; 080D4CC0
ldrb  r0,[r1]                       ; 080D4CC2
add   r0,r4,r0                      ; 080D4CC4
strb  r0,[r1]                       ; 080D4CC6
@@Code080D4CC8:
mov   r0,0x0                        ; 080D4CC8
str   r0,[r3,0x8]                   ; 080D4CCA
ldr   r2,=Data0817CBD8              ; 080D4CCC
ldr   r1,=0x4901                    ; 080D4CCE
add   r0,r5,r1                      ; 080D4CD0
ldrb  r0,[r0]                       ; 080D4CD2
lsr   r0,r0,0x3                     ; 080D4CD4
mov   r1,0x1                        ; 080D4CD6
and   r0,r1                         ; 080D4CD8
lsl   r0,r0,0x1                     ; 080D4CDA
add   r0,r0,r2                      ; 080D4CDC
mov   r2,0x0                        ; 080D4CDE
ldsh  r0,[r0,r2]                    ; 080D4CE0
add   r0,0x40                       ; 080D4CE2
str   r0,[r3,0xC]                   ; 080D4CE4
mov   r0,r3                         ; 080D4CE6
bl    Sub080D5048                   ; 080D4CE8
pop   {r4-r5}                       ; 080D4CEC
pop   {r0}                          ; 080D4CEE
bx    r0                            ; 080D4CF0
.pool                               ; 080D4CF2

Sub080D4D14:
push  {r4,lr}                       ; 080D4D14
mov   r4,r0                         ; 080D4D16
bl    Sub080D5048                   ; 080D4D18
ldr   r0,=0x03002200                ; 080D4D1C
ldr   r1,=0x4901                    ; 080D4D1E
add   r0,r0,r1                      ; 080D4D20
ldrb  r3,[r0]                       ; 080D4D22
mov   r0,r4                         ; 080D4D24
add   r0,0x42                       ; 080D4D26
ldrh  r0,[r0]                       ; 080D4D28
cmp   r0,0x0                        ; 080D4D2A
bne   @@Code080D4D36                ; 080D4D2C
ldr   r1,=0x0202B353                ; 080D4D2E
ldrb  r0,[r1]                       ; 080D4D30
add   r0,0x1                        ; 080D4D32
strb  r0,[r1]                       ; 080D4D34
@@Code080D4D36:
mov   r0,0x18                       ; 080D4D36
and   r0,r3                         ; 080D4D38
cmp   r0,0x0                        ; 080D4D3A
beq   @@Code080D4D54                ; 080D4D3C
ldr   r1,=0x0202B357                ; 080D4D3E
mov   r0,0x12                       ; 080D4D40
b     @@Code080D4D58                ; 080D4D42
.pool                               ; 080D4D44

@@Code080D4D54:
ldr   r1,=0x0202B357                ; 080D4D54
mov   r0,0x13                       ; 080D4D56
@@Code080D4D58:
strb  r0,[r1]                       ; 080D4D58
mov   r0,0x8                        ; 080D4D5A
and   r0,r3                         ; 080D4D5C
cmp   r0,0x0                        ; 080D4D5E
beq   @@Code080D4D74                ; 080D4D60
ldr   r1,=0x0202B351                ; 080D4D62
ldrb  r0,[r1]                       ; 080D4D64
sub   r0,0x1                        ; 080D4D66
b     @@Code080D4D7A                ; 080D4D68
.pool                               ; 080D4D6A

@@Code080D4D74:
ldr   r1,=0x0202B351                ; 080D4D74
ldrb  r0,[r1]                       ; 080D4D76
add   r0,0x1                        ; 080D4D78
@@Code080D4D7A:
strb  r0,[r1]                       ; 080D4D7A
ldr   r2,=Data0817CBE4              ; 080D4D7C
lsr   r0,r3,0x3                     ; 080D4D7E
mov   r1,0x1                        ; 080D4D80
and   r0,r1                         ; 080D4D82
lsl   r0,r0,0x1                     ; 080D4D84
add   r0,r0,r2                      ; 080D4D86
mov   r2,0x0                        ; 080D4D88
ldsh  r0,[r0,r2]                    ; 080D4D8A
str   r0,[r4,0xC]                   ; 080D4D8C
mov   r0,0x1F                       ; 080D4D8E
and   r3,r0                         ; 080D4D90
cmp   r3,0x0                        ; 080D4D92
bne   @@Code080D4DB2                ; 080D4D94
ldr   r1,=0x03002200                ; 080D4D96
mov   r0,r4                         ; 080D4D98
add   r0,0x5A                       ; 080D4D9A
ldr   r3,=0x47E4                    ; 080D4D9C
add   r2,r1,r3                      ; 080D4D9E
ldrh  r0,[r0]                       ; 080D4DA0
ldrh  r2,[r2]                       ; 080D4DA2
sub   r0,r0,r2                      ; 080D4DA4
ldr   r2,=0x4058                    ; 080D4DA6
add   r1,r1,r2                      ; 080D4DA8
strh  r0,[r1]                       ; 080D4DAA
mov   r0,0x96                       ; 080D4DAC
bl    PlayYISound                   ; 080D4DAE
@@Code080D4DB2:
pop   {r4}                          ; 080D4DB2
pop   {r0}                          ; 080D4DB4
bx    r0                            ; 080D4DB6
.pool                               ; 080D4DB8

Sub080D4DCC:
push  {r4,lr}                       ; 080D4DCC
mov   r4,r0                         ; 080D4DCE
bl    Sub080D5048                   ; 080D4DD0
mov   r0,0x40                       ; 080D4DD4
str   r0,[r4,0xC]                   ; 080D4DD6
ldr   r0,=0x03002200                ; 080D4DD8
ldr   r1,=0x4901                    ; 080D4DDA
add   r0,r0,r1                      ; 080D4DDC
ldrb  r1,[r0]                       ; 080D4DDE
mov   r0,0x3                        ; 080D4DE0
and   r0,r1                         ; 080D4DE2
cmp   r0,0x0                        ; 080D4DE4
bne   @@Code080D4E0C                ; 080D4DE6
ldrh  r0,[r4,0x36]                  ; 080D4DE8
cmp   r0,0x0                        ; 080D4DEA
beq   @@Code080D4E04                ; 080D4DEC
ldr   r1,=0x0202B367                ; 080D4DEE
ldrb  r0,[r1]                       ; 080D4DF0
add   r0,0x1                        ; 080D4DF2
b     @@Code080D4E0A                ; 080D4DF4
.pool                               ; 080D4DF6

@@Code080D4E04:
ldr   r1,=0x0202B367                ; 080D4E04
ldrb  r0,[r1]                       ; 080D4E06
sub   r0,0x1                        ; 080D4E08
@@Code080D4E0A:
strb  r0,[r1]                       ; 080D4E0A
@@Code080D4E0C:
mov   r3,0x6                        ; 080D4E0C
ldsh  r0,[r4,r3]                    ; 080D4E0E
cmp   r0,0x7                        ; 080D4E10
ble   @@Code080D4E44                ; 080D4E12
ldr   r1,=0x0202B353                ; 080D4E14
mov   r0,0x11                       ; 080D4E16
strb  r0,[r1]                       ; 080D4E18
mov   r1,r4                         ; 080D4E1A
add   r1,0x42                       ; 080D4E1C
mov   r0,0x20                       ; 080D4E1E
strh  r0,[r1]                       ; 080D4E20
mov   r0,r4                         ; 080D4E22
bl    Sub080BD8E4                   ; 080D4E24
ldr   r0,=0x03007240                ; 080D4E28  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080D4E2A
ldr   r0,[r4]                       ; 080D4E2C
asr   r0,r0,0x8                     ; 080D4E2E
ldr   r3,=0x2A12                    ; 080D4E30
add   r1,r2,r3                      ; 080D4E32
strh  r0,[r1]                       ; 080D4E34
ldr   r0,[r4,0x4]                   ; 080D4E36
asr   r0,r0,0x8                     ; 080D4E38
ldr   r1,=0x2A16                    ; 080D4E3A
add   r2,r2,r1                      ; 080D4E3C
strh  r0,[r2]                       ; 080D4E3E
bl    Sub080C9658                   ; 080D4E40
@@Code080D4E44:
mov   r0,r4                         ; 080D4E44
bl    Sub080D50D0                   ; 080D4E46
pop   {r4}                          ; 080D4E4A
pop   {r0}                          ; 080D4E4C
bx    r0                            ; 080D4E4E
.pool                               ; 080D4E50

Sub080D4E64:
push  {lr}                          ; 080D4E64
mov   r1,r0                         ; 080D4E66
add   r0,0x42                       ; 080D4E68
ldrh  r0,[r0]                       ; 080D4E6A
cmp   r0,0x0                        ; 080D4E6C
bne   @@Code080D4E76                ; 080D4E6E
mov   r0,r1                         ; 080D4E70
bl    ClearSpriteSlot               ; 080D4E72
@@Code080D4E76:
pop   {r0}                          ; 080D4E76
bx    r0                            ; 080D4E78
.pool                               ; 080D4E7A

Sub080D4E7C:
push  {r4-r6,lr}                    ; 080D4E7C
ldr   r5,[r0]                       ; 080D4E7E
mov   r4,0xF                        ; 080D4E80
ldr   r6,=0x03007240                ; 080D4E82  Normal gameplay IWRAM (Ptr to 0300220C)
@@Code080D4E84:
ldr   r0,=0x01D1                    ; 080D4E84
bl    SpawnSecondarySprite          ; 080D4E86
lsl   r0,r0,0x18                    ; 080D4E8A
lsr   r0,r0,0x18                    ; 080D4E8C
mov   r1,0xB0                       ; 080D4E8E
mul   r0,r1                         ; 080D4E90
ldr   r1,=0x1AF4                    ; 080D4E92
add   r0,r0,r1                      ; 080D4E94
ldr   r2,[r6]                       ; 080D4E96
add   r2,r2,r0                      ; 080D4E98
ldr   r0,=Data0817CBE8              ; 080D4E9A
add   r0,r4,r0                      ; 080D4E9C
ldrb  r0,[r0]                       ; 080D4E9E
lsl   r0,r0,0x18                    ; 080D4EA0
asr   r0,r0,0x18                    ; 080D4EA2
lsl   r0,r0,0x8                     ; 080D4EA4
add   r0,r5,r0                      ; 080D4EA6
str   r0,[r2]                       ; 080D4EA8
mov   r0,0xF8                       ; 080D4EAA
lsl   r0,r0,0xB                     ; 080D4EAC
str   r0,[r2,0x4]                   ; 080D4EAE
ldr   r1,=Data0817CBF8              ; 080D4EB0
lsl   r0,r4,0x1                     ; 080D4EB2
add   r0,r0,r1                      ; 080D4EB4
mov   r1,0x0                        ; 080D4EB6
ldsh  r0,[r0,r1]                    ; 080D4EB8
str   r0,[r2,0x8]                   ; 080D4EBA
mov   r1,r2                         ; 080D4EBC
add   r1,0x42                       ; 080D4EBE
mov   r0,0x30                       ; 080D4EC0
strh  r0,[r1]                       ; 080D4EC2
mov   r0,0x20                       ; 080D4EC4
str   r0,[r2,0x14]                  ; 080D4EC6
sub   r4,0x1                        ; 080D4EC8
cmp   r4,0x0                        ; 080D4ECA
bge   @@Code080D4E84                ; 080D4ECC
pop   {r4-r6}                       ; 080D4ECE
pop   {r0}                          ; 080D4ED0
bx    r0                            ; 080D4ED2
.pool                               ; 080D4ED4

Sub080D4EE8:
push  {lr}                          ; 080D4EE8
ldr   r2,=0x0202B353                ; 080D4EEA
mov   r1,0x5                        ; 080D4EEC
strb  r1,[r2]                       ; 080D4EEE
ldr   r3,=0x0202B360                ; 080D4EF0
add   r2,0xE                        ; 080D4EF2
mov   r1,0x0                        ; 080D4EF4
strb  r1,[r2]                       ; 080D4EF6
strb  r1,[r3]                       ; 080D4EF8
bl    Sub080D4F24                   ; 080D4EFA
pop   {r0}                          ; 080D4EFE
bx    r0                            ; 080D4F00
.pool                               ; 080D4F02

Sub080D4F0C:
ldrh  r2,[r0,0x28]                  ; 080D4F0C
ldr   r1,=0xFCFF                    ; 080D4F0E
and   r1,r2                         ; 080D4F10
mov   r3,0x80                       ; 080D4F12
lsl   r3,r3,0x2                     ; 080D4F14
mov   r2,r3                         ; 080D4F16
orr   r1,r2                         ; 080D4F18
strh  r1,[r0,0x28]                  ; 080D4F1A
bx    lr                            ; 080D4F1C
.pool                               ; 080D4F1E

Sub080D4F24:
push  {lr}                          ; 080D4F24
mov   r2,r0                         ; 080D4F26
ldr   r0,=0x03002200                ; 080D4F28
ldr   r1,=0x4088                    ; 080D4F2A
add   r0,r0,r1                      ; 080D4F2C
ldrh  r0,[r0]                       ; 080D4F2E
cmp   r0,0x3F                       ; 080D4F30
bne   @@Code080D4F48                ; 080D4F32
ldr   r0,=Data0817CA2C              ; 080D4F34
ldrh  r1,[r2,0x36]                  ; 080D4F36
lsr   r1,r1,0x1                     ; 080D4F38
b     @@Code080D4F50                ; 080D4F3A
.pool                               ; 080D4F3C

@@Code080D4F48:
ldr   r0,=Data0817CA2C              ; 080D4F48
ldrh  r1,[r2,0x36]                  ; 080D4F4A
add   r1,0x4                        ; 080D4F4C
asr   r1,r1,0x1                     ; 080D4F4E
@@Code080D4F50:
lsl   r1,r1,0x1                     ; 080D4F50
add   r1,r1,r0                      ; 080D4F52
mov   r3,0x0                        ; 080D4F54
ldsh  r0,[r1,r3]                    ; 080D4F56
str   r0,[r2,0x8]                   ; 080D4F58
pop   {r0}                          ; 080D4F5A
bx    r0                            ; 080D4F5C
.pool                               ; 080D4F5E

Sub080D4F64:
ldr   r2,=0x0202B353                ; 080D4F64
mov   r1,0x7                        ; 080D4F66
strb  r1,[r2]                       ; 080D4F68
add   r0,0x40                       ; 080D4F6A
mov   r1,0x0                        ; 080D4F6C
strh  r1,[r0]                       ; 080D4F6E
bx    lr                            ; 080D4F70
.pool                               ; 080D4F72

Sub080D4F78:
push  {r4,lr}                       ; 080D4F78
mov   r4,r0                         ; 080D4F7A
bl    Sub080D5114                   ; 080D4F7C
lsl   r0,r0,0x18                    ; 080D4F80
lsr   r0,r0,0x18                    ; 080D4F82
ldrh  r1,[r4,0x36]                  ; 080D4F84
cmp   r0,r1                         ; 080D4F86
beq   @@Code080D4F9C                ; 080D4F88
ldr   r1,=0x0202B353                ; 080D4F8A
mov   r0,0x6                        ; 080D4F8C
strb  r0,[r1]                       ; 080D4F8E
add   r1,0x1                        ; 080D4F90
mov   r0,0x10                       ; 080D4F92
strb  r0,[r1]                       ; 080D4F94
b     @@Code080D4FB6                ; 080D4F96
.pool                               ; 080D4F98

@@Code080D4F9C:
ldr   r0,=0x03007240                ; 080D4F9C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D4F9E
ldr   r1,=0x2A2E                    ; 080D4FA0
add   r0,r0,r1                      ; 080D4FA2
ldrh  r0,[r0]                       ; 080D4FA4
add   r0,0x50                       ; 080D4FA6
lsl   r0,r0,0x10                    ; 080D4FA8
lsr   r0,r0,0x10                    ; 080D4FAA
cmp   r0,0x9F                       ; 080D4FAC
bhi   @@Code080D4FB6                ; 080D4FAE
mov   r0,r4                         ; 080D4FB0
bl    Sub080D4F64                   ; 080D4FB2
@@Code080D4FB6:
pop   {r4}                          ; 080D4FB6
pop   {r0}                          ; 080D4FB8
bx    r0                            ; 080D4FBA
.pool                               ; 080D4FBC

Sub080D4FC4:
push  {lr}                          ; 080D4FC4
mov   r2,r0                         ; 080D4FC6
ldr   r0,=0x0202B363                ; 080D4FC8
ldrb  r0,[r0]                       ; 080D4FCA
cmp   r0,0x0                        ; 080D4FCC
beq   @@Code080D4FE4                ; 080D4FCE
ldr   r0,=Data0817CA46              ; 080D4FD0
ldrh  r1,[r2,0x36]                  ; 080D4FD2
add   r1,0x4                        ; 080D4FD4
asr   r1,r1,0x1                     ; 080D4FD6
b     @@Code080D4FEA                ; 080D4FD8
.pool                               ; 080D4FDA

@@Code080D4FE4:
ldr   r0,=Data0817CA46              ; 080D4FE4
ldrh  r1,[r2,0x36]                  ; 080D4FE6
lsr   r1,r1,0x1                     ; 080D4FE8
@@Code080D4FEA:
lsl   r1,r1,0x1                     ; 080D4FEA
add   r1,r1,r0                      ; 080D4FEC
mov   r3,0x0                        ; 080D4FEE
ldsh  r0,[r1,r3]                    ; 080D4FF0
str   r0,[r2,0x8]                   ; 080D4FF2
pop   {r0}                          ; 080D4FF4
bx    r0                            ; 080D4FF6
.pool                               ; 080D4FF8

Sub080D4FFC:
ldr   r2,=0x0202B353                ; 080D4FFC
mov   r1,0xD                        ; 080D4FFE
strb  r1,[r2]                       ; 080D5000
add   r0,0x40                       ; 080D5002
mov   r1,0x0                        ; 080D5004
strh  r1,[r0]                       ; 080D5006
bx    lr                            ; 080D5008
.pool                               ; 080D500A

Sub080D5010:
ldr   r2,=0x0202B367                ; 080D5010
mov   r1,0x0                        ; 080D5012
strb  r1,[r2]                       ; 080D5014
add   r0,0x40                       ; 080D5016
mov   r1,0x0                        ; 080D5018
strh  r1,[r0]                       ; 080D501A
ldr   r1,=0x0202B353                ; 080D501C
mov   r0,0xC                        ; 080D501E
strb  r0,[r1]                       ; 080D5020
bx    lr                            ; 080D5022
.pool                               ; 080D5024

Sub080D502C:
push  {lr}                          ; 080D502C
mov   r1,r0                         ; 080D502E
ldr   r0,[r1,0x8]                   ; 080D5030
cmp   r0,0x0                        ; 080D5032
beq   @@Code080D5042                ; 080D5034
cmp   r0,0x0                        ; 080D5036
bge   @@Code080D503E                ; 080D5038
add   r0,0x10                       ; 080D503A
b     @@Code080D5040                ; 080D503C
@@Code080D503E:
sub   r0,0x10                       ; 080D503E
@@Code080D5040:
str   r0,[r1,0x8]                   ; 080D5040
@@Code080D5042:
pop   {r0}                          ; 080D5042
bx    r0                            ; 080D5044
.pool                               ; 080D5046

Sub080D5048:
push  {r4-r7,lr}                    ; 080D5048
mov   r7,r0                         ; 080D504A
ldr   r0,=0x03002200                ; 080D504C
ldr   r1,=0x4901                    ; 080D504E
add   r0,r0,r1                      ; 080D5050
ldrb  r1,[r0]                       ; 080D5052
mov   r0,0x3                        ; 080D5054
and   r0,r1                         ; 080D5056
cmp   r0,0x0                        ; 080D5058
bne   @@Code080D50AC                ; 080D505A
ldr   r6,=0x03007240                ; 080D505C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                       ; 080D505E
ldr   r1,=0x29CC                    ; 080D5060
add   r0,r0,r1                      ; 080D5062
ldrh  r0,[r0]                       ; 080D5064
mov   r4,0x3F                       ; 080D5066
and   r4,r0                         ; 080D5068
sub   r4,0x20                       ; 080D506A
lsl   r4,r4,0x10                    ; 080D506C
asr   r4,r4,0x10                    ; 080D506E
lsl   r5,r4,0x12                    ; 080D5070
lsr   r5,r5,0x10                    ; 080D5072
ldr   r0,=0x01D1                    ; 080D5074
bl    SpawnSecondarySprite          ; 080D5076
lsl   r0,r0,0x18                    ; 080D507A
lsr   r0,r0,0x18                    ; 080D507C
mov   r1,0xB0                       ; 080D507E
mul   r0,r1                         ; 080D5080
ldr   r1,=0x1AF4                    ; 080D5082
add   r0,r0,r1                      ; 080D5084
ldr   r1,[r6]                       ; 080D5086
add   r1,r1,r0                      ; 080D5088
lsl   r4,r4,0x8                     ; 080D508A
ldr   r0,[r7]                       ; 080D508C
add   r0,r0,r4                      ; 080D508E
str   r0,[r1]                       ; 080D5090
mov   r0,0xF8                       ; 080D5092
lsl   r0,r0,0xB                     ; 080D5094
str   r0,[r1,0x4]                   ; 080D5096
lsl   r5,r5,0x10                    ; 080D5098
asr   r5,r5,0x10                    ; 080D509A
str   r5,[r1,0x8]                   ; 080D509C
mov   r2,r1                         ; 080D509E
add   r2,0x42                       ; 080D50A0
mov   r0,0xC                        ; 080D50A2
strh  r0,[r2]                       ; 080D50A4
add   r1,0x6A                       ; 080D50A6
mov   r0,0x2                        ; 080D50A8
strh  r0,[r1]                       ; 080D50AA
@@Code080D50AC:
mov   r0,r7                         ; 080D50AC
bl    Sub080D50D0                   ; 080D50AE
pop   {r4-r7}                       ; 080D50B2
pop   {r0}                          ; 080D50B4
bx    r0                            ; 080D50B6
.pool                               ; 080D50B8

Sub080D50D0:
push  {lr}                          ; 080D50D0
mov   r3,r0                         ; 080D50D2
ldr   r2,=0x03002200                ; 080D50D4
ldr   r1,=0x4901                    ; 080D50D6
add   r0,r2,r1                      ; 080D50D8
ldrb  r1,[r0]                       ; 080D50DA
mov   r0,0x1F                       ; 080D50DC
and   r0,r1                         ; 080D50DE
cmp   r0,0x0                        ; 080D50E0
bne   @@Code080D50FE                ; 080D50E2
mov   r0,r3                         ; 080D50E4
add   r0,0x5A                       ; 080D50E6
ldr   r3,=0x47E4                    ; 080D50E8
add   r1,r2,r3                      ; 080D50EA
ldrh  r0,[r0]                       ; 080D50EC
ldrh  r1,[r1]                       ; 080D50EE
sub   r0,r0,r1                      ; 080D50F0
ldr   r3,=0x4058                    ; 080D50F2
add   r1,r2,r3                      ; 080D50F4
strh  r0,[r1]                       ; 080D50F6
mov   r0,0x96                       ; 080D50F8
bl    PlayYISound                   ; 080D50FA
@@Code080D50FE:
pop   {r0}                          ; 080D50FE
bx    r0                            ; 080D5100
.pool                               ; 080D5102

Sub080D5114:
push  {lr}                          ; 080D5114
ldr   r1,=0x03007240                ; 080D5116  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D5118
ldr   r1,=0x03006D80                ; 080D511A
ldr   r0,[r0]                       ; 080D511C
ldr   r1,[r1]                       ; 080D511E
sub   r0,r0,r1                      ; 080D5120
asr   r0,r0,0x8                     ; 080D5122
ldr   r1,=0x2A2E                    ; 080D5124
add   r2,r2,r1                      ; 080D5126
strh  r0,[r2]                       ; 080D5128
lsl   r0,r0,0x10                    ; 080D512A
cmp   r0,0x0                        ; 080D512C
blt   @@Code080D5140                ; 080D512E
mov   r0,0x0                        ; 080D5130
b     @@Code080D5142                ; 080D5132
.pool                               ; 080D5134

@@Code080D5140:
mov   r0,0x2                        ; 080D5140
@@Code080D5142:
pop   {r1}                          ; 080D5142
bx    r1                            ; 080D5144
.pool                               ; 080D5146
