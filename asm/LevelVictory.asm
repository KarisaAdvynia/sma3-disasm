Sub080E362C:
push  {lr}                      ; 080E362C
mov   r2,r0                     ; 080E362E
ldrh  r0,[r2,0x1E]              ; 080E3630
add   r0,0x8                    ; 080E3632
strh  r0,[r2,0x1E]              ; 080E3634
lsl   r0,r0,0x10                ; 080E3636
lsr   r0,r0,0x10                ; 080E3638
cmp   r0,0xFF                   ; 080E363A
bls   @@Code080E3660            ; 080E363C
mov   r0,0x80                   ; 080E363E
lsl   r0,r0,0x1                 ; 080E3640
strh  r0,[r2,0x1E]              ; 080E3642
ldrh  r0,[r2,0x22]              ; 080E3644
add   r0,0x1                    ; 080E3646
strh  r0,[r2,0x22]              ; 080E3648
lsl   r0,r0,0x10                ; 080E364A
lsr   r0,r0,0x10                ; 080E364C
cmp   r0,0x5F                   ; 080E364E
bls   @@Code080E3660            ; 080E3650
mov   r0,0x60                   ; 080E3652
strh  r0,[r2,0x22]              ; 080E3654
mov   r1,r2                     ; 080E3656
add   r1,0x29                   ; 080E3658
mov   r0,0x1                    ; 080E365A
strb  r0,[r1]                   ; 080E365C
b     @@Code080E367C            ; 080E365E
@@Code080E3660:
ldrh  r0,[r2,0x1C]              ; 080E3660
sub   r0,0x1                    ; 080E3662
strh  r0,[r2,0x1C]              ; 080E3664
lsl   r0,r0,0x10                ; 080E3666
lsr   r0,r0,0x10                ; 080E3668
cmp   r0,0x80                   ; 080E366A
bhi   @@Code080E3672            ; 080E366C
mov   r0,0x80                   ; 080E366E
strh  r0,[r2,0x1C]              ; 080E3670
@@Code080E3672:
ldr   r1,=Data08193758          ; 080E3672
mov   r0,r2                     ; 080E3674
mov   r2,0x1                    ; 080E3676
bl    Sub080E3684               ; 080E3678
@@Code080E367C:
pop   {r0}                      ; 080E367C
bx    r0                        ; 080E367E
.pool                           ; 080E3680

Sub080E3684:
push  {r4-r7,lr}                ; 080E3684
mov   r7,r9                     ; 080E3686
mov   r6,r8                     ; 080E3688
push  {r6-r7}                   ; 080E368A
mov   r7,r0                     ; 080E368C
mov   r4,r1                     ; 080E368E
ldrh  r0,[r7,0x22]              ; 080E3690
cmp   r0,0x5F                   ; 080E3692
bls   @@Code080E3698            ; 080E3694
b     @@Code080E37B0            ; 080E3696
@@Code080E3698:
ldr   r6,=0x030021B0            ; 080E3698
ldr   r0,=0x03002200            ; 080E369A
mov   r12,r0                    ; 080E369C
ldr   r1,=0x47D0                ; 080E369E
add   r1,r12                    ; 080E36A0
mov   r8,r1                     ; 080E36A2
ldrh  r1,[r1]                   ; 080E36A4
lsl   r1,r1,0x3                 ; 080E36A6
mov   r2,0xE0                   ; 080E36A8
lsl   r2,r2,0x6                 ; 080E36AA
add   r2,r12                    ; 080E36AC
mov   r9,r2                     ; 080E36AE
add   r1,r9                     ; 080E36B0
str   r1,[r6]                   ; 080E36B2
ldrh  r0,[r4]                   ; 080E36B4
ldrh  r2,[r7,0x1C]              ; 080E36B6
add   r0,r0,r2                  ; 080E36B8
strb  r0,[r1]                   ; 080E36BA
add   r4,0x2                    ; 080E36BC
ldr   r3,[r6]                   ; 080E36BE
ldrh  r1,[r4]                   ; 080E36C0
lsl   r1,r1,0x6                 ; 080E36C2
ldrb  r2,[r3,0x1]               ; 080E36C4
mov   r5,0x3F                   ; 080E36C6
mov   r0,r5                     ; 080E36C8
and   r0,r2                     ; 080E36CA
orr   r0,r1                     ; 080E36CC
strb  r0,[r3,0x1]               ; 080E36CE
add   r4,0x2                    ; 080E36D0
ldrh  r0,[r4]                   ; 080E36D2
ldrh  r1,[r7,0x1A]              ; 080E36D4
add   r0,r0,r1                  ; 080E36D6
lsl   r0,r0,0x10                ; 080E36D8
lsr   r2,r0,0x10                ; 080E36DA
cmp   r2,0xEF                   ; 080E36DC
bls   @@Code080E36E2            ; 080E36DE
mov   r2,0xF0                   ; 080E36E0
@@Code080E36E2:
ldr   r3,[r6]                   ; 080E36E2
ldr   r1,=0x01FF                ; 080E36E4
mov   r0,r1                     ; 080E36E6
and   r2,r0                     ; 080E36E8
ldrh  r1,[r3,0x2]               ; 080E36EA
ldr   r0,=0xFFFFFE00            ; 080E36EC
and   r0,r1                     ; 080E36EE
orr   r0,r2                     ; 080E36F0
strh  r0,[r3,0x2]               ; 080E36F2
add   r4,0x2                    ; 080E36F4
ldrh  r1,[r4]                   ; 080E36F6
lsl   r1,r1,0x6                 ; 080E36F8
ldrb  r2,[r3,0x3]               ; 080E36FA
mov   r0,r5                     ; 080E36FC
and   r0,r2                     ; 080E36FE
orr   r0,r1                     ; 080E3700
strb  r0,[r3,0x3]               ; 080E3702
add   r4,0x2                    ; 080E3704
ldr   r3,[r6]                   ; 080E3706
mov   r2,0x80                   ; 080E3708
lsl   r2,r2,0x2                 ; 080E370A
mov   r1,r2                     ; 080E370C
ldrh  r0,[r4]                   ; 080E370E
add   r1,r1,r0                  ; 080E3710
ldr   r2,=0x03FF                ; 080E3712
mov   r0,r2                     ; 080E3714
and   r1,r0                     ; 080E3716
ldrh  r2,[r3,0x4]               ; 080E3718
ldr   r0,=0xFFFFFC00            ; 080E371A
and   r0,r2                     ; 080E371C
orr   r0,r1                     ; 080E371E
strh  r0,[r3,0x4]               ; 080E3720
ldrb  r1,[r4,0x2]               ; 080E3722
lsl   r1,r1,0x4                 ; 080E3724
ldrb  r2,[r3,0x5]               ; 080E3726
mov   r0,0xF                    ; 080E3728
and   r0,r2                     ; 080E372A
orr   r0,r1                     ; 080E372C
strb  r0,[r3,0x5]               ; 080E372E
ldr   r2,[r6]                   ; 080E3730
ldrb  r1,[r2,0x1]               ; 080E3732
mov   r0,0x4                    ; 080E3734
neg   r0,r0                     ; 080E3736
and   r0,r1                     ; 080E3738
mov   r1,0x1                    ; 080E373A
orr   r0,r1                     ; 080E373C
strb  r0,[r2,0x1]               ; 080E373E
ldr   r3,[r6]                   ; 080E3740
ldr   r5,=0x47D2                ; 080E3742
add   r5,r12                    ; 080E3744
ldrh  r1,[r5]                   ; 080E3746
mov   r0,0x7                    ; 080E3748
and   r1,r0                     ; 080E374A
lsl   r1,r1,0x1                 ; 080E374C
ldrb  r2,[r3,0x3]               ; 080E374E
mov   r0,0xF                    ; 080E3750
neg   r0,r0                     ; 080E3752
and   r0,r2                     ; 080E3754
orr   r0,r1                     ; 080E3756
strb  r0,[r3,0x3]               ; 080E3758
ldrh  r0,[r5]                   ; 080E375A
lsl   r0,r0,0x5                 ; 080E375C
add   r0,r9                     ; 080E375E
str   r0,[r6]                   ; 080E3760
ldrh  r1,[r7,0x1E]              ; 080E3762
mov   r0,0x80                   ; 080E3764
lsl   r0,r0,0x9                 ; 080E3766
bl    Sub0812FB74               ; 080E3768
mov   r1,r0                     ; 080E376C
ldr   r0,=0x030021A8            ; 080E376E
strh  r1,[r0]                   ; 080E3770
strh  r1,[r0,0x2]               ; 080E3772
mov   r1,0x0                    ; 080E3774
strh  r1,[r0,0x4]               ; 080E3776
ldr   r4,=0x03007030            ; 080E3778
mov   r1,r4                     ; 080E377A
mov   r2,0x1                    ; 080E377C
mov   r3,0x2                    ; 080E377E
bl    swi_0F                    ; 080E3780
ldr   r0,[r6]                   ; 080E3784
ldrh  r1,[r4]                   ; 080E3786
strh  r1,[r0,0x6]               ; 080E3788
add   r0,0x8                    ; 080E378A
str   r0,[r6]                   ; 080E378C
ldrh  r1,[r4,0x2]               ; 080E378E
strh  r1,[r0,0x6]               ; 080E3790
add   r0,0x8                    ; 080E3792
str   r0,[r6]                   ; 080E3794
ldrh  r1,[r4,0x4]               ; 080E3796
strh  r1,[r0,0x6]               ; 080E3798
add   r0,0x8                    ; 080E379A
str   r0,[r6]                   ; 080E379C
ldrh  r1,[r4,0x6]               ; 080E379E
strh  r1,[r0,0x6]               ; 080E37A0
mov   r1,r8                     ; 080E37A2
ldrh  r0,[r1]                   ; 080E37A4
add   r0,0x1                    ; 080E37A6
strh  r0,[r1]                   ; 080E37A8
ldrh  r0,[r5]                   ; 080E37AA
add   r0,0x1                    ; 080E37AC
strh  r0,[r5]                   ; 080E37AE
@@Code080E37B0:
pop   {r3-r4}                   ; 080E37B0
mov   r8,r3                     ; 080E37B2
mov   r9,r4                     ; 080E37B4
pop   {r4-r7}                   ; 080E37B6
pop   {r0}                      ; 080E37B8
bx    r0                        ; 080E37BA
.pool                           ; 080E37BC

Sub080E37E4:
push  {lr}                      ; 080E37E4
mov   r2,r0                     ; 080E37E6
ldrh  r0,[r2,0x1E]              ; 080E37E8
add   r0,0x8                    ; 080E37EA
strh  r0,[r2,0x1E]              ; 080E37EC
lsl   r0,r0,0x10                ; 080E37EE
lsr   r0,r0,0x10                ; 080E37F0
cmp   r0,0xFF                   ; 080E37F2
bls   @@Code080E3818            ; 080E37F4
mov   r0,0x80                   ; 080E37F6
lsl   r0,r0,0x1                 ; 080E37F8
strh  r0,[r2,0x1E]              ; 080E37FA
ldrh  r0,[r2,0x22]              ; 080E37FC
add   r0,0x1                    ; 080E37FE
strh  r0,[r2,0x22]              ; 080E3800
lsl   r0,r0,0x10                ; 080E3802
lsr   r0,r0,0x10                ; 080E3804
cmp   r0,0x5F                   ; 080E3806
bls   @@Code080E3818            ; 080E3808
mov   r0,0x60                   ; 080E380A
strh  r0,[r2,0x22]              ; 080E380C
mov   r1,r2                     ; 080E380E
add   r1,0x29                   ; 080E3810
mov   r0,0x1                    ; 080E3812
strb  r0,[r1]                   ; 080E3814
b     @@Code080E3834            ; 080E3816
@@Code080E3818:
ldrh  r0,[r2,0x1C]              ; 080E3818
sub   r0,0x1                    ; 080E381A
strh  r0,[r2,0x1C]              ; 080E381C
lsl   r0,r0,0x10                ; 080E381E
lsr   r0,r0,0x10                ; 080E3820
cmp   r0,0x80                   ; 080E3822
bhi   @@Code080E382A            ; 080E3824
mov   r0,0x80                   ; 080E3826
strh  r0,[r2,0x1C]              ; 080E3828
@@Code080E382A:
ldr   r1,=Data08193766          ; 080E382A
mov   r0,r2                     ; 080E382C
mov   r2,0x1                    ; 080E382E
bl    Sub080E3684               ; 080E3830
@@Code080E3834:
pop   {r0}                      ; 080E3834
bx    r0                        ; 080E3836
.pool                           ; 080E3838

Sub080E383C:
add   r0,0x29                   ; 080E383C
mov   r1,0x1                    ; 080E383E
strb  r1,[r0]                   ; 080E3840
bx    lr                        ; 080E3842

Sub080E3844:
push  {r4,lr}                   ; 080E3844
mov   r3,r0                     ; 080E3846
ldr   r1,=Data081937EE          ; 080E3848
ldr   r0,=Data081938A2          ; 080E384A
ldrb  r2,[r0]                   ; 080E384C
ldrh  r0,[r3,0x16]              ; 080E384E
sub   r0,0x6                    ; 080E3850
strh  r0,[r3,0x16]              ; 080E3852
lsl   r0,r0,0x10                ; 080E3854
lsr   r0,r0,0x10                ; 080E3856
cmp   r0,0x77                   ; 080E3858
bhi   @@Code080E386C            ; 080E385A
mov   r0,0x78                   ; 080E385C
strh  r0,[r3,0x16]              ; 080E385E
mov   r0,0x29                   ; 080E3860
add   r0,r0,r3                  ; 080E3862
mov   r12,r0                    ; 080E3864
mov   r0,0x1                    ; 080E3866
mov   r4,r12                    ; 080E3868
strb  r0,[r4]                   ; 080E386A
@@Code080E386C:
mov   r0,r3                     ; 080E386C
bl    Sub080E3BDC               ; 080E386E
pop   {r4}                      ; 080E3872
pop   {r0}                      ; 080E3874
bx    r0                        ; 080E3876
.pool                           ; 080E3878

Sub080E3880:
push  {r4,lr}                   ; 080E3880
mov   r3,r0                     ; 080E3882
ldr   r1,=Data081938A4          ; 080E3884
ldr   r0,=Data08193958          ; 080E3886
ldrb  r2,[r0]                   ; 080E3888
ldrh  r0,[r3,0x16]              ; 080E388A
sub   r0,0x6                    ; 080E388C
strh  r0,[r3,0x16]              ; 080E388E
lsl   r0,r0,0x10                ; 080E3890
lsr   r0,r0,0x10                ; 080E3892
cmp   r0,0x77                   ; 080E3894
bhi   @@Code080E38A8            ; 080E3896
mov   r0,0x78                   ; 080E3898
strh  r0,[r3,0x16]              ; 080E389A
mov   r0,0x29                   ; 080E389C
add   r0,r0,r3                  ; 080E389E
mov   r12,r0                    ; 080E38A0
mov   r0,0x1                    ; 080E38A2
mov   r4,r12                    ; 080E38A4
strb  r0,[r4]                   ; 080E38A6
@@Code080E38A8:
mov   r0,r3                     ; 080E38A8
bl    Sub080E3BDC               ; 080E38AA
pop   {r4}                      ; 080E38AE
pop   {r0}                      ; 080E38B0
bx    r0                        ; 080E38B2
.pool                           ; 080E38B4

Sub080E38BC:
push  {r4,lr}                   ; 080E38BC
mov   r3,r0                     ; 080E38BE
ldr   r1,=Data0819395A          ; 080E38C0
ldr   r0,=Data08193A0E          ; 080E38C2
ldrb  r2,[r0]                   ; 080E38C4
ldrh  r0,[r3,0x16]              ; 080E38C6
sub   r0,0x6                    ; 080E38C8
strh  r0,[r3,0x16]              ; 080E38CA
lsl   r0,r0,0x10                ; 080E38CC
lsr   r0,r0,0x10                ; 080E38CE
cmp   r0,0x77                   ; 080E38D0
bhi   @@Code080E38E4            ; 080E38D2
mov   r0,0x78                   ; 080E38D4
strh  r0,[r3,0x16]              ; 080E38D6
mov   r0,0x29                   ; 080E38D8
add   r0,r0,r3                  ; 080E38DA
mov   r12,r0                    ; 080E38DC
mov   r0,0x1                    ; 080E38DE
mov   r4,r12                    ; 080E38E0
strb  r0,[r4]                   ; 080E38E2
@@Code080E38E4:
mov   r0,r3                     ; 080E38E4
bl    Sub080E3BDC               ; 080E38E6
pop   {r4}                      ; 080E38EA
pop   {r0}                      ; 080E38EC
bx    r0                        ; 080E38EE
.pool                           ; 080E38F0

Sub080E38F8:
push  {r4,lr}                   ; 080E38F8
mov   r3,r0                     ; 080E38FA
ldr   r1,=Data08193A10          ; 080E38FC
ldr   r0,=Data08193AC4          ; 080E38FE
ldrb  r2,[r0]                   ; 080E3900
ldrh  r0,[r3,0x16]              ; 080E3902
sub   r0,0x6                    ; 080E3904
strh  r0,[r3,0x16]              ; 080E3906
lsl   r0,r0,0x10                ; 080E3908
lsr   r0,r0,0x10                ; 080E390A
cmp   r0,0x77                   ; 080E390C
bhi   @@Code080E3920            ; 080E390E
mov   r0,0x78                   ; 080E3910
strh  r0,[r3,0x16]              ; 080E3912
mov   r0,0x29                   ; 080E3914
add   r0,r0,r3                  ; 080E3916
mov   r12,r0                    ; 080E3918
mov   r0,0x1                    ; 080E391A
mov   r4,r12                    ; 080E391C
strb  r0,[r4]                   ; 080E391E
@@Code080E3920:
mov   r0,r3                     ; 080E3920
bl    Sub080E3BDC               ; 080E3922
pop   {r4}                      ; 080E3926
pop   {r0}                      ; 080E3928
bx    r0                        ; 080E392A
.pool                           ; 080E392C

Sub080E3934:
push  {r4,lr}                   ; 080E3934
mov   r3,r0                     ; 080E3936
ldr   r1,=Data08193AC6          ; 080E3938
ldr   r0,=Data08193B7A          ; 080E393A
ldrb  r2,[r0]                   ; 080E393C
ldrh  r0,[r3,0x16]              ; 080E393E
sub   r0,0x6                    ; 080E3940
strh  r0,[r3,0x16]              ; 080E3942
lsl   r0,r0,0x10                ; 080E3944
lsr   r0,r0,0x10                ; 080E3946
cmp   r0,0x77                   ; 080E3948
bhi   @@Code080E395C            ; 080E394A
mov   r0,0x78                   ; 080E394C
strh  r0,[r3,0x16]              ; 080E394E
mov   r0,0x29                   ; 080E3950
add   r0,r0,r3                  ; 080E3952
mov   r12,r0                    ; 080E3954
mov   r0,0x1                    ; 080E3956
mov   r4,r12                    ; 080E3958
strb  r0,[r4]                   ; 080E395A
@@Code080E395C:
mov   r0,r3                     ; 080E395C
bl    Sub080E3BDC               ; 080E395E
pop   {r4}                      ; 080E3962
pop   {r0}                      ; 080E3964
bx    r0                        ; 080E3966
.pool                           ; 080E3968

Sub080E3970:
push  {r4,lr}                   ; 080E3970
mov   r3,r0                     ; 080E3972
ldr   r1,=Data08193B7C          ; 080E3974
ldr   r0,=Data08193C30          ; 080E3976
ldrb  r2,[r0]                   ; 080E3978
ldrh  r0,[r3,0x16]              ; 080E397A
sub   r0,0x6                    ; 080E397C
strh  r0,[r3,0x16]              ; 080E397E
lsl   r0,r0,0x10                ; 080E3980
lsr   r0,r0,0x10                ; 080E3982
cmp   r0,0x77                   ; 080E3984
bhi   @@Code080E3998            ; 080E3986
mov   r0,0x78                   ; 080E3988
strh  r0,[r3,0x16]              ; 080E398A
mov   r0,0x29                   ; 080E398C
add   r0,r0,r3                  ; 080E398E
mov   r12,r0                    ; 080E3990
mov   r0,0x1                    ; 080E3992
mov   r4,r12                    ; 080E3994
strb  r0,[r4]                   ; 080E3996
@@Code080E3998:
mov   r0,r3                     ; 080E3998
bl    Sub080E3BDC               ; 080E399A
pop   {r4}                      ; 080E399E
pop   {r0}                      ; 080E39A0
bx    r0                        ; 080E39A2
.pool                           ; 080E39A4

Sub080E39AC:
push  {lr}                      ; 080E39AC
ldr   r1,=0x03002200            ; 080E39AE
ldr   r2,=0x413C                ; 080E39B0
add   r1,r1,r2                  ; 080E39B2
ldrh  r1,[r1]                   ; 080E39B4
lsr   r1,r1,0x1                 ; 080E39B6
ldr   r2,=CodePtrs08193C34      ; 080E39B8
lsl   r1,r1,0x2                 ; 080E39BA
add   r1,r1,r2                  ; 080E39BC
ldr   r1,[r1]                   ; 080E39BE
bl    Sub_bx_r1                 ; 080E39C0  bx r1
pop   {r0}                      ; 080E39C4
bx    r0                        ; 080E39C6
.pool                           ; 080E39C8

Sub080E39D4:
push  {r4,lr}                   ; 080E39D4
mov   r3,r0                     ; 080E39D6
ldr   r1,=Data08193C4C          ; 080E39D8
ldr   r0,=Data08193D00          ; 080E39DA
ldrb  r2,[r0]                   ; 080E39DC
ldrh  r0,[r3,0x16]              ; 080E39DE
sub   r0,0x6                    ; 080E39E0
strh  r0,[r3,0x16]              ; 080E39E2
lsl   r0,r0,0x10                ; 080E39E4
lsr   r0,r0,0x10                ; 080E39E6
cmp   r0,0x77                   ; 080E39E8
bhi   @@Code080E39FC            ; 080E39EA
mov   r0,0x78                   ; 080E39EC
strh  r0,[r3,0x16]              ; 080E39EE
mov   r0,0x29                   ; 080E39F0
add   r0,r0,r3                  ; 080E39F2
mov   r12,r0                    ; 080E39F4
mov   r0,0x1                    ; 080E39F6
mov   r4,r12                    ; 080E39F8
strb  r0,[r4]                   ; 080E39FA
@@Code080E39FC:
mov   r0,r3                     ; 080E39FC
bl    Sub080E3BDC               ; 080E39FE
pop   {r4}                      ; 080E3A02
pop   {r0}                      ; 080E3A04
bx    r0                        ; 080E3A06
.pool                           ; 080E3A08

Sub080E3A10:
push  {r4,lr}                   ; 080E3A10
mov   r3,r0                     ; 080E3A12
ldr   r1,=Data08193D02          ; 080E3A14
ldr   r0,=Data08193DB6          ; 080E3A16
ldrb  r2,[r0]                   ; 080E3A18
ldrh  r0,[r3,0x16]              ; 080E3A1A
sub   r0,0x6                    ; 080E3A1C
strh  r0,[r3,0x16]              ; 080E3A1E
lsl   r0,r0,0x10                ; 080E3A20
lsr   r0,r0,0x10                ; 080E3A22
cmp   r0,0x77                   ; 080E3A24
bhi   @@Code080E3A38            ; 080E3A26
mov   r0,0x78                   ; 080E3A28
strh  r0,[r3,0x16]              ; 080E3A2A
mov   r0,0x29                   ; 080E3A2C
add   r0,r0,r3                  ; 080E3A2E
mov   r12,r0                    ; 080E3A30
mov   r0,0x1                    ; 080E3A32
mov   r4,r12                    ; 080E3A34
strb  r0,[r4]                   ; 080E3A36
@@Code080E3A38:
mov   r0,r3                     ; 080E3A38
bl    Sub080E3BDC               ; 080E3A3A
pop   {r4}                      ; 080E3A3E
pop   {r0}                      ; 080E3A40
bx    r0                        ; 080E3A42
.pool                           ; 080E3A44

Sub080E3A4C:
push  {r4,lr}                   ; 080E3A4C
mov   r3,r0                     ; 080E3A4E
ldr   r1,=Data08193DB8          ; 080E3A50
ldr   r0,=Data08193E6C          ; 080E3A52
ldrb  r2,[r0]                   ; 080E3A54
ldrh  r0,[r3,0x16]              ; 080E3A56
sub   r0,0x6                    ; 080E3A58
strh  r0,[r3,0x16]              ; 080E3A5A
lsl   r0,r0,0x10                ; 080E3A5C
lsr   r0,r0,0x10                ; 080E3A5E
cmp   r0,0x77                   ; 080E3A60
bhi   @@Code080E3A74            ; 080E3A62
mov   r0,0x78                   ; 080E3A64
strh  r0,[r3,0x16]              ; 080E3A66
mov   r0,0x29                   ; 080E3A68
add   r0,r0,r3                  ; 080E3A6A
mov   r12,r0                    ; 080E3A6C
mov   r0,0x1                    ; 080E3A6E
mov   r4,r12                    ; 080E3A70
strb  r0,[r4]                   ; 080E3A72
@@Code080E3A74:
mov   r0,r3                     ; 080E3A74
bl    Sub080E3BDC               ; 080E3A76
pop   {r4}                      ; 080E3A7A
pop   {r0}                      ; 080E3A7C
bx    r0                        ; 080E3A7E
.pool                           ; 080E3A80

Sub080E3A88:
push  {r4,lr}                   ; 080E3A88
mov   r3,r0                     ; 080E3A8A
ldr   r1,=Data08193E6E          ; 080E3A8C
ldr   r0,=Data08193F22          ; 080E3A8E
ldrb  r2,[r0]                   ; 080E3A90
ldrh  r0,[r3,0x16]              ; 080E3A92
sub   r0,0x6                    ; 080E3A94
strh  r0,[r3,0x16]              ; 080E3A96
lsl   r0,r0,0x10                ; 080E3A98
lsr   r0,r0,0x10                ; 080E3A9A
cmp   r0,0x77                   ; 080E3A9C
bhi   @@Code080E3AB0            ; 080E3A9E
mov   r0,0x78                   ; 080E3AA0
strh  r0,[r3,0x16]              ; 080E3AA2
mov   r0,0x29                   ; 080E3AA4
add   r0,r0,r3                  ; 080E3AA6
mov   r12,r0                    ; 080E3AA8
mov   r0,0x1                    ; 080E3AAA
mov   r4,r12                    ; 080E3AAC
strb  r0,[r4]                   ; 080E3AAE
@@Code080E3AB0:
mov   r0,r3                     ; 080E3AB0
bl    Sub080E3BDC               ; 080E3AB2
pop   {r4}                      ; 080E3AB6
pop   {r0}                      ; 080E3AB8
bx    r0                        ; 080E3ABA
.pool                           ; 080E3ABC

Sub080E3AC4:
push  {r4,lr}                   ; 080E3AC4
mov   r3,r0                     ; 080E3AC6
ldr   r1,=Data08193F24          ; 080E3AC8
ldr   r0,=Data08193FD8          ; 080E3ACA
ldrb  r2,[r0]                   ; 080E3ACC
ldrh  r0,[r3,0x16]              ; 080E3ACE
sub   r0,0x6                    ; 080E3AD0
strh  r0,[r3,0x16]              ; 080E3AD2
lsl   r0,r0,0x10                ; 080E3AD4
lsr   r0,r0,0x10                ; 080E3AD6
cmp   r0,0x77                   ; 080E3AD8
bhi   @@Code080E3AEC            ; 080E3ADA
mov   r0,0x78                   ; 080E3ADC
strh  r0,[r3,0x16]              ; 080E3ADE
mov   r0,0x29                   ; 080E3AE0
add   r0,r0,r3                  ; 080E3AE2
mov   r12,r0                    ; 080E3AE4
mov   r0,0x1                    ; 080E3AE6
mov   r4,r12                    ; 080E3AE8
strb  r0,[r4]                   ; 080E3AEA
@@Code080E3AEC:
mov   r0,r3                     ; 080E3AEC
bl    Sub080E3BDC               ; 080E3AEE
pop   {r4}                      ; 080E3AF2
pop   {r0}                      ; 080E3AF4
bx    r0                        ; 080E3AF6
.pool                           ; 080E3AF8

