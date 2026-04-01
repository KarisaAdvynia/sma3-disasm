KamekFlying_Init:
; sprite 125 init
push  {r4,lr}                       ; 08083558
mov   r4,r0                         ; 0808355A
mov   r2,r4                         ; 0808355C
add   r2,0x62                       ; 0808355E
ldrh  r0,[r2]                       ; 08083560
cmp   r0,0x0                        ; 08083562
bne   @@Code08083574                ; 08083564
ldr   r0,[r4]                       ; 08083566
mov   r1,0x80                       ; 08083568
lsl   r1,r1,0x5                     ; 0808356A
and   r0,r1                         ; 0808356C
asr   r0,r0,0xB                     ; 0808356E
add   r0,0x1                        ; 08083570
strh  r0,[r2]                       ; 08083572
@@Code08083574:
ldr   r1,=CodePtrs0817557C          ; 08083574
ldrh  r0,[r2]                       ; 08083576
lsr   r0,r0,0x1                     ; 08083578
lsl   r0,r0,0x2                     ; 0808357A
add   r0,r0,r1                      ; 0808357C
ldr   r1,[r0]                       ; 0808357E
mov   r0,r4                         ; 08083580
bl    Sub_bx_r1                     ; 08083582
mov   r1,r4                         ; 08083586
add   r1,0x6C                       ; 08083588
mov   r0,0x0                        ; 0808358A
strh  r0,[r1]                       ; 0808358C
pop   {r4}                          ; 0808358E
pop   {r0}                          ; 08083590
bx    r0                            ; 08083592
.pool                               ; 08083594

Sub08083598:
push  {r4,lr}                       ; 08083598
mov   r4,r0                         ; 0808359A
bl    Sub0804AEDC                   ; 0808359C
lsl   r0,r0,0x18                    ; 080835A0
cmp   r0,0x0                        ; 080835A2
bne   @@Code080835B2                ; 080835A4
mov   r0,r4                         ; 080835A6
bl    Sub0804B008                   ; 080835A8
lsl   r0,r0,0x18                    ; 080835AC
cmp   r0,0x0                        ; 080835AE
beq   @@Return                      ; 080835B0
@@Code080835B2:
mov   r1,r4                         ; 080835B2
add   r1,0x98                       ; 080835B4
mov   r0,0x3C                       ; 080835B6
strb  r0,[r1]                       ; 080835B8
sub   r1,0x4                        ; 080835BA
mov   r0,0xFF                       ; 080835BC
strb  r0,[r1]                       ; 080835BE
mov   r0,0x1                        ; 080835C0
strh  r0,[r4,0x38]                  ; 080835C2
sub   r1,0x52                       ; 080835C4
mov   r0,0x40                       ; 080835C6
strh  r0,[r1]                       ; 080835C8
@@Return:
pop   {r4}                          ; 080835CA
pop   {r0}                          ; 080835CC
bx    r0                            ; 080835CE

Sub080835D0:
ldr   r1,=0x03002200                ; 080835D0
ldr   r2,=0x47E4                    ; 080835D2
add   r1,r1,r2                      ; 080835D4
ldrh  r1,[r1]                       ; 080835D6
mov   r3,0x98                       ; 080835D8
lsl   r3,r3,0x1                     ; 080835DA
add   r1,r1,r3                      ; 080835DC
lsl   r1,r1,0x8                     ; 080835DE
str   r1,[r0]                       ; 080835E0
ldrh  r2,[r0,0x26]                  ; 080835E2
mov   r3,0xD0                       ; 080835E4
lsl   r3,r3,0x7                     ; 080835E6
mov   r1,r3                         ; 080835E8
orr   r1,r2                         ; 080835EA
strh  r1,[r0,0x26]                  ; 080835EC
mov   r1,0x1                        ; 080835EE
strh  r1,[r0,0x38]                  ; 080835F0
bx    lr                            ; 080835F2
.pool                               ; 080835F4

KamekFlying_Main:
; sprite 125 main
push  {lr}                          ; 080835FC
ldr   r2,=KamekFlying_SubstatePtrs  ; 080835FE
mov   r1,r0                         ; 08083600
add   r1,0x62                       ; 08083602
ldrh  r1,[r1]                       ; 08083604
lsr   r1,r1,0x1                     ; 08083606
lsl   r1,r1,0x2                     ; 08083608
add   r1,r1,r2                      ; 0808360A
ldr   r1,[r1]                       ; 0808360C
bl    Sub_bx_r1                     ; 0808360E
pop   {r0}                          ; 08083612
bx    r0                            ; 08083614
.pool                               ; 08083616

Sub0808361C:
; sprite 125 substate 0
push  {r4,lr}                       ; 0808361C
mov   r4,r0                         ; 0808361E
ldrh  r0,[r4,0x38]                  ; 08083620
cmp   r0,0x0                        ; 08083622
bne   @@Code08083632                ; 08083624
mov   r0,r4                         ; 08083626
bl    Sub0804AC30                   ; 08083628
mov   r0,r4                         ; 0808362C
bl    Sub08083AF8                   ; 0808362E
@@Code08083632:
mov   r0,r4                         ; 08083632
bl    Sub0804C330                   ; 08083634
cmp   r0,0x0                        ; 08083638
bne   @@Return                      ; 0808363A
ldr   r1,=KamekFlying_CodePtrs0     ; 0808363C
mov   r0,r4                         ; 0808363E
add   r0,0x40                       ; 08083640
ldrb  r0,[r0]                       ; 08083642
lsl   r0,r0,0x2                     ; 08083644
add   r0,r0,r1                      ; 08083646
ldr   r1,[r0]                       ; 08083648
mov   r0,r4                         ; 0808364A
bl    Sub_bx_r1                     ; 0808364C
@@Return:
pop   {r4}                          ; 08083650
pop   {r0}                          ; 08083652
bx    r0                            ; 08083654
.pool                               ; 08083656

Sub0808365C:
push  {lr}                          ; 0808365C
mov   r2,r0                         ; 0808365E
add   r0,0x42                       ; 08083660
ldrh  r0,[r0]                       ; 08083662
cmp   r0,0x0                        ; 08083664
bne   @@Return                      ; 08083666
ldr   r1,=0x03002200                ; 08083668
ldr   r3,=0x47E4                    ; 0808366A
add   r0,r1,r3                      ; 0808366C
ldrh  r0,[r0]                       ; 0808366E
mov   r3,0x98                       ; 08083670
lsl   r3,r3,0x1                     ; 08083672
add   r0,r0,r3                      ; 08083674
lsl   r0,r0,0x8                     ; 08083676
str   r0,[r2]                       ; 08083678
ldr   r0,=0x47EC                    ; 0808367A
add   r1,r1,r0                      ; 0808367C
ldrh  r0,[r1]                       ; 0808367E
add   r0,0x40                       ; 08083680
lsl   r0,r0,0x8                     ; 08083682
str   r0,[r2,0x4]                   ; 08083684
asr   r0,r0,0x8                     ; 08083686
mov   r1,r2                         ; 08083688
add   r1,0x76                       ; 0808368A
strh  r0,[r1]                       ; 0808368C
add   r1,0x1E                       ; 0808368E
mov   r0,0x1                        ; 08083690
strb  r0,[r1]                       ; 08083692
ldr   r0,=0xFFFFFE00                ; 08083694
str   r0,[r2,0x8]                   ; 08083696
sub   r1,0x50                       ; 08083698
mov   r0,0x4                        ; 0808369A
strh  r0,[r1]                       ; 0808369C
sub   r1,0x4                        ; 0808369E
ldrh  r0,[r1]                       ; 080836A0
add   r0,0x1                        ; 080836A2
strh  r0,[r1]                       ; 080836A4
@@Return:
pop   {r0}                          ; 080836A6
bx    r0                            ; 080836A8
.pool                               ; 080836AA