Sub080E3B00:
push  {r4,lr}                   ; 080E3B00
mov   r3,r0                     ; 080E3B02
ldr   r1,=Data08193FDA          ; 080E3B04
ldr   r0,=Data0819408E          ; 080E3B06
ldrb  r2,[r0]                   ; 080E3B08
ldrh  r0,[r3,0x16]              ; 080E3B0A
sub   r0,0x6                    ; 080E3B0C
strh  r0,[r3,0x16]              ; 080E3B0E
lsl   r0,r0,0x10                ; 080E3B10
lsr   r0,r0,0x10                ; 080E3B12
cmp   r0,0x77                   ; 080E3B14
bhi   @@Code080E3B28            ; 080E3B16
mov   r0,0x78                   ; 080E3B18
strh  r0,[r3,0x16]              ; 080E3B1A
mov   r0,0x29                   ; 080E3B1C
add   r0,r0,r3                  ; 080E3B1E
mov   r12,r0                    ; 080E3B20
mov   r0,0x1                    ; 080E3B22
mov   r4,r12                    ; 080E3B24
strb  r0,[r4]                   ; 080E3B26
@@Code080E3B28:
mov   r0,r3                     ; 080E3B28
bl    Sub080E3BDC               ; 080E3B2A
pop   {r4}                      ; 080E3B2E
pop   {r0}                      ; 080E3B30
bx    r0                        ; 080E3B32
.pool                           ; 080E3B34

Sub080E3B3C:
push  {lr}                      ; 080E3B3C
ldr   r1,=0x03002200            ; 080E3B3E
ldr   r2,=0x413C                ; 080E3B40
add   r1,r1,r2                  ; 080E3B42
ldrh  r1,[r1]                   ; 080E3B44
lsr   r1,r1,0x1                 ; 080E3B46
ldr   r2,=CodePtrs08194090      ; 080E3B48
lsl   r1,r1,0x2                 ; 080E3B4A
add   r1,r1,r2                  ; 080E3B4C
ldr   r1,[r1]                   ; 080E3B4E
bl    Sub_bx_r1                 ; 080E3B50  bx r1
pop   {r0}                      ; 080E3B54
bx    r0                        ; 080E3B56
.pool                           ; 080E3B58

Sub080E3B64:
push  {r4,lr}                   ; 080E3B64
mov   r3,r0                     ; 080E3B66
ldr   r1,=Data081940A8          ; 080E3B68
ldr   r0,=Data081940FC          ; 080E3B6A
ldrb  r2,[r0]                   ; 080E3B6C
ldrh  r0,[r3,0x16]              ; 080E3B6E
sub   r0,0x6                    ; 080E3B70
strh  r0,[r3,0x16]              ; 080E3B72
lsl   r0,r0,0x10                ; 080E3B74
lsr   r0,r0,0x10                ; 080E3B76
cmp   r0,0x77                   ; 080E3B78
bhi   @@Code080E3B8C            ; 080E3B7A
mov   r0,0x78                   ; 080E3B7C
strh  r0,[r3,0x16]              ; 080E3B7E
mov   r0,0x29                   ; 080E3B80
add   r0,r0,r3                  ; 080E3B82
mov   r12,r0                    ; 080E3B84
mov   r0,0x1                    ; 080E3B86
mov   r4,r12                    ; 080E3B88
strb  r0,[r4]                   ; 080E3B8A
@@Code080E3B8C:
mov   r0,r3                     ; 080E3B8C
bl    Sub080E3BDC               ; 080E3B8E
pop   {r4}                      ; 080E3B92
pop   {r0}                      ; 080E3B94
bx    r0                        ; 080E3B96
.pool                           ; 080E3B98

Sub080E3BA0:
push  {r4,lr}                   ; 080E3BA0
mov   r3,r0                     ; 080E3BA2
ldr   r1,=Data081940FE          ; 080E3BA4
ldr   r0,=Data08194152          ; 080E3BA6
ldrb  r2,[r0]                   ; 080E3BA8
ldrh  r0,[r3,0x16]              ; 080E3BAA
sub   r0,0x6                    ; 080E3BAC
strh  r0,[r3,0x16]              ; 080E3BAE
lsl   r0,r0,0x10                ; 080E3BB0
lsr   r0,r0,0x10                ; 080E3BB2
cmp   r0,0x77                   ; 080E3BB4
bhi   @@Code080E3BC8            ; 080E3BB6
mov   r0,0x78                   ; 080E3BB8
strh  r0,[r3,0x16]              ; 080E3BBA
mov   r0,0x29                   ; 080E3BBC
add   r0,r0,r3                  ; 080E3BBE
mov   r12,r0                    ; 080E3BC0
mov   r0,0x1                    ; 080E3BC2
mov   r4,r12                    ; 080E3BC4
strb  r0,[r4]                   ; 080E3BC6
@@Code080E3BC8:
mov   r0,r3                     ; 080E3BC8
bl    Sub080E3BDC               ; 080E3BCA
pop   {r4}                      ; 080E3BCE
pop   {r0}                      ; 080E3BD0
bx    r0                        ; 080E3BD2
.pool                           ; 080E3BD4

Sub080E3BDC:
push  {r4-r7,lr}                ; 080E3BDC
mov   r7,r10                    ; 080E3BDE
mov   r6,r9                     ; 080E3BE0
mov   r5,r8                     ; 080E3BE2
push  {r5-r7}                   ; 080E3BE4
mov   r12,r0                    ; 080E3BE6
mov   r4,r1                     ; 080E3BE8
lsl   r2,r2,0x18                ; 080E3BEA
lsr   r2,r2,0x18                ; 080E3BEC
ldrh  r0,[r0,0x20]              ; 080E3BEE
add   r0,0x1                    ; 080E3BF0
mov   r1,r12                    ; 080E3BF2
strh  r0,[r1,0x20]              ; 080E3BF4
lsl   r0,r0,0x10                ; 080E3BF6
lsr   r0,r0,0x10                ; 080E3BF8
cmp   r0,0x7                    ; 080E3BFA
bls   @@Code080E3C16            ; 080E3BFC
mov   r0,0x0                    ; 080E3BFE
strh  r0,[r1,0x20]              ; 080E3C00
add   r1,0x2A                   ; 080E3C02
ldrb  r0,[r1]                   ; 080E3C04
add   r0,0x1                    ; 080E3C06
strb  r0,[r1]                   ; 080E3C08
lsl   r0,r0,0x18                ; 080E3C0A
lsr   r0,r0,0x18                ; 080E3C0C
cmp   r0,0x7                    ; 080E3C0E
bls   @@Code080E3C16            ; 080E3C10
mov   r0,0x0                    ; 080E3C12
strb  r0,[r1]                   ; 080E3C14
@@Code080E3C16:
lsl   r0,r2,0x10                ; 080E3C16
mov   r5,0x0                    ; 080E3C18
mov   r9,r0                     ; 080E3C1A
cmp   r0,0x0                    ; 080E3C1C
beq   @@Code080E3CEE            ; 080E3C1E
ldr   r7,=0x030021B0            ; 080E3C20
ldr   r2,=0x030069D0            ; 080E3C22
mov   r8,r2                     ; 080E3C24
ldr   r3,=0xFFFFFE00            ; 080E3C26
mov   r10,r3                    ; 080E3C28
@@Code080E3C2A:
mov   r1,r8                     ; 080E3C2A
ldrh  r0,[r1]                   ; 080E3C2C
lsl   r0,r0,0x3                 ; 080E3C2E
ldr   r3,=0x03005A00            ; 080E3C30
add   r2,r0,r3                  ; 080E3C32
str   r2,[r7]                   ; 080E3C34
ldrh  r0,[r4]                   ; 080E3C36
mov   r1,r12                    ; 080E3C38
ldrh  r1,[r1,0x18]              ; 080E3C3A
add   r0,r0,r1                  ; 080E3C3C
lsl   r0,r0,0x10                ; 080E3C3E
lsr   r3,r0,0x10                ; 080E3C40
mov   r1,r5                     ; 080E3C42
cmp   r5,0x1                    ; 080E3C44
bne   @@Code080E3C4A            ; 080E3C46
mov   r1,0x0                    ; 080E3C48
@@Code080E3C4A:
mov   r0,r12                    ; 080E3C4A
add   r0,0x2A                   ; 080E3C4C
ldrb  r0,[r0]                   ; 080E3C4E
add   r0,r1,r0                  ; 080E3C50
mov   r1,0x7                    ; 080E3C52
and   r0,r1                     ; 080E3C54
lsl   r0,r0,0x1                 ; 080E3C56
ldr   r1,=Data08194154          ; 080E3C58
add   r0,r0,r1                  ; 080E3C5A
ldrh  r0,[r0]                   ; 080E3C5C
add   r0,r3,r0                  ; 080E3C5E
strb  r0,[r2]                   ; 080E3C60
add   r4,0x2                    ; 080E3C62
ldr   r3,[r7]                   ; 080E3C64
ldrh  r1,[r4]                   ; 080E3C66
lsl   r1,r1,0x6                 ; 080E3C68
ldrb  r2,[r3,0x1]               ; 080E3C6A
mov   r6,0x3F                   ; 080E3C6C
mov   r0,r6                     ; 080E3C6E
and   r0,r2                     ; 080E3C70
orr   r0,r1                     ; 080E3C72
strb  r0,[r3,0x1]               ; 080E3C74
add   r4,0x2                    ; 080E3C76
ldrh  r0,[r4]                   ; 080E3C78
mov   r2,r12                    ; 080E3C7A
ldrh  r2,[r2,0x16]              ; 080E3C7C
add   r0,r0,r2                  ; 080E3C7E
lsl   r0,r0,0x10                ; 080E3C80
lsr   r2,r0,0x10                ; 080E3C82
cmp   r2,0xEF                   ; 080E3C84
bls   @@Code080E3C8A            ; 080E3C86
mov   r2,0xF0                   ; 080E3C88
@@Code080E3C8A:
ldr   r3,[r7]                   ; 080E3C8A
ldr   r1,=0x01FF                ; 080E3C8C
mov   r0,r1                     ; 080E3C8E
and   r2,r0                     ; 080E3C90
ldrh  r1,[r3,0x2]               ; 080E3C92
mov   r0,r10                    ; 080E3C94
and   r0,r1                     ; 080E3C96
orr   r0,r2                     ; 080E3C98
strh  r0,[r3,0x2]               ; 080E3C9A
add   r4,0x2                    ; 080E3C9C
ldrh  r1,[r4]                   ; 080E3C9E
lsl   r1,r1,0x6                 ; 080E3CA0
ldrb  r2,[r3,0x3]               ; 080E3CA2
mov   r0,r6                     ; 080E3CA4
and   r0,r2                     ; 080E3CA6
orr   r0,r1                     ; 080E3CA8
strb  r0,[r3,0x3]               ; 080E3CAA
add   r4,0x2                    ; 080E3CAC
ldr   r3,[r7]                   ; 080E3CAE
mov   r2,0x80                   ; 080E3CB0
lsl   r2,r2,0x2                 ; 080E3CB2
mov   r1,r2                     ; 080E3CB4
ldrh  r0,[r4]                   ; 080E3CB6
add   r1,r1,r0                  ; 080E3CB8
ldr   r2,=0x03FF                ; 080E3CBA
mov   r0,r2                     ; 080E3CBC
and   r1,r0                     ; 080E3CBE
ldrh  r2,[r3,0x4]               ; 080E3CC0
ldr   r0,=0xFFFFFC00            ; 080E3CC2
and   r0,r2                     ; 080E3CC4
orr   r0,r1                     ; 080E3CC6
strh  r0,[r3,0x4]               ; 080E3CC8
add   r4,0x2                    ; 080E3CCA
ldrb  r1,[r4]                   ; 080E3CCC
lsl   r1,r1,0x4                 ; 080E3CCE
ldrb  r2,[r3,0x5]               ; 080E3CD0
mov   r0,0xF                    ; 080E3CD2
and   r0,r2                     ; 080E3CD4
orr   r0,r1                     ; 080E3CD6
strb  r0,[r3,0x5]               ; 080E3CD8
add   r4,0x2                    ; 080E3CDA
mov   r3,r8                     ; 080E3CDC
ldrh  r0,[r3]                   ; 080E3CDE
add   r0,0x1                    ; 080E3CE0
strh  r0,[r3]                   ; 080E3CE2
add   r0,r5,0x1                 ; 080E3CE4
lsl   r0,r0,0x10                ; 080E3CE6
lsr   r5,r0,0x10                ; 080E3CE8
cmp   r0,r9                     ; 080E3CEA
blo   @@Code080E3C2A            ; 080E3CEC
@@Code080E3CEE:
pop   {r3-r5}                   ; 080E3CEE
mov   r8,r3                     ; 080E3CF0
mov   r9,r4                     ; 080E3CF2
mov   r10,r5                    ; 080E3CF4
pop   {r4-r7}                   ; 080E3CF6
pop   {r0}                      ; 080E3CF8
bx    r0                        ; 080E3CFA
.pool                           ; 080E3CFC

Sub080E3D1C:
push  {r4,lr}                   ; 080E3D1C
mov   r3,r0                     ; 080E3D1E
ldr   r1,=Data08194164          ; 080E3D20
ldr   r0,=Data081941B8          ; 080E3D22
ldrb  r2,[r0]                   ; 080E3D24
ldrh  r0,[r3,0x16]              ; 080E3D26
sub   r0,0x6                    ; 080E3D28
strh  r0,[r3,0x16]              ; 080E3D2A
lsl   r0,r0,0x10                ; 080E3D2C
lsr   r0,r0,0x10                ; 080E3D2E
cmp   r0,0x77                   ; 080E3D30
bhi   @@Code080E3D44            ; 080E3D32
mov   r0,0x78                   ; 080E3D34
strh  r0,[r3,0x16]              ; 080E3D36
mov   r0,0x29                   ; 080E3D38
add   r0,r0,r3                  ; 080E3D3A
mov   r12,r0                    ; 080E3D3C
mov   r0,0x1                    ; 080E3D3E
mov   r4,r12                    ; 080E3D40
strb  r0,[r4]                   ; 080E3D42
@@Code080E3D44:
mov   r0,r3                     ; 080E3D44
bl    Sub080E3BDC               ; 080E3D46
pop   {r4}                      ; 080E3D4A
pop   {r0}                      ; 080E3D4C
bx    r0                        ; 080E3D4E
.pool                           ; 080E3D50

Return080E3D58:
bx    lr                        ; 080E3D58
.pool                           ; 080E3D5A

Sub080E3D5C:
; Level victory substate 29
push  {r4-r5,lr}                ; 080E3D5C
mov   r5,r1                     ; 080E3D5E
ldr   r4,=0x03002200            ; 080E3D60
ldr   r0,=0x488C                ; 080E3D62
add   r1,r4,r0                  ; 080E3D64
ldrh  r0,[r1]                   ; 080E3D66
add   r0,0x1                    ; 080E3D68
strh  r0,[r1]                   ; 080E3D6A
lsl   r0,r0,0x10                ; 080E3D6C
lsr   r0,r0,0x10                ; 080E3D6E
cmp   r0,0x1E                   ; 080E3D70
bls   @@Code080E3DBE            ; 080E3D72
mov   r0,0x1F                   ; 080E3D74
strh  r0,[r1]                   ; 080E3D76
bl    Sub0812C2A0               ; 080E3D78
lsl   r0,r0,0x18                ; 080E3D7C
lsr   r0,r0,0x18                ; 080E3D7E
cmp   r0,0x1                    ; 080E3D80
beq   @@Code080E3DBE            ; 080E3D82
bl    Sub080414A8               ; 080E3D84
mov   r2,0x33                   ; 080E3D88
ldrh  r0,[r5,0x6]               ; 080E3D8A
mov   r1,0x80                   ; 080E3D8C
lsl   r1,r1,0x8                 ; 080E3D8E
and   r0,r1                     ; 080E3D90
cmp   r0,0x0                    ; 080E3D92
beq   @@Code080E3DA6            ; 080E3D94
mov   r0,r5                     ; 080E3D96
bl    Sub080E496C               ; 080E3D98
mov   r2,0x1C                   ; 080E3D9C
ldr   r0,=0x4A09                ; 080E3D9E
add   r1,r4,r0                  ; 080E3DA0
mov   r0,0xFF                   ; 080E3DA2
strb  r0,[r1]                   ; 080E3DA4
@@Code080E3DA6:
ldr   r1,=0x4905                ; 080E3DA6
add   r0,r4,r1                  ; 080E3DA8
strb  r2,[r0]                   ; 080E3DAA
ldr   r0,=0x4856                ; 080E3DAC
add   r1,r4,r0                  ; 080E3DAE
mov   r0,0x0                    ; 080E3DB0
strh  r0,[r1]                   ; 080E3DB2
bl    Sub0802E020               ; 080E3DB4
mov   r0,0x0                    ; 080E3DB8
bl    Sub0812C248               ; 080E3DBA
@@Code080E3DBE:
pop   {r4-r5}                   ; 080E3DBE
pop   {r0}                      ; 080E3DC0
bx    r0                        ; 080E3DC2
.pool                           ; 080E3DC4

Sub080E3DD8:
; Level victory substate 28
push  {r4-r5,lr}                ; 080E3DD8
mov   r4,r0                     ; 080E3DDA
bl    Sub080E4A08               ; 080E3DDC
mov   r0,r4                     ; 080E3DE0
add   r0,0x29                   ; 080E3DE2
ldrb  r0,[r0]                   ; 080E3DE4
cmp   r0,0x0                    ; 080E3DE6
beq   @@Code080E3DFE            ; 080E3DE8
ldr   r1,=CodePtrs081941C8      ; 080E3DEA
mov   r0,r4                     ; 080E3DEC
add   r0,0x28                   ; 080E3DEE
ldrb  r0,[r0]                   ; 080E3DF0
lsl   r0,r0,0x2                 ; 080E3DF2
add   r0,r0,r1                  ; 080E3DF4
ldr   r1,[r0]                   ; 080E3DF6
mov   r0,r4                     ; 080E3DF8
bl    Sub_bx_r1                 ; 080E3DFA  bx r1
@@Code080E3DFE:
mov   r1,r4                     ; 080E3DFE
add   r1,0x27                   ; 080E3E00
ldrb  r0,[r1]                   ; 080E3E02
cmp   r0,0x0                    ; 080E3E04
beq   @@Code080E3E18            ; 080E3E06
ldr   r0,=CodePtrs081941BC      ; 080E3E08
ldrb  r1,[r1]                   ; 080E3E0A
lsl   r1,r1,0x2                 ; 080E3E0C
add   r1,r1,r0                  ; 080E3E0E
ldr   r1,[r1]                   ; 080E3E10
mov   r0,r4                     ; 080E3E12
bl    Sub_bx_r1                 ; 080E3E14  bx r1
@@Code080E3E18:
ldr   r5,=0x03002200            ; 080E3E18
ldr   r1,=0x47C0                ; 080E3E1A
add   r0,r5,r1                  ; 080E3E1C
ldrh  r1,[r0]                   ; 080E3E1E
ldr   r0,=0x030F                ; 080E3E20
and   r0,r1                     ; 080E3E22
cmp   r0,0x0                    ; 080E3E24
beq   @@Code080E3E54            ; 080E3E26
ldr   r0,=0x488C                ; 080E3E28
add   r1,r5,r0                  ; 080E3E2A
mov   r0,0x0                    ; 080E3E2C
strh  r0,[r1]                   ; 080E3E2E
mov   r0,0x10                   ; 080E3E30
bl    Sub0812C458               ; 080E3E32
bl    Sub0812C28C               ; 080E3E36
ldr   r0,=0x4888                ; 080E3E3A
add   r1,r5,r0                  ; 080E3E3C
mov   r0,0xFF                   ; 080E3E3E
strh  r0,[r1]                   ; 080E3E40
ldr   r1,=0x47C6                ; 080E3E42
add   r2,r5,r1                  ; 080E3E44
ldrh  r1,[r2]                   ; 080E3E46
ldr   r0,=0x0FFF                ; 080E3E48
and   r0,r1                     ; 080E3E4A
strh  r0,[r2]                   ; 080E3E4C
ldrh  r0,[r4,0x4]               ; 080E3E4E
add   r0,0x2                    ; 080E3E50
strh  r0,[r4,0x4]               ; 080E3E52
@@Code080E3E54:
pop   {r4-r5}                   ; 080E3E54
pop   {r0}                      ; 080E3E56
bx    r0                        ; 080E3E58
.pool                           ; 080E3E5A

Sub080E3E80:
; Level victory substate 27
push  {r4,lr}                   ; 080E3E80
mov   r4,r0                     ; 080E3E82
mov   r1,r4                     ; 080E3E84
add   r1,0x28                   ; 080E3E86
ldrb  r0,[r1]                   ; 080E3E88
cmp   r0,0x0                    ; 080E3E8A
beq   @@Code080E3E9E            ; 080E3E8C
ldr   r0,=CodePtrs081941C8      ; 080E3E8E
ldrb  r1,[r1]                   ; 080E3E90
lsl   r1,r1,0x2                 ; 080E3E92
add   r1,r1,r0                  ; 080E3E94
ldr   r1,[r1]                   ; 080E3E96
mov   r0,r4                     ; 080E3E98
bl    Sub_bx_r1                 ; 080E3E9A  bx r1
@@Code080E3E9E:
mov   r1,r4                     ; 080E3E9E
add   r1,0x27                   ; 080E3EA0
ldrb  r0,[r1]                   ; 080E3EA2
cmp   r0,0x0                    ; 080E3EA4
beq   @@Code080E3EB8            ; 080E3EA6
ldr   r0,=CodePtrs081941BC      ; 080E3EA8
ldrb  r1,[r1]                   ; 080E3EAA
lsl   r1,r1,0x2                 ; 080E3EAC
add   r1,r1,r0                  ; 080E3EAE
ldr   r1,[r1]                   ; 080E3EB0
mov   r0,r4                     ; 080E3EB2
bl    Sub_bx_r1                 ; 080E3EB4  bx r1
@@Code080E3EB8:
mov   r0,r4                     ; 080E3EB8
add   r0,0x29                   ; 080E3EBA
ldrb  r0,[r0]                   ; 080E3EBC
cmp   r0,0x0                    ; 080E3EBE
beq   @@Code080E3EC8            ; 080E3EC0
ldrh  r0,[r4,0x4]               ; 080E3EC2
add   r0,0x2                    ; 080E3EC4
strh  r0,[r4,0x4]               ; 080E3EC6
@@Code080E3EC8:
pop   {r4}                      ; 080E3EC8
pop   {r0}                      ; 080E3ECA
bx    r0                        ; 080E3ECC
.pool                           ; 080E3ECE

Sub080E3ED8:
; Level victory substate 26
push  {r4-r5,lr}                ; 080E3ED8
mov   r4,r0                     ; 080E3EDA
ldr   r5,=0x03002200            ; 080E3EDC
ldr   r1,=0x4A08                ; 080E3EDE
add   r0,r5,r1                  ; 080E3EE0
ldrb  r0,[r0]                   ; 080E3EE2
cmp   r0,0x3                    ; 080E3EE4
bne   @@Code080E3EF2            ; 080E3EE6
ldr   r3,=0x4058                ; 080E3EE8
add   r1,r5,r3                  ; 080E3EEA
mov   r0,0x21                   ; 080E3EEC
bl    PlayYISound               ; 080E3EEE
@@Code080E3EF2:
mov   r2,r4                     ; 080E3EF2
add   r2,0x28                   ; 080E3EF4
ldrb  r1,[r2]                   ; 080E3EF6
mov   r3,r4                     ; 080E3EF8
add   r3,0x27                   ; 080E3EFA
ldrb  r0,[r3]                   ; 080E3EFC
orr   r1,r0                     ; 080E3EFE
cmp   r1,0x0                    ; 080E3F00
bne   @@Code080E3F18            ; 080E3F02
ldrh  r0,[r4,0x4]               ; 080E3F04
add   r0,0x4                    ; 080E3F06
strh  r0,[r4,0x4]               ; 080E3F08
b     @@Code080E3F9C            ; 080E3F0A
.pool                           ; 080E3F0C

@@Code080E3F18:
ldrh  r0,[r4,0x4]               ; 080E3F18
add   r0,0x2                    ; 080E3F1A
mov   r1,0x0                    ; 080E3F1C
strh  r0,[r4,0x4]               ; 080E3F1E
mov   r0,r4                     ; 080E3F20
add   r0,0x29                   ; 080E3F22
strb  r1,[r0]                   ; 080E3F24
mov   r0,0xA0                   ; 080E3F26
lsl   r0,r0,0x1                 ; 080E3F28
strh  r0,[r4,0x16]              ; 080E3F2A
mov   r0,0x2E                   ; 080E3F2C
strh  r0,[r4,0x18]              ; 080E3F2E
ldrb  r0,[r3]                   ; 080E3F30
cmp   r0,0x0                    ; 080E3F32
beq   @@Code080E3F74            ; 080E3F34
mov   r1,0x0                    ; 080E3F36
ldr   r3,=0x413C                ; 080E3F38
add   r0,r5,r3                  ; 080E3F3A
ldrh  r0,[r0]                   ; 080E3F3C
lsr   r0,r0,0x1                 ; 080E3F3E
lsl   r0,r0,0x1                 ; 080E3F40
ldr   r3,=0x0202C8A4            ; 080E3F42
add   r0,r0,r3                  ; 080E3F44
ldrh  r0,[r0]                   ; 080E3F46
cmp   r0,0x63                   ; 080E3F48
bls   @@Code080E3F58            ; 080E3F4A
mov   r1,0x2                    ; 080E3F4C
b     @@Code080E3F5E            ; 080E3F4E
.pool                           ; 080E3F50

@@Code080E3F58:
cmp   r0,0x9                    ; 080E3F58
bls   @@Code080E3F5E            ; 080E3F5A
mov   r1,0x1                    ; 080E3F5C
@@Code080E3F5E:
lsl   r0,r1,0x13                ; 080E3F5E
lsr   r1,r0,0x10                ; 080E3F60
mov   r0,0xB0                   ; 080E3F62
sub   r0,r0,r1                  ; 080E3F64
mov   r1,0x0                    ; 080E3F66
strh  r0,[r4,0x1A]              ; 080E3F68
mov   r0,0x90                   ; 080E3F6A
strh  r0,[r4,0x1C]              ; 080E3F6C
mov   r0,0x80                   ; 080E3F6E
strh  r0,[r4,0x1E]              ; 080E3F70
strh  r1,[r4,0x22]              ; 080E3F72
@@Code080E3F74:
ldrb  r0,[r2]                   ; 080E3F74
cmp   r0,0x0                    ; 080E3F76
beq   @@Code080E3F88            ; 080E3F78
ldr   r1,=0x03006258            ; 080E3F7A
mov   r0,0x1D                   ; 080E3F7C
bl    PlayYISound               ; 080E3F7E
b     @@Code080E3F90            ; 080E3F82
.pool                           ; 080E3F84

@@Code080E3F88:
ldr   r1,=0x03006258            ; 080E3F88
mov   r0,0x1E                   ; 080E3F8A
bl    PlayYISound               ; 080E3F8C
@@Code080E3F90:
mov   r0,0x0                    ; 080E3F90
mov   r1,0x0                    ; 080E3F92
strh  r1,[r4,0x20]              ; 080E3F94
mov   r1,r4                     ; 080E3F96
add   r1,0x2A                   ; 080E3F98
strb  r0,[r1]                   ; 080E3F9A
@@Code080E3F9C:
pop   {r4-r5}                   ; 080E3F9C
pop   {r0}                      ; 080E3F9E
bx    r0                        ; 080E3FA0
.pool                           ; 080E3FA2

Sub080E3FA8:
push  {r4-r7,lr}                ; 080E3FA8
mov   r7,r9                     ; 080E3FAA
mov   r6,r8                     ; 080E3FAC
push  {r6-r7}                   ; 080E3FAE
lsl   r0,r0,0x10                ; 080E3FB0
lsr   r1,r0,0x10                ; 080E3FB2
mov   r5,0x0                    ; 080E3FB4
mov   r4,0x0                    ; 080E3FB6
mov   r6,r1                     ; 080E3FB8
mov   r0,0xFA                   ; 080E3FBA
lsl   r0,r0,0x2                 ; 080E3FBC
cmp   r6,r0                     ; 080E3FBE
bne   @@Code080E4024            ; 080E3FC0
ldr   r0,=0x030021A0            ; 080E3FC2  Score calc layer 3 buffer (02009758)
ldr   r1,[r0]                   ; 080E3FC4
mov   r0,0x86                   ; 080E3FC6
lsl   r0,r0,0x3                 ; 080E3FC8
add   r2,r1,r0                  ; 080E3FCA
mov   r0,0x84                   ; 080E3FCC
strh  r0,[r2]                   ; 080E3FCE
mov   r4,0x8E                   ; 080E3FD0
lsl   r4,r4,0x3                 ; 080E3FD2
add   r2,r1,r4                  ; 080E3FD4
mov   r0,0x94                   ; 080E3FD6
strh  r0,[r2]                   ; 080E3FD8
ldr   r5,=0x042E                ; 080E3FDA
add   r2,r1,r5                  ; 080E3FDC
mov   r0,0x83                   ; 080E3FDE
strh  r0,[r2]                   ; 080E3FE0
ldr   r0,=0x046E                ; 080E3FE2
add   r2,r1,r0                  ; 080E3FE4
mov   r0,0x93                   ; 080E3FE6
strh  r0,[r2]                   ; 080E3FE8
sub   r4,0x44                   ; 080E3FEA
add   r2,r1,r4                  ; 080E3FEC
mov   r0,0x82                   ; 080E3FEE
strh  r0,[r2]                   ; 080E3FF0
add   r5,0x3E                   ; 080E3FF2
add   r2,r1,r5                  ; 080E3FF4
mov   r0,0x92                   ; 080E3FF6
strh  r0,[r2]                   ; 080E3FF8
ldr   r0,=0x042A                ; 080E3FFA
add   r2,r1,r0                  ; 080E3FFC
mov   r0,0x81                   ; 080E3FFE
strh  r0,[r2]                   ; 080E4000
add   r4,0x3E                   ; 080E4002
add   r2,r1,r4                  ; 080E4004
mov   r0,0x91                   ; 080E4006
strh  r0,[r2]                   ; 080E4008
add   r5,0x8                    ; 080E400A
add   r1,r1,r5                  ; 080E400C
add   r0,0xDE                   ; 080E400E
strh  r0,[r1]                   ; 080E4010
b     @@Code080E4110            ; 080E4012
.pool                           ; 080E4014

@@Code080E4024:
ldr   r0,=0x030021A0            ; 080E4024  Score calc layer 3 buffer (02009758)
mov   r8,r0                     ; 080E4026
ldr   r7,=ScoreDigitTilesUpper  ; 080E4028
ldr   r2,=ScoreDigitTilesLower  ; 080E402A
mov   r12,r2                    ; 080E402C
cmp   r6,0x63                   ; 080E402E
bls   @@Code080E4062            ; 080E4030
@@Code080E4032:
mov   r0,r1                     ; 080E4032
sub   r0,0x64                   ; 080E4034
lsl   r0,r0,0x10                ; 080E4036
lsr   r1,r0,0x10                ; 080E4038
add   r0,r4,0x1                 ; 080E403A
lsl   r0,r0,0x10                ; 080E403C
lsr   r4,r0,0x10                ; 080E403E
cmp   r1,0x63                   ; 080E4040
bhi   @@Code080E4032            ; 080E4042
b     @@Code080E4062            ; 080E4044
.pool                           ; 080E4046

@@Code080E4054:
mov   r0,r1                     ; 080E4054
sub   r0,0xA                    ; 080E4056
lsl   r0,r0,0x10                ; 080E4058
lsr   r1,r0,0x10                ; 080E405A
add   r0,r5,0x1                 ; 080E405C
lsl   r0,r0,0x10                ; 080E405E
lsr   r5,r0,0x10                ; 080E4060
@@Code080E4062:
cmp   r1,0x9                    ; 080E4062
bhi   @@Code080E4054            ; 080E4064
mov   r0,r8                     ; 080E4066
ldr   r3,[r0]                   ; 080E4068
lsl   r1,r1,0x1                 ; 080E406A
add   r0,r1,r7                  ; 080E406C
ldrh  r0,[r0]                   ; 080E406E
mov   r9,r0                     ; 080E4070
mov   r2,0x86                   ; 080E4072
lsl   r2,r2,0x3                 ; 080E4074
add   r0,r3,r2                  ; 080E4076
mov   r2,r9                     ; 080E4078
strh  r2,[r0]                   ; 080E407A
add   r1,r12                    ; 080E407C
ldrh  r1,[r1]                   ; 080E407E
mov   r2,0x8E                   ; 080E4080
lsl   r2,r2,0x3                 ; 080E4082
add   r0,r3,r2                  ; 080E4084
strh  r1,[r0]                   ; 080E4086
cmp   r4,0x0                    ; 080E4088
bne   @@Code080E4090            ; 080E408A
cmp   r5,0x0                    ; 080E408C
beq   @@Code080E40A8            ; 080E408E
@@Code080E4090:
lsl   r1,r5,0x1                 ; 080E4090
add   r0,r1,r7                  ; 080E4092
ldrh  r2,[r0]                   ; 080E4094
ldr   r5,=0x042E                ; 080E4096
add   r0,r3,r5                  ; 080E4098
strh  r2,[r0]                   ; 080E409A
add   r1,r12                    ; 080E409C
ldrh  r1,[r1]                   ; 080E409E
b     @@Code080E40B0            ; 080E40A0
.pool                           ; 080E40A2

@@Code080E40A8:
ldr   r5,=0x042E                ; 080E40A8
add   r0,r3,r5                  ; 080E40AA
ldr   r1,=0x017F                ; 080E40AC
strh  r1,[r0]                   ; 080E40AE
@@Code080E40B0:
ldr   r2,=0x046E                ; 080E40B0
add   r0,r3,r2                  ; 080E40B2
strh  r1,[r0]                   ; 080E40B4
cmp   r4,0x0                    ; 080E40B6
beq   @@Code080E40EC            ; 080E40B8
mov   r5,r8                     ; 080E40BA
ldr   r2,[r5]                   ; 080E40BC
lsl   r1,r4,0x1                 ; 080E40BE
add   r0,r1,r7                  ; 080E40C0
ldrh  r3,[r0]                   ; 080E40C2
ldr   r4,=0x042C                ; 080E40C4
add   r0,r2,r4                  ; 080E40C6
strh  r3,[r0]                   ; 080E40C8
add   r1,r12                    ; 080E40CA
ldrh  r0,[r1]                   ; 080E40CC
ldr   r5,=0x046C                ; 080E40CE
add   r2,r2,r5                  ; 080E40D0
strh  r0,[r2]                   ; 080E40D2
b     @@Code080E4100            ; 080E40D4
.pool                           ; 080E40D6

@@Code080E40EC:
mov   r0,r8                     ; 080E40EC
ldr   r1,[r0]                   ; 080E40EE
ldr   r4,=0x042C                ; 080E40F0
add   r2,r1,r4                  ; 080E40F2
ldr   r0,=0x0143                ; 080E40F4
strh  r0,[r2]                   ; 080E40F6
ldr   r5,=0x046C                ; 080E40F8
add   r1,r1,r5                  ; 080E40FA
add   r0,0x3C                   ; 080E40FC
strh  r0,[r1]                   ; 080E40FE
@@Code080E4100:
cmp   r6,0x1                    ; 080E4100
bls   @@Code080E4110            ; 080E4102
mov   r1,r8                     ; 080E4104
ldr   r0,[r1]                   ; 080E4106
ldr   r2,=0x0474                ; 080E4108
add   r0,r0,r2                  ; 080E410A
ldr   r1,=0x016F                ; 080E410C
strh  r1,[r0]                   ; 080E410E
@@Code080E4110:
pop   {r3-r4}                   ; 080E4110
mov   r8,r3                     ; 080E4112
mov   r9,r4                     ; 080E4114
pop   {r4-r7}                   ; 080E4116
pop   {r0}                      ; 080E4118
bx    r0                        ; 080E411A
.pool                           ; 080E411C

Sub080E4130:
; Level victory substate 25
push  {r4-r6,lr}                ; 080E4130
mov   r4,r0                     ; 080E4132
ldr   r5,=0x03002200            ; 080E4134
ldr   r0,=0x48A8                ; 080E4136
add   r1,r5,r0                  ; 080E4138
ldrh  r0,[r1]                   ; 080E413A
sub   r0,0x1                    ; 080E413C
strh  r0,[r1]                   ; 080E413E
lsl   r0,r0,0x10                ; 080E4140
cmp   r0,0x0                    ; 080E4142
blt   @@Code080E41DE            ; 080E4144
ldrh  r0,[r4,0x12]              ; 080E4146
add   r0,0x1                    ; 080E4148
strh  r0,[r4,0x12]              ; 080E414A
ldrh  r0,[r4,0x12]              ; 080E414C
bl    Sub080E3FA8               ; 080E414E
ldr   r6,=0x030021A0            ; 080E4152  Score calc layer 3 buffer (02009758)
ldr   r0,[r6]                   ; 080E4154
ldr   r1,=0x0600E000            ; 080E4156
mov   r2,0x90                   ; 080E4158
lsl   r2,r2,0x2                 ; 080E415A
bl    swi_MemoryCopy4or2        ; 080E415C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r4                     ; 080E4160
bl    Sub080E535C               ; 080E4162
ldr   r1,=0x413C                ; 080E4166
add   r0,r5,r1                  ; 080E4168
ldrh  r0,[r0]                   ; 080E416A
lsr   r0,r0,0x1                 ; 080E416C
lsl   r0,r0,0x1                 ; 080E416E
ldr   r2,=0x0202C8A4            ; 080E4170
add   r0,r0,r2                  ; 080E4172
ldrh  r1,[r4,0x12]              ; 080E4174
ldrh  r0,[r0]                   ; 080E4176
cmp   r1,r0                     ; 080E4178
blo   @@Code080E41DE            ; 080E417A
ldrh  r0,[r4,0x4]               ; 080E417C
add   r0,0x2                    ; 080E417E
strh  r0,[r4,0x4]               ; 080E4180
ldr   r0,=0x4088                ; 080E4182
add   r1,r5,r0                  ; 080E4184
ldr   r2,=0x496D                ; 080E4186
add   r0,r5,r2                  ; 080E4188
ldrh  r1,[r1]                   ; 080E418A
add   r0,r0,r1                  ; 080E418C
ldrb  r0,[r0]                   ; 080E418E
cmp   r0,0x80                   ; 080E4190
beq   @@Code080E419E            ; 080E4192
ldr   r1,=0x4850                ; 080E4194
add   r0,r5,r1                  ; 080E4196
ldrh  r0,[r0]                   ; 080E4198
cmp   r0,0x7F                   ; 080E419A
bls   @@Code080E41D0            ; 080E419C
@@Code080E419E:
ldr   r6,[r6]                   ; 080E419E
mov   r12,r6                    ; 080E41A0
mov   r0,r12                    ; 080E41A2
add   r0,0x8A                   ; 080E41A4
mov   r4,0xB8                   ; 080E41A6
lsl   r4,r4,0x1                 ; 080E41A8
strh  r4,[r0]                   ; 080E41AA
add   r0,0x2                    ; 080E41AC
ldr   r3,=0x0171                ; 080E41AE
strh  r3,[r0]                   ; 080E41B0
add   r0,0x3E                   ; 080E41B2
mov   r2,0xB9                   ; 080E41B4
lsl   r2,r2,0x1                 ; 080E41B6
strh  r2,[r0]                   ; 080E41B8
add   r0,0x2                    ; 080E41BA
ldr   r1,=0x0173                ; 080E41BC
strh  r1,[r0]                   ; 080E41BE
sub   r0,0x1E                   ; 080E41C0
strh  r4,[r0]                   ; 080E41C2
add   r0,0x2                    ; 080E41C4
strh  r3,[r0]                   ; 080E41C6
add   r0,0x3E                   ; 080E41C8
strh  r2,[r0]                   ; 080E41CA
add   r0,0x2                    ; 080E41CC
strh  r1,[r0]                   ; 080E41CE
@@Code080E41D0:
ldr   r0,=0x030021A0            ; 080E41D0  Score calc layer 3 buffer (02009758)
ldr   r0,[r0]                   ; 080E41D2
ldr   r1,=0x0600E000            ; 080E41D4
mov   r2,0x90                   ; 080E41D6
lsl   r2,r2,0x2                 ; 080E41D8
bl    swi_MemoryCopy4or2        ; 080E41DA  Memory copy/fill, 4- or 2-byte blocks
@@Code080E41DE:
pop   {r4-r6}                   ; 080E41DE
pop   {r0}                      ; 080E41E0
bx    r0                        ; 080E41E2
.pool                           ; 080E41E4

Sub080E4210:
; subroutine: Give total world score bonuses
push  {r4-r6,lr}                ; 080E4210
mov   r12,r0                    ; 080E4212
mov   r1,r12                    ; 080E4214
add   r1,0x27                   ; 080E4216
mov   r0,0x0                    ; 080E4218
strb  r0,[r1]                   ; 080E421A
mov   r6,0x0                    ; 080E421C
ldr   r1,=0x03002200            ; 080E421E
ldr   r0,=0x4A08                ; 080E4220
add   r4,r1,r0                  ; 080E4222
strb  r6,[r4]                   ; 080E4224
ldr   r2,=0x48A8                ; 080E4226
add   r0,r1,r2                  ; 080E4228
ldrh  r3,[r0]                   ; 080E422A
ldr   r2,=0x413C                ; 080E422C
add   r0,r1,r2                  ; 080E422E
ldrh  r0,[r0]                   ; 080E4230
lsr   r0,r0,0x1                 ; 080E4232
lsl   r0,r0,0x1                 ; 080E4234
ldr   r2,=0x0202C8A4            ; 080E4236  World total high scores
add   r0,r0,r2                  ; 080E4238
ldrh  r2,[r0]                   ; 080E423A
mov   r0,0xFA                   ; 080E423C
lsl   r0,r0,0x2                 ; 080E423E
mov   r5,r1                     ; 080E4240
cmp   r3,r0                     ; 080E4242
bne   @@Code080E4264            ; 080E4244
cmp   r2,r3                     ; 080E4246
beq   @@Code080E4264            ; 080E4248
mov   r0,0x3                    ; 080E424A
strb  r0,[r4]                   ; 080E424C
b     @@Code080E435E            ; 080E424E
.pool                           ; 080E4250

@@Code080E4264:
ldr   r0,=0x0309                ; 080E4264
cmp   r3,r0                     ; 080E4266
bne   @@Code080E427C            ; 080E4268
mov   r1,r12                    ; 080E426A
add   r1,0x27                   ; 080E426C
mov   r0,0x2                    ; 080E426E
strb  r0,[r1]                   ; 080E4270
ldr   r0,=0x407E                ; 080E4272
add   r1,r5,r0                  ; 080E4274  r1 = 0300627E (lives)
ldrh  r0,[r1]                   ; 080E4276
add   r0,0x7                    ; 080E4278
strh  r0,[r1]                   ; 080E427A
@@Code080E427C:
ldr   r1,=Data081941EC          ; 080E427C
cmp   r3,0x63                   ; 080E427E
bls   @@Code080E428E            ; 080E4280
@@Code080E4282:
mov   r0,r3                     ; 080E4282
sub   r0,0x64                   ; 080E4284
lsl   r0,r0,0x10                ; 080E4286
lsr   r3,r0,0x10                ; 080E4288
cmp   r3,0x63                   ; 080E428A
bhi   @@Code080E4282            ; 080E428C
@@Code080E428E:
ldr   r2,=0x413C                ; 080E428E
add   r0,r5,r2                  ; 080E4290  r0 = 0300633C
ldrh  r0,[r0]                   ; 080E4292  world number (0-indexed, doubled)
lsr   r0,r0,0x1                 ; 080E4294
lsl   r0,r0,0x1                 ; 080E4296
add   r0,r0,r1                  ; 080E4298
ldrh  r0,[r0]                   ; 080E429A
cmp   r3,r0                     ; 080E429C
bne   @@Code080E42B2            ; 080E429E
mov   r1,r12                    ; 080E42A0
add   r1,0x27                   ; 080E42A2
mov   r0,0x1                    ; 080E42A4
strb  r0,[r1]                   ; 080E42A6
ldr   r0,=0x407E                ; 080E42A8
add   r1,r5,r0                  ; 080E42AA  r1 = 0300627E (lives)
ldrh  r0,[r1]                   ; 080E42AC
add   r0,0x1                    ; 080E42AE
strh  r0,[r1]                   ; 080E42B0
@@Code080E42B2:
ldr   r1,=0x48A8                ; 080E42B2
add   r0,r5,r1                  ; 080E42B4  r1 = 03006AA8
ldrh  r3,[r0]                   ; 080E42B6
mov   r4,0x0                    ; 080E42B8
cmp   r3,0x63                   ; 080E42BA
bls   @@Code080E42D0            ; 080E42BC
@@Code080E42BE:
mov   r0,r3                     ; 080E42BE
sub   r0,0x64                   ; 080E42C0
lsl   r0,r0,0x10                ; 080E42C2
lsr   r3,r0,0x10                ; 080E42C4
add   r0,r4,0x1                 ; 080E42C6
lsl   r0,r0,0x10                ; 080E42C8
lsr   r4,r0,0x10                ; 080E42CA
cmp   r3,0x63                   ; 080E42CC
bhi   @@Code080E42BE            ; 080E42CE
@@Code080E42D0:
ldr   r2,=0x413C                ; 080E42D0
add   r0,r5,r2                  ; 080E42D2
ldrh  r0,[r0]                   ; 080E42D4
lsr   r0,r0,0x1                 ; 080E42D6
lsl   r0,r0,0x1                 ; 080E42D8
ldr   r1,=0x0202C8A4            ; 080E42DA
add   r0,r0,r1                  ; 080E42DC
ldrh  r2,[r0]                   ; 080E42DE
mov   r1,0x0                    ; 080E42E0
cmp   r2,0x63                   ; 080E42E2
bls   @@Code080E42F8            ; 080E42E4
@@Code080E42E6:
mov   r0,r2                     ; 080E42E6
sub   r0,0x64                   ; 080E42E8
lsl   r0,r0,0x10                ; 080E42EA
lsr   r2,r0,0x10                ; 080E42EC
add   r0,r1,0x1                 ; 080E42EE
lsl   r0,r0,0x10                ; 080E42F0
lsr   r1,r0,0x10                ; 080E42F2
cmp   r2,0x63                   ; 080E42F4
bhi   @@Code080E42E6            ; 080E42F6
@@Code080E42F8:
cmp   r4,r1                     ; 080E42F8
beq   @@Code080E435E            ; 080E42FA
cmp   r4,0x2                    ; 080E42FC
bne   @@Code080E430C            ; 080E42FE
mov   r6,0x1                    ; 080E4300
ldr   r2,=0x407E                ; 080E4302
add   r1,r5,r2                  ; 080E4304  r1 = 0300627E (lives)
ldrh  r0,[r1]                   ; 080E4306
add   r0,0x1                    ; 080E4308
strh  r0,[r1]                   ; 080E430A
@@Code080E430C:
cmp   r4,0x3                    ; 080E430C
bne   @@Code080E431C            ; 080E430E
mov   r6,0x2                    ; 080E4310
ldr   r0,=0x407E                ; 080E4312
add   r1,r5,r0                  ; 080E4314  r1 = 0300627E (lives)
ldrh  r0,[r1]                   ; 080E4316
add   r0,0x3                    ; 080E4318
strh  r0,[r1]                   ; 080E431A
@@Code080E431C:
cmp   r4,0x5                    ; 080E431C
bne   @@Code080E432C            ; 080E431E
mov   r6,0x3                    ; 080E4320
ldr   r2,=0x407E                ; 080E4322
add   r1,r5,r2                  ; 080E4324  r1 = 0300627E (lives)
ldrh  r0,[r1]                   ; 080E4326
add   r0,0x5                    ; 080E4328
strh  r0,[r1]                   ; 080E432A
@@Code080E432C:
mov   r1,r5                     ; 080E432C
ldr   r0,=0x407E                ; 080E432E
add   r3,r1,r0                  ; 080E4330  r3 = 0300627E (lives)
ldrh  r0,[r3]                   ; 080E4332
ldr   r2,=0x03E7                ; 080E4334  999 decimal
cmp   r0,r2                     ; 080E4336
bls   @@Code080E433C            ; 080E4338
strh  r2,[r3]                   ; 080E433A
@@Code080E433C:
cmp   r4,0x7                    ; 080E433C
bne   @@Code080E434A            ; 080E433E
mov   r6,0x4                    ; 080E4340
ldr   r2,=0x4A08                ; 080E4342
add   r1,r1,r2                  ; 080E4344  r1 = 03006C08
mov   r0,0x1                    ; 080E4346
strb  r0,[r1]                   ; 080E4348
@@Code080E434A:
cmp   r4,0x8                    ; 080E434A
bne   @@Code080E4358            ; 080E434C
mov   r6,0x5                    ; 080E434E
ldr   r0,=0x4A08                ; 080E4350  r1 = 03006C08
add   r1,r5,r0                  ; 080E4352
mov   r0,0x2                    ; 080E4354
strb  r0,[r1]                   ; 080E4356
@@Code080E4358:
mov   r0,r12                    ; 080E4358
add   r0,0x28                   ; 080E435A
strb  r6,[r0]                   ; 080E435C
@@Code080E435E:
pop   {r4-r6}                   ; 080E435E
pop   {r0}                      ; 080E4360
bx    r0                        ; 080E4362
.pool                           ; 080E4364

Sub080E4384:
; Level victory substate 24
push  {r4-r6,lr}                ; 080E4384
mov   r4,r0                     ; 080E4386
mov   r5,0x0                    ; 080E4388
ldr   r2,=0x03002200            ; 080E438A
ldr   r1,=0x413C                ; 080E438C
add   r0,r2,r1                  ; 080E438E
ldrh  r1,[r0]                   ; 080E4390
lsl   r0,r1,0x1                 ; 080E4392
add   r0,r0,r1                  ; 080E4394
lsl   r0,r0,0x11                ; 080E4396
lsr   r3,r0,0x10                ; 080E4398
mov   r0,r4                     ; 080E439A
add   r0,0x27                   ; 080E439C
strb  r5,[r0]                   ; 080E439E
ldr   r1,=0x4A08                ; 080E43A0
add   r0,r2,r1                  ; 080E43A2
strb  r5,[r0]                   ; 080E43A4
strh  r5,[r4,0x24]              ; 080E43A6
mov   r1,0x0                    ; 080E43A8
ldr   r0,=0x4908                ; 080E43AA
add   r6,r2,r0                  ; 080E43AC
@@Code080E43AE:
add   r0,r3,r1                  ; 080E43AE
add   r0,r0,r6                  ; 080E43B0
ldrb  r0,[r0]                   ; 080E43B2
add   r0,r5,r0                  ; 080E43B4
lsl   r0,r0,0x10                ; 080E43B6
lsr   r5,r0,0x10                ; 080E43B8
add   r0,r1,0x1                 ; 080E43BA
lsl   r0,r0,0x10                ; 080E43BC
lsr   r1,r0,0x10                ; 080E43BE
cmp   r1,0x9                    ; 080E43C0
bls   @@Code080E43AE            ; 080E43C2
ldr   r1,=0x48A8                ; 080E43C4
add   r0,r2,r1                  ; 080E43C6
strh  r5,[r0]                   ; 080E43C8
ldr   r0,=0x413C                ; 080E43CA
add   r6,r2,r0                  ; 080E43CC
ldrh  r0,[r6]                   ; 080E43CE
lsr   r0,r0,0x1                 ; 080E43D0
lsl   r0,r0,0x1                 ; 080E43D2
ldr   r1,=0x0202C8A4            ; 080E43D4
add   r0,r0,r1                  ; 080E43D6
ldrh  r1,[r0]                   ; 080E43D8
strh  r1,[r4,0x12]              ; 080E43DA
ldrh  r0,[r0]                   ; 080E43DC
cmp   r0,r5                     ; 080E43DE
bhs   @@Code080E4414            ; 080E43E0
mov   r0,r4                     ; 080E43E2
bl    Sub080E4210               ; 080E43E4
ldrh  r0,[r6]                   ; 080E43E8
lsr   r0,r0,0x1                 ; 080E43EA
lsl   r0,r0,0x1                 ; 080E43EC
ldr   r1,=0x0202C8A4            ; 080E43EE
add   r0,r0,r1                  ; 080E43F0
strh  r5,[r0]                   ; 080E43F2
ldrh  r0,[r4,0x4]               ; 080E43F4
add   r0,0x2                    ; 080E43F6
b     @@Code080E4418            ; 080E43F8
.pool                           ; 080E43FA

@@Code080E4414:
ldrh  r0,[r4,0x4]               ; 080E4414
add   r0,0x4                    ; 080E4416
@@Code080E4418:
strh  r0,[r4,0x4]               ; 080E4418
pop   {r4-r6}                   ; 080E441A
pop   {r0}                      ; 080E441C
bx    r0                        ; 080E441E

Sub080E4420:
; Level victory substate 23
push  {lr}                      ; 080E4420
mov   r2,r0                     ; 080E4422
ldrb  r0,[r1,0xA]               ; 080E4424
sub   r0,0x1                    ; 080E4426
strb  r0,[r1,0xA]               ; 080E4428
lsl   r0,r0,0x18                ; 080E442A
cmp   r0,0x0                    ; 080E442C
bne   @@Code080E4436            ; 080E442E
ldrh  r0,[r2,0x4]               ; 080E4430
add   r0,0x2                    ; 080E4432
strh  r0,[r2,0x4]               ; 080E4434
@@Code080E4436:
pop   {r0}                      ; 080E4436
bx    r0                        ; 080E4438
.pool                           ; 080E443A

Sub080E443C:
; Level victory substate 22
push  {r4,lr}                   ; 080E443C
mov   r3,r0                     ; 080E443E
mov   r4,r1                     ; 080E4440
ldr   r0,=0x03002200            ; 080E4442
ldr   r1,=0x488C                ; 080E4444
add   r2,r0,r1                  ; 080E4446
ldrh  r0,[r2]                   ; 080E4448
sub   r0,0x1                    ; 080E444A
strh  r0,[r2]                   ; 080E444C
mov   r1,0x80                   ; 080E444E
lsl   r1,r1,0x8                 ; 080E4450
and   r0,r1                     ; 080E4452
cmp   r0,0x0                    ; 080E4454
beq   @@Code080E4466            ; 080E4456
mov   r0,0x0                    ; 080E4458
strh  r0,[r2]                   ; 080E445A
ldrh  r0,[r3,0x4]               ; 080E445C
add   r0,0x2                    ; 080E445E
strh  r0,[r3,0x4]               ; 080E4460
mov   r0,0x30                   ; 080E4462
strb  r0,[r4,0xA]               ; 080E4464
@@Code080E4466:
pop   {r4}                      ; 080E4466
pop   {r0}                      ; 080E4468
bx    r0                        ; 080E446A
.pool                           ; 080E446C