Sub080836BC:
push  {r4,lr}                       ; 080836BC
mov   r4,r0                         ; 080836BE
bl    Sub0805EB94                   ; 080836C0
ldrh  r0,[r4,0x20]                  ; 080836C4
cmp   r0,0xF3                       ; 080836C6
bls   @@Code080836E0                ; 080836C8
mov   r2,r4                         ; 080836CA
add   r2,0x44                       ; 080836CC
ldrh  r0,[r2]                       ; 080836CE
cmp   r0,0x0                        ; 080836D0
bne   @@Return                      ; 080836D2
ldrh  r0,[r4,0x38]                  ; 080836D4
mov   r1,0x3                        ; 080836D6
eor   r0,r1                         ; 080836D8
strh  r0,[r4,0x38]                  ; 080836DA
mov   r0,0x4                        ; 080836DC
b     @@Code08083718                ; 080836DE
@@Code080836E0:
mov   r1,0x0                        ; 080836E0
mov   r0,0x6                        ; 080836E2
strh  r0,[r4,0x38]                  ; 080836E4
mov   r0,0x20                       ; 080836E6
str   r0,[r4,0x10]                  ; 080836E8
ldr   r0,[r4,0x8]                   ; 080836EA
cmp   r0,0x0                        ; 080836EC
blt   @@Return                      ; 080836EE
str   r1,[r4,0x10]                  ; 080836F0
str   r1,[r4,0x8]                   ; 080836F2
mov   r2,r4                         ; 080836F4
add   r2,0x40                       ; 080836F6
ldrb  r0,[r2]                       ; 080836F8
mov   r3,0x98                       ; 080836FA
lsl   r3,r3,0x5                     ; 080836FC
mov   r1,r3                         ; 080836FE
orr   r0,r1                         ; 08083700
strh  r0,[r2]                       ; 08083702
ldr   r0,=Data081755B0              ; 08083704
ldrb  r0,[r0,0x13]                  ; 08083706
strh  r0,[r4,0x38]                  ; 08083708
ldr   r0,=Data081755C4              ; 0808370A
ldrb  r1,[r0,0x13]                  ; 0808370C
mov   r0,r4                         ; 0808370E
add   r0,0x44                       ; 08083710
strh  r1,[r0]                       ; 08083712
ldrh  r0,[r2]                       ; 08083714
add   r0,0x1                        ; 08083716
@@Code08083718:
strh  r0,[r2]                       ; 08083718
@@Return:
pop   {r4}                          ; 0808371A
pop   {r0}                          ; 0808371C
bx    r0                            ; 0808371E
.pool                               ; 08083720

Sub08083728:
push  {r4,lr}                       ; 08083728
mov   r4,r0                         ; 0808372A
bl    Sub0805EB94                   ; 0808372C
mov   r2,r4                         ; 08083730
add   r2,0x44                       ; 08083732
ldrh  r0,[r2]                       ; 08083734
cmp   r0,0x0                        ; 08083736
bne   @@Return                      ; 08083738
mov   r3,r4                         ; 0808373A
add   r3,0x40                       ; 0808373C
ldrh  r1,[r3]                       ; 0808373E
mov   r0,0xFF                       ; 08083740
lsl   r0,r0,0x8                     ; 08083742
and   r0,r1                         ; 08083744
cmp   r0,0x0                        ; 08083746
beq   @@Code08083788                ; 08083748
ldr   r0,=0xFFFFFF00                ; 0808374A
add   r1,r1,r0                      ; 0808374C
strh  r1,[r3]                       ; 0808374E
lsl   r1,r1,0x10                    ; 08083750
lsr   r1,r1,0x18                    ; 08083752
ldr   r0,=Data081755B0              ; 08083754
add   r0,r1,r0                      ; 08083756
ldrb  r0,[r0]                       ; 08083758
strh  r0,[r4,0x38]                  ; 0808375A
ldr   r0,=Data081755C4              ; 0808375C
add   r0,r1,r0                      ; 0808375E
ldrb  r0,[r0]                       ; 08083760
strh  r0,[r2]                       ; 08083762
mov   r0,0x7                        ; 08083764
and   r1,r0                         ; 08083766
cmp   r1,0x7                        ; 08083768
bne   @@Return                      ; 0808376A
ldr   r1,=0x03006258                ; 0808376C
mov   r0,0x85                       ; 0808376E
bl    PlayYISound                   ; 08083770
b     @@Return                      ; 08083774
.pool                               ; 08083776

@@Code08083788:
mov   r0,0x4                        ; 08083788
strh  r0,[r4,0x38]                  ; 0808378A
ldr   r0,=0x03007240                ; 0808378C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0808378E
mov   r0,0xE0                       ; 08083790
lsl   r0,r0,0x1                     ; 08083792  1C0
add   r1,r2,r0                      ; 08083794  [03007240]+1C0 (030023CC)
sub   r0,0xAB                       ; 08083796  115: 6-8 Kamek post-battle
strh  r0,[r1,0xC]                   ; 08083798  set message ID
mov   r0,0x87                       ; 0808379A
lsl   r0,r0,0x2                     ; 0808379C  21C
add   r1,r2,r0                      ; 0808379E  [03007240]+21C (03002428)
ldrh  r0,[r1]                       ; 080837A0
add   r0,0x1                        ; 080837A2  activate message
strh  r0,[r1]                       ; 080837A4
ldrh  r0,[r3]                       ; 080837A6
add   r0,0x1                        ; 080837A8
strh  r0,[r3]                       ; 080837AA
@@Return:
pop   {r4}                          ; 080837AC
pop   {r0}                          ; 080837AE
bx    r0                            ; 080837B0
.pool                               ; 080837B2

Sub080837B8:
push  {r4,lr}                       ; 080837B8
mov   r4,r0                         ; 080837BA
mov   r0,0x1                        ; 080837BC
strh  r0,[r4,0x38]                  ; 080837BE
ldr   r0,=0xFFFFF800                ; 080837C0
str   r0,[r4,0x18]                  ; 080837C2
mov   r0,0x40                       ; 080837C4
str   r0,[r4,0x10]                  ; 080837C6
mov   r0,0x80                       ; 080837C8
lsl   r0,r0,0x4                     ; 080837CA
str   r0,[r4,0x1C]                  ; 080837CC
mov   r0,0x10                       ; 080837CE
str   r0,[r4,0x14]                  ; 080837D0
ldr   r0,=0xFFFFFF00                ; 080837D2
str   r0,[r4,0xC]                   ; 080837D4
mov   r0,0x1C                       ; 080837D6  1C: Kamek carries Bowser away -> ending sequence
bl    PlayYIMusic                   ; 080837D8
add   r4,0x40                       ; 080837DC
ldrh  r0,[r4]                       ; 080837DE
add   r0,0x1                        ; 080837E0
strh  r0,[r4]                       ; 080837E2
pop   {r4}                          ; 080837E4
pop   {r0}                          ; 080837E6
bx    r0                            ; 080837E8
.pool                               ; 080837EA

Sub080837F4:
push  {lr}                          ; 080837F4
mov   r1,r0                         ; 080837F6
ldrh  r0,[r1,0x20]                  ; 080837F8
cmp   r0,0x7F                       ; 080837FA
bhi   @@Code0808380E                ; 080837FC
mov   r0,0x80                       ; 080837FE
lsl   r0,r0,0x4                     ; 08083800
str   r0,[r1,0x18]                  ; 08083802
add   r1,0x40                       ; 08083804
ldrh  r0,[r1]                       ; 08083806
add   r0,0x1                        ; 08083808
strh  r0,[r1]                       ; 0808380A
b     @@Return                      ; 0808380C
@@Code0808380E:
mov   r0,r1                         ; 0808380E
bl    Sub08083968                   ; 08083810
@@Return:
pop   {r0}                          ; 08083814
bx    r0                            ; 08083816