Sub080E4474:
push  {r4-r6,lr}                ; 080E4474
lsl   r0,r0,0x10                ; 080E4476
lsr   r6,r0,0x10                ; 080E4478
cmp   r6,0x7                    ; 080E447A
beq   @@Code080E456C            ; 080E447C
ldr   r2,=0x03002200            ; 080E447E
ldr   r1,=0x413C                ; 080E4480
add   r0,r2,r1                  ; 080E4482
ldrh  r1,[r0]                   ; 080E4484
lsl   r0,r1,0x1                 ; 080E4486
add   r0,r0,r1                  ; 080E4488
lsl   r1,r0,0x1                 ; 080E448A
mov   r0,r1                     ; 080E448C
add   r0,0x8                    ; 080E448E
ldr   r3,=0x496D                ; 080E4490
add   r2,r2,r3                  ; 080E4492
add   r0,r0,r2                  ; 080E4494
ldrb  r0,[r0]                   ; 080E4496
cmp   r0,0x0                    ; 080E4498
bne   @@Code080E44A8            ; 080E449A
mov   r0,r1                     ; 080E449C
add   r0,0x9                    ; 080E449E
add   r0,r0,r2                  ; 080E44A0
ldrb  r0,[r0]                   ; 080E44A2
cmp   r0,0x0                    ; 080E44A4
beq   @@Code080E4510            ; 080E44A6
@@Code080E44A8:
ldr   r0,=0x030021A0            ; 080E44A8  Score calc layer 3 buffer (02009758)
ldr   r4,[r0]                   ; 080E44AA
ldr   r1,=Data08194208          ; 080E44AC
lsl   r0,r6,0x1                 ; 080E44AE
add   r0,r0,r1                  ; 080E44B0
ldrh  r3,[r0]                   ; 080E44B2
lsl   r1,r3,0x1                 ; 080E44B4
add   r1,r4,r1                  ; 080E44B6
ldr   r5,=Data08194260          ; 080E44B8
lsl   r0,r6,0x3                 ; 080E44BA
add   r0,r0,r5                  ; 080E44BC
ldrh  r0,[r0]                   ; 080E44BE
strh  r0,[r1]                   ; 080E44C0
add   r1,r3,0x1                 ; 080E44C2
lsl   r1,r1,0x1                 ; 080E44C4
add   r1,r4,r1                  ; 080E44C6
lsl   r2,r6,0x2                 ; 080E44C8
add   r0,r2,0x1                 ; 080E44CA
lsl   r0,r0,0x1                 ; 080E44CC
add   r0,r0,r5                  ; 080E44CE
ldrh  r0,[r0]                   ; 080E44D0
strh  r0,[r1]                   ; 080E44D2
mov   r1,r3                     ; 080E44D4
add   r1,0x20                   ; 080E44D6
lsl   r1,r1,0x1                 ; 080E44D8
add   r1,r4,r1                  ; 080E44DA
add   r0,r2,0x2                 ; 080E44DC
lsl   r0,r0,0x1                 ; 080E44DE
add   r0,r0,r5                  ; 080E44E0
ldrh  r0,[r0]                   ; 080E44E2
strh  r0,[r1]                   ; 080E44E4
add   r3,0x21                   ; 080E44E6
lsl   r3,r3,0x1                 ; 080E44E8
add   r4,r4,r3                  ; 080E44EA
add   r2,0x3                    ; 080E44EC
lsl   r2,r2,0x1                 ; 080E44EE
add   r2,r2,r5                  ; 080E44F0
ldrh  r0,[r2]                   ; 080E44F2
b     @@Code080E465C            ; 080E44F4
.pool                           ; 080E44F6

@@Code080E4510:
ldr   r0,=0x030021A0            ; 080E4510  Score calc layer 3 buffer (02009758)
ldr   r4,[r0]                   ; 080E4512
ldr   r1,=Data081941F8          ; 080E4514
lsl   r0,r6,0x1                 ; 080E4516
add   r0,r0,r1                  ; 080E4518
ldrh  r3,[r0]                   ; 080E451A
lsl   r1,r3,0x1                 ; 080E451C
add   r1,r4,r1                  ; 080E451E
ldr   r5,=Data0819421C          ; 080E4520
lsl   r0,r6,0x3                 ; 080E4522
add   r0,r0,r5                  ; 080E4524
ldrh  r0,[r0]                   ; 080E4526
strh  r0,[r1]                   ; 080E4528
add   r1,r3,0x1                 ; 080E452A
lsl   r1,r1,0x1                 ; 080E452C
add   r1,r4,r1                  ; 080E452E
lsl   r2,r6,0x2                 ; 080E4530
add   r0,r2,0x1                 ; 080E4532
lsl   r0,r0,0x1                 ; 080E4534
add   r0,r0,r5                  ; 080E4536
ldrh  r0,[r0]                   ; 080E4538
strh  r0,[r1]                   ; 080E453A
mov   r1,r3                     ; 080E453C
add   r1,0x20                   ; 080E453E
lsl   r1,r1,0x1                 ; 080E4540
add   r1,r4,r1                  ; 080E4542
add   r0,r2,0x2                 ; 080E4544
lsl   r0,r0,0x1                 ; 080E4546
add   r0,r0,r5                  ; 080E4548
ldrh  r0,[r0]                   ; 080E454A
strh  r0,[r1]                   ; 080E454C
add   r3,0x21                   ; 080E454E
lsl   r3,r3,0x1                 ; 080E4550
add   r4,r4,r3                  ; 080E4552
add   r2,0x3                    ; 080E4554
lsl   r2,r2,0x1                 ; 080E4556
add   r2,r2,r5                  ; 080E4558
ldrh  r0,[r2]                   ; 080E455A
b     @@Code080E465C            ; 080E455C
.pool                           ; 080E455E

@@Code080E456C:
ldr   r2,=0x03002200            ; 080E456C
ldr   r1,=0x413C                ; 080E456E
add   r0,r2,r1                  ; 080E4570
ldrh  r1,[r0]                   ; 080E4572
lsl   r0,r1,0x1                 ; 080E4574
add   r0,r0,r1                  ; 080E4576
lsl   r1,r0,0x1                 ; 080E4578
mov   r0,r1                     ; 080E457A
add   r0,0x8                    ; 080E457C
ldr   r3,=0x496D                ; 080E457E
add   r2,r2,r3                  ; 080E4580
add   r0,r0,r2                  ; 080E4582
ldrb  r0,[r0]                   ; 080E4584
cmp   r0,0x0                    ; 080E4586
bne   @@Code080E4596            ; 080E4588
mov   r0,r1                     ; 080E458A
add   r0,0x9                    ; 080E458C
add   r0,r0,r2                  ; 080E458E
ldrb  r0,[r0]                   ; 080E4590
cmp   r0,0x0                    ; 080E4592
beq   @@Code080E4610            ; 080E4594
@@Code080E4596:
ldr   r0,=0x030021A0            ; 080E4596  Score calc layer 3 buffer (02009758)
ldr   r4,[r0]                   ; 080E4598
ldr   r0,=Data08194208          ; 080E459A
ldrh  r3,[r0,0xE]               ; 080E459C
lsl   r0,r3,0x1                 ; 080E459E
add   r0,r4,r0                  ; 080E45A0
ldr   r5,=Data08194260          ; 080E45A2
ldrh  r1,[r5,0x38]              ; 080E45A4
strh  r1,[r0]                   ; 080E45A6
add   r0,r3,0x1                 ; 080E45A8
lsl   r0,r0,0x1                 ; 080E45AA
add   r0,r4,r0                  ; 080E45AC
ldrh  r2,[r5,0x3A]              ; 080E45AE
strh  r2,[r0]                   ; 080E45B0
add   r0,r3,0x2                 ; 080E45B2
lsl   r0,r0,0x1                 ; 080E45B4
add   r0,r4,r0                  ; 080E45B6
add   r1,r2,0x1                 ; 080E45B8
strh  r1,[r0]                   ; 080E45BA
add   r0,r3,0x3                 ; 080E45BC
lsl   r0,r0,0x1                 ; 080E45BE
add   r0,r4,r0                  ; 080E45C0
add   r2,0x2                    ; 080E45C2
strh  r2,[r0]                   ; 080E45C4
mov   r0,r3                     ; 080E45C6
add   r0,0x20                   ; 080E45C8
lsl   r0,r0,0x1                 ; 080E45CA
add   r0,r4,r0                  ; 080E45CC
ldrh  r1,[r5,0x3C]              ; 080E45CE
strh  r1,[r0]                   ; 080E45D0
mov   r0,r3                     ; 080E45D2
add   r0,0x21                   ; 080E45D4
lsl   r0,r0,0x1                 ; 080E45D6
add   r0,r4,r0                  ; 080E45D8
ldrh  r2,[r5,0x3E]              ; 080E45DA
strh  r2,[r0]                   ; 080E45DC
mov   r0,r3                     ; 080E45DE
add   r0,0x22                   ; 080E45E0
lsl   r0,r0,0x1                 ; 080E45E2
add   r0,r4,r0                  ; 080E45E4
add   r1,r2,0x1                 ; 080E45E6
strh  r1,[r0]                   ; 080E45E8
add   r3,0x23                   ; 080E45EA
lsl   r3,r3,0x1                 ; 080E45EC
add   r4,r4,r3                  ; 080E45EE
add   r2,0x2                    ; 080E45F0
strh  r2,[r4]                   ; 080E45F2
b     @@Code080E465E            ; 080E45F4
.pool                           ; 080E45F6

@@Code080E4610:
ldr   r0,=0x030021A0            ; 080E4610  Score calc layer 3 buffer (02009758)
ldr   r4,[r0]                   ; 080E4612
ldr   r0,=Data081941F8          ; 080E4614
ldrh  r2,[r0,0xE]               ; 080E4616
lsl   r0,r2,0x1                 ; 080E4618
add   r0,r4,r0                  ; 080E461A
ldr   r3,=Data0819421C          ; 080E461C
ldrh  r1,[r3,0x38]              ; 080E461E
strh  r1,[r0]                   ; 080E4620
add   r0,r2,0x1                 ; 080E4622
lsl   r0,r0,0x1                 ; 080E4624
add   r0,r4,r0                  ; 080E4626
ldrh  r1,[r3,0x3A]              ; 080E4628
strh  r1,[r0]                   ; 080E462A
add   r0,r2,0x2                 ; 080E462C
lsl   r0,r0,0x1                 ; 080E462E
add   r0,r4,r0                  ; 080E4630
ldrh  r1,[r3,0x3C]              ; 080E4632
strh  r1,[r0]                   ; 080E4634
mov   r0,r2                     ; 080E4636
add   r0,0x20                   ; 080E4638
lsl   r0,r0,0x1                 ; 080E463A
add   r0,r4,r0                  ; 080E463C
ldrh  r1,[r3,0x3E]              ; 080E463E
strh  r1,[r0]                   ; 080E4640
mov   r0,r2                     ; 080E4642
add   r0,0x21                   ; 080E4644
lsl   r0,r0,0x1                 ; 080E4646
add   r0,r4,r0                  ; 080E4648
mov   r1,r3                     ; 080E464A
add   r1,0x40                   ; 080E464C
ldrh  r1,[r1]                   ; 080E464E
strh  r1,[r0]                   ; 080E4650
add   r2,0x22                   ; 080E4652
lsl   r2,r2,0x1                 ; 080E4654
add   r4,r4,r2                  ; 080E4656
add   r3,0x42                   ; 080E4658
ldrh  r0,[r3]                   ; 080E465A
@@Code080E465C:
strh  r0,[r4]                   ; 080E465C
@@Code080E465E:
pop   {r4-r6}                   ; 080E465E
pop   {r0}                      ; 080E4660
bx    r0                        ; 080E4662
.pool                           ; 080E4664

Sub080E4670:
push  {r4-r7,lr}                ; 080E4670
mov   r7,r9                     ; 080E4672
mov   r6,r8                     ; 080E4674
push  {r6-r7}                   ; 080E4676
lsl   r0,r0,0x10                ; 080E4678
lsr   r5,r0,0x10                ; 080E467A
lsl   r1,r1,0x10                ; 080E467C
lsr   r6,r1,0x10                ; 080E467E
lsl   r2,r2,0x10                ; 080E4680
lsr   r3,r2,0x10                ; 080E4682
ldr   r2,=0x03002200            ; 080E4684
ldr   r1,=0x413C                ; 080E4686
add   r0,r2,r1                  ; 080E4688
ldrh  r1,[r0]                   ; 080E468A
lsl   r0,r1,0x1                 ; 080E468C
add   r0,r0,r1                  ; 080E468E
lsl   r1,r0,0x1                 ; 080E4690
mov   r0,r1                     ; 080E4692
add   r0,0x8                    ; 080E4694
ldr   r4,=0x496D                ; 080E4696
add   r2,r2,r4                  ; 080E4698
add   r0,r0,r2                  ; 080E469A
ldrb  r0,[r0]                   ; 080E469C
cmp   r0,0x0                    ; 080E469E
bne   @@Code080E46AE            ; 080E46A0
mov   r0,r1                     ; 080E46A2
add   r0,0x9                    ; 080E46A4
add   r0,r0,r2                  ; 080E46A6
ldrb  r0,[r0]                   ; 080E46A8
cmp   r0,0x0                    ; 080E46AA
beq   @@Code080E46D0            ; 080E46AC
@@Code080E46AE:
ldr   r7,=0x030021A0            ; 080E46AE  Score calc layer 3 buffer (02009758)
mov   r8,r7                     ; 080E46B0
mov   r0,r8                     ; 080E46B2
ldr   r2,[r0]                   ; 080E46B4
ldr   r1,=Data081942C0          ; 080E46B6
b     @@Code080E46D8            ; 080E46B8
.pool                           ; 080E46BA

@@Code080E46D0:
ldr   r0,=0x030021A0            ; 080E46D0  Score calc layer 3 buffer (02009758)
mov   r8,r0                     ; 080E46D2
ldr   r2,[r0]                   ; 080E46D4
ldr   r1,=Data081942B0          ; 080E46D6
@@Code080E46D8:
lsl   r0,r3,0x1                 ; 080E46D8
add   r0,r0,r1                  ; 080E46DA
ldrh  r4,[r0]                   ; 080E46DC
lsl   r0,r4,0x1                 ; 080E46DE
add   r3,r2,r0                  ; 080E46E0
ldr   r1,=ScoreDigitTilesUpper  ; 080E46E2
mov   r12,r1                    ; 080E46E4
lsl   r1,r5,0x1                 ; 080E46E6
mov   r7,r12                    ; 080E46E8
add   r0,r1,r7                  ; 080E46EA
ldrh  r0,[r0]                   ; 080E46EC
strh  r0,[r3]                   ; 080E46EE
mov   r0,r4                     ; 080E46F0
add   r0,0x20                   ; 080E46F2
lsl   r0,r0,0x1                 ; 080E46F4
add   r2,r2,r0                  ; 080E46F6
ldr   r0,=ScoreDigitTilesLower  ; 080E46F8
mov   r9,r0                     ; 080E46FA
add   r1,r9                     ; 080E46FC
ldrh  r0,[r1]                   ; 080E46FE
strh  r0,[r2]                   ; 080E4700
cmp   r5,0x0                    ; 080E4702
bne   @@Code080E470C            ; 080E4704
ldr   r0,=0x017F                ; 080E4706
strh  r0,[r3]                   ; 080E4708
strh  r0,[r2]                   ; 080E470A
@@Code080E470C:
mov   r1,r8                     ; 080E470C
ldr   r3,[r1]                   ; 080E470E
add   r0,r4,0x1                 ; 080E4710
lsl   r0,r0,0x1                 ; 080E4712
add   r0,r3,r0                  ; 080E4714
lsl   r2,r6,0x1                 ; 080E4716
mov   r7,r12                    ; 080E4718
add   r1,r2,r7                  ; 080E471A
ldrh  r1,[r1]                   ; 080E471C
strh  r1,[r0]                   ; 080E471E
mov   r0,r4                     ; 080E4720
add   r0,0x21                   ; 080E4722
lsl   r0,r0,0x1                 ; 080E4724
add   r0,r3,r0                  ; 080E4726
add   r2,r9                     ; 080E4728
ldrh  r1,[r2]                   ; 080E472A
strh  r1,[r0]                   ; 080E472C
cmp   r5,0x0                    ; 080E472E
bne   @@Code080E4736            ; 080E4730
cmp   r6,0x1                    ; 080E4732
bls   @@Code080E4742            ; 080E4734
@@Code080E4736:
mov   r0,r4                     ; 080E4736
add   r0,0x23                   ; 080E4738
lsl   r0,r0,0x1                 ; 080E473A
add   r0,r3,r0                  ; 080E473C
ldr   r1,=0x016F                ; 080E473E
strh  r1,[r0]                   ; 080E4740
@@Code080E4742:
pop   {r3-r4}                   ; 080E4742
mov   r8,r3                     ; 080E4744
mov   r9,r4                     ; 080E4746
pop   {r4-r7}                   ; 080E4748
pop   {r0}                      ; 080E474A
bx    r0                        ; 080E474C
.pool                           ; 080E474E

Sub080E4768:
; Level victory substate 21
push  {r4-r7,lr}                ; 080E4768
mov   r7,r10                    ; 080E476A
mov   r6,r9                     ; 080E476C
mov   r5,r8                     ; 080E476E
push  {r5-r7}                   ; 080E4770
mov   r10,r0                    ; 080E4772
ldr   r4,=0x03002200            ; 080E4774
ldr   r0,=0x413C                ; 080E4776
add   r5,r4,r0                  ; 080E4778  0300633C
ldrh  r0,[r5]                   ; 080E477A  r5 = world number, 0-indexed *2
lsr   r0,r0,0x1                 ; 080E477C
add   r2,r0,0x1                 ; 080E477E
ldr   r0,=0x030021A0            ; 080E4780  Score calc layer 3 buffer (02009758)
ldr   r3,[r0]                   ; 080E4782  r3 = 02009758
ldr   r0,=ScoreDigitTilesLower  ; 080E4784
lsl   r1,r2,0x1                 ; 080E4786
add   r0,r1,r0                  ; 080E4788
ldrh  r2,[r0]                   ; 080E478A
mov   r0,r3                     ; 080E478C
add   r0,0xE8                   ; 080E478E
strh  r2,[r0]                   ; 080E4790
ldr   r0,=ScoreDigitTilesUpper  ; 080E4792
add   r1,r1,r0                  ; 080E4794
ldrh  r0,[r1]                   ; 080E4796
add   r3,0xA8                   ; 080E4798
strh  r0,[r3]                   ; 080E479A
ldrh  r1,[r5]                   ; 080E479C
lsl   r0,r1,0x1                 ; 080E479E
add   r0,r0,r1                  ; 080E47A0
lsl   r1,r0,0x1                 ; 080E47A2
lsl   r0,r0,0x11                ; 080E47A4
lsr   r0,r0,0x10                ; 080E47A6
mov   r9,r0                     ; 080E47A8
mov   r3,0x8                    ; 080E47AA
mov   r8,r3                     ; 080E47AC
mov   r0,r1                     ; 080E47AE
add   r0,0x8                    ; 080E47B0
ldr   r3,=0x496D                ; 080E47B2
add   r2,r4,r3                  ; 080E47B4
add   r0,r0,r2                  ; 080E47B6
ldrb  r0,[r0]                   ; 080E47B8
cmp   r0,0x0                    ; 080E47BA
bne   @@Code080E47CA            ; 080E47BC
mov   r0,r1                     ; 080E47BE
add   r0,0x9                    ; 080E47C0
add   r0,r0,r2                  ; 080E47C2
ldrb  r0,[r0]                   ; 080E47C4
cmp   r0,0x0                    ; 080E47C6
beq   @@Code080E47CE            ; 080E47C8
@@Code080E47CA:
mov   r0,0xA                    ; 080E47CA
mov   r8,r0                     ; 080E47CC
@@Code080E47CE:
mov   r5,0x0                    ; 080E47CE
cmp   r5,r8                     ; 080E47D0
bhs   @@Code080E4844            ; 080E47D2
@@Code080E47D4:
mov   r6,0x0                    ; 080E47D4
mov   r2,0x0                    ; 080E47D6
mov   r3,r9                     ; 080E47D8
add   r1,r3,r5                  ; 080E47DA
ldr   r3,=0x4908                ; 080E47DC
add   r0,r4,r3                  ; 080E47DE
add   r0,r1,r0                  ; 080E47E0
ldrb  r4,[r0]                   ; 080E47E2
add   r7,r5,0x1                 ; 080E47E4
cmp   r4,0x0                    ; 080E47E6
beq   @@Code080E480C            ; 080E47E8
mov   r2,0xB                    ; 080E47EA
mov   r6,0xA                    ; 080E47EC
cmp   r4,0x63                   ; 080E47EE
bhi   @@Code080E480C            ; 080E47F0
mov   r2,0x0                    ; 080E47F2
cmp   r4,0x9                    ; 080E47F4
bls   @@Code080E480A            ; 080E47F6
@@Code080E47F8:
mov   r0,r4                     ; 080E47F8
sub   r0,0xA                    ; 080E47FA
lsl   r0,r0,0x10                ; 080E47FC
lsr   r4,r0,0x10                ; 080E47FE
add   r0,r2,0x1                 ; 080E4800
lsl   r0,r0,0x10                ; 080E4802
lsr   r2,r0,0x10                ; 080E4804
cmp   r4,0x9                    ; 080E4806
bhi   @@Code080E47F8            ; 080E4808
@@Code080E480A:
mov   r6,r4                     ; 080E480A
@@Code080E480C:
ldr   r3,=0x03002200            ; 080E480C
ldr   r4,=0x496D                ; 080E480E
add   r0,r3,r4                  ; 080E4810
add   r0,r1,r0                  ; 080E4812
ldrb  r1,[r0]                   ; 080E4814
mov   r0,0xF                    ; 080E4816
and   r0,r1                     ; 080E4818
cmp   r0,0x0                    ; 080E481A
bne   @@Code080E482A            ; 080E481C
ldr   r1,=0x413E                ; 080E481E
add   r0,r3,r1                  ; 080E4820
ldrh  r0,[r0]                   ; 080E4822
lsr   r0,r0,0x1                 ; 080E4824
cmp   r0,r5                     ; 080E4826
bne   @@Code080E483A            ; 080E4828
@@Code080E482A:
mov   r0,r2                     ; 080E482A
mov   r1,r6                     ; 080E482C
mov   r2,r5                     ; 080E482E
bl    Sub080E4670               ; 080E4830
mov   r0,r5                     ; 080E4834
bl    Sub080E4474               ; 080E4836
@@Code080E483A:
lsl   r0,r7,0x10                ; 080E483A
lsr   r5,r0,0x10                ; 080E483C
ldr   r4,=0x03002200            ; 080E483E
cmp   r5,r8                     ; 080E4840
blo   @@Code080E47D4            ; 080E4842
@@Code080E4844:
ldr   r3,=0x413C                ; 080E4844
add   r0,r4,r3                  ; 080E4846
ldrh  r0,[r0]                   ; 080E4848
lsr   r0,r0,0x1                 ; 080E484A
lsl   r0,r0,0x1                 ; 080E484C
ldr   r4,=0x0202C8A4            ; 080E484E
add   r0,r0,r4                  ; 080E4850
ldrh  r0,[r0]                   ; 080E4852
bl    Sub080E3FA8               ; 080E4854
ldr   r0,=0x030021A0            ; 080E4858  Score calc layer 3 buffer (02009758)
ldr   r0,[r0]                   ; 080E485A
ldr   r1,=0x0600E000            ; 080E485C
mov   r2,0x90                   ; 080E485E
lsl   r2,r2,0x2                 ; 080E4860  240 halfwords = 480 bytes
bl    swi_MemoryCopy4or2        ; 080E4862  Memory copy/fill, 4- or 2-byte blocks
mov   r1,r10                    ; 080E4866
ldrh  r0,[r1,0x4]               ; 080E4868
add   r0,0x2                    ; 080E486A
strh  r0,[r1,0x4]               ; 080E486C
pop   {r3-r5}                   ; 080E486E
mov   r8,r3                     ; 080E4870
mov   r9,r4                     ; 080E4872
mov   r10,r5                    ; 080E4874
pop   {r4-r7}                   ; 080E4876
pop   {r0}                      ; 080E4878
bx    r0                        ; 080E487A
.pool                           ; 080E487C

Sub080E48A4:
; Level victory substate 20
push  {r4-r5,lr}                ; 080E48A4
mov   r5,r0                     ; 080E48A6
ldr   r2,=0x03002200            ; 080E48A8
ldr   r1,=0x413C                ; 080E48AA
add   r0,r2,r1                  ; 080E48AC  r0 = 0300633C
ldrh  r1,[r0]                   ; 080E48AE  r1 = world number, 0-indexed *2
lsl   r0,r1,0x1                 ; 080E48B0
add   r0,r0,r1                  ; 080E48B2
lsl   r1,r0,0x1                 ; 080E48B4
mov   r0,r1                     ; 080E48B6
add   r0,0x8                    ; 080E48B8
ldr   r3,=0x496D                ; 080E48BA
add   r2,r2,r3                  ; 080E48BC
add   r0,r0,r2                  ; 080E48BE
ldrb  r0,[r0]                   ; 080E48C0
cmp   r0,0x0                    ; 080E48C2
bne   @@Code080E48D2            ; 080E48C4
mov   r0,r1                     ; 080E48C6
add   r0,0x9                    ; 080E48C8
add   r0,r0,r2                  ; 080E48CA
ldrb  r0,[r0]                   ; 080E48CC
cmp   r0,0x0                    ; 080E48CE
beq   @@Code080E48E8            ; 080E48D0
@@Code080E48D2:
ldr   r0,=Data082077B0          ; 080E48D2
b     @@Code080E48EA            ; 080E48D4
.pool                           ; 080E48D6

@@Code080E48E8:
ldr   r0,=Data082075F4          ; 080E48E8
@@Code080E48EA:
ldr   r4,=0x0201FC00            ; 080E48EA  decompressed graphics buffer
mov   r1,r4                     ; 080E48EC
bl    swi_LZ77_WRAM             ; 080E48EE  LZ77 decompress (WRAM)
ldr   r0,=0x030021A0            ; 080E48F2  Score calc layer 3 buffer (02009758)
ldr   r1,[r0]                   ; 080E48F4  r1 = [030021A0] (02009758)
mov   r2,0x90                   ; 080E48F6
lsl   r2,r2,0x1                 ; 080E48F8  120 words = 480 bytes
mov   r0,r4                     ; 080E48FA
bl    swi_MemoryCopy32          ; 080E48FC  Memory copy/fill, 32-byte blocks
ldrh  r0,[r5,0x4]               ; 080E4900
add   r0,0x2                    ; 080E4902
strh  r0,[r5,0x4]               ; 080E4904
pop   {r4-r5}                   ; 080E4906
pop   {r0}                      ; 080E4908
bx    r0                        ; 080E490A
.pool                           ; 080E490C

Sub080E4918:
; Level victory substate 1F
push  {r4-r5,lr}                ; 080E4918
add   sp,-0x4                   ; 080E491A
mov   r5,r0                     ; 080E491C
ldr   r0,=0x03002200            ; 080E491E
ldr   r1,=0x488C                ; 080E4920
add   r4,r0,r1                  ; 080E4922
ldrh  r0,[r4]                   ; 080E4924
add   r0,0x1                    ; 080E4926
strh  r0,[r4]                   ; 080E4928
lsl   r0,r0,0x10                ; 080E492A
lsr   r0,r0,0x10                ; 080E492C
cmp   r0,0x1E                   ; 080E492E
bls   @@Code080E494E            ; 080E4930
mov   r1,sp                     ; 080E4932
ldr   r2,=0x017F                ; 080E4934
mov   r0,r2                     ; 080E4936
strh  r0,[r1]                   ; 080E4938
ldr   r1,=0x0600E000            ; 080E493A
ldr   r2,=0x01000400            ; 080E493C
mov   r0,sp                     ; 080E493E
bl    swi_MemoryCopy4or2        ; 080E4940  Memory copy/fill, 4- or 2-byte blocks
ldrh  r0,[r5,0x4]               ; 080E4944
add   r0,0x2                    ; 080E4946
strh  r0,[r5,0x4]               ; 080E4948
mov   r0,0xF                    ; 080E494A
strh  r0,[r4]                   ; 080E494C
@@Code080E494E:
add   sp,0x4                    ; 080E494E
pop   {r4-r5}                   ; 080E4950
pop   {r0}                      ; 080E4952
bx    r0                        ; 080E4954
.pool                           ; 080E4956

Sub080E496C:
; subroutine: Determine goal minigame
push  {r4-r5,lr}                ; 080E496C
bl    Sub08035648               ; 080E496E
ldr   r0,=0x03007240            ; 080E4972  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E4974
ldr   r1,=0x29CC                ; 080E4976
add   r0,r0,r1                  ; 080E4978
ldrh  r2,[r0]                   ; 080E497A
mov   r0,0x1                    ; 080E497C
ldr   r3,=0x03002200            ; 080E497E
ldr   r4,=0x413C                ; 080E4980
add   r1,r3,r4                  ; 080E4982
and   r0,r2                     ; 080E4984
ldrh  r1,[r1]                   ; 080E4986
add   r0,r0,r1                  ; 080E4988
lsl   r0,r0,0x10                ; 080E498A
lsr   r1,r0,0x10                ; 080E498C
ldr   r4,=Data081942D4          ; 080E498E
add   r0,r1,r4                  ; 080E4990
ldrb  r0,[r0]                   ; 080E4992
ldr   r5,=0x48AA                ; 080E4994
add   r2,r3,r5                  ; 080E4996
strh  r0,[r2]                   ; 080E4998
cmp   r0,0x8                    ; 080E499A
bne   @@Code080E49B0            ; 080E499C
ldr   r5,=0x407E                ; 080E499E
add   r0,r3,r5                  ; 080E49A0
ldrh  r0,[r0]                   ; 080E49A2
cmp   r0,0x1                    ; 080E49A4
bne   @@Code080E49B0            ; 080E49A6
sub   r0,r1,0x1                 ; 080E49A8
add   r0,r0,r4                  ; 080E49AA
ldrb  r0,[r0]                   ; 080E49AC
strh  r0,[r2]                   ; 080E49AE
@@Code080E49B0:
pop   {r4-r5}                   ; 080E49B0
pop   {r0}                      ; 080E49B2
bx    r0                        ; 080E49B4
.pool                           ; 080E49B6

Sub080E49D4:
; subroutine: copy score calculation layer 3 tilemap to VRAM
push  {r4-r6,lr}                ; 080E49D4
mov   r3,0x0                    ; 080E49D6  loop index
ldr   r6,=0x0600E080            ; 080E49D8  VRAM destination for layer 3 tilemap
ldr   r5,=0x030021A0            ; 080E49DA  Score calc layer 3 buffer (02009758)
ldr   r4,=0x023F                ; 080E49DC  loop max index
@@Code080E49DE:
lsl   r1,r3,0x1                 ; 080E49DE \
add   r2,r1,r6                  ; 080E49E0
ldr   r0,[r5]                   ; 080E49E2
add   r0,r0,r1                  ; 080E49E4
ldrh  r0,[r0]                   ; 080E49E6
strh  r0,[r2]                   ; 080E49E8
add   r0,r3,0x1                 ; 080E49EA
lsl   r0,r0,0x10                ; 080E49EC
lsr   r3,r0,0x10                ; 080E49EE
cmp   r3,r4                     ; 080E49F0
bls   @@Code080E49DE            ; 080E49F2 /
pop   {r4-r6}                   ; 080E49F4
pop   {r0}                      ; 080E49F6
bx    r0                        ; 080E49F8
.pool                           ; 080E49FA

Sub080E4A08:
push  {r4-r7,lr}                ; 080E4A08
mov   r7,r9                     ; 080E4A0A
mov   r6,r8                     ; 080E4A0C
push  {r6-r7}                   ; 080E4A0E
mov   r9,r0                     ; 080E4A10
ldrh  r0,[r0,0x4]               ; 080E4A12
cmp   r0,0x3C                   ; 080E4A14
bls   @@Code080E4AB2            ; 080E4A16
mov   r1,r9                     ; 080E4A18
ldrh  r0,[r1,0xA]               ; 080E4A1A
sub   r0,0x1                    ; 080E4A1C
strh  r0,[r1,0xA]               ; 080E4A1E
lsl   r0,r0,0x10                ; 080E4A20
cmp   r0,0x0                    ; 080E4A22
bge   @@Code080E4AB2            ; 080E4A24
mov   r0,0x5                    ; 080E4A26
strh  r0,[r1,0xA]               ; 080E4A28
ldrh  r7,[r1,0x8]               ; 080E4A2A
ldr   r4,=0x03002200            ; 080E4A2C
ldr   r1,=0x4960                ; 080E4A2E
add   r0,r4,r1                  ; 080E4A30
mov   r1,0x1                    ; 080E4A32
mov   r8,r1                     ; 080E4A34
mov   r1,r8                     ; 080E4A36
strb  r1,[r0]                   ; 080E4A38
ldr   r0,=DataPtrs081944A8      ; 080E4A3A
lsl   r6,r7,0x2                 ; 080E4A3C
add   r0,r6,r0                  ; 080E4A3E
ldr   r0,[r0]                   ; 080E4A40
ldr   r0,[r0]                   ; 080E4A42
ldr   r5,=0x0201FC00            ; 080E4A44  decompressed graphics buffer
mov   r1,r5                     ; 080E4A46
bl    swi_LZ77_WRAM             ; 080E4A48  LZ77 decompress (WRAM)
ldr   r1,=0x47AC                ; 080E4A4C
add   r0,r4,r1                  ; 080E4A4E
str   r5,[r0]                   ; 080E4A50
ldr   r0,=0x4860                ; 080E4A52
add   r1,r4,r0                  ; 080E4A54
mov   r0,0x80                   ; 080E4A56
lsl   r0,r0,0x6                 ; 080E4A58
strh  r0,[r1]                   ; 080E4A5A
ldr   r0,=0x485A                ; 080E4A5C
add   r1,r4,r0                  ; 080E4A5E
mov   r0,0x80                   ; 080E4A60
lsl   r0,r0,0x5                 ; 080E4A62
strh  r0,[r1]                   ; 080E4A64
ldr   r1,=0x4961                ; 080E4A66
add   r0,r4,r1                  ; 080E4A68
mov   r1,r8                     ; 080E4A6A
strb  r1,[r0]                   ; 080E4A6C
ldr   r0,=0x47B0                ; 080E4A6E
add   r2,r4,r0                  ; 080E4A70
ldr   r0,=Data08194498          ; 080E4A72
add   r6,r6,r0                  ; 080E4A74
ldr   r0,[r6]                   ; 080E4A76
ldr   r1,=Data082237CC          ; 080E4A78
add   r0,r0,r1                  ; 080E4A7A
str   r0,[r2]                   ; 080E4A7C
ldr   r0,=0x4862                ; 080E4A7E
add   r1,r4,r0                  ; 080E4A80
mov   r0,0xD0                   ; 080E4A82
lsl   r0,r0,0x6                 ; 080E4A84
strh  r0,[r1]                   ; 080E4A86
ldr   r1,=0x485C                ; 080E4A88
add   r4,r4,r1                  ; 080E4A8A
mov   r0,0xA0                   ; 080E4A8C
lsl   r0,r0,0x4                 ; 080E4A8E
strh  r0,[r4]                   ; 080E4A90
lsl   r0,r7,0xA                 ; 080E4A92
ldr   r1,=Data082068E0          ; 080E4A94
add   r0,r0,r1                  ; 080E4A96
ldr   r1,=0x06001000            ; 080E4A98
mov   r2,0x80                   ; 080E4A9A
lsl   r2,r2,0x2                 ; 080E4A9C
bl    swi_MemoryCopy4or2        ; 080E4A9E  Memory copy/fill, 4- or 2-byte blocks
add   r0,r7,0x1                 ; 080E4AA2
lsl   r0,r0,0x10                ; 080E4AA4
lsr   r7,r0,0x10                ; 080E4AA6
cmp   r7,0x2                    ; 080E4AA8
bls   @@Code080E4AAE            ; 080E4AAA
mov   r7,0x0                    ; 080E4AAC
@@Code080E4AAE:
mov   r0,r9                     ; 080E4AAE
strh  r7,[r0,0x8]               ; 080E4AB0
@@Code080E4AB2:
pop   {r3-r4}                   ; 080E4AB2
mov   r8,r3                     ; 080E4AB4
mov   r9,r4                     ; 080E4AB6
pop   {r4-r7}                   ; 080E4AB8
pop   {r0}                      ; 080E4ABA
bx    r0                        ; 080E4ABC
.pool                           ; 080E4ABE

Sub080E4AFC:
push  {r4-r7,lr}                ; 080E4AFC
mov   r7,r10                    ; 080E4AFE
mov   r6,r9                     ; 080E4B00
mov   r5,r8                     ; 080E4B02
push  {r5-r7}                   ; 080E4B04
add   sp,-0x10                  ; 080E4B06
mov   r8,r0                     ; 080E4B08
ldr   r0,[sp,0x30]              ; 080E4B0A
ldr   r4,[sp,0x34]              ; 080E4B0C
ldr   r5,[sp,0x38]              ; 080E4B0E
ldr   r6,[sp,0x3C]              ; 080E4B10
mov   r9,r6                     ; 080E4B12
lsl   r1,r1,0x10                ; 080E4B14
lsl   r2,r2,0x10                ; 080E4B16
lsr   r7,r2,0x10                ; 080E4B18
lsl   r3,r3,0x10                ; 080E4B1A
lsr   r3,r3,0x10                ; 080E4B1C
mov   r12,r3                    ; 080E4B1E
lsl   r6,r0,0x10                ; 080E4B20
lsr   r0,r6,0x10                ; 080E4B22
str   r0,[sp]                   ; 080E4B24
lsl   r4,r4,0x10                ; 080E4B26
lsr   r2,r4,0x10                ; 080E4B28
str   r2,[sp,0x4]               ; 080E4B2A
lsl   r5,r5,0x10                ; 080E4B2C
lsr   r0,r5,0x10                ; 080E4B2E
mov   r10,r0                    ; 080E4B30
mov   r2,r9                     ; 080E4B32
lsl   r2,r2,0x10                ; 080E4B34
mov   r9,r2                     ; 080E4B36
lsr   r2,r2,0x10                ; 080E4B38
str   r2,[sp,0x8]               ; 080E4B3A
ldr   r0,=0x03007240            ; 080E4B3C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E4B3E
ldr   r2,=0x266C                ; 080E4B40
add   r2,r0,r2                  ; 080E4B42
str   r2,[sp,0xC]               ; 080E4B44
lsr   r3,r1,0x10                ; 080E4B46
cmp   r3,0x0                    ; 080E4B48
beq   @@Code080E4B8A            ; 080E4B4A
lsl   r1,r3,0x11                ; 080E4B4C
lsr   r1,r1,0x10                ; 080E4B4E
ldr   r2,=ScoreDigitTilesUpper  ; 080E4B50
add   r0,r1,r2                  ; 080E4B52
ldrh  r3,[r0]                   ; 080E4B54
mov   r0,r12                    ; 080E4B56
orr   r3,r0                     ; 080E4B58
ldr   r0,=0x030021A0            ; 080E4B5A  Score calc layer 3 buffer (02009758)
ldr   r2,[r0]                   ; 080E4B5C
lsr   r0,r6,0x11                ; 080E4B5E
lsl   r0,r0,0x1                 ; 080E4B60
add   r0,r2,r0                  ; 080E4B62
strh  r3,[r0]                   ; 080E4B64
lsr   r0,r5,0x11                ; 080E4B66
lsl   r0,r0,0x1                 ; 080E4B68
add   r0,r2,r0                  ; 080E4B6A
strh  r3,[r0]                   ; 080E4B6C
ldr   r5,=ScoreDigitTilesLower  ; 080E4B6E
add   r1,r1,r5                  ; 080E4B70
ldrh  r3,[r1]                   ; 080E4B72
mov   r6,r12                    ; 080E4B74
orr   r3,r6                     ; 080E4B76
lsr   r0,r4,0x11                ; 080E4B78
lsl   r0,r0,0x1                 ; 080E4B7A
add   r0,r2,r0                  ; 080E4B7C
strh  r3,[r0]                   ; 080E4B7E
mov   r1,r9                     ; 080E4B80
lsr   r0,r1,0x11                ; 080E4B82
lsl   r0,r0,0x1                 ; 080E4B84
add   r2,r2,r0                  ; 080E4B86
strh  r3,[r2]                   ; 080E4B88
@@Code080E4B8A:
mov   r3,r7                     ; 080E4B8A
lsl   r0,r3,0x10                ; 080E4B8C
cmp   r0,0x0                    ; 080E4B8E
blt   @@Code080E4BDC            ; 080E4B90
lsl   r1,r3,0x11                ; 080E4B92
lsr   r1,r1,0x10                ; 080E4B94
ldr   r2,=ScoreDigitTilesUpper  ; 080E4B96
add   r0,r1,r2                  ; 080E4B98
ldrh  r3,[r0]                   ; 080E4B9A
mov   r4,r12                    ; 080E4B9C
orr   r3,r4                     ; 080E4B9E
ldr   r5,=0x030021A0            ; 080E4BA0  Score calc layer 3 buffer (02009758)
ldr   r2,[r5]                   ; 080E4BA2
ldr   r0,[sp]                   ; 080E4BA4
add   r0,0x2                    ; 080E4BA6
asr   r0,r0,0x1                 ; 080E4BA8
lsl   r0,r0,0x1                 ; 080E4BAA
add   r0,r2,r0                  ; 080E4BAC
strh  r3,[r0]                   ; 080E4BAE
mov   r0,r10                    ; 080E4BB0
add   r0,0x2                    ; 080E4BB2
asr   r0,r0,0x1                 ; 080E4BB4
lsl   r0,r0,0x1                 ; 080E4BB6
add   r0,r2,r0                  ; 080E4BB8
strh  r3,[r0]                   ; 080E4BBA
ldr   r6,=ScoreDigitTilesLower  ; 080E4BBC
add   r1,r1,r6                  ; 080E4BBE
ldrh  r3,[r1]                   ; 080E4BC0
orr   r3,r4                     ; 080E4BC2
ldr   r0,[sp,0x4]               ; 080E4BC4
add   r0,0x2                    ; 080E4BC6
asr   r0,r0,0x1                 ; 080E4BC8
lsl   r0,r0,0x1                 ; 080E4BCA
add   r0,r2,r0                  ; 080E4BCC
strh  r3,[r0]                   ; 080E4BCE
ldr   r0,[sp,0x8]               ; 080E4BD0
add   r0,0x2                    ; 080E4BD2
asr   r0,r0,0x1                 ; 080E4BD4
lsl   r0,r0,0x1                 ; 080E4BD6
add   r2,r2,r0                  ; 080E4BD8
strh  r3,[r2]                   ; 080E4BDA
@@Code080E4BDC:
mov   r0,0x0                    ; 080E4BDC
mov   r12,r0                    ; 080E4BDE
mov   r7,0x0                    ; 080E4BE0
mov   r1,r8                     ; 080E4BE2
ldrh  r0,[r1,0xE]               ; 080E4BE4
ldrh  r2,[r1,0xC]               ; 080E4BE6
add   r0,r0,r2                  ; 080E4BE8
lsl   r0,r0,0x10                ; 080E4BEA
lsr   r0,r0,0x10                ; 080E4BEC
ldrh  r4,[r1,0x10]              ; 080E4BEE
add   r0,r0,r4                  ; 080E4BF0
lsl   r0,r0,0x10                ; 080E4BF2
lsr   r3,r0,0x10                ; 080E4BF4
cmp   r3,0x63                   ; 080E4BF6
bls   @@Code080E4BFC            ; 080E4BF8
mov   r3,0x64                   ; 080E4BFA
@@Code080E4BFC:
ldr   r5,[sp,0xC]               ; 080E4BFC
strh  r3,[r5,0x4]               ; 080E4BFE
cmp   r3,0x63                   ; 080E4C00
bls   @@Code080E4C2E            ; 080E4C02
mov   r7,0xB                    ; 080E4C04
mov   r3,0xA                    ; 080E4C06
b     @@Code080E4C32            ; 080E4C08
.pool                           ; 080E4C0A

@@Code080E4C20:
add   r0,r7,0x1                 ; 080E4C20
lsl   r0,r0,0x10                ; 080E4C22
lsr   r7,r0,0x10                ; 080E4C24
mov   r0,r3                     ; 080E4C26
sub   r0,0xA                    ; 080E4C28
lsl   r0,r0,0x10                ; 080E4C2A
lsr   r3,r0,0x10                ; 080E4C2C
@@Code080E4C2E:
cmp   r3,0x9                    ; 080E4C2E
bhi   @@Code080E4C20            ; 080E4C30
@@Code080E4C32:
lsl   r1,r3,0x11                ; 080E4C32
ldr   r5,=ScoreDigitTilesUpper  ; 080E4C34
lsr   r1,r1,0x10                ; 080E4C36
add   r0,r1,r5                  ; 080E4C38
ldrh  r3,[r0]                   ; 080E4C3A
ldr   r6,=0x030021A0            ; 080E4C3C  Score calc layer 3 buffer (02009758)
ldr   r2,[r6]                   ; 080E4C3E
mov   r4,0xEC                   ; 080E4C40
lsl   r4,r4,0x2                 ; 080E4C42
add   r0,r2,r4                  ; 080E4C44
strh  r3,[r0]                   ; 080E4C46
ldr   r4,=ScoreDigitTilesLower  ; 080E4C48
add   r1,r1,r4                  ; 080E4C4A
ldrh  r3,[r1]                   ; 080E4C4C
mov   r1,0xFC                   ; 080E4C4E
lsl   r1,r1,0x2                 ; 080E4C50
add   r0,r2,r1                  ; 080E4C52
strh  r3,[r0]                   ; 080E4C54
mov   r3,r7                     ; 080E4C56
cmp   r3,0x0                    ; 080E4C58
beq   @@Code080E4C74            ; 080E4C5A
lsl   r0,r3,0x11                ; 080E4C5C
lsr   r0,r0,0x10                ; 080E4C5E
add   r1,r0,r5                  ; 080E4C60
ldrh  r3,[r1]                   ; 080E4C62
ldr   r5,=0x03AE                ; 080E4C64
add   r1,r2,r5                  ; 080E4C66
strh  r3,[r1]                   ; 080E4C68
add   r0,r0,r4                  ; 080E4C6A
ldrh  r3,[r0]                   ; 080E4C6C
ldr   r1,=0x03EE                ; 080E4C6E
add   r0,r2,r1                  ; 080E4C70
strh  r3,[r0]                   ; 080E4C72
@@Code080E4C74:
mov   r3,r12                    ; 080E4C74
lsl   r1,r3,0x11                ; 080E4C76
cmp   r3,0x0                    ; 080E4C78
beq   @@Code080E4C9C            ; 080E4C7A
lsr   r1,r1,0x10                ; 080E4C7C
ldr   r2,=ScoreDigitTilesUpper  ; 080E4C7E
add   r0,r1,r2                  ; 080E4C80
ldrh  r3,[r0]                   ; 080E4C82
ldr   r2,[r6]                   ; 080E4C84
mov   r4,0xEB                   ; 080E4C86
lsl   r4,r4,0x2                 ; 080E4C88
add   r0,r2,r4                  ; 080E4C8A
strh  r3,[r0]                   ; 080E4C8C
ldr   r5,=ScoreDigitTilesLower  ; 080E4C8E
add   r1,r1,r5                  ; 080E4C90
ldrh  r3,[r1]                   ; 080E4C92
mov   r6,0xFB                   ; 080E4C94
lsl   r6,r6,0x2                 ; 080E4C96
add   r0,r2,r6                  ; 080E4C98
strh  r3,[r0]                   ; 080E4C9A
@@Code080E4C9C:
ldr   r1,[sp,0xC]               ; 080E4C9C
ldrh  r0,[r1,0x4]               ; 080E4C9E
cmp   r0,0x1                    ; 080E4CA0
bls   @@Code080E4CB2            ; 080E4CA2
ldr   r2,=0x030021A0            ; 080E4CA4  Score calc layer 3 buffer (02009758)
ldr   r0,[r2]                   ; 080E4CA6
mov   r4,0xFD                   ; 080E4CA8
lsl   r4,r4,0x2                 ; 080E4CAA
add   r0,r0,r4                  ; 080E4CAC
ldr   r1,=0x016F                ; 080E4CAE
strh  r1,[r0]                   ; 080E4CB0
@@Code080E4CB2:
bl    Sub080E49D4               ; 080E4CB2
add   sp,0x10                   ; 080E4CB6
pop   {r3-r5}                   ; 080E4CB8
mov   r8,r3                     ; 080E4CBA
mov   r9,r4                     ; 080E4CBC
mov   r10,r5                    ; 080E4CBE
pop   {r4-r7}                   ; 080E4CC0
pop   {r0}                      ; 080E4CC2
bx    r0                        ; 080E4CC4
.pool                           ; 080E4CC6

Sub080E4CE0:
push  {r4-r5,lr}                ; 080E4CE0
ldr   r4,=0x03002200            ; 080E4CE2
ldr   r0,=0x4960                ; 080E4CE4
add   r1,r4,r0                  ; 080E4CE6
mov   r0,0x1                    ; 080E4CE8
strb  r0,[r1]                   ; 080E4CEA
ldr   r0,=DataPtrs081944A8      ; 080E4CEC
ldr   r0,[r0]                   ; 080E4CEE
ldr   r0,[r0]                   ; 080E4CF0
ldr   r5,=0x0201FC00            ; 080E4CF2  decompressed graphics buffer
mov   r1,r5                     ; 080E4CF4
bl    swi_LZ77_WRAM             ; 080E4CF6  LZ77 decompress (WRAM)
ldr   r1,=0x47AC                ; 080E4CFA
add   r0,r4,r1                  ; 080E4CFC
str   r5,[r0]                   ; 080E4CFE
ldr   r0,=0x4860                ; 080E4D00
add   r1,r4,r0                  ; 080E4D02
mov   r0,0x80                   ; 080E4D04
lsl   r0,r0,0x6                 ; 080E4D06
strh  r0,[r1]                   ; 080E4D08
ldr   r1,=0x485A                ; 080E4D0A
add   r4,r4,r1                  ; 080E4D0C
mov   r0,0x80                   ; 080E4D0E
lsl   r0,r0,0x5                 ; 080E4D10
strh  r0,[r4]                   ; 080E4D12
pop   {r4-r5}                   ; 080E4D14
pop   {r0}                      ; 080E4D16
bx    r0                        ; 080E4D18
.pool                           ; 080E4D1A

Sub080E4D38:
; Level victory substate 1E
push  {r4-r6,lr}                ; 080E4D38
mov   r4,r0                     ; 080E4D3A
bl    Sub080E4A08               ; 080E4D3C
ldr   r5,=0x03002200            ; 080E4D40
ldr   r1,=0x47C0                ; 080E4D42
add   r0,r5,r1                  ; 080E4D44
ldrh  r1,[r0]                   ; 080E4D46
ldr   r0,=0x030F                ; 080E4D48
and   r0,r1                     ; 080E4D4A
cmp   r0,0x0                    ; 080E4D4C
beq   @@Code080E4DAE            ; 080E4D4E
bl    Sub080E4CE0               ; 080E4D50
ldr   r2,=0x488C                ; 080E4D54
add   r1,r5,r2                  ; 080E4D56
mov   r0,0x0                    ; 080E4D58
strh  r0,[r1]                   ; 080E4D5A
ldr   r0,=0x4888                ; 080E4D5C
add   r1,r5,r0                  ; 080E4D5E
mov   r0,0xFF                   ; 080E4D60
strh  r0,[r1]                   ; 080E4D62
ldrh  r0,[r4,0x4]               ; 080E4D64
add   r0,0x2                    ; 080E4D66
strh  r0,[r4,0x4]               ; 080E4D68
ldr   r1,=0x4850                ; 080E4D6A
add   r4,r5,r1                  ; 080E4D6C
ldrh  r0,[r4]                   ; 080E4D6E
add   r0,0x1                    ; 080E4D70
strh  r0,[r4]                   ; 080E4D72
ldr   r2,=0x4088                ; 080E4D74
add   r0,r5,r2                  ; 080E4D76
ldrh  r3,[r0]                   ; 080E4D78
ldr   r0,=0x48A4                ; 080E4D7A
add   r6,r5,r0                  ; 080E4D7C
ldrh  r1,[r6]                   ; 080E4D7E
ldr   r2,=0x4908                ; 080E4D80
add   r0,r5,r2                  ; 080E4D82
add   r0,r3,r0                  ; 080E4D84
ldrb  r2,[r0]                   ; 080E4D86
cmp   r1,r2                     ; 080E4D88
bls   @@Code080E4DA4            ; 080E4D8A
ldr   r1,=0x496D                ; 080E4D8C
add   r0,r5,r1                  ; 080E4D8E
add   r0,r3,r0                  ; 080E4D90
ldrb  r1,[r0]                   ; 080E4D92
mov   r0,0x7F                   ; 080E4D94
and   r0,r1                     ; 080E4D96
cmp   r0,0x0                    ; 080E4D98
beq   @@Code080E4DA2            ; 080E4D9A
mov   r0,0x80                   ; 080E4D9C
orr   r2,r0                     ; 080E4D9E
strh  r2,[r4]                   ; 080E4DA0
@@Code080E4DA2:
ldrh  r1,[r6]                   ; 080E4DA2
@@Code080E4DA4:
ldr   r0,=0x03002200            ; 080E4DA4
ldr   r2,=0x4908                ; 080E4DA6
add   r0,r0,r2                  ; 080E4DA8
add   r0,r3,r0                  ; 080E4DAA
strb  r1,[r0]                   ; 080E4DAC
@@Code080E4DAE:
pop   {r4-r6}                   ; 080E4DAE
pop   {r0}                      ; 080E4DB0
bx    r0                        ; 080E4DB2
.pool                           ; 080E4DB4

Sub080E4DDC:
; Level victory substate 1D
ldrh  r1,[r0,0x4]               ; 080E4DDC
add   r1,0x2                    ; 080E4DDE
strh  r1,[r0,0x4]               ; 080E4DE0
bx    lr                        ; 080E4DE2

Sub080E4DE4:
; Level victory substate 1C
push  {r4-r7,lr}                ; 080E4DE4
mov   r5,r0                     ; 080E4DE6
mov   r4,r1                     ; 080E4DE8
bl    Sub080E4A08               ; 080E4DEA
ldrh  r1,[r4,0x4]               ; 080E4DEE
ldr   r0,=0x03002200            ; 080E4DF0
ldr   r3,=0x48A4                ; 080E4DF2
add   r2,r0,r3                  ; 080E4DF4
ldrh  r3,[r2]                   ; 080E4DF6
cmp   r1,r3                     ; 080E4DF8
bhs   @@Code080E4E08            ; 080E4DFA
mov   r0,0x3D                   ; 080E4DFC
b     @@Code080E4E92            ; 080E4DFE
.pool                           ; 080E4E00

@@Code080E4E08:
strh  r1,[r2]                   ; 080E4E08
mov   r3,0x0                    ; 080E4E0A
cmp   r1,0x63                   ; 080E4E0C
bls   @@Code080E4E2C            ; 080E4E0E
mov   r3,0xB                    ; 080E4E10
mov   r1,0xA                    ; 080E4E12
mov   r12,r0                    ; 080E4E14
ldr   r6,=ScoreDigitTilesUpper  ; 080E4E16
ldr   r7,=0x030021A0            ; 080E4E18  Score calc layer 3 buffer (02009758)
ldr   r4,=ScoreDigitTilesLower  ; 080E4E1A
b     @@Code080E4E4A            ; 080E4E1C
.pool                           ; 080E4E1E