Sub08083818:
push  {r4-r5,lr}                    ; 08083818
mov   r5,r0                         ; 0808381A
ldrh  r1,[r5,0x20]                  ; 0808381C
ldr   r0,=0x013F                    ; 0808381E
cmp   r1,r0                         ; 08083820
bls   @@Code080838F4                ; 08083822
ldr   r4,=Data081A724A              ; 08083824
ldr   r1,=0x02010AC2                ; 08083826
mov   r0,r4                         ; 08083828
mov   r2,0xF                        ; 0808382A
bl    swi_MemoryCopy4or2            ; 0808382C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2                ; 08083830
mov   r0,r4                         ; 08083832
mov   r2,0xF                        ; 08083834
bl    swi_MemoryCopy4or2            ; 08083836  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 0808383A
mov   r0,0x91                       ; 0808383C
lsl   r0,r0,0x7                     ; 0808383E
add   r2,r1,r0                      ; 08083840
mov   r3,0x0                        ; 08083842
ldr   r0,=0x0161                    ; 08083844
strh  r0,[r2]                       ; 08083846
ldr   r0,=0x4882                    ; 08083848
add   r2,r1,r0                      ; 0808384A
mov   r0,0xC2                       ; 0808384C
strh  r0,[r2]                       ; 0808384E
ldr   r2,=0x4884                    ; 08083850
add   r1,r1,r2                      ; 08083852
mov   r0,0x1E                       ; 08083854
strh  r0,[r1]                       ; 08083856
ldr   r2,=0x03007240                ; 08083858  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0300702C                ; 0808385A  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0808385C
ldr   r1,=0x1194                    ; 0808385E
add   r0,r0,r1                      ; 08083860
ldrh  r1,[r0]                       ; 08083862
mov   r0,0xB0                       ; 08083864
mul   r0,r1                         ; 08083866
ldr   r1,[r2]                       ; 08083868
add   r0,r0,r1                      ; 0808386A
mov   r2,0xBA                       ; 0808386C
lsl   r2,r2,0x2                     ; 0808386E
add   r0,r0,r2                      ; 08083870
mov   r1,0xFF                       ; 08083872
strb  r1,[r0]                       ; 08083874
strh  r3,[r5,0x36]                  ; 08083876
strh  r3,[r5,0x38]                  ; 08083878
ldrh  r1,[r5,0x2C]                  ; 0808387A
ldr   r0,=0xFFF1                    ; 0808387C
and   r0,r1                         ; 0808387E
mov   r1,0xC                        ; 08083880
orr   r0,r1                         ; 08083882
strh  r0,[r5,0x2C]                  ; 08083884
ldrh  r1,[r5,0x2A]                  ; 08083886
ldr   r0,=0x07FF                    ; 08083888
and   r0,r1                         ; 0808388A
mov   r2,0x80                       ; 0808388C
lsl   r2,r2,0x4                     ; 0808388E
mov   r1,r2                         ; 08083890
orr   r0,r1                         ; 08083892
strh  r0,[r5,0x2A]                  ; 08083894
mov   r1,r5                         ; 08083896
add   r1,0x6E                       ; 08083898
mov   r0,0x80                       ; 0808389A
lsl   r0,r0,0x1                     ; 0808389C
strh  r0,[r1]                       ; 0808389E
add   r1,0x4                        ; 080838A0
mov   r0,0xC0                       ; 080838A2
strh  r0,[r1]                       ; 080838A4
str   r3,[r5,0x14]                  ; 080838A6
str   r3,[r5,0x10]                  ; 080838A8
str   r3,[r5,0xC]                   ; 080838AA
str   r3,[r5,0x8]                   ; 080838AC
sub   r1,0x2E                       ; 080838AE
mov   r0,0x20                       ; 080838B0
strh  r0,[r1]                       ; 080838B2
sub   r1,0x4                        ; 080838B4
ldrh  r0,[r1]                       ; 080838B6
add   r0,0x1                        ; 080838B8
strh  r0,[r1]                       ; 080838BA
b     @@Return                      ; 080838BC
.pool                               ; 080838BE

@@Code080838F4:
ldr   r2,[r5,0x8]                   ; 080838F4
cmp   r2,0x0                        ; 080838F6
bge   @@Code080838FE                ; 080838F8
mov   r0,0x0                        ; 080838FA
b     @@Code08083900                ; 080838FC
@@Code080838FE:
mov   r0,0x2                        ; 080838FE
@@Code08083900:
strh  r0,[r5,0x36]                  ; 08083900
ldr   r0,[r5,0xC]                   ; 08083902
cmp   r0,0x0                        ; 08083904
blt   @@Code08083912                ; 08083906
ldrh  r0,[r5,0x22]                  ; 08083908
cmp   r0,0x39                       ; 0808390A
bls   @@Code08083912                ; 0808390C
ldr   r0,=0xFFFFF800                ; 0808390E
str   r0,[r5,0x1C]                  ; 08083910
@@Code08083912:
mov   r1,r2                         ; 08083912
mov   r0,r1                         ; 08083914
add   r0,0x80                       ; 08083916
lsl   r0,r0,0x10                    ; 08083918
lsr   r0,r0,0x10                    ; 0808391A
cmp   r0,0xFF                       ; 0808391C
bhi   @@Code0808392C                ; 0808391E
mov   r0,0x7                        ; 08083920
strh  r0,[r5,0x38]                  ; 08083922
b     @@Return                      ; 08083924
.pool                               ; 08083926

@@Code0808392C:
mov   r3,0xC0                       ; 0808392C
lsl   r3,r3,0x1                     ; 0808392E
add   r0,r1,r3                      ; 08083930
lsl   r0,r0,0x10                    ; 08083932
ldr   r1,=0x02FF0000                ; 08083934
cmp   r0,r1                         ; 08083936
bhi   @@Code08083944                ; 08083938
mov   r0,0x6                        ; 0808393A
strh  r0,[r5,0x38]                  ; 0808393C
b     @@Return                      ; 0808393E
.pool                               ; 08083940

@@Code08083944:
mov   r1,0xA0                       ; 08083944
lsl   r1,r1,0x2                     ; 08083946
add   r0,r2,r1                      ; 08083948
lsl   r0,r0,0x10                    ; 0808394A
ldr   r1,=0x04FF0000                ; 0808394C
cmp   r0,r1                         ; 0808394E
bhi   @@Code0808395C                ; 08083950
mov   r0,0x3                        ; 08083952
strh  r0,[r5,0x38]                  ; 08083954
b     @@Return                      ; 08083956
.pool                               ; 08083958

@@Code0808395C:
mov   r0,r5                         ; 0808395C
bl    Sub08083968                   ; 0808395E
@@Return:
pop   {r4-r5}                       ; 08083962
pop   {r0}                          ; 08083964
bx    r0                            ; 08083966

Sub08083968:
push  {r4,lr}                       ; 08083968
mov   r3,r0                         ; 0808396A
ldr   r0,=0x03002200                ; 0808396C
ldr   r1,=0x48A2                    ; 0808396E
add   r0,r0,r1                      ; 08083970
ldrh  r0,[r0]                       ; 08083972
lsr   r0,r0,0x2                     ; 08083974
mov   r1,0x1                        ; 08083976
and   r0,r1                         ; 08083978
add   r0,0x1                        ; 0808397A
mov   r4,0x0                        ; 0808397C
strh  r0,[r3,0x38]                  ; 0808397E
ldrh  r0,[r3,0x36]                  ; 08083980
cmp   r0,0x0                        ; 08083982
beq   @@Return                      ; 08083984
ldr   r2,=0x03007240                ; 08083986  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0300702C                ; 08083988  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0808398A
ldr   r1,=0x1194                    ; 0808398C
add   r0,r0,r1                      ; 0808398E
ldrh  r1,[r0]                       ; 08083990
mov   r0,0xB0                       ; 08083992
mul   r0,r1                         ; 08083994
mov   r1,0x95                       ; 08083996
lsl   r1,r1,0x2                     ; 08083998
add   r0,r0,r1                      ; 0808399A
ldr   r1,[r2]                       ; 0808399C
add   r2,r1,r0                      ; 0808399E
ldr   r1,[r3]                       ; 080839A0
ldr   r0,[r2]                       ; 080839A2
cmp   r1,r0                         ; 080839A4
blt   @@Return                      ; 080839A6
mov   r0,0x2F                       ; 080839A8
strh  r0,[r2,0x38]                  ; 080839AA
str   r4,[r2,0xC]                   ; 080839AC
str   r4,[r2,0x14]                  ; 080839AE
ldr   r0,[r3]                       ; 080839B0
str   r0,[r2]                       ; 080839B2
ldr   r0,[r3,0x4]                   ; 080839B4
mov   r1,0x80                       ; 080839B6
lsl   r1,r1,0x5                     ; 080839B8
add   r0,r0,r1                      ; 080839BA
str   r0,[r2,0x4]                   ; 080839BC
@@Return:
pop   {r4}                          ; 080839BE
pop   {r0}                          ; 080839C0
bx    r0                            ; 080839C2
.pool                               ; 080839C4