@@Code080E4E2C:
mov   r12,r0                    ; 080E4E2C
ldr   r6,=ScoreDigitTilesUpper  ; 080E4E2E
ldr   r7,=0x030021A0            ; 080E4E30  Score calc layer 3 buffer (02009758)
ldr   r4,=ScoreDigitTilesLower  ; 080E4E32
cmp   r1,0x9                    ; 080E4E34
bls   @@Code080E4E4A            ; 080E4E36
@@Code080E4E38:
add   r0,r3,0x1                 ; 080E4E38
lsl   r0,r0,0x10                ; 080E4E3A
lsr   r3,r0,0x10                ; 080E4E3C
mov   r0,r1                     ; 080E4E3E
sub   r0,0xA                    ; 080E4E40
lsl   r0,r0,0x10                ; 080E4E42
lsr   r1,r0,0x10                ; 080E4E44
cmp   r1,0x9                    ; 080E4E46
bhi   @@Code080E4E38            ; 080E4E48
@@Code080E4E4A:
mov   r0,r1                     ; 080E4E4A
lsl   r1,r0,0x1                 ; 080E4E4C
add   r1,r1,r6                  ; 080E4E4E
ldrh  r1,[r1]                   ; 080E4E50
ldr   r2,[r7]                   ; 080E4E52
strh  r1,[r2,0x30]              ; 080E4E54
lsl   r0,r0,0x1                 ; 080E4E56
add   r0,r0,r4                  ; 080E4E58
ldrh  r1,[r0]                   ; 080E4E5A
mov   r0,r2                     ; 080E4E5C
add   r0,0x70                   ; 080E4E5E
strh  r1,[r0]                   ; 080E4E60
cmp   r3,0x0                    ; 080E4E62
beq   @@Code080E4E78            ; 080E4E64
lsl   r0,r3,0x1                 ; 080E4E66
add   r1,r0,r6                  ; 080E4E68
ldrh  r1,[r1]                   ; 080E4E6A
strh  r1,[r2,0x2E]              ; 080E4E6C
add   r0,r0,r4                  ; 080E4E6E
ldrh  r1,[r0]                   ; 080E4E70
mov   r0,r2                     ; 080E4E72
add   r0,0x6E                   ; 080E4E74
strh  r1,[r0]                   ; 080E4E76
@@Code080E4E78:
ldr   r0,=0x48A4                ; 080E4E78
add   r0,r12                    ; 080E4E7A
ldrh  r0,[r0]                   ; 080E4E7C
cmp   r0,0x1                    ; 080E4E7E
bls   @@Code080E4E8A            ; 080E4E80
ldr   r0,[r7]                   ; 080E4E82
add   r0,0x74                   ; 080E4E84
ldr   r1,=0x016F                ; 080E4E86
strh  r1,[r0]                   ; 080E4E88
@@Code080E4E8A:
bl    Sub080E49D4               ; 080E4E8A
ldrh  r0,[r5,0x4]               ; 080E4E8E
add   r0,0x2                    ; 080E4E90
@@Code080E4E92:
strh  r0,[r5,0x4]               ; 080E4E92
pop   {r4-r7}                   ; 080E4E94
pop   {r0}                      ; 080E4E96
bx    r0                        ; 080E4E98
.pool                           ; 080E4E9A

Sub080E4EB0:
; Level victory substate 1A
push  {r4-r5,lr}                ; 080E4EB0
mov   r4,r0                     ; 080E4EB2
mov   r5,r1                     ; 080E4EB4
bl    Sub080E4A08               ; 080E4EB6
ldr   r0,=0x03002200            ; 080E4EBA
ldr   r1,=0x489C                ; 080E4EBC
add   r3,r0,r1                  ; 080E4EBE
ldrh  r1,[r3]                   ; 080E4EC0
mov   r0,0xFE                   ; 080E4EC2
and   r0,r1                     ; 080E4EC4
lsl   r1,r0,0x10                ; 080E4EC6
cmp   r0,0x17                   ; 080E4EC8
bls   @@Code080E4EE0            ; 080E4ECA
mov   r1,0x37                   ; 080E4ECC
strh  r1,[r4,0x4]               ; 080E4ECE
mov   r0,0x1E                   ; 080E4ED0
strb  r0,[r5,0xA]               ; 080E4ED2
b     @@Code080E4F04            ; 080E4ED4
.pool                           ; 080E4ED6

@@Code080E4EE0:
ldr   r0,=Data081944B4          ; 080E4EE0
lsr   r1,r1,0x10                ; 080E4EE2
add   r0,r1,r0                  ; 080E4EE4
ldrh  r2,[r0]                   ; 080E4EE6
ldr   r0,=Data081944CC          ; 080E4EE8
add   r1,r1,r0                  ; 080E4EEA
ldrh  r1,[r1]                   ; 080E4EEC
ldr   r0,=0x030021A0            ; 080E4EEE  Score calc layer 3 buffer (02009758)
ldr   r0,[r0]                   ; 080E4EF0
lsr   r2,r2,0x1                 ; 080E4EF2
lsl   r2,r2,0x1                 ; 080E4EF4
add   r0,r0,r2                  ; 080E4EF6
strh  r1,[r0]                   ; 080E4EF8
ldrh  r0,[r3]                   ; 080E4EFA
add   r0,0x1                    ; 080E4EFC
strh  r0,[r3]                   ; 080E4EFE
bl    Sub080E49D4               ; 080E4F00
@@Code080E4F04:
pop   {r4-r5}                   ; 080E4F04
pop   {r0}                      ; 080E4F06
bx    r0                        ; 080E4F08
.pool                           ; 080E4F0A

Sub080E4F18:
; Level victory substate 19
push  {r4-r5,lr}                ; 080E4F18
mov   r4,r0                     ; 080E4F1A
mov   r5,r1                     ; 080E4F1C
ldr   r1,=0x03006258            ; 080E4F1E
mov   r0,0x21                   ; 080E4F20
bl    PlayYISound               ; 080E4F22
ldrh  r0,[r4,0x4]               ; 080E4F26
add   r0,0x2                    ; 080E4F28
strh  r0,[r4,0x4]               ; 080E4F2A
mov   r0,r4                     ; 080E4F2C
mov   r1,r5                     ; 080E4F2E
bl    Sub080E4EB0               ; 080E4F30
pop   {r4-r5}                   ; 080E4F34
pop   {r0}                      ; 080E4F36
bx    r0                        ; 080E4F38
.pool                           ; 080E4F3A

Sub080E4F40:
; Level victory substate 17
push  {r4-r5,lr}                ; 080E4F40
mov   r5,r0                     ; 080E4F42
mov   r4,r1                     ; 080E4F44
bl    Sub080E4A08               ; 080E4F46
mov   r1,0x30                   ; 080E4F4A
strb  r1,[r4,0xA]               ; 080E4F4C
ldr   r0,=0x03002200            ; 080E4F4E
ldr   r1,=0x489C                ; 080E4F50
add   r3,r0,r1                  ; 080E4F52
ldrh  r1,[r3]                   ; 080E4F54
mov   r0,0xFE                   ; 080E4F56
and   r0,r1                     ; 080E4F58
lsl   r1,r0,0x10                ; 080E4F5A
cmp   r0,0x13                   ; 080E4F5C
bls   @@Code080E4F7C            ; 080E4F5E
mov   r0,0x37                   ; 080E4F60
ldrh  r1,[r4,0x4]               ; 080E4F62
cmp   r1,0x64                   ; 080E4F64
bne   @@Code080E4F6E            ; 080E4F66
mov   r0,0x0                    ; 080E4F68
strh  r0,[r3]                   ; 080E4F6A
mov   r0,0x31                   ; 080E4F6C
@@Code080E4F6E:
strh  r0,[r5,0x4]               ; 080E4F6E
b     @@Code080E4FA0            ; 080E4F70
.pool                           ; 080E4F72

@@Code080E4F7C:
ldr   r0,=Data081944E4          ; 080E4F7C
lsr   r1,r1,0x10                ; 080E4F7E
add   r0,r1,r0                  ; 080E4F80
ldrh  r2,[r0]                   ; 080E4F82
ldr   r0,=Data081944F8          ; 080E4F84
add   r1,r1,r0                  ; 080E4F86
ldrh  r1,[r1]                   ; 080E4F88
ldr   r0,=0x030021A0            ; 080E4F8A  Score calc layer 3 buffer (02009758)
ldr   r0,[r0]                   ; 080E4F8C
lsr   r2,r2,0x1                 ; 080E4F8E
lsl   r2,r2,0x1                 ; 080E4F90
add   r0,r0,r2                  ; 080E4F92
strh  r1,[r0]                   ; 080E4F94
ldrh  r0,[r3]                   ; 080E4F96
add   r0,0x1                    ; 080E4F98
strh  r0,[r3]                   ; 080E4F9A
bl    Sub080E49D4               ; 080E4F9C
@@Code080E4FA0:
pop   {r4-r5}                   ; 080E4FA0
pop   {r0}                      ; 080E4FA2
bx    r0                        ; 080E4FA4
.pool                           ; 080E4FA6

Sub080E4FB4:
; Level victory substate 15
push  {r4,lr}                   ; 080E4FB4
mov   r4,r0                     ; 080E4FB6
bl    Sub080E4A08               ; 080E4FB8
ldr   r0,=0x03002200            ; 080E4FBC
ldr   r1,=0x489C                ; 080E4FBE
add   r3,r0,r1                  ; 080E4FC0
ldrh  r1,[r3]                   ; 080E4FC2
mov   r0,0xFE                   ; 080E4FC4
and   r0,r1                     ; 080E4FC6
lsl   r1,r0,0x10                ; 080E4FC8
cmp   r0,0xB                    ; 080E4FCA
bls   @@Code080E4FDC            ; 080E4FCC
mov   r0,0x3D                   ; 080E4FCE
strh  r0,[r4,0x4]               ; 080E4FD0
b     @@Code080E5000            ; 080E4FD2
.pool                           ; 080E4FD4

@@Code080E4FDC:
ldr   r0,=Data0819450C          ; 080E4FDC
lsr   r1,r1,0x10                ; 080E4FDE
add   r0,r1,r0                  ; 080E4FE0
ldrh  r2,[r0]                   ; 080E4FE2
ldr   r0,=Data08194518          ; 080E4FE4
add   r1,r1,r0                  ; 080E4FE6
ldrh  r1,[r1]                   ; 080E4FE8
ldr   r0,=0x030021A0            ; 080E4FEA  Score calc layer 3 buffer (02009758)
ldr   r0,[r0]                   ; 080E4FEC
lsr   r2,r2,0x1                 ; 080E4FEE
lsl   r2,r2,0x1                 ; 080E4FF0
add   r0,r0,r2                  ; 080E4FF2
strh  r1,[r0]                   ; 080E4FF4
ldrh  r0,[r3]                   ; 080E4FF6
add   r0,0x1                    ; 080E4FF8
strh  r0,[r3]                   ; 080E4FFA
bl    Sub080E49D4               ; 080E4FFC
@@Code080E5000:
pop   {r4}                      ; 080E5000
pop   {r0}                      ; 080E5002
bx    r0                        ; 080E5004
.pool                           ; 080E5006

Sub080E5014:
; Level victory substate 13
push  {r4-r6,lr}                ; 080E5014
mov   r5,r0                     ; 080E5016
mov   r4,r1                     ; 080E5018
bl    Sub080E4A08               ; 080E501A
mov   r0,0x30                   ; 080E501E
mov   r1,0x0                    ; 080E5020
strb  r0,[r4,0xA]               ; 080E5022
ldr   r2,=0x03002200            ; 080E5024
ldr   r3,=0x489C                ; 080E5026
add   r0,r2,r3                  ; 080E5028
strh  r1,[r0]                   ; 080E502A
mov   r3,0x29                   ; 080E502C
ldrh  r1,[r4,0x4]               ; 080E502E
mov   r6,0x4                    ; 080E5030
ldsh  r0,[r4,r6]                ; 080E5032
cmp   r0,0x0                    ; 080E5034
blt   @@Code080E5044            ; 080E5036
ldr   r4,=0x48A4                ; 080E5038
add   r0,r2,r4                  ; 080E503A
ldrh  r0,[r0]                   ; 080E503C
cmp   r1,r0                     ; 080E503E
bls   @@Code080E5044            ; 080E5040
mov   r3,0x2D                   ; 080E5042
@@Code080E5044:
strh  r3,[r5,0x4]               ; 080E5044
pop   {r4-r6}                   ; 080E5046
pop   {r0}                      ; 080E5048
bx    r0                        ; 080E504A
.pool                           ; 080E504C

Sub080E5058:
; Level victory substate 11
push  {r4-r7,lr}                ; 080E5058
mov   r7,r8                     ; 080E505A
push  {r7}                      ; 080E505C
add   sp,-0x10                  ; 080E505E
mov   r4,r0                     ; 080E5060
mov   r5,r1                     ; 080E5062
bl    Sub080E4A08               ; 080E5064
ldr   r0,=0x03002200            ; 080E5068
ldr   r2,=0x489A                ; 080E506A
add   r1,r0,r2                  ; 080E506C  03006A9A
ldrh  r0,[r1]                   ; 080E506E  flowers
sub   r0,0x1                    ; 080E5070
strh  r0,[r1]                   ; 080E5072  subtract 1 from flowers
mov   r2,0x0                    ; 080E5074
ldsh  r0,[r1,r2]                ; 080E5076
cmp   r0,0x0                    ; 080E5078
bge   @@Code080E5094            ; 080E507A
                                ;           if remaining flower count is negative, stop processing flowers?
mov   r0,0x0                    ; 080E507C
strh  r0,[r1]                   ; 080E507E
mov   r0,0x20                   ; 080E5080
strb  r0,[r5,0xA]               ; 080E5082
ldrh  r0,[r4,0x4]               ; 080E5084
add   r0,0x2                    ; 080E5086
strh  r0,[r4,0x4]               ; 080E5088
b     @@Code080E5116            ; 080E508A
.pool                           ; 080E508C

@@Code080E5094:
mov   r6,0x0                    ; 080E5094
ldrh  r3,[r4,0x10]              ; 080E5096
mov   r0,r3                     ; 080E5098
add   r0,0xA                    ; 080E509A
lsl   r0,r0,0x10                ; 080E509C
lsr   r3,r0,0x10                ; 080E509E
strh  r3,[r4,0x10]              ; 080E50A0
mov   r5,0x0                    ; 080E50A2
cmp   r3,0x9                    ; 080E50A4
bls   @@Code080E50BA            ; 080E50A6
@@Code080E50A8:
add   r0,r5,0x1                 ; 080E50A8
lsl   r0,r0,0x10                ; 080E50AA
lsr   r5,r0,0x10                ; 080E50AC
mov   r0,r3                     ; 080E50AE
sub   r0,0xA                    ; 080E50B0
lsl   r0,r0,0x10                ; 080E50B2
lsr   r3,r0,0x10                ; 080E50B4
cmp   r3,0x9                    ; 080E50B6
bhi   @@Code080E50A8            ; 080E50B8
@@Code080E50BA:
cmp   r5,0x4                    ; 080E50BA
bls   @@Code080E50C8            ; 080E50BC
mov   r6,0x80                   ; 080E50BE \ runs if flowers so far > 4: color flower row yellow?
lsl   r6,r6,0x8                 ; 080E50C0
mov   r0,r6                     ; 080E50C2
bl    Sub080E5518               ; 080E50C4 /
@@Code080E50C8:
mov   r3,0xA9                   ; 080E50C8
lsl   r3,r3,0x2                 ; 080E50CA  02A4
mov   r12,r3                    ; 080E50CC
mov   r0,0xA                    ; 080E50CE
add   r0,r12                    ; 080E50D0
mov   r8,r0                     ; 080E50D2
add   r3,0x40                   ; 080E50D4
mov   r7,r3                     ; 080E50D6
mov   r0,r7                     ; 080E50D8
add   r0,0xA                    ; 080E50DA
mov   r3,r0                     ; 080E50DC
ldrh  r0,[r4,0x10]              ; 080E50DE
cmp   r0,0x0                    ; 080E50E0
beq   @@Code080E50F8            ; 080E50E2
ldr   r0,=0x030021A0            ; 080E50E4  Score calc layer 3 buffer (02009758)
ldr   r1,[r0]                   ; 080E50E6
ldr   r0,=0x016F                ; 080E50E8
mov   r2,r0                     ; 080E50EA
mov   r0,0xBD                   ; 080E50EC
lsl   r0,r0,0x2                 ; 080E50EE
add   r1,r1,r0                  ; 080E50F0
mov   r0,r6                     ; 080E50F2
orr   r0,r2                     ; 080E50F4
strh  r0,[r1]                   ; 080E50F6
@@Code080E50F8:
mov   r2,r12                    ; 080E50F8
str   r2,[sp]                   ; 080E50FA
str   r7,[sp,0x4]               ; 080E50FC
mov   r0,r8                     ; 080E50FE
str   r0,[sp,0x8]               ; 080E5100
str   r3,[sp,0xC]               ; 080E5102
mov   r0,r4                     ; 080E5104
mov   r1,r5                     ; 080E5106
ldr   r2,=0xFFFF                ; 080E5108
mov   r3,r6                     ; 080E510A
bl    Sub080E4AFC               ; 080E510C
mov   r0,r4                     ; 080E5110
bl    Sub080E535C               ; 080E5112
@@Code080E5116:
add   sp,0x10                   ; 080E5116
pop   {r3}                      ; 080E5118
mov   r8,r3                     ; 080E511A
pop   {r4-r7}                   ; 080E511C
pop   {r0}                      ; 080E511E
bx    r0                        ; 080E5120
.pool                           ; 080E5122

Sub080E5130:
; Level victory substate 0F
push  {r4-r7,lr}                ; 080E5130
mov   r7,r9                     ; 080E5132
mov   r6,r8                     ; 080E5134
push  {r6-r7}                   ; 080E5136
add   sp,-0x10                  ; 080E5138
mov   r5,r0                     ; 080E513A
mov   r6,r1                     ; 080E513C
bl    Sub080E4A08               ; 080E513E
ldrh  r4,[r5,0xE]               ; 080E5142
cmp   r4,0x13                   ; 080E5144
bhi   @@Code080E51F4            ; 080E5146  if red coins so far > 13, stop processing red coins
ldr   r1,=0x03002200            ; 080E5148
ldr   r0,=0x48D6                ; 080E514A
add   r1,r1,r0                  ; 080E514C  03006AD6
ldrh  r0,[r1]                   ; 080E514E  red coins (remaining)
sub   r0,0x1                    ; 080E5150
strh  r0,[r1]                   ; 080E5152  subtract 1 from red coins
ldrh  r4,[r1]                   ; 080E5154  new red coins
mov   r1,0x80                   ; 080E5156
lsl   r1,r1,0x8                 ; 080E5158  8000
and   r4,r1                     ; 080E515A
cmp   r4,0x0                    ; 080E515C
bne   @@Code080E51F4            ; 080E515E  if remaining red coin count is negative, stop processing red coins
mov   r6,0x0                    ; 080E5160
ldrh  r4,[r5,0xE]               ; 080E5162
add   r0,r4,0x1                 ; 080E5164
lsl   r0,r0,0x10                ; 080E5166
lsr   r4,r0,0x10                ; 080E5168
cmp   r4,0x13                   ; 080E516A
bls   @@Code080E5184            ; 080E516C
mov   r6,r1                     ; 080E516E \ runs if red coins so far > 13: set row to yellow 20/20?
mov   r0,r6                     ; 080E5170
bl    Sub080E5550               ; 080E5172
mov   r4,0x14                   ; 080E5176
b     @@Code080E518A            ; 080E5178 /
.pool                           ; 080E517A

@@Code080E5184:
mov   r0,r5                     ; 080E5184 \ runs if red coins so far <= 13
bl    Sub080E535C               ; 080E5186 /
@@Code080E518A:
strh  r4,[r5,0xE]               ; 080E518A
mov   r3,0x0                    ; 080E518C
cmp   r4,0x9                    ; 080E518E
bls   @@Code080E51A4            ; 080E5190
@@Code080E5192:
mov   r0,r4                     ; 080E5192
sub   r0,0xA                    ; 080E5194
lsl   r0,r0,0x10                ; 080E5196
lsr   r4,r0,0x10                ; 080E5198
add   r0,r3,0x1                 ; 080E519A
lsl   r0,r0,0x10                ; 080E519C
lsr   r3,r0,0x10                ; 080E519E
cmp   r4,0x9                    ; 080E51A0
bhi   @@Code080E5192            ; 080E51A2
@@Code080E51A4:
mov   r12,r4                    ; 080E51A4
mov   r4,0xF0                   ; 080E51A6
lsl   r4,r4,0x1                 ; 080E51A8
mov   r7,r4                     ; 080E51AA
mov   r1,0xE                    ; 080E51AC
add   r1,r1,r7                  ; 080E51AE
mov   r9,r1                     ; 080E51B0
add   r4,0x40                   ; 080E51B2
mov   r8,r4                     ; 080E51B4
add   r4,0xE                    ; 080E51B6
ldrh  r0,[r5,0xE]               ; 080E51B8
cmp   r0,0x1                    ; 080E51BA
bls   @@Code080E51D0            ; 080E51BC
ldr   r0,=0x030021A0            ; 080E51BE  Score calc layer 3 buffer (02009758)
ldr   r1,[r0]                   ; 080E51C0
ldr   r0,=0x016F                ; 080E51C2
mov   r2,r0                     ; 080E51C4
add   r0,0xC5                   ; 080E51C6
add   r1,r1,r0                  ; 080E51C8
mov   r0,r6                     ; 080E51CA
orr   r0,r2                     ; 080E51CC
strh  r0,[r1]                   ; 080E51CE
@@Code080E51D0:
str   r7,[sp]                   ; 080E51D0
mov   r1,r8                     ; 080E51D2
str   r1,[sp,0x4]               ; 080E51D4
mov   r0,r9                     ; 080E51D6
str   r0,[sp,0x8]               ; 080E51D8
str   r4,[sp,0xC]               ; 080E51DA
mov   r0,r5                     ; 080E51DC
mov   r1,r3                     ; 080E51DE
mov   r2,r12                    ; 080E51E0
mov   r3,r6                     ; 080E51E2
bl    Sub080E4AFC               ; 080E51E4
b     @@Code080E5216            ; 080E51E8
.pool                           ; 080E51EA

@@Code080E51F4:
mov   r0,0x20                   ; 080E51F4
strb  r0,[r6,0xA]               ; 080E51F6
ldr   r0,=0x03002200            ; 080E51F8
ldr   r1,=0x489A                ; 080E51FA
add   r0,r0,r1                  ; 080E51FC  03006A9A
ldrh  r1,[r0]                   ; 080E51FE  flowers
ldrb  r4,[r0]                   ; 080E5200
lsr   r1,r1,0x8                 ; 080E5202
orr   r4,r1                     ; 080E5204  bitwise OR the flower count's bytes??
cmp   r4,0x0                    ; 080E5206
bne   @@Code080E5210            ; 080E5208  if 0 flowers, skip adding flowers?
ldrh  r0,[r5,0x4]               ; 080E520A \
add   r0,0x4                    ; 080E520C
strh  r0,[r5,0x4]               ; 080E520E /
@@Code080E5210:
ldrh  r0,[r5,0x4]               ; 080E5210
add   r0,0x2                    ; 080E5212
strh  r0,[r5,0x4]               ; 080E5214
@@Code080E5216:
add   sp,0x10                   ; 080E5216
pop   {r3-r4}                   ; 080E5218
mov   r8,r3                     ; 080E521A
mov   r9,r4                     ; 080E521C
pop   {r4-r7}                   ; 080E521E
pop   {r0}                      ; 080E5220
bx    r0                        ; 080E5222
.pool                           ; 080E5224

Sub080E522C:
; Level victory substate 0D
push  {r4-r7,lr}                ; 080E522C
mov   r7,r9                     ; 080E522E
mov   r6,r8                     ; 080E5230
push  {r6-r7}                   ; 080E5232
add   sp,-0x10                  ; 080E5234
mov   r5,r0                     ; 080E5236
mov   r6,r1                     ; 080E5238
bl    Sub080E4A08               ; 080E523A
ldr   r2,=0x03002200            ; 080E523E
ldr   r0,=0x48CE                ; 080E5240
add   r1,r2,r0                  ; 080E5242  03006ACE
ldrh  r4,[r1]                   ; 080E5244  stars (fixed-point, remaining)
mov   r0,r4                     ; 080E5246
sub   r0,0xA                    ; 080E5248
lsl   r0,r0,0x10                ; 080E524A
lsr   r4,r0,0x10                ; 080E524C
strh  r4,[r1]                   ; 080E524E  subtract 1.0 from stars
mov   r3,0x80                   ; 080E5250
lsl   r3,r3,0x8                 ; 080E5252  8000
and   r4,r3                     ; 080E5254
cmp   r4,0x0                    ; 080E5256
beq   @@Code080E52B6            ; 080E5258  if remaining star count is negative, stop processing stars
mov   r0,0x0                    ; 080E525A
strh  r0,[r1]                   ; 080E525C
mov   r0,0x20                   ; 080E525E
strb  r0,[r6,0xA]               ; 080E5260
ldr   r1,=0x48D6                ; 080E5262
add   r0,r2,r1                  ; 080E5264  03006AD6
ldrh  r0,[r0]                   ; 080E5266  red coins
mov   r6,0xFF                   ; 080E5268
mov   r4,r6                     ; 080E526A
and   r4,r0                     ; 080E526C
mov   r3,0xFF                   ; 080E526E
lsr   r0,r0,0x8                 ; 080E5270
orr   r0,r4                     ; 080E5272  bitwise OR the red coin count's bytes??
cmp   r0,0x0                    ; 080E5274
beq   @@Code080E528C            ; 080E5276  if 0 red coins, skip adding red coins?
ldrh  r0,[r5,0x4]               ; 080E5278 \
add   r0,0x2                    ; 080E527A  increment ? by 2
strh  r0,[r5,0x4]               ; 080E527C
b     @@Return                  ; 080E527E /
.pool                           ; 080E5280

@@Code080E528C:
ldrh  r0,[r5,0x4]               ; 080E528C
add   r1,r0,0x4                 ; 080E528E
strh  r1,[r5,0x4]               ; 080E5290
ldr   r4,=0x489A                ; 080E5292
add   r0,r2,r4                  ; 080E5294
ldrh  r0,[r0]                   ; 080E5296
mov   r4,r6                     ; 080E5298
and   r4,r0                     ; 080E529A
lsr   r0,r0,0x8                 ; 080E529C
and   r0,r3                     ; 080E529E
orr   r0,r4                     ; 080E52A0
cmp   r0,0x0                    ; 080E52A2
beq   @@Code080E52B0            ; 080E52A4
add   r0,r1,0x2                 ; 080E52A6
strh  r0,[r5,0x4]               ; 080E52A8
b     @@Return                  ; 080E52AA
.pool                           ; 080E52AC

@@Code080E52B0:
add   r0,r1,0x6                 ; 080E52B0
strh  r0,[r5,0x4]               ; 080E52B2
b     @@Return                  ; 080E52B4
@@Code080E52B6:
mov   r6,0x0                    ; 080E52B6
ldr   r1,=0x4898                ; 080E52B8
add   r0,r2,r1                  ; 080E52BA
strh  r6,[r0]                   ; 080E52BC
ldrh  r4,[r5,0xC]               ; 080E52BE
add   r0,r4,0x1                 ; 080E52C0
lsl   r0,r0,0x10                ; 080E52C2
lsr   r4,r0,0x10                ; 080E52C4
cmp   r4,0x1D                   ; 080E52C6
bls   @@Code080E52DC            ; 080E52C8  if stars so far > 29dec, stop processing stars?
mov   r6,r3                     ; 080E52CA
mov   r0,r6                     ; 080E52CC
bl    Sub080E5584               ; 080E52CE
mov   r4,0x1E                   ; 080E52D2  30dec
b     @@Code080E52E2            ; 080E52D4
.pool                           ; 080E52D6