Sub080839D8:
push  {lr}                          ; 080839D8
mov   r2,r0                         ; 080839DA
add   r0,0x44                       ; 080839DC
ldrh  r0,[r0]                       ; 080839DE
cmp   r0,0x0                        ; 080839E0
bne   @@Return                      ; 080839E2
mov   r0,r2                         ; 080839E4
add   r0,0x6E                       ; 080839E6
ldrh  r0,[r0]                       ; 080839E8
lsl   r0,r0,0x12                    ; 080839EA
asr   r0,r0,0x10                    ; 080839EC
neg   r0,r0                         ; 080839EE
str   r0,[r2,0x8]                   ; 080839F0
mov   r0,r2                         ; 080839F2
add   r0,0x72                       ; 080839F4
mov   r1,0x0                        ; 080839F6
ldsh  r0,[r0,r1]                    ; 080839F8
neg   r0,r0                         ; 080839FA
str   r0,[r2,0xC]                   ; 080839FC
ldr   r1,=0x03002200                ; 080839FE
ldr   r3,=0x47E4                    ; 08083A00
add   r0,r1,r3                      ; 08083A02
ldrh  r0,[r0]                       ; 08083A04
mov   r3,0x88                       ; 08083A06
lsl   r3,r3,0x1                     ; 08083A08
add   r0,r0,r3                      ; 08083A0A
lsl   r0,r0,0x8                     ; 08083A0C
str   r0,[r2]                       ; 08083A0E
ldr   r0,=0x47EC                    ; 08083A10
add   r1,r1,r0                      ; 08083A12
ldrh  r0,[r1]                       ; 08083A14
add   r0,0x38                       ; 08083A16
lsl   r0,r0,0x8                     ; 08083A18
str   r0,[r2,0x4]                   ; 08083A1A
mov   r1,r2                         ; 08083A1C
add   r1,0x40                       ; 08083A1E
ldrh  r0,[r1]                       ; 08083A20
add   r0,0x1                        ; 08083A22
strh  r0,[r1]                       ; 08083A24
@@Return:
pop   {r0}                          ; 08083A26
bx    r0                            ; 08083A28
.pool                               ; 08083A2A

Sub08083A38:
push  {r4,lr}                       ; 08083A38
mov   r4,r0                         ; 08083A3A
ldrh  r1,[r4,0x20]                  ; 08083A3C
cmp   r1,0xDF                       ; 08083A3E
bhi   @@Code08083A9A                ; 08083A40
mov   r2,r4                         ; 08083A42
add   r2,0x6E                       ; 08083A44
ldrh  r0,[r2]                       ; 08083A46
cmp   r0,0x2                        ; 08083A48
bls   @@Code08083A78                ; 08083A4A
sub   r0,0x3                        ; 08083A4C
strh  r0,[r2]                       ; 08083A4E
mov   r1,r4                         ; 08083A50
add   r1,0x72                       ; 08083A52
ldrh  r0,[r1]                       ; 08083A54
cmp   r0,0x1                        ; 08083A56
bls   @@Code08083A5E                ; 08083A58
sub   r0,0x2                        ; 08083A5A
strh  r0,[r1]                       ; 08083A5C
@@Code08083A5E:
ldrh  r0,[r2]                       ; 08083A5E
lsl   r0,r0,0x12                    ; 08083A60
asr   r0,r0,0x10                    ; 08083A62
neg   r0,r0                         ; 08083A64
str   r0,[r4,0x8]                   ; 08083A66
mov   r2,0x0                        ; 08083A68
ldsh  r0,[r1,r2]                    ; 08083A6A
neg   r0,r0                         ; 08083A6C
str   r0,[r4,0xC]                   ; 08083A6E
mov   r0,r4                         ; 08083A70
bl    Sub08083C14                   ; 08083A72
b     @@Code08083A9A                ; 08083A76
@@Code08083A78:
cmp   r1,0x1F                       ; 08083A78
bhi   @@Code08083A8E                ; 08083A7A
mov   r0,0x0                        ; 08083A7C
str   r0,[r4,0xC]                   ; 08083A7E
str   r0,[r4,0x8]                   ; 08083A80
mov   r1,r4                         ; 08083A82
add   r1,0x40                       ; 08083A84
ldrh  r0,[r1]                       ; 08083A86
add   r0,0x1                        ; 08083A88
strh  r0,[r1]                       ; 08083A8A
b     @@Return                      ; 08083A8C
@@Code08083A8E:
mov   r1,0x22                       ; 08083A8E
ldsh  r0,[r4,r1]                    ; 08083A90
cmp   r0,0x5                        ; 08083A92
bgt   @@Code08083A9A                ; 08083A94
mov   r0,0x0                        ; 08083A96
str   r0,[r4,0xC]                   ; 08083A98
@@Code08083A9A:
ldr   r1,[r4,0x8]                   ; 08083A9A
cmp   r1,0x0                        ; 08083A9C
beq   @@Code08083AA8                ; 08083A9E
lsl   r1,r1,0x10                    ; 08083AA0
ldr   r0,=0xFFEF0000                ; 08083AA2
cmp   r1,r0                         ; 08083AA4
bls   @@Return                      ; 08083AA6
@@Code08083AA8:
mov   r0,0x10                       ; 08083AA8
neg   r0,r0                         ; 08083AAA
str   r0,[r4,0x8]                   ; 08083AAC
@@Return:
pop   {r4}                          ; 08083AAE
pop   {r0}                          ; 08083AB0
bx    r0                            ; 08083AB2
.pool                               ; 08083AB4

Sub08083AB8:
push  {lr}                          ; 08083AB8
ldr   r3,=0x03007240                ; 08083ABA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,=0x0300702C                ; 08083ABC  Sprite RAM structs (03002460)
ldr   r1,[r1]                       ; 08083ABE
ldr   r2,=0x1194                    ; 08083AC0
add   r1,r1,r2                      ; 08083AC2
ldrh  r2,[r1]                       ; 08083AC4
mov   r1,0xB0                       ; 08083AC6
mul   r1,r2                         ; 08083AC8
mov   r2,0x95                       ; 08083ACA
lsl   r2,r2,0x2                     ; 08083ACC
add   r1,r1,r2                      ; 08083ACE
ldr   r2,[r3]                       ; 08083AD0
add   r2,r2,r1                      ; 08083AD2
mov   r3,r2                         ; 08083AD4
add   r3,0x6E                       ; 08083AD6
ldrh  r1,[r3]                       ; 08083AD8
add   r1,0x1                        ; 08083ADA
strh  r1,[r3]                       ; 08083ADC
add   r2,0x42                       ; 08083ADE
mov   r1,0x40                       ; 08083AE0
strh  r1,[r2]                       ; 08083AE2
bl    DespawnSprite                 ; 08083AE4
pop   {r0}                          ; 08083AE8
bx    r0                            ; 08083AEA
.pool                               ; 08083AEC

Sub08083AF8:
push  {r4-r7,lr}                    ; 08083AF8
mov   r7,r9                         ; 08083AFA
mov   r6,r8                         ; 08083AFC
push  {r6-r7}                       ; 08083AFE
mov   r7,r0                         ; 08083B00
add   r0,0x94                       ; 08083B02
ldrb  r0,[r0]                       ; 08083B04
cmp   r0,0xFF                       ; 08083B06
beq   @@Return                      ; 08083B08
ldrh  r0,[r7,0x3C]                  ; 08083B0A
lsl   r0,r0,0x18                    ; 08083B0C
cmp   r0,0x0                        ; 08083B0E
blt   @@Return                      ; 08083B10
mov   r2,r7                         ; 08083B12
add   r2,0x6E                       ; 08083B14
ldrh  r0,[r2]                       ; 08083B16
cmp   r0,0x17                       ; 08083B18
bhi   @@Code08083B28                ; 08083B1A
ldr   r0,=Data081AF2CC              ; 08083B1C
ldrh  r0,[r0,0x30]                  ; 08083B1E
b     @@Code08083B32                ; 08083B20
.pool                               ; 08083B22

@@Code08083B28:
ldr   r1,=Data081AF2CC              ; 08083B28
ldrh  r0,[r2]                       ; 08083B2A
lsl   r0,r0,0x1                     ; 08083B2C
add   r0,r0,r1                      ; 08083B2E
ldrh  r0,[r0]                       ; 08083B30
@@Code08083B32:
mov   r9,r0                         ; 08083B32
ldrh  r2,[r7,0x34]                  ; 08083B34
lsr   r2,r2,0x2                     ; 08083B36
lsl   r2,r2,0x3                     ; 08083B38
ldr   r6,=0x03005A00                ; 08083B3A
add   r2,r2,r6                      ; 08083B3C
ldrh  r1,[r2]                       ; 08083B3E
ldr   r0,=0xFCFF                    ; 08083B40
and   r0,r1                         ; 08083B42
mov   r3,0x80                       ; 08083B44
lsl   r3,r3,0x1                     ; 08083B46
mov   r1,r3                         ; 08083B48
orr   r0,r1                         ; 08083B4A
strh  r0,[r2]                       ; 08083B4C
ldrh  r1,[r2,0x2]                   ; 08083B4E
ldr   r0,=0x3FFF                    ; 08083B50
and   r0,r1                         ; 08083B52
mov   r3,0x80                       ; 08083B54
lsl   r3,r3,0x8                     ; 08083B56
mov   r1,r3                         ; 08083B58
orr   r0,r1                         ; 08083B5A
strh  r0,[r2,0x2]                   ; 08083B5C
ldrh  r1,[r2,0x4]                   ; 08083B5E
ldr   r0,=0x0FFF                    ; 08083B60
and   r0,r1                         ; 08083B62
mov   r3,0xC0                       ; 08083B64
lsl   r3,r3,0x7                     ; 08083B66
mov   r1,r3                         ; 08083B68
orr   r0,r1                         ; 08083B6A
strh  r0,[r2,0x4]                   ; 08083B6C
ldr   r1,=Data0829AEA4              ; 08083B6E
mov   r0,r7                         ; 08083B70
bl    LoadDynGfx_32x32              ; 08083B72
ldr   r0,=0x0FD2                    ; 08083B76
add   r0,r0,r6                      ; 08083B78
mov   r8,r0                         ; 08083B7A
ldrh  r4,[r0]                       ; 08083B7C
ldrh  r1,[r7,0x34]                  ; 08083B7E
lsr   r1,r1,0x2                     ; 08083B80
lsl   r1,r1,0x3                     ; 08083B82
add   r1,r1,r6                      ; 08083B84
lsr   r2,r4,0x4                     ; 08083B86
mov   r5,0x1                        ; 08083B88
and   r2,r5                         ; 08083B8A
lsl   r2,r2,0x5                     ; 08083B8C
ldrb  r3,[r1,0x3]                   ; 08083B8E
mov   r0,0x21                       ; 08083B90
neg   r0,r0                         ; 08083B92
and   r0,r3                         ; 08083B94
orr   r0,r2                         ; 08083B96
strb  r0,[r1,0x3]                   ; 08083B98
ldrh  r1,[r7,0x34]                  ; 08083B9A
lsr   r1,r1,0x2                     ; 08083B9C
lsl   r1,r1,0x3                     ; 08083B9E
add   r1,r1,r6                      ; 08083BA0
lsr   r2,r4,0x3                     ; 08083BA2
and   r2,r5                         ; 08083BA4
lsl   r2,r2,0x4                     ; 08083BA6
ldrb  r3,[r1,0x3]                   ; 08083BA8
mov   r0,0x11                       ; 08083BAA
neg   r0,r0                         ; 08083BAC
and   r0,r3                         ; 08083BAE
orr   r0,r2                         ; 08083BB0
strb  r0,[r1,0x3]                   ; 08083BB2
ldrh  r1,[r7,0x34]                  ; 08083BB4
lsr   r1,r1,0x2                     ; 08083BB6
lsl   r1,r1,0x3                     ; 08083BB8
add   r1,r1,r6                      ; 08083BBA
mov   r2,0x7                        ; 08083BBC
and   r2,r4                         ; 08083BBE
lsl   r2,r2,0x1                     ; 08083BC0
ldrb  r3,[r1,0x3]                   ; 08083BC2
mov   r0,0xF                        ; 08083BC4
neg   r0,r0                         ; 08083BC6
and   r0,r3                         ; 08083BC8
orr   r0,r2                         ; 08083BCA
strb  r0,[r1,0x3]                   ; 08083BCC
ldr   r0,=0x030021A8                ; 08083BCE
mov   r1,0x0                        ; 08083BD0
mov   r2,r9                         ; 08083BD2
strh  r2,[r0,0x2]                   ; 08083BD4
strh  r2,[r0]                       ; 08083BD6
strh  r1,[r0,0x4]                   ; 08083BD8
lsl   r0,r4,0x1A                    ; 08083BDA
lsr   r0,r0,0x18                    ; 08083BDC
bl    Sub0804CA78                   ; 08083BDE
add   r4,0x1                        ; 08083BE2
mov   r3,r8                         ; 08083BE4
strh  r4,[r3]                       ; 08083BE6
@@Return:
pop   {r3-r4}                       ; 08083BE8
mov   r8,r3                         ; 08083BEA
mov   r9,r4                         ; 08083BEC
pop   {r4-r7}                       ; 08083BEE
pop   {r0}                          ; 08083BF0
bx    r0                            ; 08083BF2
.pool                               ; 08083BF4

Sub08083C14:
push  {r4,lr}                       ; 08083C14
add   sp,-0x4                       ; 08083C16
ldr   r4,=0x02010AC2                ; 08083C18
ldr   r1,=Data081A726A              ; 08083C1A
ldr   r2,=0x020106C2                ; 08083C1C
add   r0,0x6E                       ; 08083C1E
ldrh  r0,[r0]                       ; 08083C20
mov   r3,0x80                       ; 08083C22
lsl   r3,r3,0x1                     ; 08083C24
sub   r3,r3,r0                      ; 08083C26
mov   r0,0xF                        ; 08083C28
str   r0,[sp]                       ; 08083C2A
mov   r0,r4                         ; 08083C2C
bl    Sub0810BE1C                   ; 08083C2E
ldr   r1,=0x03002200                ; 08083C32
mov   r0,0x91                       ; 08083C34
lsl   r0,r0,0x7                     ; 08083C36
add   r2,r1,r0                      ; 08083C38
ldr   r0,=0x0161                    ; 08083C3A
strh  r0,[r2]                       ; 08083C3C
ldr   r0,=0x4882                    ; 08083C3E
add   r2,r1,r0                      ; 08083C40
mov   r0,0xC2                       ; 08083C42
strh  r0,[r2]                       ; 08083C44
ldr   r0,=0x4884                    ; 08083C46
add   r1,r1,r0                      ; 08083C48
mov   r0,0x1E                       ; 08083C4A
strh  r0,[r1]                       ; 08083C4C
add   sp,0x4                        ; 08083C4E
pop   {r4}                          ; 08083C50
pop   {r0}                          ; 08083C52
bx    r0                            ; 08083C54
.pool                               ; 08083C56

Sub08083C74:
; sprite 125 substate 1
push  {r4-r5,lr}                    ; 08083C74
mov   r4,r0                         ; 08083C76
bl    Sub0804C330                   ; 08083C78
cmp   r0,0x0                        ; 08083C7C
bne   @@Return                      ; 08083C7E
ldr   r0,=0x03007240                ; 08083C80  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08083C82
ldr   r1,=0x2AAC                    ; 08083C84
add   r0,r0,r1                      ; 08083C86
ldrh  r0,[r0]                       ; 08083C88
mov   r1,0x1                        ; 08083C8A
cmp   r0,0x34                       ; 08083C8C
beq   @@Code08083C98                ; 08083C8E
mov   r1,0x0                        ; 08083C90
cmp   r0,0xF5                       ; 08083C92
bne   @@Code08083C98                ; 08083C94
mov   r1,0x2                        ; 08083C96
@@Code08083C98:
ldr   r2,=0x03006D80                ; 08083C98
ldr   r0,=Data081755F4              ; 08083C9A
lsl   r1,r1,0x2                     ; 08083C9C
add   r0,r1,r0                      ; 08083C9E
ldr   r3,[r2]                       ; 08083CA0
ldr   r0,[r0]                       ; 08083CA2
mov   r5,r1                         ; 08083CA4
cmp   r3,r0                         ; 08083CA6
blt   @@Code08083CB8                ; 08083CA8
ldrh  r0,[r2,0x32]                  ; 08083CAA
cmp   r0,0x0                        ; 08083CAC
bne   @@Code08083CB8                ; 08083CAE
mov   r1,r4                         ; 08083CB0
add   r1,0x6C                       ; 08083CB2
mov   r0,0x1                        ; 08083CB4
strh  r0,[r1]                       ; 08083CB6
@@Code08083CB8:
ldr   r0,=Data08175600              ; 08083CB8
add   r0,r5,r0                      ; 08083CBA
ldr   r1,[r2]                       ; 08083CBC
ldr   r0,[r0]                       ; 08083CBE
cmp   r1,r0                         ; 08083CC0
bge   @@Code08083CD0                ; 08083CC2
ldrh  r1,[r2,0x32]                  ; 08083CC4
cmp   r1,0x0                        ; 08083CC6
bne   @@Code08083CD0                ; 08083CC8
mov   r0,r4                         ; 08083CCA
add   r0,0x6C                       ; 08083CCC
strh  r1,[r0]                       ; 08083CCE
@@Code08083CD0:
ldr   r1,=KamekFlying_CodePtrs1     ; 08083CD0
mov   r0,r4                         ; 08083CD2
add   r0,0x40                       ; 08083CD4
ldrh  r0,[r0]                       ; 08083CD6
lsl   r0,r0,0x2                     ; 08083CD8
add   r0,r0,r1                      ; 08083CDA
ldr   r1,[r0]                       ; 08083CDC
mov   r0,r4                         ; 08083CDE
bl    Sub_bx_r1                     ; 08083CE0
@@Return:
pop   {r4-r5}                       ; 08083CE4
pop   {r0}                          ; 08083CE6
bx    r0                            ; 08083CE8
.pool                               ; 08083CEA