@@Code080E52DC:
mov   r0,r5                     ; 080E52DC
bl    Sub080E535C               ; 080E52DE
@@Code080E52E2:
strh  r4,[r5,0xC]               ; 080E52E2
mov   r3,0x0                    ; 080E52E4
cmp   r4,0x9                    ; 080E52E6
bls   @@Code080E52FC            ; 080E52E8
@@Code080E52EA:
mov   r0,r4                     ; 080E52EA
sub   r0,0xA                    ; 080E52EC
lsl   r0,r0,0x10                ; 080E52EE
lsr   r4,r0,0x10                ; 080E52F0
add   r0,r3,0x1                 ; 080E52F2
lsl   r0,r0,0x10                ; 080E52F4
lsr   r3,r0,0x10                ; 080E52F6
cmp   r4,0x9                    ; 080E52F8
bhi   @@Code080E52EA            ; 080E52FA
@@Code080E52FC:
mov   r8,r4                     ; 080E52FC
mov   r4,0x90                   ; 080E52FE
lsl   r4,r4,0x1                 ; 080E5300
mov   r12,r4                    ; 080E5302
mov   r4,0xE                    ; 080E5304
add   r4,r12                    ; 080E5306
mov   r9,r4                     ; 080E5308
mov   r4,0xB0                   ; 080E530A
lsl   r4,r4,0x1                 ; 080E530C
mov   r7,r4                     ; 080E530E
mov   r0,r7                     ; 080E5310
add   r0,0xE                    ; 080E5312
mov   r4,r0                     ; 080E5314
ldrh  r0,[r5,0xC]               ; 080E5316
cmp   r0,0x1                    ; 080E5318
bls   @@Code080E532E            ; 080E531A
ldr   r0,=0x030021A0            ; 080E531C  Score calc layer 3 buffer (02009758)
ldr   r1,[r0]                   ; 080E531E
ldr   r0,=0x016F                ; 080E5320
mov   r2,r0                     ; 080E5322
add   r0,0x5                    ; 080E5324
add   r1,r1,r0                  ; 080E5326
mov   r0,r6                     ; 080E5328
orr   r0,r2                     ; 080E532A
strh  r0,[r1]                   ; 080E532C
@@Code080E532E:
mov   r1,r12                    ; 080E532E
str   r1,[sp]                   ; 080E5330
str   r7,[sp,0x4]               ; 080E5332
mov   r0,r9                     ; 080E5334
str   r0,[sp,0x8]               ; 080E5336
str   r4,[sp,0xC]               ; 080E5338
mov   r0,r5                     ; 080E533A
mov   r1,r3                     ; 080E533C
mov   r2,r8                     ; 080E533E
mov   r3,r6                     ; 080E5340
bl    Sub080E4AFC               ; 080E5342
@@Return:
add   sp,0x10                   ; 080E5346
pop   {r3-r4}                   ; 080E5348
mov   r8,r3                     ; 080E534A
mov   r9,r4                     ; 080E534C
pop   {r4-r7}                   ; 080E534E
pop   {r0}                      ; 080E5350
bx    r0                        ; 080E5352
.pool                           ; 080E5354

Sub080E535C:
push  {r4,lr}                   ; 080E535C
mov   r4,r0                     ; 080E535E
ldrh  r0,[r4,0x24]              ; 080E5360
cmp   r0,0x0                    ; 080E5362
bne   @@Code080E536E            ; 080E5364
ldr   r1,=0x03006258            ; 080E5366
mov   r0,0x31                   ; 080E5368
bl    PlayYISound               ; 080E536A
@@Code080E536E:
ldrh  r0,[r4,0x24]              ; 080E536E
add   r0,0x1                    ; 080E5370
strh  r0,[r4,0x24]              ; 080E5372
lsl   r0,r0,0x10                ; 080E5374
lsr   r0,r0,0x10                ; 080E5376
cmp   r0,0x3                    ; 080E5378
bls   @@Code080E5380            ; 080E537A
mov   r0,0x0                    ; 080E537C
strh  r0,[r4,0x24]              ; 080E537E
@@Code080E5380:
pop   {r4}                      ; 080E5380
pop   {r0}                      ; 080E5382
bx    r0                        ; 080E5384
.pool                           ; 080E5386

Sub080E538C:
; Level victory substate 0C,0E,10,12,14,16,18,1B
push  {r4-r5,lr}                ; 080E538C
mov   r5,r0                     ; 080E538E
mov   r4,r1                     ; 080E5390
bl    Sub080E4A08               ; 080E5392
ldrb  r0,[r4,0xA]               ; 080E5396
sub   r0,0x1                    ; 080E5398
strb  r0,[r4,0xA]               ; 080E539A
lsl   r0,r0,0x18                ; 080E539C
lsr   r1,r0,0x18                ; 080E539E
cmp   r1,0x0                    ; 080E53A0
bne   @@Code080E53AC            ; 080E53A2
ldrh  r0,[r5,0x4]               ; 080E53A4
add   r0,0x2                    ; 080E53A6
strh  r0,[r5,0x4]               ; 080E53A8
strh  r1,[r5,0x24]              ; 080E53AA
@@Code080E53AC:
pop   {r4-r5}                   ; 080E53AC
pop   {r0}                      ; 080E53AE
bx    r0                        ; 080E53B0
.pool                           ; 080E53B2

Sub080E53B4:
; Level victory substate 0B
push  {r4-r5,lr}                ; 080E53B4
mov   r4,r0                     ; 080E53B6
mov   r5,r1                     ; 080E53B8
bl    Sub080FC228               ; 080E53BA
mov   r3,r0                     ; 080E53BE
cmp   r3,0x0                    ; 080E53C0
bne   @@Code080E53FE            ; 080E53C2
ldr   r1,=0x03002200            ; 080E53C4
ldr   r0,=0x488E                ; 080E53C6
add   r2,r1,r0                  ; 080E53C8
mov   r0,0xF0                   ; 080E53CA
lsl   r0,r0,0x8                 ; 080E53CC
strh  r0,[r2]                   ; 080E53CE
ldr   r0,=0x4890                ; 080E53D0
add   r2,r1,r0                  ; 080E53D2
mov   r0,0xA0                   ; 080E53D4
strh  r0,[r2]                   ; 080E53D6
ldr   r0,=0x48CC                ; 080E53D8
add   r2,r1,r0                  ; 080E53DA
mov   r0,0x3F                   ; 080E53DC
strh  r0,[r2]                   ; 080E53DE
ldr   r2,=0x4888                ; 080E53E0
add   r0,r1,r2                  ; 080E53E2
strh  r3,[r0]                   ; 080E53E4
ldrh  r0,[r4,0x4]               ; 080E53E6
add   r0,0x2                    ; 080E53E8
strh  r0,[r4,0x4]               ; 080E53EA
ldr   r0,=0x4898                ; 080E53EC
add   r1,r1,r0                  ; 080E53EE
strh  r3,[r1]                   ; 080E53F0
strh  r3,[r4,0xC]               ; 080E53F2
strh  r3,[r4,0xE]               ; 080E53F4
strh  r3,[r4,0x10]              ; 080E53F6
strh  r3,[r5,0x4]               ; 080E53F8
mov   r0,0x20                   ; 080E53FA
strb  r0,[r5,0xA]               ; 080E53FC
@@Code080E53FE:
pop   {r4-r5}                   ; 080E53FE
pop   {r0}                      ; 080E5400
bx    r0                        ; 080E5402
.pool                           ; 080E5404

Sub080E541C:
; Level victory substate 0A
push  {r4,lr}                   ; 080E541C
mov   r4,r0                     ; 080E541E
bl    Sub080E49D4               ; 080E5420
ldr   r0,=0x04000014            ; 080E5424
mov   r1,0x8                    ; 080E5426
strh  r1,[r0]                   ; 080E5428
add   r0,0x2                    ; 080E542A
strh  r1,[r0]                   ; 080E542C
add   r0,0x6                    ; 080E542E
strh  r1,[r0]                   ; 080E5430
add   r0,0x2                    ; 080E5432
strh  r1,[r0]                   ; 080E5434
ldr   r2,=0x02010400            ; 080E5436
ldr   r1,=0x02010800            ; 080E5438
mov   r0,0x0                    ; 080E543A
strh  r0,[r1]                   ; 080E543C
strh  r0,[r2]                   ; 080E543E
mov   r0,0x0                    ; 080E5440
strh  r0,[r4,0x8]               ; 080E5442
strh  r0,[r4,0xA]               ; 080E5444
ldrh  r0,[r4,0x4]               ; 080E5446
add   r0,0x2                    ; 080E5448
strh  r0,[r4,0x4]               ; 080E544A
pop   {r4}                      ; 080E544C
pop   {r0}                      ; 080E544E
bx    r0                        ; 080E5450
.pool                           ; 080E5452

Sub080E5460:
; Level victory substate 09
push  {r4-r5,lr}                ; 080E5460
ldr   r3,=0x03002200            ; 080E5462
ldr   r2,=0x4961                ; 080E5464
add   r4,r3,r2                  ; 080E5466
mov   r5,0x0                    ; 080E5468
mov   r2,0x1                    ; 080E546A
strb  r2,[r4]                   ; 080E546C
ldr   r2,=0x47B0                ; 080E546E
add   r4,r3,r2                  ; 080E5470
ldr   r2,=Data082237CC          ; 080E5472
str   r2,[r4]                   ; 080E5474
ldr   r2,=0x4862                ; 080E5476
add   r4,r3,r2                  ; 080E5478
mov   r2,0xD0                   ; 080E547A
lsl   r2,r2,0x6                 ; 080E547C
strh  r2,[r4]                   ; 080E547E
ldr   r2,=0x485C                ; 080E5480
add   r4,r3,r2                  ; 080E5482
mov   r2,0xA0                   ; 080E5484
lsl   r2,r2,0x4                 ; 080E5486
strh  r2,[r4]                   ; 080E5488
ldr   r2,=0x4898                ; 080E548A
add   r3,r3,r2                  ; 080E548C
strh  r5,[r3]                   ; 080E548E
mov   r3,r0                     ; 080E5490
add   r3,0x26                   ; 080E5492
mov   r2,0x3                    ; 080E5494
strb  r2,[r3]                   ; 080E5496
strh  r5,[r0,0xC]               ; 080E5498
strh  r5,[r0,0xE]               ; 080E549A
strh  r5,[r0,0x10]              ; 080E549C
strh  r5,[r1,0x4]               ; 080E549E
ldrh  r1,[r0,0x4]               ; 080E54A0
add   r1,0x2                    ; 080E54A2
strh  r1,[r0,0x4]               ; 080E54A4
pop   {r4-r5}                   ; 080E54A6
pop   {r0}                      ; 080E54A8
bx    r0                        ; 080E54AA
.pool                           ; 080E54AC

Sub080E54C8:
push  {r4-r6,lr}                ; 080E54C8
lsl   r0,r0,0x10                ; 080E54CA
lsl   r1,r1,0x10                ; 080E54CC
lsr   r5,r1,0x10                ; 080E54CE
lsl   r2,r2,0x10                ; 080E54D0
lsr   r2,r2,0x10                ; 080E54D2
mov   r3,0xFF                   ; 080E54D4
lsl   r3,r3,0x10                ; 080E54D6
and   r3,r0                     ; 080E54D8
ldr   r0,=Data0819436A          ; 080E54DA
lsr   r3,r3,0x11                ; 080E54DC
lsl   r3,r3,0x1                 ; 080E54DE
add   r0,r3,r0                  ; 080E54E0
ldrh  r4,[r0]                   ; 080E54E2
orr   r4,r2                     ; 080E54E4
ldr   r0,=0x030021A0            ; 080E54E6  Score calc layer 3 buffer (02009758)
ldr   r6,[r0]                   ; 080E54E8  02009758
lsr   r1,r1,0x11                ; 080E54EA
lsl   r1,r1,0x1                 ; 080E54EC
add   r1,r6,r1                  ; 080E54EE
strh  r4,[r1]                   ; 080E54F0  store to buffer
ldr   r0,=Data081943FA          ; 080E54F2
add   r3,r3,r0                  ; 080E54F4
ldrh  r0,[r3]                   ; 080E54F6
orr   r0,r2                     ; 080E54F8
add   r5,0x40                   ; 080E54FA
asr   r5,r5,0x1                 ; 080E54FC
lsl   r5,r5,0x1                 ; 080E54FE
add   r6,r6,r5                  ; 080E5500
strh  r0,[r6]                   ; 080E5502
pop   {r4-r6}                   ; 080E5504
pop   {r0}                      ; 080E5506
bx    r0                        ; 080E5508
.pool                           ; 080E550A

Sub080E5518:
push  {r4-r6,lr}                ; 080E5518
lsl   r0,r0,0x10                ; 080E551A
lsr   r6,r0,0x10                ; 080E551C
ldr   r5,=0x0286                ; 080E551E
mov   r4,0x0                    ; 080E5520
@@Code080E5522:
ldr   r0,=Data08194328          ; 080E5522 \
add   r0,r4,r0                  ; 080E5524
ldrb  r0,[r0]                   ; 080E5526
mov   r1,r5                     ; 080E5528
mov   r2,r6                     ; 080E552A
bl    Sub080E54C8               ; 080E552C
add   r0,r5,0x2                 ; 080E5530
lsl   r0,r0,0x10                ; 080E5532
lsr   r5,r0,0x10                ; 080E5534
add   r0,r4,0x1                 ; 080E5536
lsl   r0,r0,0x10                ; 080E5538
lsr   r4,r0,0x10                ; 080E553A
cmp   r4,0x17                   ; 080E553C
bls   @@Code080E5522            ; 080E553E /
pop   {r4-r6}                   ; 080E5540
pop   {r0}                      ; 080E5542
bx    r0                        ; 080E5544
.pool                           ; 080E5546

Sub080E5550:
push  {r4-r6,lr}                ; 080E5550
lsl   r0,r0,0x10                ; 080E5552
lsr   r6,r0,0x10                ; 080E5554
mov   r5,0xE3                   ; 080E5556
lsl   r5,r5,0x1                 ; 080E5558  01C6
mov   r4,0x0                    ; 080E555A
@@Code080E555C:
                                ;          \ loop: ?
ldr   r0,=Data08194310          ; 080E555C 
add   r0,r4,r0                  ; 080E555E
ldrb  r0,[r0]                   ; 080E5560
mov   r1,r5                     ; 080E5562
mov   r2,r6                     ; 080E5564
bl    Sub080E54C8               ; 080E5566
add   r0,r5,0x2                 ; 080E556A
lsl   r0,r0,0x10                ; 080E556C
lsr   r5,r0,0x10                ; 080E556E
add   r0,r4,0x1                 ; 080E5570
lsl   r0,r0,0x10                ; 080E5572
lsr   r4,r0,0x10                ; 080E5574
cmp   r4,0x17                   ; 080E5576
bls   @@Code080E555C            ; 080E5578 /
pop   {r4-r6}                   ; 080E557A
pop   {r0}                      ; 080E557C
bx    r0                        ; 080E557E
.pool                           ; 080E5580

Sub080E5584:
push  {r4-r6,lr}                ; 080E5584
lsl   r0,r0,0x10                ; 080E5586
lsr   r6,r0,0x10                ; 080E5588
mov   r5,0x83                   ; 080E558A
lsl   r5,r5,0x1                 ; 080E558C
mov   r4,0x0                    ; 080E558E
@@Code080E5590:
ldr   r0,=Data081942F8          ; 080E5590 \
add   r0,r4,r0                  ; 080E5592
ldrb  r0,[r0]                   ; 080E5594
mov   r1,r5                     ; 080E5596
mov   r2,r6                     ; 080E5598
bl    Sub080E54C8               ; 080E559A
add   r0,r5,0x2                 ; 080E559E
lsl   r0,r0,0x10                ; 080E55A0
lsr   r5,r0,0x10                ; 080E55A2
add   r0,r4,0x1                 ; 080E55A4
lsl   r0,r0,0x10                ; 080E55A6
lsr   r4,r0,0x10                ; 080E55A8
cmp   r4,0x17                   ; 080E55AA
bls   @@Code080E5590            ; 080E55AC /
pop   {r4-r6}                   ; 080E55AE
pop   {r0}                      ; 080E55B0
bx    r0                        ; 080E55B2
.pool                           ; 080E55B4

Sub080E55B8:
; Level victory substate 08
push  {r4-r7,lr}                ; 080E55B8
mov   r7,r10                    ; 080E55BA
mov   r6,r9                     ; 080E55BC
mov   r5,r8                     ; 080E55BE
push  {r5-r7}                   ; 080E55C0
add   sp,-0x4                   ; 080E55C2
str   r0,[sp]                   ; 080E55C4
ldr   r0,=0x03002200            ; 080E55C6
ldr   r2,=0x47E4                ; 080E55C8
add   r1,r0,r2                  ; 080E55CA
mov   r2,0x0                    ; 080E55CC
strh  r2,[r1]                   ; 080E55CE
ldr   r3,=0x47EC                ; 080E55D0
add   r1,r0,r3                  ; 080E55D2
strh  r2,[r1]                   ; 080E55D4
sub   r3,0x6                    ; 080E55D6
add   r1,r0,r3                  ; 080E55D8
strh  r2,[r1]                   ; 080E55DA
add   r3,0x8                    ; 080E55DC
add   r1,r0,r3                  ; 080E55DE
strh  r2,[r1]                   ; 080E55E0
sub   r3,0x6                    ; 080E55E2
add   r1,r0,r3                  ; 080E55E4
strh  r2,[r1]                   ; 080E55E6
ldr   r1,=0x47F0                ; 080E55E8
add   r0,r0,r1                  ; 080E55EA
strh  r2,[r0]                   ; 080E55EC
mov   r6,0x6                    ; 080E55EE
mov   r7,0x0                    ; 080E55F0
mov   r5,0x0                    ; 080E55F2
@@Code080E55F4:
ldr   r0,=Data081942E0          ; 080E55F4 \
add   r0,r5,r0                  ; 080E55F6
ldrb  r4,[r0]                   ; 080E55F8
mov   r0,r4                     ; 080E55FA
mov   r1,r6                     ; 080E55FC
mov   r2,r7                     ; 080E55FE
bl    Sub080E54C8               ; 080E5600
add   r0,r6,0x2                 ; 080E5604
lsl   r0,r0,0x10                ; 080E5606
lsr   r6,r0,0x10                ; 080E5608
add   r0,r5,0x1                 ; 080E560A
lsl   r0,r0,0x10                ; 080E560C
lsr   r5,r0,0x10                ; 080E560E
cmp   r5,0x17                   ; 080E5610
bls   @@Code080E55F4            ; 080E5612 /
mov   r0,r7                     ; 080E5614
bl    Sub080E5584               ; 080E5616
mov   r0,r7                     ; 080E561A
bl    Sub080E5550               ; 080E561C
mov   r0,r7                     ; 080E5620
bl    Sub080E5518               ; 080E5622
mov   r6,0xE3                   ; 080E5626
lsl   r6,r6,0x2                 ; 080E5628
mov   r7,0x0                    ; 080E562A
mov   r5,0x0                    ; 080E562C
@@Code080E562E:
ldr   r0,=Data08194340          ; 080E562E \
add   r0,r5,r0                  ; 080E5630
ldrb  r4,[r0]                   ; 080E5632
mov   r0,r4                     ; 080E5634
mov   r1,r6                     ; 080E5636
mov   r2,r7                     ; 080E5638
bl    Sub080E54C8               ; 080E563A
add   r0,r6,0x2                 ; 080E563E
lsl   r0,r0,0x10                ; 080E5640
lsr   r6,r0,0x10                ; 080E5642
add   r0,r5,0x1                 ; 080E5644
lsl   r0,r0,0x10                ; 080E5646
lsr   r5,r0,0x10                ; 080E5648
cmp   r5,0x14                   ; 080E564A
bls   @@Code080E562E            ; 080E564C /
ldr   r1,=0x03002200            ; 080E564E
ldr   r3,=0x4088                ; 080E5650
add   r2,r1,r3                  ; 080E5652
ldr   r3,=0x4908                ; 080E5654
add   r0,r1,r3                  ; 080E5656
ldrh  r2,[r2]                   ; 080E5658
add   r0,r0,r2                  ; 080E565A
ldrb  r4,[r0]                   ; 080E565C
ldr   r2,=0x48A4                ; 080E565E
add   r0,r1,r2                  ; 080E5660
strh  r4,[r0]                   ; 080E5662
mov   r7,0x0                    ; 080E5664
ldrh  r4,[r0]                   ; 080E5666
mov   r6,r1                     ; 080E5668
cmp   r4,0x63                   ; 080E566A
bls   @@Code080E56B0            ; 080E566C
mov   r7,0xB                    ; 080E566E
mov   r4,0xA                    ; 080E5670
ldr   r3,=ScoreDigitTilesUpper  ; 080E5672
mov   r10,r3                    ; 080E5674
ldr   r0,=0x030021A0            ; 080E5676  Score calc layer 3 buffer (02009758)
mov   r8,r0                     ; 080E5678
ldr   r1,=ScoreDigitTilesLower  ; 080E567A
mov   r9,r1                     ; 080E567C
b     @@Code080E56D2            ; 080E567E
.pool                           ; 080E5680

@@Code080E56B0:
ldr   r2,=ScoreDigitTilesUpper  ; 080E56B0
mov   r10,r2                    ; 080E56B2
ldr   r3,=0x030021A0            ; 080E56B4  Score calc layer 3 buffer (02009758)
mov   r8,r3                     ; 080E56B6
ldr   r0,=ScoreDigitTilesLower  ; 080E56B8
mov   r9,r0                     ; 080E56BA
cmp   r4,0x9                    ; 080E56BC
bls   @@Code080E56D2            ; 080E56BE
@@Code080E56C0:
add   r0,r7,0x1                 ; 080E56C0
lsl   r0,r0,0x10                ; 080E56C2
lsr   r7,r0,0x10                ; 080E56C4
mov   r0,r4                     ; 080E56C6
sub   r0,0xA                    ; 080E56C8
lsl   r0,r0,0x10                ; 080E56CA
lsr   r4,r0,0x10                ; 080E56CC
cmp   r4,0x9                    ; 080E56CE
bhi   @@Code080E56C0            ; 080E56D0
@@Code080E56D2:
lsl   r1,r4,0x11                ; 080E56D2
mov   r2,r10                    ; 080E56D4
lsr   r1,r1,0x10                ; 080E56D6
add   r0,r1,r2                  ; 080E56D8
ldrh  r4,[r0]                   ; 080E56DA
mov   r0,r8                     ; 080E56DC
ldr   r3,[r0]                   ; 080E56DE
strh  r4,[r3,0x30]              ; 080E56E0
mov   r12,r9                    ; 080E56E2
add   r1,r12                    ; 080E56E4
ldrh  r4,[r1]                   ; 080E56E6
mov   r0,r3                     ; 080E56E8
add   r0,0x70                   ; 080E56EA
strh  r4,[r0]                   ; 080E56EC
lsl   r0,r7,0x11                ; 080E56EE
lsr   r5,r0,0x10                ; 080E56F0
mov   r0,r5                     ; 080E56F2
add   r2,r0,r2                  ; 080E56F4
ldrh  r4,[r2]                   ; 080E56F6
cmp   r5,0x0                    ; 080E56F8
bne   @@Code080E56FE            ; 080E56FA
ldr   r4,=0x017F                ; 080E56FC
@@Code080E56FE:
strh  r4,[r3,0x2E]              ; 080E56FE
add   r0,r12                    ; 080E5700
ldrh  r4,[r0]                   ; 080E5702
cmp   r5,0x0                    ; 080E5704
bne   @@Code080E570A            ; 080E5706
ldr   r4,=0x017F                ; 080E5708
@@Code080E570A:
mov   r0,r3                     ; 080E570A
add   r0,0x6E                   ; 080E570C
strh  r4,[r0]                   ; 080E570E
ldr   r1,=0x48A4                ; 080E5710
add   r0,r6,r1                  ; 080E5712
ldrh  r0,[r0]                   ; 080E5714
cmp   r0,0x1                    ; 080E5716
bls   @@Code080E5722            ; 080E5718
mov   r1,r3                     ; 080E571A
add   r1,0x74                   ; 080E571C
ldr   r0,=0x016F                ; 080E571E
strh  r0,[r1]                   ; 080E5720
@@Code080E5722:
ldr   r2,=0x413C                ; 080E5722
add   r3,r6,r2                  ; 080E5724
ldrh  r0,[r3]                   ; 080E5726
lsr   r0,r0,0x1                 ; 080E5728
add   r4,r0,0x1                 ; 080E572A
mov   r0,r8                     ; 080E572C
ldr   r5,[r0]                   ; 080E572E
lsl   r0,r4,0x1                 ; 080E5730
mov   r2,r10                    ; 080E5732
add   r1,r0,r2                  ; 080E5734
ldrh  r1,[r1]                   ; 080E5736
strh  r1,[r5,0x8]               ; 080E5738
add   r0,r9                     ; 080E573A
ldrh  r1,[r0]                   ; 080E573C
mov   r0,r5                     ; 080E573E
add   r0,0x48                   ; 080E5740
strh  r1,[r0]                   ; 080E5742
mov   r1,r5                     ; 080E5744
add   r1,0x4A                   ; 080E5746
ldr   r0,=0x0141                ; 080E5748
strh  r0,[r1]                   ; 080E574A
ldr   r0,=0x4088                ; 080E574C
add   r2,r6,r0                  ; 080E574E
ldrh  r0,[r3]                   ; 080E5750
lsl   r1,r0,0x1                 ; 080E5752
add   r1,r1,r0                  ; 080E5754
lsl   r1,r1,0x1                 ; 080E5756
ldrh  r0,[r2]                   ; 080E5758
sub   r0,r0,r1                  ; 080E575A
add   r0,0x1                    ; 080E575C
lsl   r0,r0,0x10                ; 080E575E
lsr   r0,r0,0xF                 ; 080E5760
mov   r2,r10                    ; 080E5762
add   r1,r0,r2                  ; 080E5764
ldrh  r1,[r1]                   ; 080E5766
strh  r1,[r5,0xC]               ; 080E5768
add   r0,r9                     ; 080E576A
ldrh  r0,[r0]                   ; 080E576C
mov   r1,r5                     ; 080E576E
add   r1,0x4C                   ; 080E5770
strh  r0,[r1]                   ; 080E5772
ldr   r3,=0x413E                ; 080E5774
add   r0,r6,r3                  ; 080E5776
ldrh  r0,[r0]                   ; 080E5778
cmp   r0,0x10                   ; 080E577A
beq   @@Code080E5782            ; 080E577C
cmp   r0,0x12                   ; 080E577E
bne   @@Code080E578A            ; 080E5780
@@Code080E5782:
mov   r0,0x80                   ; 080E5782
strh  r0,[r5,0xC]               ; 080E5784
mov   r0,0x90                   ; 080E5786
strh  r0,[r1]                   ; 080E5788
@@Code080E578A:
ldr   r1,=0x4960                ; 080E578A
add   r0,r6,r1                  ; 080E578C
mov   r5,0x1                    ; 080E578E
strb  r5,[r0]                   ; 080E5790
ldr   r2,=DataPtrs081944A8      ; 080E5792
ldr   r0,[r2]                   ; 080E5794
ldr   r0,[r0]                   ; 080E5796
ldr   r4,=0x0201FC00            ; 080E5798  decompressed graphics buffer
mov   r1,r4                     ; 080E579A
bl    swi_LZ77_WRAM             ; 080E579C  LZ77 decompress (WRAM)
ldr   r3,=0x47AC                ; 080E57A0
add   r0,r6,r3                  ; 080E57A2
str   r4,[r0]                   ; 080E57A4
ldr   r0,=0x4860                ; 080E57A6
add   r1,r6,r0                  ; 080E57A8
mov   r0,0x80                   ; 080E57AA
lsl   r0,r0,0x6                 ; 080E57AC
strh  r0,[r1]                   ; 080E57AE
ldr   r2,=0x485A                ; 080E57B0
add   r1,r6,r2                  ; 080E57B2
mov   r0,0x80                   ; 080E57B4
lsl   r0,r0,0x5                 ; 080E57B6
strh  r0,[r1]                   ; 080E57B8
ldr   r3,=0x4961                ; 080E57BA
add   r0,r6,r3                  ; 080E57BC
strb  r5,[r0]                   ; 080E57BE
ldr   r1,=0x47B0                ; 080E57C0
add   r0,r6,r1                  ; 080E57C2
ldr   r2,=Data082235CC          ; 080E57C4
str   r2,[r0]                   ; 080E57C6
sub   r3,0xFF                   ; 080E57C8
add   r1,r6,r3                  ; 080E57CA
mov   r0,0xC0                   ; 080E57CC
lsl   r0,r0,0x6                 ; 080E57CE
strh  r0,[r1]                   ; 080E57D0
ldr   r1,=0x485C                ; 080E57D2
add   r0,r6,r1                  ; 080E57D4
mov   r3,0x80                   ; 080E57D6
lsl   r3,r3,0x1                 ; 080E57D8
strh  r3,[r0]                   ; 080E57DA
ldr   r1,=0x4962                ; 080E57DC
add   r0,r6,r1                  ; 080E57DE
strb  r5,[r0]                   ; 080E57E0
ldr   r1,=0x47B4                ; 080E57E2
add   r0,r6,r1                  ; 080E57E4
add   r2,0xC0                   ; 080E57E6
str   r2,[r0]                   ; 080E57E8
ldr   r2,=0x4864                ; 080E57EA
add   r1,r6,r2                  ; 080E57EC
mov   r0,0xC8                   ; 080E57EE
lsl   r0,r0,0x6                 ; 080E57F0
strh  r0,[r1]                   ; 080E57F2
ldr   r1,=0x485E                ; 080E57F4
add   r0,r6,r1                  ; 080E57F6
strh  r3,[r0]                   ; 080E57F8
ldr   r0,=Data082068E0          ; 080E57FA
ldr   r1,=0x06001000            ; 080E57FC
mov   r2,0x80                   ; 080E57FE
lsl   r2,r2,0x2                 ; 080E5800
bl    swi_MemoryCopy4or2        ; 080E5802  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data08207980          ; 080E5806
ldr   r1,=0x06014000            ; 080E5808
bl    swi_LZ77_VRAM             ; 080E580A  LZ77 decompress (VRAM)
ldr   r2,[sp]                   ; 080E580E
ldrh  r0,[r2,0x4]               ; 080E5810
add   r0,0x2                    ; 080E5812
strh  r0,[r2,0x4]               ; 080E5814
mov   r3,0x0                    ; 080E5816
ldr   r6,=0x02010600            ; 080E5818
ldr   r5,=0x02010A00            ; 080E581A
ldr   r4,=Data082D285C          ; 080E581C
@@Code080E581E:
lsl   r0,r3,0x1                 ; 080E581E
add   r2,r0,r6                  ; 080E5820
add   r1,r0,r5                  ; 080E5822
add   r0,r0,r4                  ; 080E5824
ldrh  r0,[r0]                   ; 080E5826
strh  r0,[r1]                   ; 080E5828
strh  r0,[r2]                   ; 080E582A
add   r0,r3,0x1                 ; 080E582C
lsl   r0,r0,0x10                ; 080E582E
lsr   r3,r0,0x10                ; 080E5830
cmp   r3,0x5F                   ; 080E5832
bls   @@Code080E581E            ; 080E5834
mov   r3,0x0                    ; 080E5836
ldr   r6,=0x02010700            ; 080E5838
ldr   r5,=0x02010B00            ; 080E583A
ldr   r4,=Data082D311C          ; 080E583C
@@Code080E583E:
lsl   r0,r3,0x1                 ; 080E583E
add   r2,r0,r6                  ; 080E5840
add   r1,r0,r5                  ; 080E5842
add   r0,r0,r4                  ; 080E5844
ldrh  r0,[r0]                   ; 080E5846
strh  r0,[r1]                   ; 080E5848
strh  r0,[r2]                   ; 080E584A
add   r0,r3,0x1                 ; 080E584C
lsl   r0,r0,0x10                ; 080E584E
lsr   r3,r0,0x10                ; 080E5850
cmp   r3,0x5F                   ; 080E5852
bls   @@Code080E583E            ; 080E5854
ldr   r0,=0x02010600            ; 080E5856
ldr   r1,=0x05000200            ; 080E5858
mov   r2,0x80                   ; 080E585A
lsl   r2,r2,0x1                 ; 080E585C
bl    swi_MemoryCopy4or2        ; 080E585E  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                    ; 080E5862
pop   {r3-r5}                   ; 080E5864
mov   r8,r3                     ; 080E5866
mov   r9,r4                     ; 080E5868
mov   r10,r5                    ; 080E586A
pop   {r4-r7}                   ; 080E586C
pop   {r0}                      ; 080E586E
bx    r0                        ; 080E5870
.pool                           ; 080E5872