Sub08083D04:
push  {r4-r5,lr}                    ; 08083D04
mov   r12,r0                        ; 08083D06
add   r0,0x6C                       ; 08083D08
ldrh  r0,[r0]                       ; 08083D0A
cmp   r0,0x0                        ; 08083D0C
beq   @@Code08083DC4                ; 08083D0E
ldr   r0,=0x03007240                ; 08083D10  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08083D12
ldr   r2,=0x2AAC                    ; 08083D14
add   r0,r1,r2                      ; 08083D16
ldrh  r0,[r0]                       ; 08083D18
cmp   r0,0xF5                       ; 08083D1A
bne   @@Code08083D30                ; 08083D1C
mov   r0,r12                        ; 08083D1E
bl    ClearSpriteSlot               ; 08083D20
b     @@Return                      ; 08083D24
.pool                               ; 08083D26

@@Code08083D30:
mov   r5,0x95                       ; 08083D30
lsl   r5,r5,0x2                     ; 08083D32
add   r0,r1,r5                      ; 08083D34
ldrh  r0,[r0,0x24]                  ; 08083D36
cmp   r0,0x5                        ; 08083D38
beq   @@Code08083D3E                ; 08083D3A
b     @@Return                      ; 08083D3C
@@Code08083D3E:
ldr   r4,=0x03006D80                ; 08083D3E
mov   r0,r4                         ; 08083D40
add   r0,0x7A                       ; 08083D42
ldrh  r1,[r0]                       ; 08083D44
mov   r0,0x7                        ; 08083D46
and   r0,r1                         ; 08083D48
cmp   r0,0x0                        ; 08083D4A
beq   @@Return                      ; 08083D4C
mov   r1,r12                        ; 08083D4E
add   r1,0x40                       ; 08083D50
mov   r3,0x0                        ; 08083D52
mov   r2,0x0                        ; 08083D54
mov   r0,0x4                        ; 08083D56
strh  r0,[r1]                       ; 08083D58
ldr   r1,=0x03002200                ; 08083D5A
ldr   r5,=0x47E4                    ; 08083D5C
add   r0,r1,r5                      ; 08083D5E
ldrh  r0,[r0]                       ; 08083D60
mov   r5,0xA0                       ; 08083D62
lsl   r5,r5,0x1                     ; 08083D64
add   r0,r0,r5                      ; 08083D66
lsl   r0,r0,0x8                     ; 08083D68
mov   r5,r12                        ; 08083D6A
str   r0,[r5]                       ; 08083D6C
ldr   r0,=0x47EC                    ; 08083D6E
add   r1,r1,r0                      ; 08083D70
ldrh  r0,[r1]                       ; 08083D72
add   r0,0x20                       ; 08083D74
lsl   r0,r0,0x8                     ; 08083D76
str   r0,[r5,0x4]                   ; 08083D78
ldr   r0,=0xFFFFFC00                ; 08083D7A
str   r0,[r5,0x8]                   ; 08083D7C
mov   r0,0x10                       ; 08083D7E
str   r0,[r5,0x10]                  ; 08083D80
strh  r2,[r5,0x36]                  ; 08083D82
mov   r0,0x32                       ; 08083D84
strh  r0,[r5,0x2C]                  ; 08083D86
mov   r1,r12                        ; 08083D88
add   r1,0x94                       ; 08083D8A
mov   r0,0x2                        ; 08083D8C
strb  r0,[r1]                       ; 08083D8E
mov   r0,r12                        ; 08083D90
add   r0,0x97                       ; 08083D92
strb  r3,[r0]                       ; 08083D94
mov   r0,0x1                        ; 08083D96
strh  r0,[r5,0x38]                  ; 08083D98
mov   r0,r12                        ; 08083D9A
add   r0,0x70                       ; 08083D9C
strh  r2,[r0]                       ; 08083D9E
mov   r2,r4                         ; 08083DA0
add   r2,0xC6                       ; 08083DA2
ldrh  r0,[r2]                       ; 08083DA4
mov   r1,0x3                        ; 08083DA6
orr   r0,r1                         ; 08083DA8
strh  r0,[r2]                       ; 08083DAA
b     @@Return                      ; 08083DAC
.pool                               ; 08083DAE

@@Code08083DC4:
mov   r0,r12                        ; 08083DC4
add   r0,0x42                       ; 08083DC6
ldrh  r0,[r0]                       ; 08083DC8
cmp   r0,0x0                        ; 08083DCA
bne   @@Return                      ; 08083DCC
mov   r1,r12                        ; 08083DCE
strh  r0,[r1,0x36]                  ; 08083DD0
ldr   r1,=0x03002200                ; 08083DD2
ldr   r2,=0x47E4                    ; 08083DD4
add   r0,r1,r2                      ; 08083DD6
ldrh  r0,[r0]                       ; 08083DD8
mov   r5,0x90                       ; 08083DDA
lsl   r5,r5,0x1                     ; 08083DDC
add   r0,r0,r5                      ; 08083DDE
lsl   r0,r0,0x8                     ; 08083DE0
mov   r2,r12                        ; 08083DE2
str   r0,[r2]                       ; 08083DE4
ldr   r0,=0x03007240                ; 08083DE6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08083DE8
ldr   r5,=0x2AAC                    ; 08083DEA
add   r0,r0,r5                      ; 08083DEC
ldrh  r0,[r0]                       ; 08083DEE
cmp   r0,0xF5                       ; 08083DF0
bne   @@Code08083E14                ; 08083DF2
ldr   r2,=0x47EC                    ; 08083DF4
add   r0,r1,r2                      ; 08083DF6
ldrh  r0,[r0]                       ; 08083DF8
add   r0,0x28                       ; 08083DFA
b     @@Code08083E1C                ; 08083DFC
.pool                               ; 08083DFE

@@Code08083E14:
ldr   r2,=0x47EC                    ; 08083E14
add   r0,r1,r2                      ; 08083E16
ldrh  r0,[r0]                       ; 08083E18
add   r0,0x30                       ; 08083E1A
@@Code08083E1C:
lsl   r0,r0,0x8                     ; 08083E1C
mov   r5,r12                        ; 08083E1E
str   r0,[r5,0x4]                   ; 08083E20
ldr   r0,=0xFFFFFE00                ; 08083E22
mov   r1,r12                        ; 08083E24
str   r0,[r1,0x8]                   ; 08083E26
ldrh  r0,[r1,0x2C]                  ; 08083E28
mov   r1,0x20                       ; 08083E2A
eor   r0,r1                         ; 08083E2C
mov   r2,r12                        ; 08083E2E
strh  r0,[r2,0x2C]                  ; 08083E30
mov   r1,r12                        ; 08083E32
add   r1,0x94                       ; 08083E34
mov   r0,0x7                        ; 08083E36
strb  r0,[r1]                       ; 08083E38
add   r1,0x3                        ; 08083E3A
mov   r0,0x40                       ; 08083E3C
strb  r0,[r1]                       ; 08083E3E
sub   r1,0x57                       ; 08083E40
ldrh  r0,[r1]                       ; 08083E42
add   r0,0x1                        ; 08083E44
strh  r0,[r1]                       ; 08083E46
@@Return:
pop   {r4-r5}                       ; 08083E48
pop   {r0}                          ; 08083E4A
bx    r0                            ; 08083E4C
.pool                               ; 08083E4E

Sub08083E58:
push  {lr}                          ; 08083E58
mov   r2,r0                         ; 08083E5A
ldr   r0,=0x03002200                ; 08083E5C
ldr   r1,=0x48A2                    ; 08083E5E
add   r0,r0,r1                      ; 08083E60
ldrh  r0,[r0]                       ; 08083E62
lsr   r0,r0,0x2                     ; 08083E64
mov   r1,0x1                        ; 08083E66
and   r0,r1                         ; 08083E68
add   r0,0x8                        ; 08083E6A
strh  r0,[r2,0x38]                  ; 08083E6C
mov   r0,0x20                       ; 08083E6E
ldsh  r1,[r2,r0]                    ; 08083E70
mov   r0,0x30                       ; 08083E72
neg   r0,r0                         ; 08083E74
cmp   r1,r0                         ; 08083E76
bge   @@Return                      ; 08083E78
mov   r0,0x0                        ; 08083E7A
str   r0,[r2,0x8]                   ; 08083E7C
mov   r1,r2                         ; 08083E7E
add   r1,0x42                       ; 08083E80
mov   r0,0x60                       ; 08083E82
strh  r0,[r1]                       ; 08083E84
add   r1,0x52                       ; 08083E86
mov   r0,0xFF                       ; 08083E88
strb  r0,[r1]                       ; 08083E8A
sub   r1,0x54                       ; 08083E8C
ldrh  r0,[r1]                       ; 08083E8E
add   r0,0x1                        ; 08083E90
strh  r0,[r1]                       ; 08083E92
@@Return:
pop   {r0}                          ; 08083E94
bx    r0                            ; 08083E96
.pool                               ; 08083E98

Sub08083EA0:
push  {r4-r5,lr}                    ; 08083EA0
mov   r3,r0                         ; 08083EA2
add   r0,0x6C                       ; 08083EA4
ldrh  r0,[r0]                       ; 08083EA6
cmp   r0,0x0                        ; 08083EA8
beq   @@Code08083F54                ; 08083EAA
ldr   r0,=0x03007240                ; 08083EAC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08083EAE
ldr   r2,=0x2AAC                    ; 08083EB0
add   r0,r1,r2                      ; 08083EB2
ldrh  r0,[r0]                       ; 08083EB4
cmp   r0,0xF5                       ; 08083EB6
bne   @@Code08083ECC                ; 08083EB8
mov   r0,r3                         ; 08083EBA
bl    ClearSpriteSlot               ; 08083EBC
b     @@Return                      ; 08083EC0
.pool                               ; 08083EC2

@@Code08083ECC:
mov   r5,0x95                       ; 08083ECC
lsl   r5,r5,0x2                     ; 08083ECE
add   r0,r1,r5                      ; 08083ED0
ldrh  r0,[r0,0x24]                  ; 08083ED2
cmp   r0,0x5                        ; 08083ED4
beq   @@Code08083EDA                ; 08083ED6
b     @@Return                      ; 08083ED8
@@Code08083EDA:
ldr   r4,=0x03006D80                ; 08083EDA
mov   r0,r4                         ; 08083EDC
add   r0,0x7A                       ; 08083EDE
ldrh  r1,[r0]                       ; 08083EE0
mov   r0,0x7                        ; 08083EE2
and   r0,r1                         ; 08083EE4
cmp   r0,0x0                        ; 08083EE6
bne   @@Code08083EEC                ; 08083EE8
b     @@Return                      ; 08083EEA
@@Code08083EEC:
mov   r1,r3                         ; 08083EEC
add   r1,0x40                       ; 08083EEE
mov   r2,0x0                        ; 08083EF0
mov   r0,0x4                        ; 08083EF2
strh  r0,[r1]                       ; 08083EF4
ldr   r1,=0x03002200                ; 08083EF6
ldr   r5,=0x47E4                    ; 08083EF8
add   r0,r1,r5                      ; 08083EFA
ldrh  r0,[r0]                       ; 08083EFC
sub   r0,0x70                       ; 08083EFE
lsl   r0,r0,0x8                     ; 08083F00
str   r0,[r3]                       ; 08083F02
ldr   r0,=0x47EC                    ; 08083F04
add   r1,r1,r0                      ; 08083F06
ldrh  r0,[r1]                       ; 08083F08
add   r0,0x20                       ; 08083F0A
lsl   r0,r0,0x8                     ; 08083F0C
str   r0,[r3,0x4]                   ; 08083F0E
mov   r0,0x80                       ; 08083F10
lsl   r0,r0,0x3                     ; 08083F12
str   r0,[r3,0x8]                   ; 08083F14
mov   r0,0x10                       ; 08083F16
str   r0,[r3,0x10]                  ; 08083F18
mov   r1,0x2                        ; 08083F1A
mov   r0,0x2                        ; 08083F1C
strh  r0,[r3,0x36]                  ; 08083F1E
mov   r0,0x32                       ; 08083F20
strh  r0,[r3,0x2C]                  ; 08083F22
mov   r0,r3                         ; 08083F24
add   r0,0x94                       ; 08083F26
strb  r1,[r0]                       ; 08083F28
add   r0,0x3                        ; 08083F2A
strb  r2,[r0]                       ; 08083F2C
mov   r1,0x1                        ; 08083F2E
strh  r1,[r3,0x38]                  ; 08083F30
sub   r0,0x27                       ; 08083F32
strh  r1,[r0]                       ; 08083F34
mov   r2,r4                         ; 08083F36
add   r2,0xC6                       ; 08083F38
ldrh  r0,[r2]                       ; 08083F3A
mov   r1,0x3                        ; 08083F3C
orr   r0,r1                         ; 08083F3E
strh  r0,[r2]                       ; 08083F40
b     @@Return                      ; 08083F42
.pool                               ; 08083F44

@@Code08083F54:
mov   r0,r3                         ; 08083F54
add   r0,0x42                       ; 08083F56
ldrh  r1,[r0]                       ; 08083F58
mov   r4,r0                         ; 08083F5A
cmp   r1,0x0                        ; 08083F5C
bne   @@Code08083FDE                ; 08083F5E
mov   r0,0x2                        ; 08083F60
strh  r0,[r3,0x36]                  ; 08083F62
ldr   r0,=0x03002200                ; 08083F64
ldr   r1,=0x47E4                    ; 08083F66
add   r0,r0,r1                      ; 08083F68
ldrh  r0,[r0]                       ; 08083F6A
sub   r0,0x30                       ; 08083F6C
lsl   r0,r0,0x8                     ; 08083F6E
str   r0,[r3]                       ; 08083F70
ldr   r0,=0x03007240                ; 08083F72  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08083F74
ldr   r2,=0x2AAC                    ; 08083F76
add   r0,r0,r2                      ; 08083F78
ldrh  r0,[r0]                       ; 08083F7A
cmp   r0,0xF5                       ; 08083F7C
bne   @@Code08083FA4                ; 08083F7E
ldr   r0,=0x03006D80                ; 08083F80
ldr   r0,[r0,0x4]                   ; 08083F82
ldr   r5,=0xFFFFD800                ; 08083F84
add   r0,r0,r5                      ; 08083F86
b     @@Code08083FAE                ; 08083F88
.pool                               ; 08083F8A

@@Code08083FA4:
ldr   r0,=0x03006D80                ; 08083FA4
ldr   r0,[r0,0x4]                   ; 08083FA6
mov   r1,0x80                       ; 08083FA8
lsl   r1,r1,0x5                     ; 08083FAA
add   r0,r0,r1                      ; 08083FAC
@@Code08083FAE:
str   r0,[r3,0x4]                   ; 08083FAE
mov   r0,0x90                       ; 08083FB0
lsl   r0,r0,0x3                     ; 08083FB2
str   r0,[r3,0x8]                   ; 08083FB4
ldrh  r0,[r3,0x2C]                  ; 08083FB6
mov   r1,0x20                       ; 08083FB8
eor   r0,r1                         ; 08083FBA
mov   r2,0x0                        ; 08083FBC
strh  r0,[r3,0x2C]                  ; 08083FBE
mov   r1,r3                         ; 08083FC0
add   r1,0x94                       ; 08083FC2
mov   r0,0x2                        ; 08083FC4
strb  r0,[r1]                       ; 08083FC6
mov   r0,r3                         ; 08083FC8
add   r0,0x97                       ; 08083FCA
strb  r2,[r0]                       ; 08083FCC
sub   r1,0x54                       ; 08083FCE
ldrh  r0,[r1]                       ; 08083FD0
add   r0,0x1                        ; 08083FD2
strh  r0,[r1]                       ; 08083FD4
ldr   r1,=0x03006258                ; 08083FD6
mov   r0,0xC3                       ; 08083FD8
bl    PlayYISound                   ; 08083FDA
@@Code08083FDE:
ldrh  r0,[r4]                       ; 08083FDE
cmp   r0,0x20                       ; 08083FE0
bne   @@Return                      ; 08083FE2
ldr   r1,=0x03006258                ; 08083FE4
mov   r0,0x85                       ; 08083FE6
bl    PlayYISound                   ; 08083FE8
@@Return:
pop   {r4-r5}                       ; 08083FEC
pop   {r0}                          ; 08083FEE
bx    r0                            ; 08083FF0
.pool                               ; 08083FF2