Sub080E5900:
; Level victory substate 07
push  {r4-r6,lr}                ; 080E5900
mov   r4,r0                     ; 080E5902
ldr   r2,=0x03002200            ; 080E5904
ldr   r1,=0x48C2                ; 080E5906
add   r0,r2,r1                  ; 080E5908
mov   r1,0x0                    ; 080E590A
strh  r1,[r0]                   ; 080E590C
ldr   r3,=0x48BE                ; 080E590E
add   r0,r2,r3                  ; 080E5910
strh  r1,[r0]                   ; 080E5912
ldr   r0,=0x47C4                ; 080E5914
add   r2,r2,r0                  ; 080E5916
ldrh  r0,[r2]                   ; 080E5918
mov   r1,0x10                   ; 080E591A
eor   r0,r1                     ; 080E591C
strh  r0,[r2]                   ; 080E591E
mov   r2,0x0                    ; 080E5920
ldr   r6,=0x0202C1D4            ; 080E5922
mov   r3,0x0                    ; 080E5924
ldr   r5,=0x0202C376            ; 080E5926
@@Code080E5928:
lsl   r1,r2,0x1                 ; 080E5928
add   r0,r1,r6                  ; 080E592A
strh  r3,[r0]                   ; 080E592C
add   r1,r1,r5                  ; 080E592E
strh  r3,[r1]                   ; 080E5930
add   r0,r2,0x1                 ; 080E5932
lsl   r0,r0,0x10                ; 080E5934
lsr   r2,r0,0x10                ; 080E5936
cmp   r2,0xD1                   ; 080E5938
bls   @@Code080E5928            ; 080E593A
mov   r1,r4                     ; 080E593C
add   r1,0x26                   ; 080E593E
mov   r0,0x2                    ; 080E5940
strb  r0,[r1]                   ; 080E5942
ldrh  r0,[r4,0x4]               ; 080E5944
add   r0,0x2                    ; 080E5946
strh  r0,[r4,0x4]               ; 080E5948
pop   {r4-r6}                   ; 080E594A
pop   {r0}                      ; 080E594C
bx    r0                        ; 080E594E
.pool                           ; 080E5950

Sub080E5968:
; Level victory substate 06
push  {r4-r7,lr}                ; 080E5968
mov   r4,r0                     ; 080E596A
mov   r1,r4                     ; 080E596C
add   r1,0x26                   ; 080E596E
mov   r0,0x1                    ; 080E5970
strb  r0,[r1]                   ; 080E5972
mov   r2,0x0                    ; 080E5974
ldr   r7,=0x03007240            ; 080E5976  Normal gameplay IWRAM (0300220C)
ldr   r0,=0x0300700C            ; 080E5978
mov   r12,r0                    ; 080E597A
ldr   r6,=0x030021A0            ; 080E597C  Score calc layer 3 buffer (02009758)
ldr   r5,=0x017F                ; 080E597E
ldr   r3,=0x023F                ; 080E5980
@@Code080E5982:
                                ; loop: fill all 240 halfwords of 02009758 with 017F
ldr   r0,[r6]                   ; 080E5982 \
lsl   r1,r2,0x1                 ; 080E5984
add   r0,r0,r1                  ; 080E5986
strh  r5,[r0]                   ; 080E5988
add   r0,r2,0x1                 ; 080E598A
lsl   r0,r0,0x10                ; 080E598C
lsr   r2,r0,0x10                ; 080E598E
cmp   r2,r3                     ; 080E5990
bls   @@Code080E5982            ; 080E5992 /

mov   r3,0x0                    ; 080E5994
ldr   r6,=Data08194558          ; 080E5996
ldr   r5,=0x030021A0            ; 080E5998  Score calc layer 3 buffer (02009758)
@@Code080E599A:
lsl   r1,r3,0x1                 ; 080E599A
add   r0,r1,r6                  ; 080E599C
ldrh  r2,[r0]                   ; 080E599E
ldr   r0,[r5]                   ; 080E59A0
add   r1,0x84                   ; 080E59A2
add   r0,r0,r1                  ; 080E59A4
strh  r2,[r0]                   ; 080E59A6
add   r0,r3,0x1                 ; 080E59A8
lsl   r0,r0,0x10                ; 080E59AA
lsr   r3,r0,0x10                ; 080E59AC
cmp   r3,0x19                   ; 080E59AE
bls   @@Code080E599A            ; 080E59B0

ldr   r1,[r7]                   ; 080E59B2
ldr   r0,=0x29A2                ; 080E59B4
add   r2,r1,r0                  ; 080E59B6  [03007240]+29A2 (03004BAE)
mov   r3,0x0                    ; 080E59B8
mov   r0,0x4                    ; 080E59BA
strh  r0,[r2]                   ; 080E59BC  *set* header value 9 to 4
ldr   r0,=0x29A6                ; 080E59BE
add   r1,r1,r0                  ; 080E59C0  [03007240]+29A6 (03004BB2)
strh  r3,[r1]                   ; 080E59C2  clear palette animation
mov   r0,r12                    ; 080E59C4
str   r3,[r0]                   ; 080E59C6
ldrh  r0,[r4,0x4]               ; 080E59C8
add   r0,0x2                    ; 080E59CA
strh  r0,[r4,0x4]               ; 080E59CC
pop   {r4-r7}                   ; 080E59CE
pop   {r0}                      ; 080E59D0
bx    r0                        ; 080E59D2
.pool                           ; 080E59D4

Sub080E59F4:
; Level victory substate 05
ldrh  r1,[r0,0x4]               ; 080E59F4
add   r1,0x2                    ; 080E59F6
strh  r1,[r0,0x4]               ; 080E59F8
bx    lr                        ; 080E59FA

Sub080E59FC:
; Level victory substate 04
push  {r4,lr}                   ; 080E59FC
mov   r4,r0                     ; 080E59FE
bl    Sub080FC228               ; 080E5A00
cmp   r0,0x0                    ; 080E5A04
bne   @@Code080E5A14            ; 080E5A06
mov   r0,r4                     ; 080E5A08
bl    Sub080FC254               ; 080E5A0A
ldrh  r0,[r4,0x4]               ; 080E5A0E
add   r0,0x2                    ; 080E5A10
strh  r0,[r4,0x4]               ; 080E5A12
@@Code080E5A14:
pop   {r4}                      ; 080E5A14
pop   {r0}                      ; 080E5A16
bx    r0                        ; 080E5A18
.pool                           ; 080E5A1A

Sub080E5A1C:
; Level victory substate 03
push  {r4-r5,lr}                ; 080E5A1C
mov   r4,r0                     ; 080E5A1E
ldr   r0,=0x03007240            ; 080E5A20  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E5A22
ldr   r1,=0x299A                ; 080E5A24
add   r0,r0,r1                  ; 080E5A26
ldrh  r0,[r0]                   ; 080E5A28
cmp   r0,0x22                   ; 080E5A2A
bne   @@Code080E5A64            ; 080E5A2C
ldr   r1,=0x03002200            ; 080E5A2E
ldr   r2,=0x4A03                ; 080E5A30
add   r0,r1,r2                  ; 080E5A32
mov   r3,0x0                    ; 080E5A34
mov   r2,0x3F                   ; 080E5A36
strb  r2,[r0]                   ; 080E5A38
ldr   r5,=0x4A04                ; 080E5A3A
add   r0,r1,r5                  ; 080E5A3C
strb  r2,[r0]                   ; 080E5A3E
ldr   r2,=0x48CC                ; 080E5A40
add   r0,r1,r2                  ; 080E5A42
strh  r3,[r0]                   ; 080E5A44
mov   r2,r1                     ; 080E5A46
b     @@Code080E5A8C            ; 080E5A48
.pool                           ; 080E5A4A

@@Code080E5A64:
ldr   r2,=0x03002200            ; 080E5A64
ldr   r3,=0x4A03                ; 080E5A66
add   r0,r2,r3                  ; 080E5A68
mov   r1,0x1F                   ; 080E5A6A
strb  r1,[r0]                   ; 080E5A6C
ldr   r5,=0x4A04                ; 080E5A6E
add   r0,r2,r5                  ; 080E5A70
strb  r1,[r0]                   ; 080E5A72
ldr   r0,=0x48CC                ; 080E5A74
add   r1,r2,r0                  ; 080E5A76
mov   r0,0x20                   ; 080E5A78
strh  r0,[r1]                   ; 080E5A7A
ldr   r3,=0x4888                ; 080E5A7C
add   r1,r2,r3                  ; 080E5A7E
mov   r0,0xFF                   ; 080E5A80
strh  r0,[r1]                   ; 080E5A82
ldr   r5,=0x488C                ; 080E5A84
add   r1,r2,r5                  ; 080E5A86
mov   r0,0x10                   ; 080E5A88
strh  r0,[r1]                   ; 080E5A8A
@@Code080E5A8C:
ldr   r0,=0x488E                ; 080E5A8C
add   r1,r2,r0                  ; 080E5A8E
mov   r0,0xF0                   ; 080E5A90
strh  r0,[r1]                   ; 080E5A92
ldr   r3,=0x4890                ; 080E5A94
add   r1,r2,r3                  ; 080E5A96
mov   r0,0xA0                   ; 080E5A98
strh  r0,[r1]                   ; 080E5A9A
mov   r0,r4                     ; 080E5A9C
bl    Sub080FC248               ; 080E5A9E
ldrh  r0,[r4,0x4]               ; 080E5AA2
add   r0,0x2                    ; 080E5AA4
strh  r0,[r4,0x4]               ; 080E5AA6
pop   {r4-r5}                   ; 080E5AA8
pop   {r0}                      ; 080E5AAA
bx    r0                        ; 080E5AAC
.pool                           ; 080E5AAE

Return080E5AD0:
; Level victory substate 01-02
bx    lr                        ; 080E5AD0
.pool                           ; 080E5AD2

Sub080E5AD4:
; Level victory substate 00
ldrh  r1,[r0,0x4]               ; 080E5AD4
add   r1,0x2                    ; 080E5AD6
strh  r1,[r0,0x4]               ; 080E5AD8
bx    lr                        ; 080E5ADA

LevelVictory:
; Game state 0E: Goal cutscene/Score screen
push  {r4-r6,lr}                ; 080E5ADC
bl    Sub08002338               ; 080E5ADE
ldr   r2,=0x03002200            ; 080E5AE2
ldr   r1,=0x47D0                ; 080E5AE4
add   r0,r2,r1                  ; 080E5AE6
mov   r1,0x0                    ; 080E5AE8
strh  r1,[r0]                   ; 080E5AEA
ldr   r3,=0x47D2                ; 080E5AEC
add   r0,r2,r3                  ; 080E5AEE
strh  r1,[r0]                   ; 080E5AF0
ldr   r0,=0x03007240            ; 080E5AF2  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E5AF4
ldr   r1,=0x266C                ; 080E5AF6
add   r6,r0,r1                  ; 080E5AF8
ldr   r3,=0x2618                ; 080E5AFA
add   r5,r0,r3                  ; 080E5AFC
mov   r1,0x0                    ; 080E5AFE
ldr   r0,=0x4960                ; 080E5B00
add   r4,r2,r0                  ; 080E5B02
mov   r3,0x0                    ; 080E5B04
add   r0,0x3                    ; 080E5B06
add   r2,r2,r0                  ; 080E5B08
@@Code080E5B0A:
add   r0,r1,r4                  ; 080E5B0A
strb  r3,[r0]                   ; 080E5B0C
add   r0,r1,r2                  ; 080E5B0E
strb  r3,[r0]                   ; 080E5B10
add   r0,r1,0x1                 ; 080E5B12
lsl   r0,r0,0x10                ; 080E5B14
lsr   r1,r0,0x10                ; 080E5B16
cmp   r1,0x2                    ; 080E5B18
bls   @@Code080E5B0A            ; 080E5B1A
mov   r1,r5                     ; 080E5B1C
add   r1,0x26                   ; 080E5B1E
mov   r0,0x0                    ; 080E5B20
strb  r0,[r1]                   ; 080E5B22
ldrh  r0,[r5,0x4]               ; 080E5B24
mov   r4,r0                     ; 080E5B26
cmp   r4,0xC                    ; 080E5B28
bhi   @@Code080E5B30            ; 080E5B2A
bl    Sub0802D688               ; 080E5B2C
@@Code080E5B30:
ldr   r0,=LevelVictorySubstates ; 080E5B30
sub   r1,r4,0x1                 ; 080E5B32
asr   r1,r1,0x1                 ; 080E5B34
lsl   r1,r1,0x2                 ; 080E5B36
add   r1,r1,r0                  ; 080E5B38
ldr   r2,[r1]                   ; 080E5B3A
mov   r0,r5                     ; 080E5B3C
mov   r1,r6                     ; 080E5B3E
bl    Sub_bx_r2                 ; 080E5B40  bx r2
pop   {r4-r6}                   ; 080E5B44
pop   {r0}                      ; 080E5B46
bx    r0                        ; 080E5B48
.pool                           ; 080E5B4A

Sub080E5B6C:
push  {lr}                      ; 080E5B6C
add   sp,-0x4                   ; 080E5B6E
ldr   r0,=0x03007240            ; 080E5B70  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E5B72
ldr   r1,=0x263E                ; 080E5B74
add   r0,r0,r1                  ; 080E5B76
ldrb  r0,[r0]                   ; 080E5B78
cmp   r0,0x0                    ; 080E5B7A
beq   @@Code080E5C1A            ; 080E5B7C
cmp   r0,0x1                    ; 080E5B7E
bne   @@Code080E5BDC            ; 080E5B80
mov   r1,sp                     ; 080E5B82
ldr   r2,=0x017F                ; 080E5B84
mov   r0,r2                     ; 080E5B86
strh  r0,[r1]                   ; 080E5B88
ldr   r1,=0x0600E000            ; 080E5B8A
ldr   r2,=0x01000800            ; 080E5B8C
mov   r0,sp                     ; 080E5B8E
bl    swi_MemoryCopy4or2        ; 080E5B90  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 080E5B94
ldr   r0,=0x47CA                ; 080E5B96
add   r2,r1,r0                  ; 080E5B98
ldr   r0,=0x7801                ; 080E5B9A
strh  r0,[r2]                   ; 080E5B9C
ldr   r0,=0x47CE                ; 080E5B9E
add   r2,r1,r0                  ; 080E5BA0
mov   r0,0xF8                   ; 080E5BA2
lsl   r0,r0,0x7                 ; 080E5BA4
strh  r0,[r2]                   ; 080E5BA6
ldr   r2,=0x47C6                ; 080E5BA8
add   r1,r1,r2                  ; 080E5BAA
mov   r0,0xE8                   ; 080E5BAC
lsl   r0,r0,0x6                 ; 080E5BAE
strh  r0,[r1]                   ; 080E5BB0
b     @@Code080E5C1A            ; 080E5BB2
.pool                           ; 080E5BB4

@@Code080E5BDC:
cmp   r0,0x2                    ; 080E5BDC
bne   @@Code080E5C00            ; 080E5BDE
mov   r0,sp                     ; 080E5BE0
add   r0,0x2                    ; 080E5BE2
ldr   r2,=0x017F                ; 080E5BE4
mov   r1,r2                     ; 080E5BE6
strh  r1,[r0]                   ; 080E5BE8
ldr   r1,=0x0600C000            ; 080E5BEA
ldr   r2,=0x01001000            ; 080E5BEC
bl    swi_MemoryCopy4or2        ; 080E5BEE  Memory copy/fill, 4- or 2-byte blocks
b     @@Code080E5C1A            ; 080E5BF2
.pool                           ; 080E5BF4

@@Code080E5C00:
cmp   r0,0x3                    ; 080E5C00
bne   @@Code080E5C1A            ; 080E5C02
ldr   r0,=Data082074E0          ; 080E5C04
ldr   r1,=0x0600C000            ; 080E5C06
bl    swi_LZ77_VRAM             ; 080E5C08  LZ77 decompress (VRAM)
ldr   r0,=Data082D58BC          ; 080E5C0C
mov   r1,0xA0                   ; 080E5C0E
lsl   r1,r1,0x13                ; 080E5C10
mov   r2,0x80                   ; 080E5C12
lsl   r2,r2,0x1                 ; 080E5C14
bl    swi_MemoryCopy4or2        ; 080E5C16  Memory copy/fill, 4- or 2-byte blocks
@@Code080E5C1A:
add   sp,0x4                    ; 080E5C1A
pop   {r0}                      ; 080E5C1C
bx    r0                        ; 080E5C1E
.pool                           ; 080E5C20

Sub080E5C2C:
push  {lr}                      ; 080E5C2C
mov   r1,r0                     ; 080E5C2E
ldrh  r0,[r1,0x14]              ; 080E5C30
add   r0,0x1                    ; 080E5C32
strh  r0,[r1,0x14]              ; 080E5C34
ldrh  r0,[r1,0x14]              ; 080E5C36
cmp   r0,0x9                    ; 080E5C38
bls   @@Code080E5C48            ; 080E5C3A
ldrh  r0,[r1,0x4]               ; 080E5C3C
add   r0,0x2                    ; 080E5C3E
strh  r0,[r1,0x4]               ; 080E5C40
mov   r0,0x0                    ; 080E5C42
strh  r0,[r1,0x14]              ; 080E5C44
b     @@Code080E5C58            ; 080E5C46
@@Code080E5C48:
sub   r0,0x1                    ; 080E5C48
lsl   r0,r0,0x10                ; 080E5C4A
lsr   r0,r0,0x10                ; 080E5C4C
cmp   r0,0x0                    ; 080E5C4E
beq   @@Code080E5C58            ; 080E5C50
sub   r0,0x1                    ; 080E5C52
lsl   r0,r0,0x10                ; 080E5C54
lsr   r0,r0,0x10                ; 080E5C56
@@Code080E5C58:
pop   {r0}                      ; 080E5C58
bx    r0                        ; 080E5C5A

Sub080E5C5C:
push  {r4-r7,lr}                ; 080E5C5C
mov   r5,r0                     ; 080E5C5E
ldr   r4,=0x03002200            ; 080E5C60
ldr   r1,=0x48F6                ; 080E5C62
add   r0,r4,r1                  ; 080E5C64
mov   r6,0x0                    ; 080E5C66
strb  r6,[r0]                   ; 080E5C68
ldr   r7,=0x48F7                ; 080E5C6A
add   r0,r4,r7                  ; 080E5C6C
strb  r6,[r0]                   ; 080E5C6E
ldr   r0,=0x48F9                ; 080E5C70
add   r1,r4,r0                  ; 080E5C72
mov   r0,0x4                    ; 080E5C74
strb  r0,[r1]                   ; 080E5C76
bl    Sub08001EFC               ; 080E5C78
ldr   r0,=0x03007240            ; 080E5C7C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E5C7E
ldr   r1,=0x29A2                ; 080E5C80
add   r0,r0,r1                  ; 080E5C82
ldrh  r0,[r0]                   ; 080E5C84
cmp   r0,0x9                    ; 080E5C86
beq   @@Code080E5C8E            ; 080E5C88
ldr   r0,=0x02010400            ; 080E5C8A
strh  r6,[r0]                   ; 080E5C8C
@@Code080E5C8E:
ldr   r7,=0x47C6                ; 080E5C8E
add   r3,r4,r7                  ; 080E5C90
ldrh  r0,[r3]                   ; 080E5C92
mov   r1,0x80                   ; 080E5C94
lsl   r1,r1,0x6                 ; 080E5C96
mov   r2,r1                     ; 080E5C98
orr   r2,r0                     ; 080E5C9A
ldr   r7,=0x4A03                ; 080E5C9C
add   r0,r4,r7                  ; 080E5C9E
mov   r1,0x1F                   ; 080E5CA0
strb  r1,[r0]                   ; 080E5CA2
add   r7,0x1                    ; 080E5CA4
add   r0,r4,r7                  ; 080E5CA6
strb  r1,[r0]                   ; 080E5CA8
ldr   r0,=0x48CC                ; 080E5CAA
add   r1,r4,r0                  ; 080E5CAC
mov   r0,0x20                   ; 080E5CAE
strh  r0,[r1]                   ; 080E5CB0
ldr   r7,=0x4888                ; 080E5CB2
add   r1,r4,r7                  ; 080E5CB4
mov   r0,0xFF                   ; 080E5CB6
strh  r0,[r1]                   ; 080E5CB8
ldr   r0,=0x488C                ; 080E5CBA
add   r1,r4,r0                  ; 080E5CBC
mov   r0,0x10                   ; 080E5CBE
strh  r0,[r1]                   ; 080E5CC0
ldr   r0,=0xBFFF                ; 080E5CC2
and   r2,r0                     ; 080E5CC4
strh  r2,[r3]                   ; 080E5CC6
add   r7,0x6                    ; 080E5CC8
add   r1,r4,r7                  ; 080E5CCA
mov   r0,0xF0                   ; 080E5CCC
strh  r0,[r1]                   ; 080E5CCE
ldr   r0,=0x4890                ; 080E5CD0
add   r1,r4,r0                  ; 080E5CD2
mov   r0,0xA0                   ; 080E5CD4
strh  r0,[r1]                   ; 080E5CD6
mov   r0,r5                     ; 080E5CD8
bl    Sub080FC248               ; 080E5CDA
ldrh  r0,[r5,0x4]               ; 080E5CDE
add   r0,0x2                    ; 080E5CE0
strh  r0,[r5,0x4]               ; 080E5CE2
strh  r6,[r5,0x14]              ; 080E5CE4
pop   {r4-r7}                   ; 080E5CE6
pop   {r0}                      ; 080E5CE8
bx    r0                        ; 080E5CEA
.pool                           ; 080E5CEC

BossVictoryTransition:
; Game state 23
push  {r4-r5,lr}                ; 080E5D24
bl    Sub08002338               ; 080E5D26
ldr   r1,=0x03002200            ; 080E5D2A
ldr   r2,=0x47D0                ; 080E5D2C
add   r0,r1,r2                  ; 080E5D2E
mov   r2,0x0                    ; 080E5D30
strh  r2,[r0]                   ; 080E5D32
ldr   r3,=0x47D2                ; 080E5D34
add   r0,r1,r3                  ; 080E5D36
strh  r2,[r0]                   ; 080E5D38
ldr   r0,=0x4960                ; 080E5D3A
add   r4,r1,r0                  ; 080E5D3C
mov   r3,0x0                    ; 080E5D3E
add   r0,0x3                    ; 080E5D40
add   r1,r1,r0                  ; 080E5D42
@@Code080E5D44:
add   r0,r2,r4                  ; 080E5D44
strb  r3,[r0]                   ; 080E5D46
add   r0,r2,r1                  ; 080E5D48
strb  r3,[r0]                   ; 080E5D4A
add   r0,r2,0x1                 ; 080E5D4C
lsl   r0,r0,0x10                ; 080E5D4E
lsr   r2,r0,0x10                ; 080E5D50
cmp   r2,0x2                    ; 080E5D52
bls   @@Code080E5D44            ; 080E5D54
ldr   r0,=0x03007240            ; 080E5D56  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080E5D58
ldr   r2,=0x2618                ; 080E5D5A
add   r4,r1,r2                  ; 080E5D5C
ldr   r3,=0x266C                ; 080E5D5E
add   r1,r1,r3                  ; 080E5D60
ldrh  r0,[r4,0x4]               ; 080E5D62
mov   r5,r0                     ; 080E5D64
ldr   r2,=CodePtrs08194670      ; 080E5D66
lsr   r0,r5,0x1                 ; 080E5D68
lsl   r0,r0,0x2                 ; 080E5D6A
add   r0,r0,r2                  ; 080E5D6C
ldr   r2,[r0]                   ; 080E5D6E
mov   r0,r4                     ; 080E5D70
bl    Sub_bx_r2                 ; 080E5D72  bx r2
cmp   r5,0x15                   ; 080E5D76
bls   @@Code080E5D88            ; 080E5D78
mov   r0,0x19                   ; 080E5D7A
strh  r0,[r4,0x4]               ; 080E5D7C
ldr   r0,=0x03002200            ; 080E5D7E
ldr   r1,=0x4905                ; 080E5D80
add   r0,r0,r1                  ; 080E5D82
mov   r1,0xE                    ; 080E5D84
strb  r1,[r0]                   ; 080E5D86
@@Code080E5D88:
cmp   r5,0x7                    ; 080E5D88
bhi   @@Code080E5D90            ; 080E5D8A
bl    Sub0802D688               ; 080E5D8C
@@Code080E5D90:
pop   {r4-r5}                   ; 080E5D90
pop   {r0}                      ; 080E5D92
bx    r0                        ; 080E5D94
.pool                           ; 080E5D96