Sub08083FFC:
push  {r4,lr}                       ; 08083FFC
mov   r4,r0                         ; 08083FFE
bl    Sub080DF2CC                   ; 08084000
ldr   r0,=0x03002200                ; 08084004
ldr   r1,=0x48A2                    ; 08084006
add   r0,r0,r1                      ; 08084008
ldrh  r0,[r0]                       ; 0808400A
lsr   r0,r0,0x2                     ; 0808400C
mov   r1,0x1                        ; 0808400E
and   r0,r1                         ; 08084010
add   r0,0x1                        ; 08084012
mov   r2,0x0                        ; 08084014
strh  r0,[r4,0x38]                  ; 08084016
mov   r0,0x20                       ; 08084018
ldsh  r1,[r4,r0]                    ; 0808401A
ldr   r0,=0x011F                    ; 0808401C
cmp   r1,r0                         ; 0808401E
ble   @@Return                      ; 08084020
mov   r1,r4                         ; 08084022
add   r1,0x42                       ; 08084024
mov   r0,0x60                       ; 08084026
strh  r0,[r1]                       ; 08084028
str   r2,[r4,0x8]                   ; 0808402A
add   r1,0x52                       ; 0808402C
mov   r0,0xFF                       ; 0808402E
strb  r0,[r1]                       ; 08084030
mov   r0,r4                         ; 08084032
add   r0,0x40                       ; 08084034
strh  r2,[r0]                       ; 08084036
@@Return:
pop   {r4}                          ; 08084038
pop   {r0}                          ; 0808403A
bx    r0                            ; 0808403C
.pool                               ; 0808403E

Sub0808404C:
push  {lr}                          ; 0808404C
mov   r3,r0                         ; 0808404E
ldr   r0,[r3,0x8]                   ; 08084050
cmp   r0,0x0                        ; 08084052
bge   @@Code08084058                ; 08084054
neg   r0,r0                         ; 08084056
@@Code08084058:
cmp   r0,0xF                        ; 08084058
bgt   @@Code0808407A                ; 0808405A
mov   r2,r3                         ; 0808405C
add   r2,0x40                       ; 0808405E
ldrh  r0,[r2]                       ; 08084060
add   r0,0x1                        ; 08084062
mov   r1,0x0                        ; 08084064
strh  r0,[r2]                       ; 08084066
str   r1,[r3,0x10]                  ; 08084068
str   r1,[r3,0x8]                   ; 0808406A
mov   r0,0x3                        ; 0808406C
strh  r0,[r3,0x38]                  ; 0808406E
mov   r1,r3                         ; 08084070
add   r1,0x42                       ; 08084072
mov   r0,0x20                       ; 08084074
strh  r0,[r1]                       ; 08084076
b     @@Return                      ; 08084078
@@Code0808407A:
cmp   r0,0xFF                       ; 0808407A
bgt   @@Code08084082                ; 0808407C
mov   r0,0x6                        ; 0808407E
b     @@Code08084096                ; 08084080
@@Code08084082:
mov   r1,r3                         ; 08084082
add   r1,0x44                       ; 08084084
ldrh  r0,[r1]                       ; 08084086
cmp   r0,0x0                        ; 08084088
bne   @@Return                      ; 0808408A
mov   r0,0x2                        ; 0808408C
strh  r0,[r1]                       ; 0808408E
ldrh  r0,[r3,0x38]                  ; 08084090
mov   r1,0x3                        ; 08084092
eor   r0,r1                         ; 08084094
@@Code08084096:
strh  r0,[r3,0x38]                  ; 08084096
@@Return:
pop   {r0}                          ; 08084098
bx    r0                            ; 0808409A

Sub0808409C:
push  {lr}                          ; 0808409C
mov   r2,r0                         ; 0808409E
add   r0,0x42                       ; 080840A0
ldrh  r1,[r0]                       ; 080840A2
cmp   r1,0x0                        ; 080840A4
bne   @@Code080840D8                ; 080840A6
add   r0,0x2E                       ; 080840A8
ldrh  r0,[r0]                       ; 080840AA
cmp   r0,0x0                        ; 080840AC
beq   @@Code080840B4                ; 080840AE
str   r1,[r2,0x8]                   ; 080840B0
b     @@Code080840B8                ; 080840B2
@@Code080840B4:
ldr   r0,=0xFFFFFC00                ; 080840B4
str   r0,[r2,0x8]                   ; 080840B6
@@Code080840B8:
mov   r0,0x3                        ; 080840B8
strh  r0,[r2,0x38]                  ; 080840BA
mov   r0,0x40                       ; 080840BC
str   r0,[r2,0x10]                  ; 080840BE
mov   r0,0x80                       ; 080840C0
lsl   r0,r0,0x3                     ; 080840C2
str   r0,[r2,0x18]                  ; 080840C4
mov   r1,r2                         ; 080840C6
add   r1,0x40                       ; 080840C8
ldrh  r0,[r1]                       ; 080840CA
add   r0,0x1                        ; 080840CC
strh  r0,[r1]                       ; 080840CE
mov   r0,0x8                        ; 080840D0
str   r0,[r2,0x14]                  ; 080840D2
ldr   r0,=0xFFFFFF00                ; 080840D4
str   r0,[r2,0x1C]                  ; 080840D6
@@Code080840D8:
pop   {r0}                          ; 080840D8
bx    r0                            ; 080840DA
.pool                               ; 080840DC

Sub080840E4:
push  {lr}                          ; 080840E4
mov   r2,r0                         ; 080840E6
ldr   r0,[r2,0x8]                   ; 080840E8
add   r0,0x80                       ; 080840EA
lsl   r0,r0,0x10                    ; 080840EC
lsr   r0,r0,0x10                    ; 080840EE
cmp   r0,0xFF                       ; 080840F0
bhi   @@Code080840F8                ; 080840F2
mov   r0,0x7                        ; 080840F4
b     @@Code08084108                ; 080840F6
@@Code080840F8:
ldr   r0,=0x03002200                ; 080840F8
ldr   r1,=0x48A2                    ; 080840FA
add   r0,r0,r1                      ; 080840FC
ldrh  r0,[r0]                       ; 080840FE
lsr   r0,r0,0x2                     ; 08084100
mov   r1,0x1                        ; 08084102
and   r0,r1                         ; 08084104
add   r0,0x1                        ; 08084106
@@Code08084108:
strh  r0,[r2,0x38]                  ; 08084108
ldr   r0,[r2,0x8]                   ; 0808410A
cmp   r0,0x0                        ; 0808410C
blt   @@Code08084114                ; 0808410E
mov   r0,0x2                        ; 08084110
strh  r0,[r2,0x36]                  ; 08084112
@@Code08084114:
mov   r0,0x20                       ; 08084114
ldsh  r1,[r2,r0]                    ; 08084116
ldr   r0,=0x013F                    ; 08084118
cmp   r1,r0                         ; 0808411A
ble   @@Return                      ; 0808411C
mov   r0,r2                         ; 0808411E
bl    DespawnSprite                 ; 08084120
ldr   r0,=0x03006D80                ; 08084124
add   r0,0xC6                       ; 08084126
ldrh  r2,[r0]                       ; 08084128
ldr   r1,=0xFFFC                    ; 0808412A
and   r1,r2                         ; 0808412C
strh  r1,[r0]                       ; 0808412E
@@Return:
pop   {r0}                          ; 08084130
bx    r0                            ; 08084132
.pool                               ; 08084134
