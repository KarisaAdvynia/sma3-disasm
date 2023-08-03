RaphaelShockwave_Main:
; sprite 05A main
push  {r4-r7,lr}                    ; 080D1658
mov   r4,r0                         ; 080D165A
bl    Sub0804C330                   ; 080D165C
cmp   r0,0x0                        ; 080D1660
bne   @@Code080D1746                ; 080D1662
ldr   r6,=0x03002200                ; 080D1664
ldrh  r0,[r4,0x20]                  ; 080D1666
ldr   r1,=0x4058                    ; 080D1668
add   r2,r6,r1                      ; 080D166A
strh  r0,[r2]                       ; 080D166C
ldr   r3,=0x405C                    ; 080D166E
add   r0,r6,r3                      ; 080D1670
mov   r7,0x3                        ; 080D1672
strh  r7,[r0]                       ; 080D1674
ldr   r0,=0x0300702C                ; 080D1676  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D1678
ldr   r1,=0x156E                    ; 080D167A
add   r0,r0,r1                      ; 080D167C
ldrb  r0,[r0]                       ; 080D167E
add   r0,0x1                        ; 080D1680
mov   r1,0x6                        ; 080D1682  06: Car morph / Raphael's shockwave?
bl    PlayYIContinuousSound         ; 080D1684
mov   r5,r4                         ; 080D1688
add   r5,0x7A                       ; 080D168A
ldrh  r0,[r5]                       ; 080D168C
cmp   r0,0x0                        ; 080D168E
beq   @@Code080D16DC                ; 080D1690
mov   r2,r4                         ; 080D1692
add   r2,0x62                       ; 080D1694
ldrh  r0,[r2]                       ; 080D1696
ldrb  r1,[r2]                       ; 080D1698
add   r0,0x1                        ; 080D169A
strh  r0,[r2]                       ; 080D169C
ldr   r0,=Data0817C682              ; 080D169E
add   r1,r1,r0                      ; 080D16A0
mov   r0,0x0                        ; 080D16A2
ldsb  r0,[r1,r0]                    ; 080D16A4
cmp   r0,0x0                        ; 080D16A6
blt   @@Code080D16D4                ; 080D16A8
strh  r0,[r4,0x38]                  ; 080D16AA
ldrh  r1,[r4,0x2A]                  ; 080D16AC
ldr   r0,=0xFFFC                    ; 080D16AE
and   r0,r1                         ; 080D16B0
strh  r0,[r4,0x2A]                  ; 080D16B2
b     @@Code080D1746                ; 080D16B4
.pool                               ; 080D16B6

@@Code080D16D4:
mov   r0,r4                         ; 080D16D4
bl    DespawnSprite                 ; 080D16D6
b     @@Code080D1746                ; 080D16DA
@@Code080D16DC:
mov   r2,r4                         ; 080D16DC
add   r2,0x6E                       ; 080D16DE
ldr   r1,=Data0817C680              ; 080D16E0
ldrh  r0,[r4,0x36]                  ; 080D16E2
lsr   r0,r0,0x1                     ; 080D16E4
add   r0,r0,r1                      ; 080D16E6
ldrb  r0,[r0]                       ; 080D16E8
ldrb  r3,[r2]                       ; 080D16EA
add   r0,r0,r3                      ; 080D16EC
lsl   r0,r0,0x18                    ; 080D16EE
lsr   r0,r0,0x18                    ; 080D16F0
strh  r0,[r2]                       ; 080D16F2
ldr   r1,=0x03007240                ; 080D16F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D16F6
mov   r1,r4                         ; 080D16F8
add   r1,0x6A                       ; 080D16FA
ldrh  r1,[r1]                       ; 080D16FC
add   r0,r0,r1                      ; 080D16FE
ldr   r3,=0x2A12                    ; 080D1700
add   r1,r2,r3                      ; 080D1702
strh  r0,[r1]                       ; 080D1704
ldr   r0,=0x2A2E                    ; 080D1706
add   r2,r2,r0                      ; 080D1708
mov   r0,0x38                       ; 080D170A
strh  r0,[r2]                       ; 080D170C
mov   r0,r4                         ; 080D170E
bl    Sub080D1760                   ; 080D1710
ldr   r1,=0x4901                    ; 080D1714
add   r0,r6,r1                      ; 080D1716
ldrb  r1,[r0]                       ; 080D1718
mov   r2,r4                         ; 080D171A
add   r2,0x72                       ; 080D171C
mov   r0,r7                         ; 080D171E
and   r0,r1                         ; 080D1720
ldrh  r2,[r2]                       ; 080D1722
add   r0,r0,r2                      ; 080D1724
strh  r0,[r4,0x38]                  ; 080D1726
mov   r1,r4                         ; 080D1728
add   r1,0x76                       ; 080D172A
ldrb  r0,[r1]                       ; 080D172C
add   r0,0x1                        ; 080D172E
lsl   r0,r0,0x18                    ; 080D1730
lsr   r0,r0,0x18                    ; 080D1732
strh  r0,[r1]                       ; 080D1734
cmp   r0,0x7F                       ; 080D1736
bls   @@Code080D1740                ; 080D1738
ldrh  r0,[r5]                       ; 080D173A
add   r0,0x1                        ; 080D173C
strh  r0,[r5]                       ; 080D173E
@@Code080D1740:
mov   r0,r4                         ; 080D1740
bl    Sub0805F334                   ; 080D1742
@@Code080D1746:
pop   {r4-r7}                       ; 080D1746
pop   {r0}                          ; 080D1748
bx    r0                            ; 080D174A
.pool                               ; 080D174C

Sub080D1760:
push  {r4,lr}                       ; 080D1760
ldr   r1,=0x03007240                ; 080D1762  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D1764
ldr   r1,=0x2A12                    ; 080D1766
add   r3,r2,r1                      ; 080D1768
ldr   r1,=0x0300702C                ; 080D176A  Sprite RAM structs (03002460)
ldr   r1,[r1]                       ; 080D176C
ldr   r4,=0x153A                    ; 080D176E
add   r1,r1,r4                      ; 080D1770
ldrb  r1,[r1]                       ; 080D1772
ldrb  r3,[r3]                       ; 080D1774
add   r1,r1,r3                      ; 080D1776
sub   r1,0x80                       ; 080D1778
lsl   r1,r1,0x18                    ; 080D177A
lsr   r1,r1,0x18                    ; 080D177C
ldr   r3,=0x2A2A                    ; 080D177E
add   r2,r2,r3                      ; 080D1780
strh  r1,[r2]                       ; 080D1782
bl    Sub0805F114                   ; 080D1784
pop   {r4}                          ; 080D1788
pop   {r0}                          ; 080D178A
bx    r0                            ; 080D178C
.pool                               ; 080D178E

Raphael_Init:
; sprite 00C init
push  {r4-r5,lr}                    ; 080D17A4
mov   r5,r0                         ; 080D17A6
bl    Sub080D184C                   ; 080D17A8
ldr   r4,=Data082A50A4              ; 080D17AC
ldr   r1,=0x06013200                ; 080D17AE
mov   r0,r4                         ; 080D17B0
mov   r2,0x40                       ; 080D17B2
bl    swi_MemoryCopy32              ; 080D17B4  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080D17B8
lsl   r1,r1,0x3                     ; 080D17BA
add   r0,r4,r1                      ; 080D17BC
ldr   r1,=0x06013600                ; 080D17BE
mov   r2,0x40                       ; 080D17C0
bl    swi_MemoryCopy32              ; 080D17C2  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080D17C6
lsl   r1,r1,0x4                     ; 080D17C8
add   r0,r4,r1                      ; 080D17CA
ldr   r1,=0x06013A00                ; 080D17CC
mov   r2,0x40                       ; 080D17CE
bl    swi_MemoryCopy32              ; 080D17D0  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 080D17D4
lsl   r1,r1,0x4                     ; 080D17D6
add   r0,r4,r1                      ; 080D17D8
ldr   r1,=0x06013E00                ; 080D17DA
mov   r2,0x40                       ; 080D17DC
bl    swi_MemoryCopy32              ; 080D17DE  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080D17E2
lsl   r1,r1,0x5                     ; 080D17E4
add   r0,r4,r1                      ; 080D17E6
ldr   r1,=0x06014200                ; 080D17E8
mov   r2,0x40                       ; 080D17EA
bl    swi_MemoryCopy32              ; 080D17EC  Memory copy/fill, 32-byte blocks
mov   r1,0xA0                       ; 080D17F0
lsl   r1,r1,0x5                     ; 080D17F2
add   r0,r4,r1                      ; 080D17F4
ldr   r1,=0x06014600                ; 080D17F6
mov   r2,0x40                       ; 080D17F8
bl    swi_MemoryCopy32              ; 080D17FA  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 080D17FE
lsl   r1,r1,0x5                     ; 080D1800
add   r0,r4,r1                      ; 080D1802
ldr   r1,=0x06014A00                ; 080D1804
mov   r2,0x40                       ; 080D1806
bl    swi_MemoryCopy32              ; 080D1808  Memory copy/fill, 32-byte blocks
mov   r0,0xE0                       ; 080D180C
lsl   r0,r0,0x5                     ; 080D180E
add   r4,r4,r0                      ; 080D1810
ldr   r1,=0x06014E00                ; 080D1812
mov   r0,r4                         ; 080D1814
mov   r2,0x40                       ; 080D1816
bl    swi_MemoryCopy32              ; 080D1818  Memory copy/fill, 32-byte blocks
mov   r0,0x8                        ; 080D181C
strh  r0,[r5,0x3C]                  ; 080D181E
pop   {r4-r5}                       ; 080D1820
pop   {r0}                          ; 080D1822
bx    r0                            ; 080D1824
.pool                               ; 080D1826

Sub080D184C:
push  {r4,lr}                       ; 080D184C
mov   r4,r0                         ; 080D184E
bl    Sub0804B208                   ; 080D1850
ldr   r0,=0x03007240                ; 080D1854  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D1856
ldr   r1,=0x29A2                    ; 080D1858
add   r0,r0,r1                      ; 080D185A
ldrh  r0,[r0]                       ; 080D185C
cmp   r0,0x9                        ; 080D185E
beq   @@Code080D18C8                ; 080D1860
ldr   r1,=0x0202B352                ; 080D1862
mov   r0,0x40                       ; 080D1864
strb  r0,[r1]                       ; 080D1866
ldr   r2,=0x0202B358                ; 080D1868
add   r1,0x7                        ; 080D186A
mov   r0,0x7F                       ; 080D186C
strb  r0,[r1]                       ; 080D186E
strb  r0,[r2]                       ; 080D1870
mov   r0,r4                         ; 080D1872
add   r0,0x76                       ; 080D1874
mov   r3,0x0                        ; 080D1876
mov   r2,0x0                        ; 080D1878
strh  r2,[r0]                       ; 080D187A
add   r1,0xB                        ; 080D187C
ldr   r0,=0x0202B365                ; 080D187E
strb  r3,[r0]                       ; 080D1880
strb  r3,[r1]                       ; 080D1882
mov   r0,0x1                        ; 080D1884
strh  r0,[r4,0x38]                  ; 080D1886
mov   r1,r4                         ; 080D1888
add   r1,0x42                       ; 080D188A
mov   r0,0x40                       ; 080D188C
strh  r0,[r1]                       ; 080D188E
ldr   r0,=0x03006D80                ; 080D1890
add   r0,0x42                       ; 080D1892
strh  r2,[r0]                       ; 080D1894
ldr   r0,[r4,0x4]                   ; 080D1896
ldr   r1,=0xFFFFF800                ; 080D1898
add   r0,r0,r1                      ; 080D189A
str   r0,[r4,0x4]                   ; 080D189C
str   r2,[r4,0xC]                   ; 080D189E
str   r2,[r4,0x14]                  ; 080D18A0
mov   r0,r4                         ; 080D18A2
bl    Sub080D1DBC                   ; 080D18A4
b     @@Code080D1934                ; 080D18A8
.pool                               ; 080D18AA

@@Code080D18C8:
ldr   r1,=0x0202B351                ; 080D18C8
mov   r0,0x80                       ; 080D18CA
strb  r0,[r1]                       ; 080D18CC
add   r1,0x1                        ; 080D18CE
mov   r0,0x0                        ; 080D18D0
strb  r0,[r1]                       ; 080D18D2
mov   r1,r4                         ; 080D18D4
add   r1,0x62                       ; 080D18D6
mov   r3,0x0                        ; 080D18D8
mov   r0,0x7                        ; 080D18DA
strh  r0,[r1]                       ; 080D18DC
ldr   r1,=0x0202B350                ; 080D18DE
mov   r0,0x60                       ; 080D18E0
strb  r0,[r1]                       ; 080D18E2
ldr   r2,=0x0202B358                ; 080D18E4
add   r1,0x9                        ; 080D18E6
mov   r0,0x50                       ; 080D18E8
strb  r0,[r1]                       ; 080D18EA
strb  r0,[r2]                       ; 080D18EC
mov   r0,r4                         ; 080D18EE
add   r0,0x7C                       ; 080D18F0
strh  r3,[r0]                       ; 080D18F2
mov   r1,r4                         ; 080D18F4
add   r1,0x6E                       ; 080D18F6
ldr   r0,=0xFFFF                    ; 080D18F8
strh  r0,[r1]                       ; 080D18FA
mov   r0,r4                         ; 080D18FC
add   r0,0x70                       ; 080D18FE
strh  r3,[r0]                       ; 080D1900
ldr   r1,=0x0202B35C                ; 080D1902
mov   r0,0x98                       ; 080D1904
strb  r0,[r1]                       ; 080D1906
mov   r0,0xF0                       ; 080D1908
lsl   r0,r0,0x7                     ; 080D190A
str   r0,[r4]                       ; 080D190C
ldrh  r1,[r4,0x26]                  ; 080D190E
ldr   r0,=0xC7FF                    ; 080D1910
and   r0,r1                         ; 080D1912
strh  r0,[r4,0x26]                  ; 080D1914
ldr   r0,=0x0300702C                ; 080D1916  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D1918
ldr   r1,=0x11BC                    ; 080D191A
add   r0,r0,r1                      ; 080D191C
mov   r1,0x1                        ; 080D191E
neg   r1,r1                         ; 080D1920
strh  r1,[r0]                       ; 080D1922
mov   r0,r4                         ; 080D1924
bl    Sub080D3220                   ; 080D1926
ldr   r0,=0x03006D80                ; 080D192A
ldrh  r1,[r0,0x30]                  ; 080D192C
mov   r0,r4                         ; 080D192E
add   r0,0x68                       ; 080D1930
strh  r1,[r0]                       ; 080D1932
@@Code080D1934:
pop   {r4}                          ; 080D1934
pop   {r0}                          ; 080D1936
bx    r0                            ; 080D1938
.pool                               ; 080D193A

Sub080D1960:
ldr   r1,=0x0202B350                ; 080D1960
mov   r0,0x42                       ; 080D1962
strb  r0,[r1]                       ; 080D1964
ldr   r2,=0x0202B358                ; 080D1966
add   r1,0x9                        ; 080D1968
mov   r0,0xFF                       ; 080D196A
strb  r0,[r1]                       ; 080D196C
strb  r0,[r2]                       ; 080D196E
bx    lr                            ; 080D1970
.pool                               ; 080D1972

Raphael_Main:
; sprite 00C main
push  {r4-r7,lr}                    ; 080D197C
mov   r7,r8                         ; 080D197E
push  {r7}                          ; 080D1980
mov   r6,r0                         ; 080D1982
ldr   r0,=0x03007240                ; 080D1984  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D1986
ldr   r1,=0x29A2                    ; 080D1988
add   r0,r0,r1                      ; 080D198A
ldrh  r0,[r0]                       ; 080D198C
cmp   r0,0x9                        ; 080D198E
bne   @@Code080D1998                ; 080D1990
mov   r0,r6                         ; 080D1992
bl    Sub080D1C70                   ; 080D1994
@@Code080D1998:
ldrh  r0,[r6,0x38]                  ; 080D1998
cmp   r0,0x0                        ; 080D199A
beq   @@Code080D19AC                ; 080D199C
mov   r0,r6                         ; 080D199E
bl    Sub0804AC30                   ; 080D19A0
ldrh  r0,[r6,0x38]                  ; 080D19A4
cmp   r0,0x0                        ; 080D19A6
beq   @@Code080D19AC                ; 080D19A8
b     @@Code080D1C10                ; 080D19AA
@@Code080D19AC:
ldrh  r0,[r6,0x34]                  ; 080D19AC
lsr   r0,r0,0x2                     ; 080D19AE
lsl   r0,r0,0x3                     ; 080D19B0
ldr   r1,=0x03005A00                ; 080D19B2
add   r7,r0,r1                      ; 080D19B4
ldr   r0,=0x0202B353                ; 080D19B6
ldrb  r2,[r0]                       ; 080D19B8
mov   r12,r1                        ; 080D19BA
cmp   r2,0x10                       ; 080D19BC
bls   @@Code080D19E0                ; 080D19BE
mov   r2,0x80                       ; 080D19C0
lsl   r2,r2,0x2                     ; 080D19C2
mov   r0,r2                         ; 080D19C4
strh  r0,[r7]                       ; 080D19C6
mov   r3,0x68                       ; 080D19C8
add   r3,r3,r6                      ; 080D19CA
mov   r8,r3                         ; 080D19CC
b     @@Code080D1C1C                ; 080D19CE
.pool                               ; 080D19D0

@@Code080D19E0:
mov   r0,r6                         ; 080D19E0
add   r0,0x68                       ; 080D19E2
ldrh  r1,[r0]                       ; 080D19E4
mov   r8,r0                         ; 080D19E6
cmp   r1,0x20                       ; 080D19E8
bne   @@Code080D1A88                ; 080D19EA
ldr   r0,=0x0FEE                    ; 080D19EC
add   r0,r12                        ; 080D19EE
ldrh  r1,[r0]                       ; 080D19F0
mov   r3,0x9F                       ; 080D19F2
lsl   r3,r3,0x1                     ; 080D19F4
mov   r0,r3                         ; 080D19F6
sub   r0,r0,r1                      ; 080D19F8
lsl   r0,r0,0x10                    ; 080D19FA
lsr   r1,r0,0x10                    ; 080D19FC
cmp   r2,0x10                       ; 080D19FE
bne   @@Code080D1A30                ; 080D1A00
mov   r0,0xFF                       ; 080D1A02
and   r0,r1                         ; 080D1A04
mov   r2,0xA0                       ; 080D1A06
lsl   r2,r2,0x3                     ; 080D1A08
mov   r1,r2                         ; 080D1A0A
orr   r0,r1                         ; 080D1A0C
strh  r0,[r7]                       ; 080D1A0E
ldr   r0,=0x0202B369                ; 080D1A10
ldrb  r1,[r0]                       ; 080D1A12
mov   r0,0x10                       ; 080D1A14
sub   r0,r0,r1                      ; 080D1A16
lsl   r0,r0,0x8                     ; 080D1A18
orr   r1,r0                         ; 080D1A1A
ldr   r0,=0x108A                    ; 080D1A1C
add   r0,r12                        ; 080D1A1E
strh  r1,[r0]                       ; 080D1A20
b     @@Code080D1A3E                ; 080D1A22
.pool                               ; 080D1A24

@@Code080D1A30:
mov   r0,0xFF                       ; 080D1A30
and   r0,r1                         ; 080D1A32
mov   r3,0x80                       ; 080D1A34
lsl   r3,r3,0x1                     ; 080D1A36
mov   r1,r3                         ; 080D1A38
orr   r0,r1                         ; 080D1A3A
strh  r0,[r7]                       ; 080D1A3C
@@Code080D1A3E:
ldrh  r0,[r6,0x36]                  ; 080D1A3E
cmp   r0,0x0                        ; 080D1A40
beq   @@Code080D1A5C                ; 080D1A42
ldrh  r0,[r6,0x20]                  ; 080D1A44
add   r0,0x18                       ; 080D1A46
ldr   r2,=0x01FF                    ; 080D1A48
mov   r1,r2                         ; 080D1A4A
and   r0,r1                         ; 080D1A4C
ldr   r3,=0xFFFFE000                ; 080D1A4E
b     @@Code080D1A68                ; 080D1A50
.pool                               ; 080D1A52

@@Code080D1A5C:
ldrh  r0,[r6,0x20]                  ; 080D1A5C
sub   r0,0x18                       ; 080D1A5E
ldr   r2,=0x01FF                    ; 080D1A60
mov   r1,r2                         ; 080D1A62
and   r0,r1                         ; 080D1A64
ldr   r3,=0xFFFFC000                ; 080D1A66
@@Code080D1A68:
mov   r1,r3                         ; 080D1A68
orr   r0,r1                         ; 080D1A6A
strh  r0,[r7,0x2]                   ; 080D1A6C
ldrh  r0,[r6,0x2C]                  ; 080D1A6E
mov   r1,0xE                        ; 080D1A70
and   r1,r0                         ; 080D1A72
lsl   r1,r1,0xB                     ; 080D1A74
mov   r2,0x99                       ; 080D1A76
lsl   r2,r2,0x4                     ; 080D1A78
mov   r0,r2                         ; 080D1A7A
b     @@Code080D1B0C                ; 080D1A7C
.pool                               ; 080D1A7E

@@Code080D1A88:
cmp   r2,0x10                       ; 080D1A88
bne   @@Code080D1ABC                ; 080D1A8A
ldrh  r0,[r6,0x22]                  ; 080D1A8C
sub   r0,0x18                       ; 080D1A8E
mov   r1,0xFF                       ; 080D1A90
and   r0,r1                         ; 080D1A92
mov   r3,0xA0                       ; 080D1A94
lsl   r3,r3,0x3                     ; 080D1A96
mov   r1,r3                         ; 080D1A98
orr   r0,r1                         ; 080D1A9A
strh  r0,[r7]                       ; 080D1A9C
ldr   r0,=0x0202B369                ; 080D1A9E
ldrb  r1,[r0]                       ; 080D1AA0
mov   r0,0x10                       ; 080D1AA2
sub   r0,r0,r1                      ; 080D1AA4
lsl   r0,r0,0x8                     ; 080D1AA6
orr   r1,r0                         ; 080D1AA8
ldr   r0,=0x108A                    ; 080D1AAA
add   r0,r12                        ; 080D1AAC
strh  r1,[r0]                       ; 080D1AAE
b     @@Code080D1ACE                ; 080D1AB0
.pool                               ; 080D1AB2

@@Code080D1ABC:
ldrh  r0,[r6,0x22]                  ; 080D1ABC
sub   r0,0x18                       ; 080D1ABE
mov   r1,0xFF                       ; 080D1AC0
and   r0,r1                         ; 080D1AC2
mov   r2,0x80                       ; 080D1AC4
lsl   r2,r2,0x1                     ; 080D1AC6
mov   r1,r2                         ; 080D1AC8
orr   r0,r1                         ; 080D1ACA
strh  r0,[r7]                       ; 080D1ACC
@@Code080D1ACE:
ldrh  r0,[r6,0x36]                  ; 080D1ACE
cmp   r0,0x0                        ; 080D1AD0
beq   @@Code080D1AEC                ; 080D1AD2
ldrh  r0,[r6,0x20]                  ; 080D1AD4
add   r0,0x18                       ; 080D1AD6
ldr   r3,=0x01FF                    ; 080D1AD8
mov   r1,r3                         ; 080D1ADA
and   r0,r1                         ; 080D1ADC
ldr   r2,=0xFFFFE000                ; 080D1ADE
b     @@Code080D1AF8                ; 080D1AE0
.pool                               ; 080D1AE2

@@Code080D1AEC:
ldrh  r0,[r6,0x20]                  ; 080D1AEC
sub   r0,0x18                       ; 080D1AEE
ldr   r3,=0x01FF                    ; 080D1AF0
mov   r1,r3                         ; 080D1AF2
and   r0,r1                         ; 080D1AF4
ldr   r2,=0xFFFFC000                ; 080D1AF6
@@Code080D1AF8:
mov   r1,r2                         ; 080D1AF8
orr   r0,r1                         ; 080D1AFA
strh  r0,[r7,0x2]                   ; 080D1AFC
ldrh  r0,[r6,0x2C]                  ; 080D1AFE
mov   r1,0xE                        ; 080D1B00
and   r1,r0                         ; 080D1B02
lsl   r1,r1,0xB                     ; 080D1B04
mov   r3,0x99                       ; 080D1B06
lsl   r3,r3,0x4                     ; 080D1B08
mov   r0,r3                         ; 080D1B0A
@@Code080D1B0C:
orr   r1,r0                         ; 080D1B0C
strh  r1,[r7,0x4]                   ; 080D1B0E
ldrh  r2,[r6,0x34]                  ; 080D1B10
lsr   r2,r2,0x2                     ; 080D1B12
lsl   r2,r2,0x3                     ; 080D1B14
add   r2,r12                        ; 080D1B16
ldr   r4,=0x0FD2                    ; 080D1B18
add   r4,r12                        ; 080D1B1A
ldrh  r1,[r4]                       ; 080D1B1C
lsr   r1,r1,0x4                     ; 080D1B1E
mov   r5,0x1                        ; 080D1B20
and   r1,r5                         ; 080D1B22
lsl   r1,r1,0x5                     ; 080D1B24
ldrb  r3,[r2,0x3]                   ; 080D1B26
mov   r0,0x21                       ; 080D1B28
neg   r0,r0                         ; 080D1B2A
and   r0,r3                         ; 080D1B2C
orr   r0,r1                         ; 080D1B2E
strb  r0,[r2,0x3]                   ; 080D1B30
ldrh  r2,[r6,0x34]                  ; 080D1B32
lsr   r2,r2,0x2                     ; 080D1B34
lsl   r2,r2,0x3                     ; 080D1B36
add   r2,r12                        ; 080D1B38
ldrh  r1,[r4]                       ; 080D1B3A
lsr   r1,r1,0x3                     ; 080D1B3C
and   r1,r5                         ; 080D1B3E
lsl   r1,r1,0x4                     ; 080D1B40
ldrb  r3,[r2,0x3]                   ; 080D1B42
mov   r0,0x11                       ; 080D1B44
neg   r0,r0                         ; 080D1B46
and   r0,r3                         ; 080D1B48
orr   r0,r1                         ; 080D1B4A
strb  r0,[r2,0x3]                   ; 080D1B4C
ldrh  r1,[r6,0x34]                  ; 080D1B4E
lsr   r1,r1,0x2                     ; 080D1B50
lsl   r1,r1,0x3                     ; 080D1B52
add   r1,r12                        ; 080D1B54
ldrh  r0,[r4]                       ; 080D1B56
mov   r2,0x7                        ; 080D1B58
and   r2,r0                         ; 080D1B5A
lsl   r2,r2,0x1                     ; 080D1B5C
ldrb  r3,[r1,0x3]                   ; 080D1B5E
mov   r0,0xF                        ; 080D1B60
neg   r0,r0                         ; 080D1B62
and   r0,r3                         ; 080D1B64
orr   r0,r2                         ; 080D1B66
strb  r0,[r1,0x3]                   ; 080D1B68
ldrh  r0,[r6,0x36]                  ; 080D1B6A
cmp   r0,0x0                        ; 080D1B6C
beq   @@Code080D1BB4                ; 080D1B6E
ldrh  r3,[r7,0x2]                   ; 080D1B70
mov   r1,0xFE                       ; 080D1B72
lsl   r1,r1,0x8                     ; 080D1B74
and   r1,r3                         ; 080D1B76
ldr   r2,=0x01FF                    ; 080D1B78
mov   r0,r2                         ; 080D1B7A
and   r0,r3                         ; 080D1B7C
sub   r0,0x30                       ; 080D1B7E
and   r0,r2                         ; 080D1B80
orr   r1,r0                         ; 080D1B82
strh  r1,[r7,0x2]                   ; 080D1B84
ldr   r1,=0x030021A8                ; 080D1B86
ldr   r2,=Data081AF2CC              ; 080D1B88
ldr   r0,=0x0202B358                ; 080D1B8A
ldrb  r0,[r0]                       ; 080D1B8C
add   r0,0x1                        ; 080D1B8E
lsl   r0,r0,0x1                     ; 080D1B90
add   r0,r0,r2                      ; 080D1B92
ldrh  r0,[r0]                       ; 080D1B94
neg   r0,r0                         ; 080D1B96
b     @@Code080D1BC4                ; 080D1B98
.pool                               ; 080D1B9A

@@Code080D1BB4:
ldr   r1,=0x030021A8                ; 080D1BB4
ldr   r2,=Data081AF2CC              ; 080D1BB6
ldr   r0,=0x0202B358                ; 080D1BB8
ldrb  r0,[r0]                       ; 080D1BBA
add   r0,0x1                        ; 080D1BBC
lsl   r0,r0,0x1                     ; 080D1BBE
add   r0,r0,r2                      ; 080D1BC0
ldrh  r0,[r0]                       ; 080D1BC2
@@Code080D1BC4:
strh  r0,[r1]                       ; 080D1BC4
ldr   r0,=0x0202B352                ; 080D1BC6
ldrb  r0,[r0]                       ; 080D1BC8
lsl   r0,r0,0x8                     ; 080D1BCA
strh  r0,[r1,0x4]                   ; 080D1BCC
ldr   r0,=0x0202B359                ; 080D1BCE
ldrb  r0,[r0]                       ; 080D1BD0
add   r0,0x1                        ; 080D1BD2
lsl   r0,r0,0x1                     ; 080D1BD4
add   r0,r0,r2                      ; 080D1BD6
ldrh  r0,[r0]                       ; 080D1BD8
strh  r0,[r1,0x2]                   ; 080D1BDA
ldr   r4,=0x03002200                ; 080D1BDC
ldr   r0,=0x47D2                    ; 080D1BDE
add   r4,r4,r0                      ; 080D1BE0
ldrb  r0,[r4]                       ; 080D1BE2
lsl   r0,r0,0x1A                    ; 080D1BE4
lsr   r0,r0,0x18                    ; 080D1BE6
bl    Sub0804CA78                   ; 080D1BE8
ldrh  r0,[r4]                       ; 080D1BEC
add   r0,0x1                        ; 080D1BEE
strh  r0,[r4]                       ; 080D1BF0
b     @@Code080D1C1C                ; 080D1BF2
.pool                               ; 080D1BF4

@@Code080D1C10:
mov   r0,r6                         ; 080D1C10
bl    Sub080D1DBC                   ; 080D1C12
mov   r1,0x68                       ; 080D1C16
add   r1,r1,r6                      ; 080D1C18
mov   r8,r1                         ; 080D1C1A
@@Code080D1C1C:
mov   r0,r6                         ; 080D1C1C
bl    Sub0804C330                   ; 080D1C1E
cmp   r0,0x0                        ; 080D1C22
beq   @@Code080D1C34                ; 080D1C24
ldr   r0,=0x03006D80                ; 080D1C26
ldrh  r0,[r0,0x30]                  ; 080D1C28
mov   r2,r8                         ; 080D1C2A
strh  r0,[r2]                       ; 080D1C2C
b     @@Code080D1C62                ; 080D1C2E
.pool                               ; 080D1C30

@@Code080D1C34:
ldr   r0,=0x03007240                ; 080D1C34  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D1C36
ldr   r3,=0x29A2                    ; 080D1C38
add   r0,r0,r3                      ; 080D1C3A
ldrh  r0,[r0]                       ; 080D1C3C
cmp   r0,0x9                        ; 080D1C3E
bne   @@Code080D1C54                ; 080D1C40
mov   r0,r6                         ; 080D1C42
bl    Sub080D2364                   ; 080D1C44
b     @@Code080D1C5A                ; 080D1C48
.pool                               ; 080D1C4A

@@Code080D1C54:
mov   r0,r6                         ; 080D1C54
bl    Sub080D1EBC                   ; 080D1C56
@@Code080D1C5A:
ldr   r0,=0x03006D80                ; 080D1C5A
ldrh  r0,[r0,0x30]                  ; 080D1C5C
mov   r1,r8                         ; 080D1C5E
strh  r0,[r1]                       ; 080D1C60
@@Code080D1C62:
pop   {r3}                          ; 080D1C62
mov   r8,r3                         ; 080D1C64
pop   {r4-r7}                       ; 080D1C66
pop   {r0}                          ; 080D1C68
bx    r0                            ; 080D1C6A
.pool                               ; 080D1C6C

Sub080D1C70:
push  {r4-r5,lr}                    ; 080D1C70
mov   r4,r0                         ; 080D1C72
bl    Sub080D1D6C                   ; 080D1C74
add   r4,0x68                       ; 080D1C78
ldrh  r0,[r4]                       ; 080D1C7A
cmp   r0,0x20                       ; 080D1C7C
beq   @@Code080D1D30                ; 080D1C7E
ldr   r5,=0x03006D80                ; 080D1C80
ldr   r0,[r5]                       ; 080D1C82
lsl   r1,r0,0x8                     ; 080D1C84
lsl   r0,r0,0x18                    ; 080D1C86
lsr   r4,r0,0x18                    ; 080D1C88
lsr   r3,r1,0x10                    ; 080D1C8A
asr   r1,r1,0x10                    ; 080D1C8C
ldr   r0,=0x011F                    ; 080D1C8E
cmp   r1,r0                         ; 080D1C90
bgt   @@Code080D1C9E                ; 080D1C92
mov   r2,0xA0                       ; 080D1C94
lsl   r2,r2,0x1                     ; 080D1C96
add   r0,r1,r2                      ; 080D1C98
lsl   r0,r0,0x10                    ; 080D1C9A
lsr   r3,r0,0x10                    ; 080D1C9C
@@Code080D1C9E:
lsl   r0,r3,0x10                    ; 080D1C9E
asr   r1,r0,0x10                    ; 080D1CA0
ldr   r0,=0x025F                    ; 080D1CA2
cmp   r1,r0                         ; 080D1CA4
ble   @@Code080D1CB0                ; 080D1CA6
ldr   r3,=0xFFFFFEC0                ; 080D1CA8
add   r0,r1,r3                      ; 080D1CAA
lsl   r0,r0,0x10                    ; 080D1CAC
lsr   r3,r0,0x10                    ; 080D1CAE
@@Code080D1CB0:
lsl   r2,r3,0x10                    ; 080D1CB0
asr   r2,r2,0x10                    ; 080D1CB2
lsl   r0,r2,0x8                     ; 080D1CB4
orr   r0,r4                         ; 080D1CB6
str   r0,[r5]                       ; 080D1CB8
mov   r0,r3                         ; 080D1CBA
sub   r0,0x20                       ; 080D1CBC
lsl   r0,r0,0x18                    ; 080D1CBE
lsr   r0,r0,0x18                    ; 080D1CC0
mov   r4,0xCD                       ; 080D1CC2
mul   r0,r4                         ; 080D1CC4
add   r0,0xA0                       ; 080D1CC6
asr   r0,r0,0x8                     ; 080D1CC8
lsl   r0,r0,0x18                    ; 080D1CCA
lsr   r0,r0,0x18                    ; 080D1CCC
ldr   r1,=0x0300702C                ; 080D1CCE  Sprite RAM structs (03002460)
ldr   r3,[r1]                       ; 080D1CD0
ldr   r1,=0xFFFFFEE0                ; 080D1CD2
add   r2,r2,r1                      ; 080D1CD4
asr   r2,r2,0x8                     ; 080D1CD6
lsl   r2,r2,0x18                    ; 080D1CD8
lsr   r2,r2,0x18                    ; 080D1CDA
mov   r1,r2                         ; 080D1CDC
mul   r1,r4                         ; 080D1CDE
add   r0,r0,r1                      ; 080D1CE0
sub   r0,0x1A                       ; 080D1CE2
lsl   r0,r0,0x18                    ; 080D1CE4
lsr   r0,r0,0x18                    ; 080D1CE6
ldr   r2,=0x153A                    ; 080D1CE8
add   r3,r3,r2                      ; 080D1CEA
strh  r0,[r3]                       ; 080D1CEC
ldr   r0,=0x03007240                ; 080D1CEE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080D1CF0
mov   r4,0x8C                       ; 080D1CF2
lsl   r4,r4,0x2                     ; 080D1CF4
add   r3,r3,r4                      ; 080D1CF6
ldr   r0,[r5]                       ; 080D1CF8
ldr   r1,=0xFFFF8800                ; 080D1CFA
add   r0,r0,r1                      ; 080D1CFC
str   r0,[r3]                       ; 080D1CFE
ldr   r2,=0x03002200                ; 080D1D00
ldr   r0,[r5]                       ; 080D1D02
add   r0,r0,r1                      ; 080D1D04
asr   r0,r0,0x8                     ; 080D1D06
ldr   r4,=0x47D4                    ; 080D1D08
add   r1,r2,r4                      ; 080D1D0A
strh  r0,[r1]                       ; 080D1D0C
add   r4,0x10                       ; 080D1D0E
add   r1,r2,r4                      ; 080D1D10
strh  r0,[r1]                       ; 080D1D12
ldr   r0,=0x47DE                    ; 080D1D14
add   r1,r2,r0                      ; 080D1D16
ldrh  r0,[r1]                       ; 080D1D18
add   r0,0x26                       ; 080D1D1A
lsl   r0,r0,0x8                     ; 080D1D1C
str   r0,[r3,0x4]                   ; 080D1D1E
ldrh  r0,[r1]                       ; 080D1D20
add   r0,0x26                       ; 080D1D22
ldr   r3,=0x47DC                    ; 080D1D24
add   r1,r2,r3                      ; 080D1D26
strh  r0,[r1]                       ; 080D1D28
add   r4,0x8                        ; 080D1D2A
add   r2,r2,r4                      ; 080D1D2C
strh  r0,[r2]                       ; 080D1D2E
@@Code080D1D30:
pop   {r4-r5}                       ; 080D1D30
pop   {r0}                          ; 080D1D32
bx    r0                            ; 080D1D34
.pool                               ; 080D1D36

Sub080D1D6C:
push  {r4-r5,lr}                    ; 080D1D6C
ldr   r0,=0x0300702C                ; 080D1D6E  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 080D1D70
ldr   r1,=0x153A                    ; 080D1D72
add   r0,r2,r1                      ; 080D1D74
ldrh  r1,[r0]                       ; 080D1D76
ldr   r3,=Data081AF6CE              ; 080D1D78
lsl   r1,r1,0x1                     ; 080D1D7A
add   r0,r1,r3                      ; 080D1D7C
ldrh  r4,[r0]                       ; 080D1D7E
ldr   r5,=0x1868                    ; 080D1D80
add   r0,r2,r5                      ; 080D1D82
strh  r4,[r0]                       ; 080D1D84
sub   r5,0x6                        ; 080D1D86
add   r0,r2,r5                      ; 080D1D88
strh  r4,[r0]                       ; 080D1D8A
add   r3,0x80                       ; 080D1D8C
add   r1,r1,r3                      ; 080D1D8E
ldrh  r3,[r1]                       ; 080D1D90
ldr   r4,=0x1864                    ; 080D1D92
add   r0,r2,r4                      ; 080D1D94
strh  r3,[r0]                       ; 080D1D96
ldrh  r0,[r1]                       ; 080D1D98
neg   r0,r0                         ; 080D1D9A
add   r5,0x4                        ; 080D1D9C
add   r2,r2,r5                      ; 080D1D9E
strh  r0,[r2]                       ; 080D1DA0
pop   {r4-r5}                       ; 080D1DA2
pop   {r0}                          ; 080D1DA4
bx    r0                            ; 080D1DA6
.pool                               ; 080D1DA8

Sub080D1DBC:
push  {r4-r6,lr}                    ; 080D1DBC
mov   r6,r8                         ; 080D1DBE
push  {r6}                          ; 080D1DC0
mov   r6,r0                         ; 080D1DC2
ldr   r1,=CodePtrs0817C68C          ; 080D1DC4
ldr   r0,=0x0202B362                ; 080D1DC6
ldrb  r0,[r0]                       ; 080D1DC8
lsr   r0,r0,0x3                     ; 080D1DCA
mov   r2,0x1                        ; 080D1DCC
mov   r8,r2                         ; 080D1DCE
mov   r3,r8                         ; 080D1DD0
and   r0,r3                         ; 080D1DD2
lsl   r0,r0,0x2                     ; 080D1DD4
add   r0,r0,r1                      ; 080D1DD6
ldr   r1,[r0]                       ; 080D1DD8
mov   r0,r6                         ; 080D1DDA
bl    LoadDynGfx_32x32              ; 080D1DDC
ldr   r3,=0x030021A4                ; 080D1DE0
ldrh  r1,[r6,0x34]                  ; 080D1DE2
lsr   r1,r1,0x2                     ; 080D1DE4
lsl   r1,r1,0x3                     ; 080D1DE6
ldr   r5,=0x03005A00                ; 080D1DE8
add   r1,r1,r5                      ; 080D1DEA
ldrh  r2,[r1]                       ; 080D1DEC
ldr   r0,=0xFCFF                    ; 080D1DEE
and   r0,r2                         ; 080D1DF0
mov   r4,0x80                       ; 080D1DF2
lsl   r4,r4,0x1                     ; 080D1DF4
mov   r2,r4                         ; 080D1DF6
orr   r0,r2                         ; 080D1DF8
strh  r0,[r1]                       ; 080D1DFA
add   r0,r1,0x2                     ; 080D1DFC
str   r0,[r3]                       ; 080D1DFE
ldrh  r2,[r1,0x2]                   ; 080D1E00
ldr   r0,=0x3FFF                    ; 080D1E02
and   r0,r2                         ; 080D1E04
mov   r3,0x80                       ; 080D1E06
lsl   r3,r3,0x8                     ; 080D1E08
mov   r2,r3                         ; 080D1E0A
orr   r0,r2                         ; 080D1E0C
strh  r0,[r1,0x2]                   ; 080D1E0E
ldrh  r2,[r6,0x34]                  ; 080D1E10
lsr   r2,r2,0x2                     ; 080D1E12
lsl   r2,r2,0x3                     ; 080D1E14
add   r2,r2,r5                      ; 080D1E16
ldr   r0,=0x0FD2                    ; 080D1E18
add   r4,r5,r0                      ; 080D1E1A
ldrh  r1,[r4]                       ; 080D1E1C
lsr   r1,r1,0x4                     ; 080D1E1E
mov   r3,r8                         ; 080D1E20
and   r1,r3                         ; 080D1E22
lsl   r1,r1,0x5                     ; 080D1E24
ldrb  r3,[r2,0x3]                   ; 080D1E26
mov   r0,0x21                       ; 080D1E28
neg   r0,r0                         ; 080D1E2A
and   r0,r3                         ; 080D1E2C
orr   r0,r1                         ; 080D1E2E
strb  r0,[r2,0x3]                   ; 080D1E30
ldrh  r2,[r6,0x34]                  ; 080D1E32
lsr   r2,r2,0x2                     ; 080D1E34
lsl   r2,r2,0x3                     ; 080D1E36
add   r2,r2,r5                      ; 080D1E38
ldrh  r1,[r4]                       ; 080D1E3A
lsr   r1,r1,0x3                     ; 080D1E3C
mov   r0,r8                         ; 080D1E3E
and   r1,r0                         ; 080D1E40
lsl   r1,r1,0x4                     ; 080D1E42
ldrb  r3,[r2,0x3]                   ; 080D1E44
mov   r0,0x11                       ; 080D1E46
neg   r0,r0                         ; 080D1E48
and   r0,r3                         ; 080D1E4A
orr   r0,r1                         ; 080D1E4C
strb  r0,[r2,0x3]                   ; 080D1E4E
ldrh  r1,[r6,0x34]                  ; 080D1E50
lsr   r1,r1,0x2                     ; 080D1E52
lsl   r1,r1,0x3                     ; 080D1E54
add   r1,r1,r5                      ; 080D1E56
ldrh  r0,[r4]                       ; 080D1E58
mov   r2,0x7                        ; 080D1E5A
and   r2,r0                         ; 080D1E5C
lsl   r2,r2,0x1                     ; 080D1E5E
ldrb  r3,[r1,0x3]                   ; 080D1E60
mov   r0,0xF                        ; 080D1E62
neg   r0,r0                         ; 080D1E64
and   r0,r3                         ; 080D1E66
orr   r0,r2                         ; 080D1E68
strb  r0,[r1,0x3]                   ; 080D1E6A
ldr   r1,=0x030021A8                ; 080D1E6C
mov   r0,0x80                       ; 080D1E6E
lsl   r0,r0,0x1                     ; 080D1E70
strh  r0,[r1]                       ; 080D1E72
strh  r0,[r1,0x2]                   ; 080D1E74
ldr   r0,=0x0202B352                ; 080D1E76
ldrb  r0,[r0]                       ; 080D1E78
lsl   r0,r0,0x8                     ; 080D1E7A
strh  r0,[r1,0x4]                   ; 080D1E7C
ldrb  r0,[r4]                       ; 080D1E7E
lsl   r0,r0,0x1A                    ; 080D1E80
lsr   r0,r0,0x18                    ; 080D1E82
bl    Sub0804CA78                   ; 080D1E84
ldrh  r0,[r4]                       ; 080D1E88
add   r0,0x1                        ; 080D1E8A
strh  r0,[r4]                       ; 080D1E8C
pop   {r3}                          ; 080D1E8E
mov   r8,r3                         ; 080D1E90
pop   {r4-r6}                       ; 080D1E92
pop   {r0}                          ; 080D1E94
bx    r0                            ; 080D1E96
.pool                               ; 080D1E98

Sub080D1EBC:
push  {r4-r6,lr}                    ; 080D1EBC
mov   r2,r0                         ; 080D1EBE
ldr   r0,=0x0300702C                ; 080D1EC0  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D1EC2
ldr   r1,=0x159C                    ; 080D1EC4
add   r0,r0,r1                      ; 080D1EC6
mov   r6,0x0                        ; 080D1EC8
ldsh  r0,[r0,r6]                    ; 080D1ECA
cmp   r0,0x0                        ; 080D1ECC
bgt   @@Code080D1EF4                ; 080D1ECE
ldr   r0,=CodePtrs0817C694          ; 080D1ED0
mov   r1,r2                         ; 080D1ED2
add   r1,0x6A                       ; 080D1ED4
ldrh  r1,[r1]                       ; 080D1ED6
lsl   r1,r1,0x2                     ; 080D1ED8
add   r1,r1,r0                      ; 080D1EDA
ldr   r1,[r1]                       ; 080D1EDC
mov   r0,r2                         ; 080D1EDE
bl    Sub_bx_r1                     ; 080D1EE0
b     @@Code080D1F50                ; 080D1EE4
.pool                               ; 080D1EE6

@@Code080D1EF4:
mov   r1,r2                         ; 080D1EF4
add   r1,0x42                       ; 080D1EF6
mov   r0,0x40                       ; 080D1EF8
strh  r0,[r1]                       ; 080D1EFA
ldr   r0,=0x0202B364                ; 080D1EFC
ldrb  r0,[r0]                       ; 080D1EFE
cmp   r0,0x0                        ; 080D1F00
bne   @@Code080D1F50                ; 080D1F02
ldr   r0,=0x03007240                ; 080D1F04  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D1F06
ldr   r1,=0x1224                    ; 080D1F08
add   r2,r0,r1                      ; 080D1F0A
mov   r6,0x95                       ; 080D1F0C
lsl   r6,r6,0x2                     ; 080D1F0E
add   r3,r0,r6                      ; 080D1F10
cmp   r2,r3                         ; 080D1F12
blo   @@Code080D1F50                ; 080D1F14
mov   r5,0x2                        ; 080D1F16
mov   r4,0x2                        ; 080D1F18
ldr   r6,=0x1248                    ; 080D1F1A
add   r1,r0,r6                      ; 080D1F1C
@@Code080D1F1E:
ldrh  r0,[r1,0xE]                   ; 080D1F1E
cmp   r0,0x48                       ; 080D1F20
bne   @@Code080D1F48                ; 080D1F22
ldrh  r0,[r1]                       ; 080D1F24
cmp   r0,0x0                        ; 080D1F26
beq   @@Code080D1F48                ; 080D1F28
ldrh  r0,[r1,0x20]                  ; 080D1F2A
cmp   r0,0x2F                       ; 080D1F2C
bls   @@Code080D1F50                ; 080D1F2E
strh  r4,[r1,0x20]                  ; 080D1F30
ldr   r0,=0x0202B364                ; 080D1F32
strb  r5,[r0]                       ; 080D1F34
b     @@Code080D1F50                ; 080D1F36
.pool                               ; 080D1F38

@@Code080D1F48:
sub   r1,0xB0                       ; 080D1F48
sub   r2,0xB0                       ; 080D1F4A
cmp   r2,r3                         ; 080D1F4C
bhs   @@Code080D1F1E                ; 080D1F4E
@@Code080D1F50:
pop   {r4-r6}                       ; 080D1F50
pop   {r0}                          ; 080D1F52
bx    r0                            ; 080D1F54
.pool                               ; 080D1F56

Sub080D1F58:
push  {lr}                          ; 080D1F58
mov   r2,r0                         ; 080D1F5A
ldr   r1,=0x0202B362                ; 080D1F5C
ldrb  r0,[r1]                       ; 080D1F5E
add   r0,0x2                        ; 080D1F60
strb  r0,[r1]                       ; 080D1F62
mov   r0,r2                         ; 080D1F64
add   r0,0x42                       ; 080D1F66
ldrh  r3,[r0]                       ; 080D1F68
cmp   r3,0x0                        ; 080D1F6A
bne   @@Code080D1F88                ; 080D1F6C
mov   r0,0x80                       ; 080D1F6E
lsl   r0,r0,0x2                     ; 080D1F70
str   r0,[r2,0xC]                   ; 080D1F72
ldr   r1,[r2,0x4]                   ; 080D1F74
ldr   r0,=0x00048DFF                ; 080D1F76
cmp   r1,r0                         ; 080D1F78
ble   @@Code080D1F88                ; 080D1F7A
mov   r1,r2                         ; 080D1F7C
add   r1,0x6A                       ; 080D1F7E
ldrh  r0,[r1]                       ; 080D1F80
add   r0,0x1                        ; 080D1F82
strh  r0,[r1]                       ; 080D1F84
str   r3,[r2,0xC]                   ; 080D1F86
@@Code080D1F88:
pop   {r0}                          ; 080D1F88
bx    r0                            ; 080D1F8A
.pool                               ; 080D1F8C

Sub080D1F94:
push  {lr}                          ; 080D1F94
mov   r2,r0                         ; 080D1F96
ldr   r1,=0x0202B362                ; 080D1F98
ldrb  r0,[r1]                       ; 080D1F9A
add   r0,0x2                        ; 080D1F9C
strb  r0,[r1]                       ; 080D1F9E
sub   r1,0x10                       ; 080D1FA0
ldrb  r0,[r1]                       ; 080D1FA2
sub   r0,0x8                        ; 080D1FA4
strb  r0,[r1]                       ; 080D1FA6
lsl   r0,r0,0x18                    ; 080D1FA8
cmp   r0,0x0                        ; 080D1FAA
bne   @@Code080D1FB8                ; 080D1FAC
mov   r1,r2                         ; 080D1FAE
add   r1,0x6A                       ; 080D1FB0
ldrh  r0,[r1]                       ; 080D1FB2
add   r0,0x1                        ; 080D1FB4
strh  r0,[r1]                       ; 080D1FB6
@@Code080D1FB8:
pop   {r0}                          ; 080D1FB8
bx    r0                            ; 080D1FBA
.pool                               ; 080D1FBC

Sub080D1FC0:
push  {lr}                          ; 080D1FC0
mov   r3,r0                         ; 080D1FC2
ldr   r2,=0x0202B362                ; 080D1FC4
ldrb  r0,[r2]                       ; 080D1FC6
add   r0,0x2                        ; 080D1FC8
strb  r0,[r2]                       ; 080D1FCA
ldr   r0,=0xFFFFFE00                ; 080D1FCC
str   r0,[r3,0x8]                   ; 080D1FCE
ldr   r0,[r3]                       ; 080D1FD0
mov   r1,0xFF                       ; 080D1FD2
lsl   r1,r1,0x8                     ; 080D1FD4
and   r0,r1                         ; 080D1FD6
ldr   r1,=0x9FFF                    ; 080D1FD8
cmp   r0,r1                         ; 080D1FDA
bgt   @@Code080D1FF8                ; 080D1FDC
mov   r0,0xFF                       ; 080D1FDE
strb  r0,[r2]                       ; 080D1FE0
mov   r2,r3                         ; 080D1FE2
add   r2,0x6A                       ; 080D1FE4
ldrh  r0,[r2]                       ; 080D1FE6
add   r0,0x1                        ; 080D1FE8
mov   r1,0x0                        ; 080D1FEA
strh  r0,[r2]                       ; 080D1FEC
str   r1,[r3,0x8]                   ; 080D1FEE
mov   r1,r3                         ; 080D1FF0
add   r1,0x42                       ; 080D1FF2
mov   r0,0x40                       ; 080D1FF4
strh  r0,[r1]                       ; 080D1FF6
@@Code080D1FF8:
pop   {r0}                          ; 080D1FF8
bx    r0                            ; 080D1FFA
.pool                               ; 080D1FFC

Sub080D2008:
push  {lr}                          ; 080D2008
mov   r2,r0                         ; 080D200A
add   r0,0x42                       ; 080D200C
ldrh  r0,[r0]                       ; 080D200E
cmp   r0,0x0                        ; 080D2010
bne   @@Code080D2034                ; 080D2012
mov   r1,r2                         ; 080D2014
add   r1,0x6A                       ; 080D2016
ldrh  r0,[r1]                       ; 080D2018
add   r0,0x1                        ; 080D201A
strh  r0,[r1]                       ; 080D201C
ldr   r0,=0x0300702C                ; 080D201E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D2020
ldr   r1,=0x159C                    ; 080D2022
add   r0,r0,r1                      ; 080D2024
mov   r1,0x1                        ; 080D2026
strh  r1,[r0]                       ; 080D2028
b     @@Code080D2046                ; 080D202A
.pool                               ; 080D202C

@@Code080D2034:
ldr   r1,[r2,0x4]                   ; 080D2034
ldr   r0,=0x00048DFF                ; 080D2036
cmp   r1,r0                         ; 080D2038
ble   @@Code080D2046                ; 080D203A
add   r0,0x1                        ; 080D203C
str   r0,[r2,0x4]                   ; 080D203E
mov   r0,0x0                        ; 080D2040
str   r0,[r2,0x14]                  ; 080D2042
str   r0,[r2,0xC]                   ; 080D2044
@@Code080D2046:
pop   {r0}                          ; 080D2046
bx    r0                            ; 080D2048
.pool                               ; 080D204A

Sub080D2050:
push  {lr}                          ; 080D2050
mov   r2,r0                         ; 080D2052
mov   r0,0x42                       ; 080D2054
add   r0,r0,r2                      ; 080D2056
mov   r12,r0                        ; 080D2058
ldrh  r3,[r0]                       ; 080D205A
cmp   r3,0x0                        ; 080D205C
bne   @@Code080D2086                ; 080D205E
mov   r1,r2                         ; 080D2060
add   r1,0x6A                       ; 080D2062
ldrh  r0,[r1]                       ; 080D2064
add   r0,0x1                        ; 080D2066
strh  r0,[r1]                       ; 080D2068
ldr   r0,[r2,0x4]                   ; 080D206A
mov   r1,0x80                       ; 080D206C
lsl   r1,r1,0x5                     ; 080D206E
add   r0,r0,r1                      ; 080D2070
str   r0,[r2,0x4]                   ; 080D2072
mov   r0,0x40                       ; 080D2074
mov   r1,r12                        ; 080D2076
strh  r0,[r1]                       ; 080D2078
strh  r3,[r2,0x38]                  ; 080D207A
ldr   r0,=0x0300702C                ; 080D207C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D207E
ldr   r1,=0x159C                    ; 080D2080
add   r0,r0,r1                      ; 080D2082
strh  r3,[r0]                       ; 080D2084
@@Code080D2086:
pop   {r0}                          ; 080D2086
bx    r0                            ; 080D2088
.pool                               ; 080D208A

Sub080D2094:
push  {r4,lr}                       ; 080D2094
mov   r4,r0                         ; 080D2096
add   r0,0x42                       ; 080D2098
ldrb  r1,[r0]                       ; 080D209A
cmp   r1,0x0                        ; 080D209C
bne   @@Code080D20C4                ; 080D209E
ldr   r1,=0x03002200                ; 080D20A0
ldrh  r0,[r4,0x20]                  ; 080D20A2
ldr   r2,=0x4058                    ; 080D20A4
add   r1,r1,r2                      ; 080D20A6
strh  r0,[r1]                       ; 080D20A8
mov   r0,0xD                        ; 080D20AA
bl    PlayYISound                   ; 080D20AC
mov   r1,r4                         ; 080D20B0
add   r1,0x6A                       ; 080D20B2
ldrh  r0,[r1]                       ; 080D20B4
add   r0,0x1                        ; 080D20B6
strh  r0,[r1]                       ; 080D20B8
ldr   r0,=0xFFFFFCC0                ; 080D20BA
str   r0,[r4,0xC]                   ; 080D20BC
mov   r0,0x18                       ; 080D20BE
str   r0,[r4,0x14]                  ; 080D20C0
mov   r1,0x18                       ; 080D20C2
@@Code080D20C4:
mov   r0,0x3                        ; 080D20C4
and   r1,r0                         ; 080D20C6
cmp   r1,0x0                        ; 080D20C8
bne   @@Code080D20DA                ; 080D20CA
ldr   r2,=0x0202B358                ; 080D20CC
ldr   r3,=0x0202B359                ; 080D20CE
ldrb  r0,[r2]                       ; 080D20D0
mov   r1,0x8                        ; 080D20D2
eor   r0,r1                         ; 080D20D4
strb  r0,[r3]                       ; 080D20D6
strb  r0,[r2]                       ; 080D20D8
@@Code080D20DA:
pop   {r4}                          ; 080D20DA
pop   {r0}                          ; 080D20DC
bx    r0                            ; 080D20DE
.pool                               ; 080D20E0

Sub080D20F4:
push  {r4,lr}                       ; 080D20F4
mov   r12,r0                        ; 080D20F6
ldr   r4,=0x0202B352                ; 080D20F8
ldrb  r0,[r4]                       ; 080D20FA
add   r0,0x8                        ; 080D20FC
strb  r0,[r4]                       ; 080D20FE
mov   r0,r12                        ; 080D2100
add   r0,0x76                       ; 080D2102
ldrh  r3,[r0]                       ; 080D2104
cmp   r3,0x80                       ; 080D2106
beq   @@Code080D2190                ; 080D2108
add   r3,0x4                        ; 080D210A
strh  r3,[r0]                       ; 080D210C
ldr   r2,=Data0817C6BC              ; 080D210E
ldr   r4,=0x03002200                ; 080D2110
ldr   r1,=0x4901                    ; 080D2112
add   r0,r4,r1                      ; 080D2114
ldrb  r1,[r0]                       ; 080D2116
mov   r0,0xF                        ; 080D2118
and   r0,r1                         ; 080D211A
add   r0,r0,r2                      ; 080D211C
ldrb  r0,[r0]                       ; 080D211E
add   r0,r0,r3                      ; 080D2120
lsl   r0,r0,0x10                    ; 080D2122
lsr   r1,r0,0x10                    ; 080D2124
cmp   r1,0xFF                       ; 080D2126
bls   @@Code080D2148                ; 080D2128
ldr   r1,=0x0202B358                ; 080D212A
mov   r0,0xFF                       ; 080D212C
strb  r0,[r1]                       ; 080D212E
b     @@Code080D214C                ; 080D2130
.pool                               ; 080D2132

@@Code080D2148:
ldr   r0,=0x0202B358                ; 080D2148
strb  r1,[r0]                       ; 080D214A
@@Code080D214C:
ldr   r2,=Data0817C6CC              ; 080D214C
ldr   r1,=0x4901                    ; 080D214E
add   r0,r4,r1                      ; 080D2150
ldrb  r0,[r0]                       ; 080D2152
mov   r1,0xF                        ; 080D2154
and   r1,r0                         ; 080D2156
add   r1,r1,r2                      ; 080D2158
mov   r0,r12                        ; 080D215A
add   r0,0x76                       ; 080D215C
ldrh  r0,[r0]                       ; 080D215E
ldrb  r1,[r1]                       ; 080D2160
add   r0,r0,r1                      ; 080D2162
lsl   r0,r0,0x10                    ; 080D2164
lsr   r1,r0,0x10                    ; 080D2166
cmp   r1,0xFF                       ; 080D2168
bls   @@Code080D2184                ; 080D216A
ldr   r1,=0x0202B359                ; 080D216C
mov   r0,0xFF                       ; 080D216E
strb  r0,[r1]                       ; 080D2170
b     @@Code080D21B4                ; 080D2172
.pool                               ; 080D2174

@@Code080D2184:
ldr   r0,=0x0202B359                ; 080D2184
strb  r1,[r0]                       ; 080D2186
b     @@Code080D21B4                ; 080D2188
.pool                               ; 080D218A

@@Code080D2190:
ldr   r2,=0x0202B358                ; 080D2190
ldr   r1,=0x0202B359                ; 080D2192
mov   r0,0xFF                       ; 080D2194
strb  r0,[r1]                       ; 080D2196
strb  r0,[r2]                       ; 080D2198
mov   r0,0x0                        ; 080D219A
strb  r0,[r4]                       ; 080D219C
mov   r0,0x0                        ; 080D219E
mov   r1,r12                        ; 080D21A0
str   r0,[r1,0xC]                   ; 080D21A2
str   r0,[r1,0x14]                  ; 080D21A4
add   r1,0x6A                       ; 080D21A6
ldrh  r0,[r1]                       ; 080D21A8
add   r0,0x1                        ; 080D21AA
strh  r0,[r1]                       ; 080D21AC
sub   r1,0x28                       ; 080D21AE
mov   r0,0x20                       ; 080D21B0
strh  r0,[r1]                       ; 080D21B2
@@Code080D21B4:
pop   {r4}                          ; 080D21B4
pop   {r0}                          ; 080D21B6
bx    r0                            ; 080D21B8
.pool                               ; 080D21BA

Sub080D21C4:
push  {lr}                          ; 080D21C4
mov   r2,r0                         ; 080D21C6
mov   r0,0x42                       ; 080D21C8
add   r0,r0,r2                      ; 080D21CA
mov   r12,r0                        ; 080D21CC
ldrh  r3,[r0]                       ; 080D21CE
cmp   r3,0x0                        ; 080D21D0
bne   @@Code080D2216                ; 080D21D2
mov   r0,0x80                       ; 080D21D4
lsl   r0,r0,0x4                     ; 080D21D6
str   r0,[r2,0xC]                   ; 080D21D8
ldr   r1,[r2,0x4]                   ; 080D21DA
ldr   r0,=0x000492FF                ; 080D21DC
cmp   r1,r0                         ; 080D21DE
ble   @@Code080D2216                ; 080D21E0
add   r0,0x1                        ; 080D21E2
str   r0,[r2,0x4]                   ; 080D21E4
str   r3,[r2,0x14]                  ; 080D21E6
str   r3,[r2,0xC]                   ; 080D21E8
mov   r1,r2                         ; 080D21EA
add   r1,0x6A                       ; 080D21EC
ldrh  r0,[r1]                       ; 080D21EE
add   r0,0x1                        ; 080D21F0
strh  r0,[r1]                       ; 080D21F2
mov   r0,0x20                       ; 080D21F4
mov   r1,r12                        ; 080D21F6
strh  r0,[r1]                       ; 080D21F8
ldr   r1,=0x03002200                ; 080D21FA
ldrh  r0,[r2,0x20]                  ; 080D21FC
ldr   r2,=0x4058                    ; 080D21FE
add   r1,r1,r2                      ; 080D2200
strh  r0,[r1]                       ; 080D2202
mov   r0,0x4F                       ; 080D2204
bl    PlayYISound                   ; 080D2206
ldr   r0,=0x03006D80                ; 080D220A
mov   r1,0xE0                       ; 080D220C
lsl   r1,r1,0x1                     ; 080D220E
add   r0,r0,r1                      ; 080D2210
mov   r1,0x18                       ; 080D2212
strh  r1,[r0]                       ; 080D2214
@@Code080D2216:
pop   {r0}                          ; 080D2216
bx    r0                            ; 080D2218
.pool                               ; 080D221A

Sub080D222C:
push  {r4-r5,lr}                    ; 080D222C
mov   r5,r0                         ; 080D222E
ldr   r0,=0x03002200                ; 080D2230
ldr   r1,=0x4901                    ; 080D2232
add   r0,r0,r1                      ; 080D2234
ldrb  r0,[r0]                       ; 080D2236
mov   r2,0x7                        ; 080D2238
and   r2,r0                         ; 080D223A
ldr   r1,=0x0202B358                ; 080D223C
ldr   r0,=Data0817C6DE              ; 080D223E
add   r0,r2,r0                      ; 080D2240
ldrb  r0,[r0]                       ; 080D2242
strb  r0,[r1]                       ; 080D2244
add   r1,0x1                        ; 080D2246
ldr   r0,=Data0817C6E6              ; 080D2248
add   r0,r2,r0                      ; 080D224A
ldrb  r0,[r0]                       ; 080D224C
strb  r0,[r1]                       ; 080D224E
mov   r0,r5                         ; 080D2250
add   r0,0x42                       ; 080D2252
ldrh  r0,[r0]                       ; 080D2254
cmp   r0,0x0                        ; 080D2256
bne   @@Code080D22AA                ; 080D2258
mov   r0,0x1                        ; 080D225A
and   r2,r0                         ; 080D225C
cmp   r2,0x0                        ; 080D225E
bne   @@Code080D22AA                ; 080D2260
ldr   r0,=0x01E9                    ; 080D2262
bl    SpawnSecondarySprite          ; 080D2264
ldr   r2,=0x03007240                ; 080D2268  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080D226A
lsr   r0,r0,0x18                    ; 080D226C
mov   r1,0xB0                       ; 080D226E
mul   r0,r1                         ; 080D2270
ldr   r1,=0x1AF4                    ; 080D2272
add   r0,r0,r1                      ; 080D2274
ldr   r1,[r2]                       ; 080D2276
add   r3,r1,r0                      ; 080D2278
ldr   r0,[r5]                       ; 080D227A
mov   r2,0x80                       ; 080D227C
lsl   r2,r2,0x5                     ; 080D227E
add   r0,r0,r2                      ; 080D2280
str   r0,[r3]                       ; 080D2282
ldr   r0,[r5,0x4]                   ; 080D2284
mov   r1,0x90                       ; 080D2286
lsl   r1,r1,0x5                     ; 080D2288
add   r0,r0,r1                      ; 080D228A
str   r0,[r3,0x4]                   ; 080D228C
mov   r1,r3                         ; 080D228E
add   r1,0x6A                       ; 080D2290
mov   r2,0x0                        ; 080D2292
mov   r0,0x5                        ; 080D2294
strh  r0,[r1]                       ; 080D2296
strh  r0,[r3,0x38]                  ; 080D2298
mov   r0,r3                         ; 080D229A
add   r0,0x42                       ; 080D229C
mov   r1,0x4                        ; 080D229E
strh  r1,[r0]                       ; 080D22A0
add   r0,0x2A                       ; 080D22A2
strh  r1,[r0]                       ; 080D22A4
add   r0,0x28                       ; 080D22A6
strb  r2,[r0]                       ; 080D22A8
@@Code080D22AA:
ldr   r0,=0xFFFFFB80                ; 080D22AA
str   r0,[r5,0x8]                   ; 080D22AC
mov   r0,r5                         ; 080D22AE
add   r0,0xA3                       ; 080D22B0
ldrb  r0,[r0]                       ; 080D22B2
lsl   r0,r0,0x18                    ; 080D22B4
asr   r0,r0,0x18                    ; 080D22B6
cmp   r0,0x0                        ; 080D22B8
bge   @@Code080D2326                ; 080D22BA
mov   r0,0x0                        ; 080D22BC
str   r0,[r5,0x8]                   ; 080D22BE
ldr   r4,=0x03006D80                ; 080D22C0
mov   r0,0x1E                       ; 080D22C2
strh  r0,[r4,0x30]                  ; 080D22C4
bl    Sub0805EA08                   ; 080D22C6
ldr   r0,=0xFFFFFC00                ; 080D22CA
str   r0,[r4,0x8]                   ; 080D22CC
ldr   r0,=0xFFFFFE00                ; 080D22CE
str   r0,[r4,0xC]                   ; 080D22D0
mov   r1,r5                         ; 080D22D2
add   r1,0x6A                       ; 080D22D4
ldrh  r0,[r1]                       ; 080D22D6
add   r0,0x1                        ; 080D22D8
strh  r0,[r1]                       ; 080D22DA
ldr   r1,=0x03002200                ; 080D22DC
ldrh  r0,[r5,0x20]                  ; 080D22DE
ldr   r2,=0x4058                    ; 080D22E0
add   r1,r1,r2                      ; 080D22E2
strh  r0,[r1]                       ; 080D22E4
mov   r0,0xD                        ; 080D22E6
bl    PlayYISound                   ; 080D22E8
mov   r0,0xF8                       ; 080D22EC
lsl   r0,r0,0x1                     ; 080D22EE
bl    SpawnSecondarySprite          ; 080D22F0
ldr   r2,=0x03007240                ; 080D22F4  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080D22F6
lsr   r0,r0,0x18                    ; 080D22F8
mov   r1,0xB0                       ; 080D22FA
mul   r0,r1                         ; 080D22FC
ldr   r1,=0x1AF4                    ; 080D22FE
add   r0,r0,r1                      ; 080D2300
ldr   r1,[r2]                       ; 080D2302
add   r3,r1,r0                      ; 080D2304
ldr   r0,[r4]                       ; 080D2306
mov   r1,0x80                       ; 080D2308
lsl   r1,r1,0x4                     ; 080D230A
add   r0,r0,r1                      ; 080D230C
str   r0,[r3]                       ; 080D230E
ldr   r0,[r4,0x4]                   ; 080D2310
add   r0,r0,r1                      ; 080D2312
str   r0,[r3,0x4]                   ; 080D2314
mov   r1,r3                         ; 080D2316
add   r1,0x42                       ; 080D2318
mov   r0,0x4                        ; 080D231A
strh  r0,[r1]                       ; 080D231C
add   r1,0x28                       ; 080D231E
mov   r0,0x7                        ; 080D2320
strh  r0,[r1]                       ; 080D2322
strh  r0,[r3,0x38]                  ; 080D2324
@@Code080D2326:
pop   {r4-r5}                       ; 080D2326
pop   {r0}                          ; 080D2328
bx    r0                            ; 080D232A
.pool                               ; 080D232C

Return080D2360:
bx    lr                            ; 080D2360
.pool                               ; 080D2362

Sub080D2364:
push  {r4-r5,lr}                    ; 080D2364
mov   r5,r0                         ; 080D2366
ldr   r2,=0x0202B35C                ; 080D2368
ldrb  r0,[r2]                       ; 080D236A
mov   r1,r0                         ; 080D236C
cmp   r1,0x98                       ; 080D236E
beq   @@Code080D2384                ; 080D2370
cmp   r1,0x97                       ; 080D2372
bhi   @@Code080D2380                ; 080D2374
add   r0,0x1                        ; 080D2376
b     @@Code080D2382                ; 080D2378
.pool                               ; 080D237A

@@Code080D2380:
sub   r0,0x1                        ; 080D2380
@@Code080D2382:
strb  r0,[r2]                       ; 080D2382
@@Code080D2384:
ldr   r1,=0x03002200                ; 080D2384
ldr   r0,=0x47DE                    ; 080D2386
add   r3,r1,r0                      ; 080D2388
ldr   r0,=0x0202B35C                ; 080D238A
ldrh  r4,[r3]                       ; 080D238C
ldrb  r2,[r3]                       ; 080D238E
ldrb  r0,[r0]                       ; 080D2390
cmp   r2,r0                         ; 080D2392
beq   @@Code080D23B0                ; 080D2394
cmp   r2,r0                         ; 080D2396
bhs   @@Code080D23AC                ; 080D2398
add   r0,r4,0x1                     ; 080D239A
b     @@Code080D23AE                ; 080D239C
.pool                               ; 080D239E

@@Code080D23AC:
sub   r0,r4,0x1                     ; 080D23AC
@@Code080D23AE:
strh  r0,[r3]                       ; 080D23AE
@@Code080D23B0:
ldr   r2,=0x47DE                    ; 080D23B0
add   r0,r1,r2                      ; 080D23B2
mov   r3,r5                         ; 080D23B4
add   r3,0x76                       ; 080D23B6
ldrh  r2,[r3]                       ; 080D23B8
mov   r1,0x2                        ; 080D23BA
and   r1,r2                         ; 080D23BC
ldrh  r4,[r0]                       ; 080D23BE
add   r1,r1,r4                      ; 080D23C0
strh  r1,[r0]                       ; 080D23C2
lsl   r0,r2,0x10                    ; 080D23C4
cmp   r0,0x0                        ; 080D23C6
beq   @@Code080D23CE                ; 080D23C8
sub   r0,r2,0x1                     ; 080D23CA
strh  r0,[r3]                       ; 080D23CC
@@Code080D23CE:
ldr   r0,=0x0202B356                ; 080D23CE
ldrb  r0,[r0]                       ; 080D23D0
strh  r0,[r5,0x36]                  ; 080D23D2
ldr   r1,=0x0202B354                ; 080D23D4
ldrb  r0,[r1]                       ; 080D23D6
cmp   r0,0x0                        ; 080D23D8
beq   @@Code080D23E0                ; 080D23DA
sub   r0,0x1                        ; 080D23DC
strb  r0,[r1]                       ; 080D23DE
@@Code080D23E0:
ldr   r1,=0x0202B355                ; 080D23E0
ldrb  r0,[r1]                       ; 080D23E2
cmp   r0,0x0                        ; 080D23E4
beq   @@Code080D23EC                ; 080D23E6
sub   r0,0x1                        ; 080D23E8
strb  r0,[r1]                       ; 080D23EA
@@Code080D23EC:
mov   r0,r5                         ; 080D23EC
bl    Sub080D2444                   ; 080D23EE
lsl   r0,r0,0x18                    ; 080D23F2
cmp   r0,0x0                        ; 080D23F4
bne   @@Code080D241C                ; 080D23F6
ldr   r0,=0x03007240                ; 080D23F8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080D23FA
ldr   r2,=0x0202B350                ; 080D23FC
ldr   r0,=0x0202B368                ; 080D23FE
ldrb  r0,[r0]                       ; 080D2400
ldrb  r2,[r2]                       ; 080D2402
add   r0,r0,r2                      ; 080D2404
lsl   r0,r0,0x18                    ; 080D2406
lsr   r0,r0,0x18                    ; 080D2408
ldr   r2,=0x2A2E                    ; 080D240A
add   r1,r1,r2                      ; 080D240C
strh  r0,[r1]                       ; 080D240E
mov   r0,r5                         ; 080D2410
bl    Sub0805F0C4                   ; 080D2412
mov   r0,r5                         ; 080D2416
bl    Sub080D3220                   ; 080D2418
@@Code080D241C:
pop   {r4-r5}                       ; 080D241C
pop   {r0}                          ; 080D241E
bx    r0                            ; 080D2420
.pool                               ; 080D2422

Sub080D2444:
push  {r4-r7,lr}                    ; 080D2444
mov   r7,r8                         ; 080D2446
push  {r7}                          ; 080D2448
mov   r4,r0                         ; 080D244A
ldr   r7,=0x0300702C                ; 080D244C  Sprite RAM structs (03002460)
ldr   r2,[r7]                       ; 080D244E
ldr   r0,=0x153C                    ; 080D2450
add   r1,r2,r0                      ; 080D2452
ldrh  r0,[r1]                       ; 080D2454
cmp   r0,0x0                        ; 080D2456
beq   @@Code080D252E                ; 080D2458
mov   r0,0x0                        ; 080D245A
mov   r8,r0                         ; 080D245C
mov   r5,0x0                        ; 080D245E
strh  r5,[r1]                       ; 080D2460
ldr   r1,=0x0202B351                ; 080D2462
ldr   r6,=0x153A                    ; 080D2464
add   r0,r2,r6                      ; 080D2466
ldrb  r0,[r0]                       ; 080D2468
ldrb  r1,[r1]                       ; 080D246A
add   r0,r0,r1                      ; 080D246C
sub   r0,0x72                       ; 080D246E
lsl   r0,r0,0x18                    ; 080D2470
lsr   r0,r0,0x18                    ; 080D2472
cmp   r0,0x1B                       ; 080D2474
bhi   @@Code080D252E                ; 080D2476
ldr   r0,=0x0202B350                ; 080D2478
ldrb  r0,[r0]                       ; 080D247A
cmp   r0,0x43                       ; 080D247C
bhi   @@Code080D252E                ; 080D247E
ldr   r1,=0x03002200                ; 080D2480
ldrh  r0,[r4,0x20]                  ; 080D2482
ldr   r2,=0x4058                    ; 080D2484
add   r1,r1,r2                      ; 080D2486
strh  r0,[r1]                       ; 080D2488
mov   r0,0xC1                       ; 080D248A
bl    PlayYISound                   ; 080D248C
mov   r0,r4                         ; 080D2490
add   r0,0x62                       ; 080D2492
ldrh  r2,[r0]                       ; 080D2494
cmp   r2,0x1                        ; 080D2496
bne   @@Code080D2510                ; 080D2498
ldr   r1,=0x0202B353                ; 080D249A
mov   r0,0xD                        ; 080D249C
strb  r0,[r1]                       ; 080D249E
ldr   r0,=0x0202B354                ; 080D24A0
mov   r1,0xA0                       ; 080D24A2
strb  r1,[r0]                       ; 080D24A4
add   r0,0x1                        ; 080D24A6
strb  r1,[r0]                       ; 080D24A8
ldr   r0,=0x03006D80                ; 080D24AA
mov   r1,0x2                        ; 080D24AC
strh  r1,[r0,0x30]                  ; 080D24AE
mov   r1,r0                         ; 080D24B0
add   r1,0xFE                       ; 080D24B2
strh  r5,[r1]                       ; 080D24B4
add   r0,0xFC                       ; 080D24B6
strh  r5,[r0]                       ; 080D24B8
ldr   r0,[r7]                       ; 080D24BA
add   r0,r0,r6                      ; 080D24BC
ldrb  r0,[r0]                       ; 080D24BE
lsl   r0,r0,0x18                    ; 080D24C0
asr   r0,r0,0x18                    ; 080D24C2
cmp   r0,0x0                        ; 080D24C4
bge   @@Code080D24FC                ; 080D24C6
ldr   r0,=0x0202B36A                ; 080D24C8
strb  r2,[r0]                       ; 080D24CA
b     @@Code080D2502                ; 080D24CC
.pool                               ; 080D24CE

@@Code080D24FC:
ldr   r0,=0x0202B36A                ; 080D24FC
mov   r1,r8                         ; 080D24FE
strb  r1,[r0]                       ; 080D2500
@@Code080D2502:
ldr   r1,=0x0202B36B                ; 080D2502
mov   r0,0x0                        ; 080D2504
b     @@Code080D252C                ; 080D2506
.pool                               ; 080D2508

@@Code080D2510:
ldr   r1,=0x0202B353                ; 080D2510
mov   r0,0xB                        ; 080D2512
strb  r0,[r1]                       ; 080D2514
add   r1,0xD                        ; 080D2516
mov   r0,0x8                        ; 080D2518
strb  r0,[r1]                       ; 080D251A
sub   r1,0x7                        ; 080D251C
mov   r0,0xA0                       ; 080D251E
strb  r0,[r1]                       ; 080D2520
ldr   r0,=0x0202B354                ; 080D2522
mov   r2,r8                         ; 080D2524
strb  r2,[r0]                       ; 080D2526
sub   r1,0x4                        ; 080D2528
mov   r0,0x18                       ; 080D252A
@@Code080D252C:
strb  r0,[r1]                       ; 080D252C
@@Code080D252E:
ldr   r1,=CodePtrs0817C6F8          ; 080D252E
ldr   r0,=0x0202B353                ; 080D2530
ldrb  r0,[r0]                       ; 080D2532
lsl   r0,r0,0x2                     ; 080D2534
add   r0,r0,r1                      ; 080D2536
ldr   r1,[r0]                       ; 080D2538
mov   r0,r4                         ; 080D253A
bl    Sub_bx_r1                     ; 080D253C
lsl   r0,r0,0x18                    ; 080D2540
lsr   r0,r0,0x18                    ; 080D2542
pop   {r3}                          ; 080D2544
mov   r8,r3                         ; 080D2546
pop   {r4-r7}                       ; 080D2548
pop   {r1}                          ; 080D254A
bx    r1                            ; 080D254C
.pool                               ; 080D254E

Sub080D255C:
push  {r4,lr}                       ; 080D255C
mov   r4,r0                         ; 080D255E
bl    Sub080D278C                   ; 080D2560
ldr   r2,=0x0202B357                ; 080D2564
ldr   r0,=0x03002200                ; 080D2566
ldr   r1,=0x4901                    ; 080D2568
add   r0,r0,r1                      ; 080D256A
ldrb  r0,[r0]                       ; 080D256C
lsr   r0,r0,0x4                     ; 080D256E
mov   r1,0x1                        ; 080D2570
and   r0,r1                         ; 080D2572
strb  r0,[r2]                       ; 080D2574
add   r4,0x68                       ; 080D2576
ldrh  r0,[r4]                       ; 080D2578
cmp   r0,0x20                       ; 080D257A
beq   @@Code080D258C                ; 080D257C
ldr   r1,=0x0202B353                ; 080D257E
ldrb  r0,[r1]                       ; 080D2580
add   r0,0x1                        ; 080D2582
strb  r0,[r1]                       ; 080D2584
add   r1,0x1                        ; 080D2586
mov   r0,0x50                       ; 080D2588
strb  r0,[r1]                       ; 080D258A
@@Code080D258C:
mov   r0,0x0                        ; 080D258C
pop   {r4}                          ; 080D258E
pop   {r1}                          ; 080D2590
bx    r1                            ; 080D2592
.pool                               ; 080D2594

Sub080D25A4:
push  {r4,lr}                       ; 080D25A4
ldr   r2,=0x0202B357                ; 080D25A6
ldr   r0,=0x03002200                ; 080D25A8
ldr   r1,=0x4901                    ; 080D25AA
add   r0,r0,r1                      ; 080D25AC
ldrb  r0,[r0]                       ; 080D25AE
lsr   r0,r0,0x4                     ; 080D25B0
mov   r1,0x1                        ; 080D25B2
and   r0,r1                         ; 080D25B4
strb  r0,[r2]                       ; 080D25B6
ldr   r4,=0x0202B354                ; 080D25B8
ldrb  r2,[r4]                       ; 080D25BA
cmp   r2,0x0                        ; 080D25BC
bne   @@Code080D25DC                ; 080D25BE
ldr   r1,=0x03006D80                ; 080D25C0
mov   r0,0xD3                       ; 080D25C2
lsl   r0,r0,0x1                     ; 080D25C4
add   r3,r1,r0                      ; 080D25C6
mov   r0,0x1                        ; 080D25C8
strh  r0,[r3]                       ; 080D25CA
str   r2,[r1,0x28]                  ; 080D25CC
str   r2,[r1,0x8]                   ; 080D25CE
ldr   r1,=0x0202B353                ; 080D25D0
ldrb  r0,[r1]                       ; 080D25D2
add   r0,0x1                        ; 080D25D4
strb  r0,[r1]                       ; 080D25D6
mov   r0,0xA0                       ; 080D25D8
strb  r0,[r4]                       ; 080D25DA
@@Code080D25DC:
mov   r0,0x0                        ; 080D25DC
pop   {r4}                          ; 080D25DE
pop   {r1}                          ; 080D25E0
bx    r1                            ; 080D25E2
.pool                               ; 080D25E4

Sub080D25FC:
push  {r4,lr}                       ; 080D25FC
mov   r4,r0                         ; 080D25FE
bl    Sub080D2764                   ; 080D2600
ldr   r3,=0x0202B354                ; 080D2604
ldrb  r1,[r3]                       ; 080D2606
mov   r2,r1                         ; 080D2608
cmp   r2,0x0                        ; 080D260A
beq   @@Code080D2630                ; 080D260C
cmp   r2,0x2F                       ; 080D260E
bls   @@Code080D2650                ; 080D2610
mov   r0,0xF                        ; 080D2612
and   r0,r1                         ; 080D2614
cmp   r0,0x0                        ; 080D2616
bne   @@Code080D2650                ; 080D2618
ldr   r0,=0x0202B356                ; 080D261A
ldrb  r1,[r0]                       ; 080D261C
mov   r2,0x2                        ; 080D261E
eor   r1,r2                         ; 080D2620
strb  r1,[r0]                       ; 080D2622
b     @@Code080D2650                ; 080D2624
.pool                               ; 080D2626

@@Code080D2630:
ldr   r1,=0x0202B353                ; 080D2630
ldrb  r0,[r1]                       ; 080D2632
add   r0,0x1                        ; 080D2634
strb  r0,[r1]                       ; 080D2636
ldr   r0,=0x0202B35A                ; 080D2638
strb  r2,[r0]                       ; 080D263A
mov   r0,0x50                       ; 080D263C
strb  r0,[r3]                       ; 080D263E
ldr   r1,=0x03002200                ; 080D2640
ldrh  r0,[r4,0x20]                  ; 080D2642
ldr   r2,=0x4058                    ; 080D2644
add   r1,r1,r2                      ; 080D2646
strh  r0,[r1]                       ; 080D2648
mov   r0,0xA2                       ; 080D264A
bl    PlayYISound                   ; 080D264C
@@Code080D2650:
mov   r0,0x0                        ; 080D2650
pop   {r4}                          ; 080D2652
pop   {r1}                          ; 080D2654
bx    r1                            ; 080D2656
.pool                               ; 080D2658

Sub080D2668:
push  {r4,lr}                       ; 080D2668
mov   r4,r0                         ; 080D266A
bl    Sub080D2764                   ; 080D266C
ldr   r0,=0x03002200                ; 080D2670
ldr   r1,=0x4901                    ; 080D2672
add   r0,r0,r1                      ; 080D2674
ldrb  r2,[r0]                       ; 080D2676
mov   r0,0x3                        ; 080D2678
and   r0,r2                         ; 080D267A
cmp   r0,0x0                        ; 080D267C
beq   @@Code080D268E                ; 080D267E
mov   r1,r4                         ; 080D2680
add   r1,0x6E                       ; 080D2682
ldrh  r0,[r1]                       ; 080D2684
cmp   r0,0x0                        ; 080D2686
beq   @@Code080D268E                ; 080D2688
sub   r0,0x1                        ; 080D268A
strh  r0,[r1]                       ; 080D268C
@@Code080D268E:
ldr   r0,=0x0202B357                ; 080D268E
lsr   r1,r2,0x3                     ; 080D2690
mov   r4,0x1                        ; 080D2692
and   r1,r4                         ; 080D2694
strb  r1,[r0]                       ; 080D2696
mov   r0,0x7                        ; 080D2698
and   r2,r0                         ; 080D269A
cmp   r2,0x0                        ; 080D269C
bne   @@Code080D26A8                ; 080D269E
ldr   r1,=0x0202B35A                ; 080D26A0
ldrb  r0,[r1]                       ; 080D26A2
add   r0,0x1                        ; 080D26A4
strb  r0,[r1]                       ; 080D26A6
@@Code080D26A8:
bl    Sub080D2718                   ; 080D26A8
ldr   r0,=0x0202B354                ; 080D26AC
ldrb  r1,[r0]                       ; 080D26AE
mov   r0,r4                         ; 080D26B0
and   r0,r1                         ; 080D26B2
cmp   r0,0x0                        ; 080D26B4
bne   @@Code080D26C8                ; 080D26B6
ldr   r2,=0x0202B358                ; 080D26B8
ldrb  r0,[r2]                       ; 080D26BA
cmp   r0,0xF8                       ; 080D26BC
beq   @@Code080D26C8                ; 080D26BE
ldr   r1,=0x0202B359                ; 080D26C0
add   r0,0x1                        ; 080D26C2
strb  r0,[r1]                       ; 080D26C4
strb  r0,[r2]                       ; 080D26C6
@@Code080D26C8:
ldr   r2,=0x0202B351                ; 080D26C8
ldrb  r1,[r2]                       ; 080D26CA
mov   r0,0xFE                       ; 080D26CC
and   r0,r1                         ; 080D26CE
cmp   r0,0x7E                       ; 080D26D0
bne   @@Code080D26EC                ; 080D26D2
mov   r0,0x80                       ; 080D26D4
strb  r0,[r2]                       ; 080D26D6
ldr   r1,=0x0202B353                ; 080D26D8
ldrb  r0,[r1]                       ; 080D26DA
add   r0,0x1                        ; 080D26DC
strb  r0,[r1]                       ; 080D26DE
add   r1,0x1                        ; 080D26E0
mov   r0,0x30                       ; 080D26E2
strb  r0,[r1]                       ; 080D26E4
add   r1,0xC                        ; 080D26E6
mov   r0,0x0                        ; 080D26E8
strb  r0,[r1]                       ; 080D26EA
@@Code080D26EC:
mov   r0,0x0                        ; 080D26EC
pop   {r4}                          ; 080D26EE
pop   {r1}                          ; 080D26F0
bx    r1                            ; 080D26F2
.pool                               ; 080D26F4

Sub080D2718:
push  {lr}                          ; 080D2718
ldr   r2,=0x0202B35B                ; 080D271A
ldr   r1,=0x0202B35A                ; 080D271C
ldrb  r0,[r1]                       ; 080D271E
lsl   r0,r0,0x4                     ; 080D2720
ldrb  r3,[r2]                       ; 080D2722
add   r0,r0,r3                      ; 080D2724
mov   r3,0x0                        ; 080D2726
cmp   r0,0xFF                       ; 080D2728
ble   @@Code080D272E                ; 080D272A
mov   r3,0x1                        ; 080D272C
@@Code080D272E:
strb  r0,[r2]                       ; 080D272E
ldrb  r0,[r1]                       ; 080D2730
lsl   r0,r0,0x18                    ; 080D2732
cmp   r0,0x0                        ; 080D2734
blt   @@Code080D274C                ; 080D2736
ldr   r2,=0x0202B351                ; 080D2738
lsr   r1,r0,0x1C                    ; 080D273A
b     @@Code080D2754                ; 080D273C
.pool                               ; 080D273E

@@Code080D274C:
ldr   r2,=0x0202B351                ; 080D274C
lsr   r1,r0,0x1C                    ; 080D274E
mov   r0,0xF0                       ; 080D2750
orr   r1,r0                         ; 080D2752
@@Code080D2754:
add   r1,r3,r1                      ; 080D2754
ldrb  r0,[r2]                       ; 080D2756
add   r0,r0,r1                      ; 080D2758
strb  r0,[r2]                       ; 080D275A
pop   {r0}                          ; 080D275C
bx    r0                            ; 080D275E
.pool                               ; 080D2760

Sub080D2764:
ldr   r1,=0x0202B35C                ; 080D2764
ldr   r0,[r0,0x4]                   ; 080D2766
asr   r0,r0,0x8                     ; 080D2768
sub   r0,0xB8                       ; 080D276A
asr   r0,r0,0x2                     ; 080D276C
sub   r0,0x60                       ; 080D276E
strb  r0,[r1]                       ; 080D2770
bx    lr                            ; 080D2772
.pool                               ; 080D2774

Sub080D2778:
ldr   r1,=0x0202B35C                ; 080D2778
ldr   r0,[r0,0x4]                   ; 080D277A
asr   r0,r0,0x8                     ; 080D277C
sub   r0,0xB8                       ; 080D277E
asr   r0,r0,0x2                     ; 080D2780
sub   r0,0x80                       ; 080D2782
strb  r0,[r1]                       ; 080D2784
bx    lr                            ; 080D2786
.pool                               ; 080D2788

Sub080D278C:
push  {lr}                          ; 080D278C
ldr   r1,=0x0202B35C                ; 080D278E
ldr   r0,=0x03006D80                ; 080D2790
ldr   r0,[r0,0x4]                   ; 080D2792
asr   r0,r0,0x8                     ; 080D2794
sub   r0,0xB8                       ; 080D2796
asr   r0,r0,0x2                     ; 080D2798
sub   r0,0x50                       ; 080D279A
strb  r0,[r1]                       ; 080D279C
lsl   r0,r0,0x18                    ; 080D279E
lsr   r0,r0,0x18                    ; 080D27A0
cmp   r0,0x97                       ; 080D27A2
bhi   @@Code080D27AA                ; 080D27A4
mov   r0,0x98                       ; 080D27A6
strb  r0,[r1]                       ; 080D27A8
@@Code080D27AA:
ldrb  r0,[r1]                       ; 080D27AA
cmp   r0,0xCF                       ; 080D27AC
bls   @@Code080D27B4                ; 080D27AE
mov   r0,0xD0                       ; 080D27B0
strb  r0,[r1]                       ; 080D27B2
@@Code080D27B4:
pop   {r0}                          ; 080D27B4
bx    r0                            ; 080D27B6
.pool                               ; 080D27B8

Sub080D27C0:
push  {r4-r7,lr}                    ; 080D27C0
mov   r7,r8                         ; 080D27C2
push  {r7}                          ; 080D27C4
mov   r6,r0                         ; 080D27C6
bl    Sub080D2764                   ; 080D27C8
mov   r5,r6                         ; 080D27CC
add   r5,0x7C                       ; 080D27CE
ldrh  r2,[r5]                       ; 080D27D0
mov   r0,0xFE                       ; 080D27D2
mov   r1,r0                         ; 080D27D4
and   r1,r2                         ; 080D27D6
mov   r4,r1                         ; 080D27D8
cmp   r4,0x80                       ; 080D27DA
beq   @@Code080D27EA                ; 080D27DC
and   r0,r2                         ; 080D27DE
add   r0,0x8                        ; 080D27E0
lsl   r0,r0,0x18                    ; 080D27E2
lsr   r0,r0,0x18                    ; 080D27E4
strh  r0,[r5]                       ; 080D27E6
b     @@Code080D285A                ; 080D27E8
@@Code080D27EA:
strh  r1,[r5]                       ; 080D27EA
ldr   r0,=0x0202B354                ; 080D27EC
mov   r8,r0                         ; 080D27EE
ldrb  r0,[r0]                       ; 080D27F0
cmp   r0,0x0                        ; 080D27F2
bne   @@Code080D285A                ; 080D27F4
ldr   r2,=0x0202B350                ; 080D27F6
ldr   r3,=0x0202B360                ; 080D27F8
ldrb  r0,[r3]                       ; 080D27FA
ldrb  r7,[r2]                       ; 080D27FC
add   r1,r0,r7                      ; 080D27FE
strb  r1,[r2]                       ; 080D2800
sub   r0,0x2                        ; 080D2802
strb  r0,[r3]                       ; 080D2804
lsl   r1,r1,0x18                    ; 080D2806
lsr   r1,r1,0x18                    ; 080D2808
cmp   r1,0x41                       ; 080D280A
bhi   @@Code080D285A                ; 080D280C
bl    Sub080D2990                   ; 080D280E
mov   r0,r8                         ; 080D2812
strb  r4,[r0]                       ; 080D2814
strh  r4,[r5]                       ; 080D2816
mov   r1,r6                         ; 080D2818
add   r1,0x76                       ; 080D281A
mov   r0,0x20                       ; 080D281C
strh  r0,[r1]                       ; 080D281E
ldr   r1,=0x03002200                ; 080D2820
ldrh  r0,[r6,0x20]                  ; 080D2822
ldr   r2,=0x4058                    ; 080D2824
add   r1,r1,r2                      ; 080D2826
strh  r0,[r1]                       ; 080D2828
mov   r0,0x4F                       ; 080D282A
bl    PlayYISound                   ; 080D282C
ldr   r0,=0x03007240                ; 080D2830  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D2832
ldr   r7,=0x26A9                    ; 080D2834
add   r0,r0,r7                      ; 080D2836
ldrb  r0,[r0]                       ; 080D2838
cmp   r0,0x0                        ; 080D283A
bne   @@Code080D2848                ; 080D283C
ldr   r0,=Data082D19FE              ; 080D283E
ldr   r1,=0x050002C2                ; 080D2840
mov   r2,0xF                        ; 080D2842
bl    swi_MemoryCopy4or2            ; 080D2844  Memory copy/fill, 4- or 2-byte blocks
@@Code080D2848:
mov   r1,r6                         ; 080D2848
add   r1,0x6E                       ; 080D284A
ldr   r0,=0xFFFF                    ; 080D284C
strh  r0,[r1]                       ; 080D284E
sub   r1,0x2E                       ; 080D2850
mov   r0,0x6                        ; 080D2852
strh  r0,[r1]                       ; 080D2854
bl    Sub080D1960                   ; 080D2856
@@Code080D285A:
mov   r0,0x0                        ; 080D285A
pop   {r3}                          ; 080D285C
mov   r8,r3                         ; 080D285E
pop   {r4-r7}                       ; 080D2860
pop   {r1}                          ; 080D2862
bx    r1                            ; 080D2864
.pool                               ; 080D2866

Sub080D2890:
push  {r4-r6,lr}                    ; 080D2890
mov   r4,r0                         ; 080D2892
bl    Sub080D3288                   ; 080D2894
lsl   r0,r0,0x18                    ; 080D2898
cmp   r0,0x0                        ; 080D289A
beq   @@Code080D28A2                ; 080D289C
mov   r0,0x1                        ; 080D289E
b     @@Code080D2966                ; 080D28A0
@@Code080D28A2:
mov   r0,r4                         ; 080D28A2
mov   r1,0x8                        ; 080D28A4
bl    Sub080D32E0                   ; 080D28A6
ldr   r2,=0x0202B360                ; 080D28AA
ldrb  r3,[r2]                       ; 080D28AC
mov   r0,0x0                        ; 080D28AE
ldsb  r0,[r2,r0]                    ; 080D28B0
cmp   r0,0x0                        ; 080D28B2
bge   @@Code080D28BE                ; 080D28B4
ldr   r0,=0x0202B350                ; 080D28B6
ldrb  r0,[r0]                       ; 080D28B8
cmp   r0,0x42                       ; 080D28BA
bls   @@Code080D28DC                ; 080D28BC
@@Code080D28BE:
ldr   r1,=0x0202B350                ; 080D28BE
ldrb  r5,[r1]                       ; 080D28C0
add   r0,r3,r5                      ; 080D28C2
strb  r0,[r1]                       ; 080D28C4
lsl   r0,r0,0x18                    ; 080D28C6
lsr   r0,r0,0x18                    ; 080D28C8
cmp   r0,0x42                       ; 080D28CA
bls   @@Code080D28DC                ; 080D28CC
sub   r0,r3,0x1                     ; 080D28CE
strb  r0,[r2]                       ; 080D28D0
b     @@Code080D2964                ; 080D28D2
.pool                               ; 080D28D4

@@Code080D28DC:
ldr   r1,=0x0202B350                ; 080D28DC
mov   r0,0x42                       ; 080D28DE
strb  r0,[r1]                       ; 080D28E0
ldr   r0,=0x0202B354                ; 080D28E2
ldrb  r0,[r0]                       ; 080D28E4
cmp   r0,0x0                        ; 080D28E6
bne   @@Code080D2908                ; 080D28E8
ldr   r0,=0x0202B351                ; 080D28EA
ldrb  r1,[r0]                       ; 080D28EC
mov   r0,0x1F                       ; 080D28EE
and   r0,r1                         ; 080D28F0
cmp   r0,0x0                        ; 080D28F2
bne   @@Code080D2908                ; 080D28F4
bl    Sub080D2990                   ; 080D28F6
b     @@Code080D2964                ; 080D28FA
.pool                               ; 080D28FC

@@Code080D2908:
ldr   r5,=0x0202B351                ; 080D2908
ldrb  r3,[r5]                       ; 080D290A
mov   r2,0x7                        ; 080D290C
and   r2,r3                         ; 080D290E
ldr   r1,=0x0202B358                ; 080D2910
ldr   r0,=Data0817C6DE              ; 080D2912
add   r0,r2,r0                      ; 080D2914
ldrb  r0,[r0]                       ; 080D2916
strb  r0,[r1]                       ; 080D2918
add   r1,0x1                        ; 080D291A
ldr   r0,=Data0817C6E6              ; 080D291C
add   r0,r2,r0                      ; 080D291E
ldrb  r0,[r0]                       ; 080D2920
strb  r0,[r1]                       ; 080D2922
add   r1,0xF                        ; 080D2924
ldr   r0,=Data0817C6EE              ; 080D2926
add   r0,r2,r0                      ; 080D2928
ldrb  r0,[r0]                       ; 080D292A
strb  r0,[r1]                       ; 080D292C
ldr   r0,=0x0202B356                ; 080D292E
ldrb  r2,[r0]                       ; 080D2930
mov   r1,r4                         ; 080D2932
add   r1,0x62                       ; 080D2934
ldrh  r0,[r1]                       ; 080D2936
ldr   r4,=Data0817C6DC              ; 080D2938
cmp   r0,0x7                        ; 080D293A
beq   @@Code080D2956                ; 080D293C
ldr   r1,=0x03002200                ; 080D293E
ldr   r6,=0x4901                    ; 080D2940
add   r1,r1,r6                      ; 080D2942
ldrb  r1,[r1]                       ; 080D2944
and   r0,r1                         ; 080D2946
cmp   r0,0x0                        ; 080D2948
bne   @@Code080D2956                ; 080D294A
lsr   r0,r2,0x1                     ; 080D294C
add   r0,r0,r4                      ; 080D294E
ldrb  r0,[r0]                       ; 080D2950
add   r0,r3,r0                      ; 080D2952
strb  r0,[r5]                       ; 080D2954
@@Code080D2956:
ldr   r0,=0x0202B351                ; 080D2956
lsr   r1,r2,0x1                     ; 080D2958
add   r1,r1,r4                      ; 080D295A
ldrb  r1,[r1]                       ; 080D295C
ldrb  r2,[r0]                       ; 080D295E
add   r1,r1,r2                      ; 080D2960
strb  r1,[r0]                       ; 080D2962
@@Code080D2964:
mov   r0,0x0                        ; 080D2964
@@Code080D2966:
pop   {r4-r6}                       ; 080D2966
pop   {r1}                          ; 080D2968
bx    r1                            ; 080D296A
.pool                               ; 080D296C

Sub080D2990:
ldr   r1,=0x0202B354                ; 080D2990
mov   r0,0x14                       ; 080D2992
strb  r0,[r1]                       ; 080D2994
sub   r1,0x1                        ; 080D2996
mov   r0,0x6                        ; 080D2998
strb  r0,[r1]                       ; 080D299A
bx    lr                            ; 080D299C
.pool                               ; 080D299E

Sub080D29A4:
push  {lr}                          ; 080D29A4
bl    Sub080D3288                   ; 080D29A6
lsl   r0,r0,0x18                    ; 080D29AA
cmp   r0,0x0                        ; 080D29AC
beq   @@Code080D29B4                ; 080D29AE
mov   r0,0x1                        ; 080D29B0
b     @@Code080D29DC                ; 080D29B2
@@Code080D29B4:
bl    Sub080D2C44                   ; 080D29B4
ldr   r2,=0x0202B354                ; 080D29B8
ldrb  r0,[r2]                       ; 080D29BA
cmp   r0,0x0                        ; 080D29BC
bne   @@Code080D29DA                ; 080D29BE
ldr   r1,=0x0202B353                ; 080D29C0
ldrb  r0,[r1]                       ; 080D29C2
add   r0,0x1                        ; 080D29C4
strb  r0,[r1]                       ; 080D29C6
ldr   r0,=0x03007240                ; 080D29C8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D29CA
ldr   r1,=0x29CC                    ; 080D29CC
add   r0,r0,r1                      ; 080D29CE
ldrb  r1,[r0]                       ; 080D29D0
mov   r0,0x30                       ; 080D29D2
and   r0,r1                         ; 080D29D4
add   r0,0x40                       ; 080D29D6
strb  r0,[r2]                       ; 080D29D8
@@Code080D29DA:
mov   r0,0x0                        ; 080D29DA
@@Code080D29DC:
pop   {r1}                          ; 080D29DC
bx    r1                            ; 080D29DE
.pool                               ; 080D29E0

Sub080D29F0:
push  {lr}                          ; 080D29F0
bl    Sub080D3288                   ; 080D29F2
lsl   r0,r0,0x18                    ; 080D29F6
cmp   r0,0x0                        ; 080D29F8
beq   @@Code080D2A00                ; 080D29FA
mov   r0,0x1                        ; 080D29FC
b     @@Code080D2A74                ; 080D29FE
@@Code080D2A00:
bl    Sub080D2C44                   ; 080D2A00
ldr   r0,=0x0202B354                ; 080D2A04
ldrb  r0,[r0]                       ; 080D2A06
cmp   r0,0x0                        ; 080D2A08
beq   @@Code080D2A64                ; 080D2A0A
cmp   r0,0x28                       ; 080D2A0C
bne   @@Code080D2A44                ; 080D2A0E
ldr   r0,=0x0202B352                ; 080D2A10
ldrb  r1,[r0]                       ; 080D2A12
mov   r0,r1                         ; 080D2A14
add   r0,0x40                       ; 080D2A16
lsl   r0,r0,0x18                    ; 080D2A18
cmp   r0,0x0                        ; 080D2A1A
blt   @@Code080D2A44                ; 080D2A1C
ldr   r2,=0x0202B356                ; 080D2A1E
lsr   r0,r1,0x6                     ; 080D2A20
mov   r1,0x2                        ; 080D2A22
and   r0,r1                         ; 080D2A24
eor   r0,r1                         ; 080D2A26
strb  r0,[r2]                       ; 080D2A28
ldr   r1,=0x0202B360                ; 080D2A2A
mov   r0,0x8                        ; 080D2A2C
strb  r0,[r1]                       ; 080D2A2E
b     @@Code080D2A64                ; 080D2A30
.pool                               ; 080D2A32

@@Code080D2A44:
ldr   r0,=0x0202B354                ; 080D2A44
ldrb  r1,[r0]                       ; 080D2A46
mov   r0,0xF                        ; 080D2A48
and   r0,r1                         ; 080D2A4A
cmp   r0,0x0                        ; 080D2A4C
bne   @@Code080D2A72                ; 080D2A4E
ldr   r0,=0x0202B356                ; 080D2A50
ldrb  r1,[r0]                       ; 080D2A52
mov   r2,0x2                        ; 080D2A54
eor   r1,r2                         ; 080D2A56
strb  r1,[r0]                       ; 080D2A58
b     @@Code080D2A72                ; 080D2A5A
.pool                               ; 080D2A5C

@@Code080D2A64:
ldr   r1,=0x0202B353                ; 080D2A64
ldrb  r0,[r1]                       ; 080D2A66
add   r0,0x1                        ; 080D2A68
strb  r0,[r1]                       ; 080D2A6A
add   r1,0x1                        ; 080D2A6C
mov   r0,0x14                       ; 080D2A6E
strb  r0,[r1]                       ; 080D2A70
@@Code080D2A72:
mov   r0,0x0                        ; 080D2A72
@@Code080D2A74:
pop   {r1}                          ; 080D2A74
bx    r1                            ; 080D2A76
.pool                               ; 080D2A78

Sub080D2A7C:
push  {r4,lr}                       ; 080D2A7C
mov   r4,r0                         ; 080D2A7E
bl    Sub080D3288                   ; 080D2A80
lsl   r0,r0,0x18                    ; 080D2A84
cmp   r0,0x0                        ; 080D2A86
beq   @@Code080D2A8E                ; 080D2A88
mov   r0,0x1                        ; 080D2A8A
b     @@Code080D2AFE                ; 080D2A8C
@@Code080D2A8E:
bl    Sub080D2C44                   ; 080D2A8E
mov   r0,r4                         ; 080D2A92
mov   r1,0x10                       ; 080D2A94
bl    Sub080D32E0                   ; 080D2A96
ldr   r0,=0x0202B354                ; 080D2A9A
ldrb  r0,[r0]                       ; 080D2A9C
cmp   r0,0x0                        ; 080D2A9E
bne   @@Code080D2AFC                ; 080D2AA0
ldr   r0,=0x03006D80                ; 080D2AA2
mov   r2,0xD3                       ; 080D2AA4
lsl   r2,r2,0x1                     ; 080D2AA6
add   r1,r0,r2                      ; 080D2AA8
ldrh  r1,[r1]                       ; 080D2AAA
mov   r3,r0                         ; 080D2AAC
cmp   r1,0x0                        ; 080D2AAE
bne   @@Code080D2AEC                ; 080D2AB0
ldr   r0,=0x03007240                ; 080D2AB2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D2AB4
ldr   r1,=0x29CC                    ; 080D2AB6
add   r0,r0,r1                      ; 080D2AB8
mov   r1,r4                         ; 080D2ABA
add   r1,0x62                       ; 080D2ABC
ldrh  r2,[r0]                       ; 080D2ABE
ldrh  r0,[r1]                       ; 080D2AC0
and   r0,r2                         ; 080D2AC2
cmp   r0,0x0                        ; 080D2AC4
bne   @@Code080D2AEC                ; 080D2AC6
ldr   r1,=0x0202B353                ; 080D2AC8
mov   r0,0x9                        ; 080D2ACA
strb  r0,[r1]                       ; 080D2ACC
add   r1,0xD                        ; 080D2ACE
mov   r0,0x8                        ; 080D2AD0
strb  r0,[r1]                       ; 080D2AD2
b     @@Code080D2AFC                ; 080D2AD4
.pool                               ; 080D2AD6

@@Code080D2AEC:
mov   r0,0x0                        ; 080D2AEC
strh  r0,[r3,0x30]                  ; 080D2AEE
mov   r2,0xD3                       ; 080D2AF0
lsl   r2,r2,0x1                     ; 080D2AF2
add   r1,r3,r2                      ; 080D2AF4
strh  r0,[r1]                       ; 080D2AF6
bl    Sub080D2B04                   ; 080D2AF8
@@Code080D2AFC:
mov   r0,0x0                        ; 080D2AFC
@@Code080D2AFE:
pop   {r4}                          ; 080D2AFE
pop   {r1}                          ; 080D2B00
bx    r1                            ; 080D2B02

Sub080D2B04:
ldr   r1,=0x0202B353                ; 080D2B04
mov   r0,0x5                        ; 080D2B06
strb  r0,[r1]                       ; 080D2B08
ldr   r2,=0x0202B354                ; 080D2B0A
ldr   r0,=0x03007240                ; 080D2B0C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D2B0E
ldr   r1,=0x29CC                    ; 080D2B10
add   r0,r0,r1                      ; 080D2B12
ldrb  r1,[r0]                       ; 080D2B14
mov   r0,0x80                       ; 080D2B16
orr   r0,r1                         ; 080D2B18
strb  r0,[r2]                       ; 080D2B1A
bx    lr                            ; 080D2B1C
.pool                               ; 080D2B1E

Sub080D2B30:
push  {r4,lr}                       ; 080D2B30
mov   r3,r0                         ; 080D2B32
ldrh  r0,[r3,0x2C]                  ; 080D2B34
mov   r2,0xFF                       ; 080D2B36
lsl   r2,r2,0x8                     ; 080D2B38
and   r2,r0                         ; 080D2B3A
ldr   r0,=0x0202B355                ; 080D2B3C
ldrb  r0,[r0]                       ; 080D2B3E
lsr   r0,r0,0x1                     ; 080D2B40
mov   r1,0x2                        ; 080D2B42
and   r0,r1                         ; 080D2B44
mov   r1,0x2C                       ; 080D2B46
orr   r0,r1                         ; 080D2B48
orr   r0,r2                         ; 080D2B4A
strh  r0,[r3,0x2C]                  ; 080D2B4C
ldr   r4,=0x0202B354                ; 080D2B4E
ldrb  r2,[r4]                       ; 080D2B50
cmp   r2,0x0                        ; 080D2B52
beq   @@Code080D2BC0                ; 080D2B54
cmp   r2,0x1                        ; 080D2B56
bne   @@Code080D2B98                ; 080D2B58
mov   r1,r3                         ; 080D2B5A
add   r1,0x62                       ; 080D2B5C
ldrh  r0,[r1]                       ; 080D2B5E
lsr   r0,r0,0x1                     ; 080D2B60
strh  r0,[r1]                       ; 080D2B62
add   r1,0xE                        ; 080D2B64
ldrh  r0,[r1]                       ; 080D2B66
add   r0,0x1                        ; 080D2B68
strh  r0,[r1]                       ; 080D2B6A
ldr   r2,=Data0817C74C              ; 080D2B6C
ldrh  r0,[r1]                       ; 080D2B6E
add   r0,r0,r2                      ; 080D2B70
ldrb  r1,[r0]                       ; 080D2B72
mov   r0,r3                         ; 080D2B74
add   r0,0x40                       ; 080D2B76
strh  r1,[r0]                       ; 080D2B78
mov   r1,r3                         ; 080D2B7A
add   r1,0x6E                       ; 080D2B7C
mov   r0,0x0                        ; 080D2B7E
strh  r0,[r1]                       ; 080D2B80
bl    Sub080D1960                   ; 080D2B82
bl    Sub080D2990                   ; 080D2B86
b     @@Code080D2BD4                ; 080D2B8A
.pool                               ; 080D2B8C

@@Code080D2B98:
mov   r0,0x7                        ; 080D2B98
and   r2,r0                         ; 080D2B9A
ldr   r1,=0x0202B358                ; 080D2B9C
ldr   r0,=Data0817C754              ; 080D2B9E
add   r0,r2,r0                      ; 080D2BA0
ldrb  r0,[r0]                       ; 080D2BA2
strb  r0,[r1]                       ; 080D2BA4
add   r1,0x1                        ; 080D2BA6
ldr   r0,=Data0817C75C              ; 080D2BA8
add   r0,r2,r0                      ; 080D2BAA
ldrb  r0,[r0]                       ; 080D2BAC
strb  r0,[r1]                       ; 080D2BAE
b     @@Code080D2BD4                ; 080D2BB0
.pool                               ; 080D2BB2

@@Code080D2BC0:
bl    Sub080D2C44                   ; 080D2BC0
ldr   r0,=0x0202B350                ; 080D2BC4
ldrb  r0,[r0]                       ; 080D2BC6
cmp   r0,0x42                       ; 080D2BC8
bne   @@Code080D2BD4                ; 080D2BCA
mov   r0,0x30                       ; 080D2BCC
strb  r0,[r4]                       ; 080D2BCE
bl    Sub080D1960                   ; 080D2BD0
@@Code080D2BD4:
mov   r0,0x0                        ; 080D2BD4
pop   {r4}                          ; 080D2BD6
pop   {r1}                          ; 080D2BD8
bx    r1                            ; 080D2BDA
.pool                               ; 080D2BDC

Sub080D2BE0:
push  {r4,lr}                       ; 080D2BE0
mov   r4,r0                         ; 080D2BE2
bl    Sub080D3288                   ; 080D2BE4
lsl   r0,r0,0x18                    ; 080D2BE8
cmp   r0,0x0                        ; 080D2BEA
beq   @@Code080D2BF2                ; 080D2BEC
mov   r0,0x1                        ; 080D2BEE
b     @@Code080D2C32                ; 080D2BF0
@@Code080D2BF2:
bl    Sub080D2C44                   ; 080D2BF2
mov   r0,r4                         ; 080D2BF6
add   r0,0x42                       ; 080D2BF8
ldrb  r2,[r0]                       ; 080D2BFA
cmp   r2,0x0                        ; 080D2BFC
bne   @@Code080D2C18                ; 080D2BFE
ldr   r2,=0x0202B358                ; 080D2C00
ldr   r1,=0x0202B359                ; 080D2C02
mov   r0,0xFF                       ; 080D2C04
strb  r0,[r1]                       ; 080D2C06
strb  r0,[r2]                       ; 080D2C08
bl    Sub080D2990                   ; 080D2C0A
b     @@Code080D2C30                ; 080D2C0E
.pool                               ; 080D2C10

@@Code080D2C18:
mov   r0,0x7                        ; 080D2C18
and   r2,r0                         ; 080D2C1A
ldr   r1,=0x0202B358                ; 080D2C1C
ldr   r0,=Data0817C764              ; 080D2C1E
add   r0,r2,r0                      ; 080D2C20
ldrb  r0,[r0]                       ; 080D2C22
strb  r0,[r1]                       ; 080D2C24
add   r1,0x1                        ; 080D2C26
ldr   r0,=Data0817C76C              ; 080D2C28
add   r0,r2,r0                      ; 080D2C2A
ldrb  r0,[r0]                       ; 080D2C2C
strb  r0,[r1]                       ; 080D2C2E
@@Code080D2C30:
mov   r0,0x0                        ; 080D2C30
@@Code080D2C32:
pop   {r4}                          ; 080D2C32
pop   {r1}                          ; 080D2C34
bx    r1                            ; 080D2C36
.pool                               ; 080D2C38

Sub080D2C44:
push  {r4,lr}                       ; 080D2C44
ldr   r2,=0x0202B350                ; 080D2C46
ldr   r3,=0x0202B360                ; 080D2C48
ldrb  r0,[r3]                       ; 080D2C4A
ldrb  r4,[r2]                       ; 080D2C4C
add   r1,r0,r4                      ; 080D2C4E
strb  r1,[r2]                       ; 080D2C50
sub   r0,0x2                        ; 080D2C52
strb  r0,[r3]                       ; 080D2C54
lsl   r1,r1,0x18                    ; 080D2C56
lsr   r1,r1,0x18                    ; 080D2C58
cmp   r1,0x41                       ; 080D2C5A
bhi   @@Code080D2C66                ; 080D2C5C
mov   r0,0x42                       ; 080D2C5E
strb  r0,[r2]                       ; 080D2C60
mov   r0,0x0                        ; 080D2C62
strb  r0,[r3]                       ; 080D2C64
@@Code080D2C66:
pop   {r4}                          ; 080D2C66
pop   {r0}                          ; 080D2C68
bx    r0                            ; 080D2C6A
.pool                               ; 080D2C6C

Sub080D2C74:
push  {r4,lr}                       ; 080D2C74
mov   r4,r0                         ; 080D2C76
bl    Sub080D3288                   ; 080D2C78
lsl   r0,r0,0x18                    ; 080D2C7C
cmp   r0,0x0                        ; 080D2C7E
beq   @@Code080D2C86                ; 080D2C80
mov   r0,0x1                        ; 080D2C82
b     @@Code080D2CA8                ; 080D2C84
@@Code080D2C86:
bl    Sub080D2C44                   ; 080D2C86
ldr   r0,=0x0202B350                ; 080D2C8A
ldrb  r0,[r0]                       ; 080D2C8C
cmp   r0,0x42                       ; 080D2C8E
bne   @@Code080D2CA6                ; 080D2C90
mov   r0,r4                         ; 080D2C92
bl    Sub080D3348                   ; 080D2C94
ldr   r1,=0x0202B353                ; 080D2C98
ldrb  r0,[r1]                       ; 080D2C9A
add   r0,0x1                        ; 080D2C9C
strb  r0,[r1]                       ; 080D2C9E
add   r1,0x1                        ; 080D2CA0
mov   r0,0x40                       ; 080D2CA2
strb  r0,[r1]                       ; 080D2CA4
@@Code080D2CA6:
mov   r0,0x0                        ; 080D2CA6
@@Code080D2CA8:
pop   {r4}                          ; 080D2CA8
pop   {r1}                          ; 080D2CAA
bx    r1                            ; 080D2CAC
.pool                               ; 080D2CAE

Sub080D2CB8:
push  {lr}                          ; 080D2CB8
bl    Sub080D3288                   ; 080D2CBA
lsl   r0,r0,0x18                    ; 080D2CBE
cmp   r0,0x0                        ; 080D2CC0
beq   @@Code080D2CC8                ; 080D2CC2
mov   r0,0x1                        ; 080D2CC4
b     @@Code080D2CD6                ; 080D2CC6
@@Code080D2CC8:
ldr   r0,=0x0202B354                ; 080D2CC8
ldrb  r0,[r0]                       ; 080D2CCA
cmp   r0,0x0                        ; 080D2CCC
bne   @@Code080D2CD4                ; 080D2CCE
bl    Sub080D2B04                   ; 080D2CD0
@@Code080D2CD4:
mov   r0,0x0                        ; 080D2CD4
@@Code080D2CD6:
pop   {r1}                          ; 080D2CD6
bx    r1                            ; 080D2CD8
.pool                               ; 080D2CDA

Sub080D2CE0:
push  {r4,lr}                       ; 080D2CE0
mov   r4,r0                         ; 080D2CE2
bl    Sub080D2778                   ; 080D2CE4
ldr   r3,=0x0202B354                ; 080D2CE8
ldrb  r2,[r3]                       ; 080D2CEA
cmp   r2,0x0                        ; 080D2CEC
bne   @@Code080D2D18                ; 080D2CEE
ldr   r0,=0x03006D80                ; 080D2CF0
mov   r1,0xD3                       ; 080D2CF2
lsl   r1,r1,0x1                     ; 080D2CF4
add   r0,r0,r1                      ; 080D2CF6
strh  r2,[r0]                       ; 080D2CF8
ldr   r1,=0x0202B353                ; 080D2CFA
ldrb  r0,[r1]                       ; 080D2CFC
add   r0,0x1                        ; 080D2CFE
strb  r0,[r1]                       ; 080D2D00
mov   r0,r4                         ; 080D2D02
add   r0,0x6E                       ; 080D2D04
strh  r2,[r0]                       ; 080D2D06
mov   r1,r4                         ; 080D2D08
add   r1,0x40                       ; 080D2D0A
mov   r0,0x1                        ; 080D2D0C
strh  r0,[r1]                       ; 080D2D0E
ldr   r1,=0x0202B35A                ; 080D2D10
mov   r0,0x20                       ; 080D2D12
strb  r0,[r1]                       ; 080D2D14
strb  r0,[r3]                       ; 080D2D16
@@Code080D2D18:
ldrh  r0,[r4,0x2C]                  ; 080D2D18
mov   r2,0xFF                       ; 080D2D1A
lsl   r2,r2,0x8                     ; 080D2D1C
and   r2,r0                         ; 080D2D1E
ldr   r0,=0x0202B355                ; 080D2D20
ldrb  r0,[r0]                       ; 080D2D22
lsr   r0,r0,0x1                     ; 080D2D24
mov   r1,0x2                        ; 080D2D26
and   r0,r1                         ; 080D2D28
mov   r1,0x2C                       ; 080D2D2A
orr   r0,r1                         ; 080D2D2C
orr   r0,r2                         ; 080D2D2E
strh  r0,[r4,0x2C]                  ; 080D2D30
ldrb  r2,[r3]                       ; 080D2D32
mov   r1,0xF                        ; 080D2D34
and   r1,r2                         ; 080D2D36
ldr   r3,=0x0202B358                ; 080D2D38
ldr   r0,=Data0817C774              ; 080D2D3A
add   r0,r1,r0                      ; 080D2D3C
ldrb  r0,[r0]                       ; 080D2D3E
strb  r0,[r3]                       ; 080D2D40
add   r3,0x1                        ; 080D2D42
ldr   r0,=Data0817C784              ; 080D2D44
add   r1,r1,r0                      ; 080D2D46
ldrb  r0,[r1]                       ; 080D2D48
strb  r0,[r3]                       ; 080D2D4A
lsl   r2,r2,0x18                    ; 080D2D4C
lsr   r2,r2,0x18                    ; 080D2D4E
cmp   r2,0x9C                       ; 080D2D50
bne   @@Code080D2D7A                ; 080D2D52
ldr   r0,=0x03007240                ; 080D2D54  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080D2D56
ldr   r0,[r4]                       ; 080D2D58
asr   r0,r0,0x8                     ; 080D2D5A
ldr   r3,=0x2A12                    ; 080D2D5C
add   r1,r2,r3                      ; 080D2D5E
strh  r0,[r1]                       ; 080D2D60
ldr   r0,[r4,0x4]                   ; 080D2D62
asr   r0,r0,0x8                     ; 080D2D64
ldr   r1,=0x2A16                    ; 080D2D66
add   r2,r2,r1                      ; 080D2D68
strh  r0,[r2]                       ; 080D2D6A
mov   r0,r4                         ; 080D2D6C
bl    Sub080BD8E4                   ; 080D2D6E
mov   r0,0x1                        ; 080D2D72
neg   r0,r0                         ; 080D2D74
bl    Sub080C9678                   ; 080D2D76
@@Code080D2D7A:
mov   r0,0x0                        ; 080D2D7A
pop   {r4}                          ; 080D2D7C
pop   {r1}                          ; 080D2D7E
bx    r1                            ; 080D2D80
.pool                               ; 080D2D82

Sub080D2DB0:
push  {r4-r5,lr}                    ; 080D2DB0
mov   r5,r0                         ; 080D2DB2
bl    Sub080D2778                   ; 080D2DB4
ldr   r0,=0x0202B354                ; 080D2DB8
ldrb  r0,[r0]                       ; 080D2DBA
cmp   r0,0x0                        ; 080D2DBC
beq   @@Code080D2DF4                ; 080D2DBE
cmp   r0,0x1                        ; 080D2DC0
bne   @@Code080D2E30                ; 080D2DC2
ldr   r0,=0x03002200                ; 080D2DC4
ldrh  r1,[r5,0x20]                  ; 080D2DC6
ldr   r2,=0x4058                    ; 080D2DC8
add   r4,r0,r2                      ; 080D2DCA
strh  r1,[r4]                       ; 080D2DCC
ldrh  r1,[r5,0x22]                  ; 080D2DCE
add   r2,0x2                        ; 080D2DD0
add   r0,r0,r2                      ; 080D2DD2
strh  r1,[r0]                       ; 080D2DD4
mov   r0,0xC0                       ; 080D2DD6
mov   r1,r4                         ; 080D2DD8
bl    PlayYISound                   ; 080D2DDA
mov   r0,0x11                       ; 080D2DDE
mov   r1,r4                         ; 080D2DE0
bl    PlayYISound                   ; 080D2DE2
b     @@Code080D2E30                ; 080D2DE6
.pool                               ; 080D2DE8

@@Code080D2DF4:
ldr   r1,=0x0202B358                ; 080D2DF4
ldrb  r0,[r1]                       ; 080D2DF6
cmp   r0,0xFD                       ; 080D2DF8
bhi   @@Code080D2E00                ; 080D2DFA
add   r0,0x2                        ; 080D2DFC
strb  r0,[r1]                       ; 080D2DFE
@@Code080D2E00:
bl    Sub080D2718                   ; 080D2E00
ldr   r0,=0x0202B351                ; 080D2E04
ldrb  r1,[r0]                       ; 080D2E06
mov   r0,0xFC                       ; 080D2E08
and   r0,r1                         ; 080D2E0A
cmp   r0,0xD8                       ; 080D2E0C
bne   @@Code080D2E22                ; 080D2E0E
ldr   r1,=0x0202B353                ; 080D2E10
ldrb  r0,[r1]                       ; 080D2E12
add   r0,0x1                        ; 080D2E14
strb  r0,[r1]                       ; 080D2E16
ldr   r0,=0x0202B355                ; 080D2E18
mov   r1,0x30                       ; 080D2E1A
strb  r1,[r0]                       ; 080D2E1C
add   r0,0x5                        ; 080D2E1E
strb  r1,[r0]                       ; 080D2E20
@@Code080D2E22:
mov   r1,r5                         ; 080D2E22
add   r1,0x7C                       ; 080D2E24
ldrh  r0,[r1]                       ; 080D2E26
add   r0,0x1                        ; 080D2E28
strh  r0,[r1]                       ; 080D2E2A
bl    Sub080D2E48                   ; 080D2E2C
@@Code080D2E30:
mov   r0,0x0                        ; 080D2E30
pop   {r4-r5}                       ; 080D2E32
pop   {r1}                          ; 080D2E34
bx    r1                            ; 080D2E36
.pool                               ; 080D2E38

Sub080D2E48:
push  {lr}                          ; 080D2E48
bl    Sub080D34B4                   ; 080D2E4A
ldr   r0,=0x03002200                ; 080D2E4E
ldr   r1,=0x4901                    ; 080D2E50
add   r0,r0,r1                      ; 080D2E52
ldrb  r1,[r0]                       ; 080D2E54
mov   r0,0x1                        ; 080D2E56
and   r0,r1                         ; 080D2E58
cmp   r0,0x0                        ; 080D2E5A
bne   @@Code080D2E6A                ; 080D2E5C
ldr   r1,=0x0202B350                ; 080D2E5E
ldrb  r0,[r1]                       ; 080D2E60
cmp   r0,0x6B                       ; 080D2E62
beq   @@Code080D2E6A                ; 080D2E64
add   r0,0x1                        ; 080D2E66
strb  r0,[r1]                       ; 080D2E68
@@Code080D2E6A:
pop   {r0}                          ; 080D2E6A
bx    r0                            ; 080D2E6C
.pool                               ; 080D2E6E

Sub080D2E7C:
push  {r4,lr}                       ; 080D2E7C
mov   r4,r0                         ; 080D2E7E
bl    Sub080D2778                   ; 080D2E80
mov   r0,r4                         ; 080D2E84
add   r0,0x7C                       ; 080D2E86
ldrh  r1,[r0]                       ; 080D2E88
add   r1,0x2                        ; 080D2E8A
strh  r1,[r0]                       ; 080D2E8C
bl    Sub080D2E48                   ; 080D2E8E
ldr   r3,=0x0202B358                ; 080D2E92
ldrb  r2,[r3]                       ; 080D2E94
lsl   r1,r2,0x18                    ; 080D2E96
lsr   r0,r1,0x18                    ; 080D2E98
cmp   r0,0x3F                       ; 080D2E9A
bls   @@Code080D2EBE                ; 080D2E9C
cmp   r1,0x0                        ; 080D2E9E
bge   @@Code080D2EB2                ; 080D2EA0
ldr   r0,=0x0202B35A                ; 080D2EA2
ldrb  r0,[r0]                       ; 080D2EA4
cmp   r0,0x3                        ; 080D2EA6
bls   @@Code080D2EB2                ; 080D2EA8
ldr   r1,=0x0202B359                ; 080D2EAA
sub   r0,r2,0x1                     ; 080D2EAC
strb  r0,[r1]                       ; 080D2EAE
strb  r0,[r3]                       ; 080D2EB0
@@Code080D2EB2:
ldr   r2,=0x0202B358                ; 080D2EB2
ldr   r1,=0x0202B359                ; 080D2EB4
ldrb  r0,[r2]                       ; 080D2EB6
sub   r0,0x1                        ; 080D2EB8
strb  r0,[r1]                       ; 080D2EBA
strb  r0,[r2]                       ; 080D2EBC
@@Code080D2EBE:
ldr   r0,=0x03002200                ; 080D2EBE
ldr   r1,=0x4901                    ; 080D2EC0
add   r0,r0,r1                      ; 080D2EC2
ldrb  r1,[r0]                       ; 080D2EC4
mov   r0,0x1                        ; 080D2EC6
and   r0,r1                         ; 080D2EC8
cmp   r0,0x0                        ; 080D2ECA
bne   @@Code080D2EDC                ; 080D2ECC
mov   r1,r4                         ; 080D2ECE
add   r1,0x6E                       ; 080D2ED0
ldrh  r0,[r1]                       ; 080D2ED2
cmp   r0,0xA0                       ; 080D2ED4
beq   @@Code080D2EDC                ; 080D2ED6
add   r0,0x1                        ; 080D2ED8
strh  r0,[r1]                       ; 080D2EDA
@@Code080D2EDC:
bl    Sub080D2718                   ; 080D2EDC
ldr   r0,=0x03002200                ; 080D2EE0
ldr   r1,=0x4901                    ; 080D2EE2
add   r0,r0,r1                      ; 080D2EE4
ldrb  r1,[r0]                       ; 080D2EE6
mov   r0,0x3                        ; 080D2EE8
and   r0,r1                         ; 080D2EEA
cmp   r0,0x0                        ; 080D2EEC
bne   @@Code080D2EFC                ; 080D2EEE
ldr   r1,=0x0202B35A                ; 080D2EF0
ldrb  r0,[r1]                       ; 080D2EF2
cmp   r0,0x3                        ; 080D2EF4
bls   @@Code080D2EFC                ; 080D2EF6
sub   r0,0x1                        ; 080D2EF8
strb  r0,[r1]                       ; 080D2EFA
@@Code080D2EFC:
ldr   r4,=0x0202B355                ; 080D2EFC
ldrb  r0,[r4]                       ; 080D2EFE
cmp   r0,0x0                        ; 080D2F00
bne   @@Code080D2F46                ; 080D2F02
ldr   r2,=0x0202B351                ; 080D2F04
ldrb  r1,[r2]                       ; 080D2F06
mov   r0,0xFE                       ; 080D2F08
and   r0,r1                         ; 080D2F0A
cmp   r0,0x18                       ; 080D2F0C
bne   @@Code080D2F46                ; 080D2F0E
mov   r0,0x17                       ; 080D2F10
strb  r0,[r2]                       ; 080D2F12
ldr   r1,=0x03006D80                ; 080D2F14
mov   r0,0xD3                       ; 080D2F16
lsl   r0,r0,0x1                     ; 080D2F18
add   r3,r1,r0                      ; 080D2F1A
mov   r2,0x0                        ; 080D2F1C
mov   r0,0x1                        ; 080D2F1E
strh  r0,[r3]                       ; 080D2F20
mov   r0,0x17                       ; 080D2F22
strh  r0,[r1,0x3C]                  ; 080D2F24
ldr   r1,=0x0202B353                ; 080D2F26
ldrb  r0,[r1]                       ; 080D2F28
add   r0,0x1                        ; 080D2F2A
strb  r0,[r1]                       ; 080D2F2C
ldr   r0,=0x0202B354                ; 080D2F2E
strb  r2,[r0]                       ; 080D2F30
ldr   r0,=0x03002200                ; 080D2F32
ldr   r1,=0x4888                    ; 080D2F34
add   r0,r0,r1                      ; 080D2F36
mov   r1,0x88                       ; 080D2F38
lsl   r1,r1,0x3                     ; 080D2F3A
strh  r1,[r0]                       ; 080D2F3C
ldr   r1,=0x0202B369                ; 080D2F3E
mov   r0,0x10                       ; 080D2F40
strb  r0,[r1]                       ; 080D2F42
strb  r0,[r4]                       ; 080D2F44
@@Code080D2F46:
mov   r0,0x0                        ; 080D2F46
pop   {r4}                          ; 080D2F48
pop   {r1}                          ; 080D2F4A
bx    r1                            ; 080D2F4C
.pool                               ; 080D2F4E

Sub080D2F80:
push  {r4-r5,lr}                    ; 080D2F80
mov   r4,r0                         ; 080D2F82
bl    Sub080D2778                   ; 080D2F84
mov   r0,r4                         ; 080D2F88
mov   r1,0x1                        ; 080D2F8A
bl    Sub080D32E0                   ; 080D2F8C
ldr   r3,=0x0202B369                ; 080D2F90
ldrb  r1,[r3]                       ; 080D2F92
cmp   r1,0x0                        ; 080D2F94
beq   @@Code080D2FA8                ; 080D2F96
ldr   r2,=0x0202B355                ; 080D2F98
ldrb  r0,[r2]                       ; 080D2F9A
cmp   r0,0x0                        ; 080D2F9C
bne   @@Code080D2FA8                ; 080D2F9E
mov   r0,0x8                        ; 080D2FA0
strb  r0,[r2]                       ; 080D2FA2
sub   r0,r1,0x1                     ; 080D2FA4
strb  r0,[r3]                       ; 080D2FA6
@@Code080D2FA8:
ldr   r5,=0x0202B354                ; 080D2FA8
ldrb  r0,[r5]                       ; 080D2FAA
cmp   r0,0x0                        ; 080D2FAC
beq   @@Code080D3048                ; 080D2FAE
cmp   r0,0x1                        ; 080D2FB0
bne   @@Code080D2FEC                ; 080D2FB2
mov   r1,r4                         ; 080D2FB4
add   r1,0x40                       ; 080D2FB6
mov   r3,0x0                        ; 080D2FB8
mov   r0,0x2                        ; 080D2FBA
strh  r0,[r1]                       ; 080D2FBC
ldr   r2,=0x0202B358                ; 080D2FBE
ldr   r1,=0x0202B359                ; 080D2FC0
mov   r0,0xA0                       ; 080D2FC2
strb  r0,[r1]                       ; 080D2FC4
strb  r0,[r2]                       ; 080D2FC6
sub   r1,0x6                        ; 080D2FC8
ldrb  r0,[r1]                       ; 080D2FCA
add   r0,0x1                        ; 080D2FCC
strb  r0,[r1]                       ; 080D2FCE
mov   r0,0x50                       ; 080D2FD0
strb  r0,[r5]                       ; 080D2FD2
strh  r3,[r4,0x2C]                  ; 080D2FD4
b     @@Code080D3074                ; 080D2FD6
.pool                               ; 080D2FD8

@@Code080D2FEC:
cmp   r0,0x8                        ; 080D2FEC
bne   @@Code080D3074                ; 080D2FEE
ldr   r0,=0x0229                    ; 080D2FF0
bl    SpawnSecondarySprite          ; 080D2FF2
ldr   r2,=0x03007240                ; 080D2FF6  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080D2FF8
lsr   r0,r0,0x18                    ; 080D2FFA
mov   r1,0xB0                       ; 080D2FFC
mul   r0,r1                         ; 080D2FFE
ldr   r1,=0x1AF4                    ; 080D3000
add   r0,r0,r1                      ; 080D3002
ldr   r1,[r2]                       ; 080D3004
add   r1,r1,r0                      ; 080D3006
mov   r0,0x5                        ; 080D3008
strh  r0,[r1,0x38]                  ; 080D300A
mov   r2,r1                         ; 080D300C
add   r2,0x42                       ; 080D300E
mov   r0,0x4                        ; 080D3010
strh  r0,[r2]                       ; 080D3012
ldr   r0,=0x00010700                ; 080D3014
str   r0,[r1]                       ; 080D3016
mov   r0,0xBE                       ; 080D3018
lsl   r0,r0,0x8                     ; 080D301A
str   r0,[r1,0x4]                   ; 080D301C
ldr   r1,=0x03002200                ; 080D301E
ldrh  r0,[r4,0x20]                  ; 080D3020
ldr   r2,=0x4058                    ; 080D3022
add   r1,r1,r2                      ; 080D3024
strh  r0,[r1]                       ; 080D3026
mov   r0,0x6C                       ; 080D3028
bl    PlayYISound                   ; 080D302A
b     @@Code080D3074                ; 080D302E
.pool                               ; 080D3030

@@Code080D3048:
mov   r2,r4                         ; 080D3048
add   r2,0x6E                       ; 080D304A
ldrh  r1,[r2]                       ; 080D304C
ldr   r0,=0xFFFF                    ; 080D304E
cmp   r1,r0                         ; 080D3050
beq   @@Code080D3068                ; 080D3052
add   r0,r1,0x1                     ; 080D3054
strh  r0,[r2]                       ; 080D3056
mov   r1,r4                         ; 080D3058
add   r1,0x7C                       ; 080D305A
ldrh  r0,[r1]                       ; 080D305C
add   r0,0x1                        ; 080D305E
b     @@Code080D3072                ; 080D3060
.pool                               ; 080D3062

@@Code080D3068:
mov   r0,0x30                       ; 080D3068
strb  r0,[r5]                       ; 080D306A
mov   r1,r4                         ; 080D306C
add   r1,0x7C                       ; 080D306E
mov   r0,0x80                       ; 080D3070
@@Code080D3072:
strh  r0,[r1]                       ; 080D3072
@@Code080D3074:
mov   r0,0x0                        ; 080D3074
pop   {r4-r5}                       ; 080D3076
pop   {r1}                          ; 080D3078
bx    r1                            ; 080D307A

Sub080D307C:
push  {r4,lr}                       ; 080D307C
mov   r4,r0                         ; 080D307E
ldr   r0,=0x03002200                ; 080D3080
ldr   r1,=0x4888                    ; 080D3082
add   r0,r0,r1                      ; 080D3084
mov   r1,0x0                        ; 080D3086
strh  r1,[r0]                       ; 080D3088
mov   r0,r4                         ; 080D308A
bl    Sub080D2778                   ; 080D308C
mov   r0,r4                         ; 080D3090
mov   r1,0x1                        ; 080D3092
bl    Sub080D32E0                   ; 080D3094
ldr   r0,=0x0202B354                ; 080D3098
ldrb  r2,[r0]                       ; 080D309A
cmp   r2,0x0                        ; 080D309C
bne   @@Code080D30BA                ; 080D309E
mov   r1,r4                         ; 080D30A0
add   r1,0x40                       ; 080D30A2
mov   r0,0x5                        ; 080D30A4
strh  r0,[r1]                       ; 080D30A6
mov   r0,r4                         ; 080D30A8
add   r0,0x70                       ; 080D30AA
strh  r2,[r0]                       ; 080D30AC
sub   r0,0x2                        ; 080D30AE
strh  r2,[r0]                       ; 080D30B0
ldr   r1,=0x0202B353                ; 080D30B2
ldrb  r0,[r1]                       ; 080D30B4
add   r0,0x1                        ; 080D30B6
strb  r0,[r1]                       ; 080D30B8
@@Code080D30BA:
mov   r0,0x0                        ; 080D30BA
pop   {r4}                          ; 080D30BC
pop   {r1}                          ; 080D30BE
bx    r1                            ; 080D30C0
.pool                               ; 080D30C2

Sub080D30D4:
push  {r4,lr}                       ; 080D30D4
mov   r4,r0                         ; 080D30D6
bl    Sub080D2778                   ; 080D30D8
mov   r0,r4                         ; 080D30DC
bl    Sub080D314C                   ; 080D30DE
mov   r3,r4                         ; 080D30E2
add   r3,0x6E                       ; 080D30E4
ldrh  r0,[r3]                       ; 080D30E6
add   r0,0x8                        ; 080D30E8
strh  r0,[r3]                       ; 080D30EA
lsl   r0,r0,0x18                    ; 080D30EC
lsr   r2,r0,0x18                    ; 080D30EE
cmp   r2,0x0                        ; 080D30F0
bne   @@Code080D3104                ; 080D30F2
ldr   r0,=0x0202B353                ; 080D30F4
ldrb  r1,[r0]                       ; 080D30F6
add   r1,0x1                        ; 080D30F8
strb  r1,[r0]                       ; 080D30FA
mov   r0,r4                         ; 080D30FC
add   r0,0x70                       ; 080D30FE
strh  r2,[r0]                       ; 080D3100
strh  r2,[r3]                       ; 080D3102
@@Code080D3104:
mov   r0,0x0                        ; 080D3104
pop   {r4}                          ; 080D3106
pop   {r1}                          ; 080D3108
bx    r1                            ; 080D310A
.pool                               ; 080D310C

Sub080D3110:
push  {r4,lr}                       ; 080D3110
mov   r4,r0                         ; 080D3112
bl    Sub080D2778                   ; 080D3114
mov   r0,r4                         ; 080D3118
bl    Sub080D31A4                   ; 080D311A
mov   r1,r4                         ; 080D311E
add   r1,0x6E                       ; 080D3120
ldrh  r2,[r1]                       ; 080D3122
ldrb  r0,[r1]                       ; 080D3124
cmp   r0,0xFE                       ; 080D3126
beq   @@Code080D312E                ; 080D3128
add   r0,r2,0x2                     ; 080D312A
b     @@Code080D313C                ; 080D312C
@@Code080D312E:
ldr   r1,=0x0202B353                ; 080D312E
ldrb  r0,[r1]                       ; 080D3130
add   r0,0x1                        ; 080D3132
strb  r0,[r1]                       ; 080D3134
mov   r1,r4                         ; 080D3136
add   r1,0x42                       ; 080D3138
mov   r0,0x2                        ; 080D313A
@@Code080D313C:
strh  r0,[r1]                       ; 080D313C
mov   r0,0x0                        ; 080D313E
pop   {r4}                          ; 080D3140
pop   {r1}                          ; 080D3142
bx    r1                            ; 080D3144
.pool                               ; 080D3146

Sub080D314C:
push  {lr}                          ; 080D314C
ldr   r3,=0x5923                    ; 080D314E
ldr   r1,=0x5FFF                    ; 080D3150
add   r0,0x6E                       ; 080D3152
ldrh  r2,[r0]                       ; 080D3154
add   r2,0x1                        ; 080D3156
mov   r0,r3                         ; 080D3158
bl    Sub0810BDC8                   ; 080D315A
ldr   r2,=0x0201087E                ; 080D315E
ldr   r1,=0x0201047E                ; 080D3160
strh  r0,[r1]                       ; 080D3162
strh  r0,[r2]                       ; 080D3164
ldr   r1,=0x03002200                ; 080D3166
ldr   r0,=0x487A                    ; 080D3168
add   r2,r1,r0                      ; 080D316A
mov   r0,0x3F                       ; 080D316C
strh  r0,[r2]                       ; 080D316E
ldr   r0,=0x487C                    ; 080D3170
add   r2,r1,r0                      ; 080D3172
mov   r0,0x7E                       ; 080D3174
strh  r0,[r2]                       ; 080D3176
ldr   r0,=0x487E                    ; 080D3178
add   r1,r1,r0                      ; 080D317A
mov   r0,0x2                        ; 080D317C
strh  r0,[r1]                       ; 080D317E
pop   {r0}                          ; 080D3180
bx    r0                            ; 080D3182
.pool                               ; 080D3184

Sub080D31A4:
push  {lr}                          ; 080D31A4
ldr   r3,=0x5923                    ; 080D31A6
ldr   r1,=0x7E60                    ; 080D31A8
add   r0,0x6E                       ; 080D31AA
ldrh  r2,[r0]                       ; 080D31AC
add   r2,0x1                        ; 080D31AE
mov   r0,r3                         ; 080D31B0
bl    Sub0810BDC8                   ; 080D31B2
ldr   r2,=0x0201087C                ; 080D31B6
ldr   r1,=0x0201047C                ; 080D31B8
strh  r0,[r1]                       ; 080D31BA
strh  r0,[r2]                       ; 080D31BC
ldr   r1,=0x03002200                ; 080D31BE
ldr   r0,=0x487A                    ; 080D31C0
add   r2,r1,r0                      ; 080D31C2
mov   r0,0x3E                       ; 080D31C4
strh  r0,[r2]                       ; 080D31C6
ldr   r0,=0x487C                    ; 080D31C8
add   r2,r1,r0                      ; 080D31CA
mov   r0,0x7C                       ; 080D31CC
strh  r0,[r2]                       ; 080D31CE
ldr   r0,=0x487E                    ; 080D31D0
add   r1,r1,r0                      ; 080D31D2
mov   r0,0x2                        ; 080D31D4
strh  r0,[r1]                       ; 080D31D6
pop   {r0}                          ; 080D31D8
bx    r0                            ; 080D31DA
.pool                               ; 080D31DC

Sub080D31FC:
push  {r4-r5,lr}                    ; 080D31FC
mov   r4,r0                         ; 080D31FE
add   r0,0x42                       ; 080D3200
ldrh  r5,[r0]                       ; 080D3202
cmp   r5,0x0                        ; 080D3204
bne   @@Code080D3216                ; 080D3206
mov   r0,0x19                       ; 080D3208  19: x-8 victory
bl    PlayYIMusic                   ; 080D320A
strh  r5,[r4,0x3C]                  ; 080D320E
mov   r0,r4                         ; 080D3210
bl    Sub080BB428                   ; 080D3212
@@Code080D3216:
mov   r0,0x0                        ; 080D3216
pop   {r4-r5}                       ; 080D3218
pop   {r1}                          ; 080D321A
bx    r1                            ; 080D321C
.pool                               ; 080D321E

Sub080D3220:
push  {r4,lr}                       ; 080D3220
add   sp,-0x4                       ; 080D3222
ldr   r4,=0x02010AC2                ; 080D3224
ldr   r2,=DataPtrs0817C794          ; 080D3226
mov   r1,r0                         ; 080D3228
add   r1,0x40                       ; 080D322A
ldrh  r1,[r1]                       ; 080D322C
lsl   r1,r1,0x2                     ; 080D322E
add   r1,r1,r2                      ; 080D3230
ldr   r1,[r1]                       ; 080D3232
ldr   r2,=0x020106C2                ; 080D3234
add   r0,0x6E                       ; 080D3236
ldrb  r3,[r0]                       ; 080D3238
add   r3,0x1                        ; 080D323A
mov   r0,0xF                        ; 080D323C
str   r0,[sp]                       ; 080D323E
mov   r0,r4                         ; 080D3240
bl    Sub0810BE1C                   ; 080D3242
ldr   r1,=0x03002200                ; 080D3246
mov   r0,0x91                       ; 080D3248
lsl   r0,r0,0x7                     ; 080D324A
add   r2,r1,r0                      ; 080D324C
ldr   r0,=0x0161                    ; 080D324E
strh  r0,[r2]                       ; 080D3250
ldr   r0,=0x4882                    ; 080D3252
add   r2,r1,r0                      ; 080D3254
mov   r0,0xC2                       ; 080D3256
strh  r0,[r2]                       ; 080D3258
ldr   r0,=0x4884                    ; 080D325A
add   r1,r1,r0                      ; 080D325C
mov   r0,0x20                       ; 080D325E
strh  r0,[r1]                       ; 080D3260
add   sp,0x4                        ; 080D3262
pop   {r4}                          ; 080D3264
pop   {r0}                          ; 080D3266
bx    r0                            ; 080D3268
.pool                               ; 080D326A

Sub080D3288:
push  {r4,lr}                       ; 080D3288
mov   r4,r0                         ; 080D328A
bl    Sub080DF2CC                   ; 080D328C
ldrh  r0,[r4,0x24]                  ; 080D3290
cmp   r0,0x7                        ; 080D3292
bne   @@Code080D32D8                ; 080D3294
mov   r0,0x8                        ; 080D3296
strh  r0,[r4,0x24]                  ; 080D3298
ldr   r1,=0x0202B353                ; 080D329A
mov   r0,0xC                        ; 080D329C
strb  r0,[r1]                       ; 080D329E
ldr   r1,=0x03002200                ; 080D32A0
ldrh  r0,[r4,0x20]                  ; 080D32A2
ldr   r2,=0x4058                    ; 080D32A4
add   r1,r1,r2                      ; 080D32A6
strh  r0,[r1]                       ; 080D32A8
mov   r0,0x89                       ; 080D32AA
bl    PlayYISound                   ; 080D32AC
mov   r1,r4                         ; 080D32B0
add   r1,0x42                       ; 080D32B2
mov   r0,0x20                       ; 080D32B4
strh  r0,[r1]                       ; 080D32B6
ldr   r1,=0x03006D80                ; 080D32B8
ldr   r0,=0xFFFFFC00                ; 080D32BA
str   r0,[r1,0xC]                   ; 080D32BC
mov   r0,0x1                        ; 080D32BE
b     @@Code080D32DA                ; 080D32C0
.pool                               ; 080D32C2

@@Code080D32D8:
mov   r0,0x0                        ; 080D32D8
@@Code080D32DA:
pop   {r4}                          ; 080D32DA
pop   {r1}                          ; 080D32DC
bx    r1                            ; 080D32DE

Sub080D32E0:
push  {r4,lr}                       ; 080D32E0
mov   r4,r0                         ; 080D32E2
lsl   r1,r1,0x18                    ; 080D32E4
lsr   r1,r1,0x18                    ; 080D32E6
mov   r2,r4                         ; 080D32E8
add   r2,0x6E                       ; 080D32EA
ldrh  r0,[r2]                       ; 080D32EC
ldr   r3,=0xFFFF                    ; 080D32EE
cmp   r0,r3                         ; 080D32F0
beq   @@Code080D3300                ; 080D32F2
add   r0,r0,r1                      ; 080D32F4
strh  r0,[r2]                       ; 080D32F6
lsl   r0,r0,0x10                    ; 080D32F8
lsr   r0,r0,0x10                    ; 080D32FA
cmp   r0,0xFF                       ; 080D32FC
bls   @@Code080D332C                ; 080D32FE
@@Code080D3300:
ldrh  r1,[r2]                       ; 080D3300
mov   r0,r3                         ; 080D3302
orr   r0,r1                         ; 080D3304
strh  r0,[r2]                       ; 080D3306
ldr   r0,=0x03007240                ; 080D3308  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D330A
ldr   r1,=0x26A9                    ; 080D330C
add   r0,r0,r1                      ; 080D330E
ldrb  r0,[r0]                       ; 080D3310
cmp   r0,0x0                        ; 080D3312
bne   @@Code080D332C                ; 080D3314
ldr   r1,=DataPtrs0817C794          ; 080D3316
mov   r0,r4                         ; 080D3318
add   r0,0x40                       ; 080D331A
ldrh  r0,[r0]                       ; 080D331C
lsl   r0,r0,0x2                     ; 080D331E
add   r0,r0,r1                      ; 080D3320
ldr   r0,[r0]                       ; 080D3322
ldr   r1,=0x02010AC2                ; 080D3324
mov   r2,0xF                        ; 080D3326
bl    swi_MemoryCopy4or2            ; 080D3328  Memory copy/fill, 4- or 2-byte blocks
@@Code080D332C:
pop   {r4}                          ; 080D332C
pop   {r0}                          ; 080D332E
bx    r0                            ; 080D3330
.pool                               ; 080D3332

Sub080D3348:
push  {r4-r6,lr}                    ; 080D3348
ldr   r4,=0x0202B356                ; 080D334A
ldrb  r6,[r4]                       ; 080D334C
ldr   r1,=0x03002200                ; 080D334E
ldrh  r0,[r0,0x20]                  ; 080D3350
ldr   r2,=0x4058                    ; 080D3352
add   r1,r1,r2                      ; 080D3354
mov   r5,0x0                        ; 080D3356
strh  r0,[r1]                       ; 080D3358
mov   r0,0x4F                       ; 080D335A
bl    PlayYISound                   ; 080D335C
ldr   r0,=0x03006D80                ; 080D3360
mov   r1,0xE0                       ; 080D3362
lsl   r1,r1,0x1                     ; 080D3364
add   r0,r0,r1                      ; 080D3366
mov   r1,0x18                       ; 080D3368
strh  r1,[r0]                       ; 080D336A
strb  r5,[r4]                       ; 080D336C
bl    Sub080D3394                   ; 080D336E
mov   r0,0x2                        ; 080D3372
strb  r0,[r4]                       ; 080D3374
bl    Sub080D3394                   ; 080D3376
strb  r6,[r4]                       ; 080D337A
pop   {r4-r6}                       ; 080D337C
pop   {r0}                          ; 080D337E
bx    r0                            ; 080D3380
.pool                               ; 080D3382

Sub080D3394:
push  {r4,lr}                       ; 080D3394
mov   r0,0x5A                       ; 080D3396
bl    Sub0804A3A4                   ; 080D3398
lsl   r0,r0,0x18                    ; 080D339C
asr   r2,r0,0x18                    ; 080D339E
cmp   r2,0x0                        ; 080D33A0
blt   @@Code080D33D8                ; 080D33A2
ldr   r1,=0x03007240                ; 080D33A4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D33A6
mul   r0,r2                         ; 080D33A8
mov   r2,0x95                       ; 080D33AA
lsl   r2,r2,0x2                     ; 080D33AC
add   r0,r0,r2                      ; 080D33AE
ldr   r1,[r1]                       ; 080D33B0
add   r1,r1,r0                      ; 080D33B2
mov   r12,r1                        ; 080D33B4
ldr   r0,=0x0202B351                ; 080D33B6
ldrb  r0,[r0]                       ; 080D33B8
mov   r2,r12                        ; 080D33BA
add   r2,0x6A                       ; 080D33BC
mov   r1,0x0                        ; 080D33BE
strh  r0,[r2]                       ; 080D33C0
ldr   r0,=0x0202B356                ; 080D33C2
ldrb  r0,[r0]                       ; 080D33C4
mov   r2,r12                        ; 080D33C6
strh  r0,[r2,0x36]                  ; 080D33C8
mov   r0,r12                        ; 080D33CA
add   r0,0x72                       ; 080D33CC
strh  r1,[r0]                       ; 080D33CE
mov   r1,r12                        ; 080D33D0
add   r1,0x94                       ; 080D33D2
mov   r0,0x5                        ; 080D33D4
strb  r0,[r1]                       ; 080D33D6
@@Code080D33D8:
mov   r0,0x5A                       ; 080D33D8
bl    Sub0804A3A4                   ; 080D33DA
lsl   r0,r0,0x18                    ; 080D33DE
asr   r2,r0,0x18                    ; 080D33E0
cmp   r2,0x0                        ; 080D33E2
blt   @@Code080D3438                ; 080D33E4
ldr   r1,=0x03007240                ; 080D33E6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D33E8
mul   r0,r2                         ; 080D33EA
mov   r2,0x95                       ; 080D33EC
lsl   r2,r2,0x2                     ; 080D33EE
add   r0,r0,r2                      ; 080D33F0
ldr   r1,[r1]                       ; 080D33F2
add   r1,r1,r0                      ; 080D33F4
mov   r12,r1                        ; 080D33F6
ldr   r2,=0x0202B356                ; 080D33F8
ldrb  r0,[r2]                       ; 080D33FA
mov   r4,0x0                        ; 080D33FC
strh  r0,[r1,0x36]                  ; 080D33FE
ldr   r3,=0x0202B351                ; 080D3400
ldr   r1,=Data0817C7BC              ; 080D3402
ldrb  r0,[r2]                       ; 080D3404
lsr   r0,r0,0x1                     ; 080D3406
add   r0,r0,r1                      ; 080D3408
ldrb  r0,[r0]                       ; 080D340A
ldrb  r3,[r3]                       ; 080D340C
add   r0,r0,r3                      ; 080D340E
lsl   r0,r0,0x18                    ; 080D3410
lsr   r0,r0,0x18                    ; 080D3412
mov   r1,r12                        ; 080D3414
add   r1,0x6A                       ; 080D3416
strh  r0,[r1]                       ; 080D3418
mov   r0,r12                        ; 080D341A
add   r0,0x72                       ; 080D341C
strh  r4,[r0]                       ; 080D341E
mov   r0,r12                        ; 080D3420
ldrh  r1,[r0,0x2A]                  ; 080D3422
ldr   r0,=0xFFFC                    ; 080D3424
and   r0,r1                         ; 080D3426
mov   r1,r12                        ; 080D3428
strh  r0,[r1,0x2A]                  ; 080D342A
add   r1,0x94                       ; 080D342C
mov   r0,0x6                        ; 080D342E
strb  r0,[r1]                       ; 080D3430
sub   r1,0x32                       ; 080D3432
mov   r0,0x4                        ; 080D3434
strh  r0,[r1]                       ; 080D3436
@@Code080D3438:
mov   r0,0x5A                       ; 080D3438
bl    Sub0804A3A4                   ; 080D343A
lsl   r0,r0,0x18                    ; 080D343E
asr   r2,r0,0x18                    ; 080D3440
cmp   r2,0x0                        ; 080D3442
blt   @@Code080D3496                ; 080D3444
ldr   r1,=0x03007240                ; 080D3446  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D3448
mul   r0,r2                         ; 080D344A
mov   r2,0x95                       ; 080D344C
lsl   r2,r2,0x2                     ; 080D344E
add   r0,r0,r2                      ; 080D3450
ldr   r1,[r1]                       ; 080D3452
add   r1,r1,r0                      ; 080D3454
mov   r12,r1                        ; 080D3456
ldr   r2,=0x0202B356                ; 080D3458
ldrb  r0,[r2]                       ; 080D345A
strh  r0,[r1,0x36]                  ; 080D345C
ldr   r3,=0x0202B351                ; 080D345E
ldr   r1,=Data0817C7BE              ; 080D3460
ldrb  r0,[r2]                       ; 080D3462
lsr   r0,r0,0x1                     ; 080D3464
add   r0,r0,r1                      ; 080D3466
ldrb  r0,[r0]                       ; 080D3468
ldrb  r3,[r3]                       ; 080D346A
add   r0,r0,r3                      ; 080D346C
lsl   r0,r0,0x18                    ; 080D346E
lsr   r0,r0,0x18                    ; 080D3470
mov   r1,r12                        ; 080D3472
add   r1,0x6A                       ; 080D3474
strh  r0,[r1]                       ; 080D3476
add   r1,0x8                        ; 080D3478
mov   r0,0x4                        ; 080D347A
strh  r0,[r1]                       ; 080D347C
mov   r0,r12                        ; 080D347E
ldrh  r1,[r0,0x2A]                  ; 080D3480
ldr   r0,=0xFFFC                    ; 080D3482
and   r0,r1                         ; 080D3484
mov   r1,r12                        ; 080D3486
strh  r0,[r1,0x2A]                  ; 080D3488
add   r1,0x94                       ; 080D348A
mov   r0,0x7                        ; 080D348C
strb  r0,[r1]                       ; 080D348E
sub   r1,0x32                       ; 080D3490
mov   r0,0x6                        ; 080D3492
strh  r0,[r1]                       ; 080D3494
@@Code080D3496:
pop   {r4}                          ; 080D3496
pop   {r0}                          ; 080D3498
bx    r0                            ; 080D349A
.pool                               ; 080D349C

Sub080D34B4:
push  {r4-r7,lr}                    ; 080D34B4
ldr   r1,=0x0300702C                ; 080D34B6  Sprite RAM structs (03002460)
ldr   r0,[r1]                       ; 080D34B8
ldr   r2,=0x153A                    ; 080D34BA
add   r0,r0,r2                      ; 080D34BC
ldrb  r2,[r0]                       ; 080D34BE
lsl   r0,r2,0x18                    ; 080D34C0
mov   r6,r1                         ; 080D34C2
cmp   r0,0x0                        ; 080D34C4
bge   @@Code080D34CC                ; 080D34C6
neg   r0,r2                         ; 080D34C8
lsl   r0,r0,0x18                    ; 080D34CA
@@Code080D34CC:
lsr   r2,r0,0x18                    ; 080D34CC
ldr   r3,=0x03006D80                ; 080D34CE
mov   r7,r3                         ; 080D34D0
add   r7,0xFE                       ; 080D34D2
mov   r4,0x0                        ; 080D34D4
strh  r4,[r7]                       ; 080D34D6
mov   r5,r3                         ; 080D34D8
add   r5,0xFC                       ; 080D34DA
strh  r4,[r5]                       ; 080D34DC
cmp   r2,0x10                       ; 080D34DE
bls   @@Code080D35D4                ; 080D34E0
ldr   r1,=Data0817C7C0              ; 080D34E2
ldr   r6,=0x0202B36A                ; 080D34E4
ldrb  r0,[r6]                       ; 080D34E6
lsl   r0,r0,0x1                     ; 080D34E8
add   r0,r0,r1                      ; 080D34EA
ldrh  r0,[r0]                       ; 080D34EC
strh  r0,[r5]                       ; 080D34EE
mov   r0,r2                         ; 080D34F0
sub   r0,0x40                       ; 080D34F2
lsl   r0,r0,0x18                    ; 080D34F4
lsr   r0,r0,0x18                    ; 080D34F6
cmp   r0,0x17                       ; 080D34F8
bhi   @@Code080D3578                ; 080D34FA
mov   r0,r3                         ; 080D34FC
add   r0,0x7A                       ; 080D34FE
ldrh  r1,[r0]                       ; 080D3500
mov   r0,0x7                        ; 080D3502
and   r0,r1                         ; 080D3504
cmp   r0,0x0                        ; 080D3506
bne   @@Code080D350C                ; 080D3508
b     @@Code080D366C                ; 080D350A
@@Code080D350C:
ldr   r5,=0x0202B36B                ; 080D350C
ldrb  r0,[r5]                       ; 080D350E
cmp   r0,0x0                        ; 080D3510
beq   @@Code080D3516                ; 080D3512
b     @@Code080D366C                ; 080D3514
@@Code080D3516:
ldr   r4,=0x03002200                ; 080D3516
ldr   r1,=Data0817C7C4              ; 080D3518
ldrb  r0,[r6]                       ; 080D351A
lsl   r0,r0,0x1                     ; 080D351C
add   r0,r0,r1                      ; 080D351E
ldrh  r1,[r0]                       ; 080D3520
ldr   r2,=0x4804                    ; 080D3522
add   r0,r4,r2                      ; 080D3524
strh  r1,[r0]                       ; 080D3526
ldr   r0,=0x47F4                    ; 080D3528
add   r1,r4,r0                      ; 080D352A
mov   r0,0xE0                       ; 080D352C
strh  r0,[r1]                       ; 080D352E
bl    Sub0804353C                   ; 080D3530
ldr   r1,=0x47FE                    ; 080D3534
add   r4,r4,r1                      ; 080D3536
ldrh  r0,[r4]                       ; 080D3538
cmp   r0,0x0                        ; 080D353A
beq   @@Code080D3542                ; 080D353C
mov   r0,0x1                        ; 080D353E
strh  r0,[r7]                       ; 080D3540
@@Code080D3542:
ldrb  r0,[r5]                       ; 080D3542
add   r0,0x1                        ; 080D3544
strb  r0,[r5]                       ; 080D3546
b     @@Code080D366C                ; 080D3548
.pool                               ; 080D354A

@@Code080D3578:
cmp   r2,0x17                       ; 080D3578
bhi   @@Code080D366C                ; 080D357A
mov   r0,r3                         ; 080D357C
add   r0,0x7A                       ; 080D357E
ldrh  r1,[r0]                       ; 080D3580
mov   r0,0x7                        ; 080D3582
and   r0,r1                         ; 080D3584
cmp   r0,0x0                        ; 080D3586
beq   @@Code080D366C                ; 080D3588
ldr   r5,=0x0202B36B                ; 080D358A
ldrb  r0,[r5]                       ; 080D358C
cmp   r0,0x1                        ; 080D358E
bhi   @@Code080D366C                ; 080D3590
ldr   r4,=0x03002200                ; 080D3592
ldr   r2,=0x4804                    ; 080D3594
add   r1,r4,r2                      ; 080D3596
mov   r0,0xA0                       ; 080D3598
lsl   r0,r0,0x1                     ; 080D359A
strh  r0,[r1]                       ; 080D359C
ldr   r0,=0x47F4                    ; 080D359E
add   r1,r4,r0                      ; 080D35A0
mov   r0,0xE0                       ; 080D35A2
strh  r0,[r1]                       ; 080D35A4
bl    Sub0804353C                   ; 080D35A6
ldr   r1,=0x47FE                    ; 080D35AA
add   r4,r4,r1                      ; 080D35AC
ldrh  r0,[r4]                       ; 080D35AE
cmp   r0,0x0                        ; 080D35B0
beq   @@Code080D35B8                ; 080D35B2
mov   r0,0x1                        ; 080D35B4
strh  r0,[r7]                       ; 080D35B6
@@Code080D35B8:
mov   r0,0x2                        ; 080D35B8
strb  r0,[r5]                       ; 080D35BA
b     @@Code080D366C                ; 080D35BC
.pool                               ; 080D35BE

@@Code080D35D4:
ldr   r0,[r3,0x8]                   ; 080D35D4
mov   r1,r0                         ; 080D35D6
cmp   r0,0x0                        ; 080D35D8
bge   @@Code080D35DE                ; 080D35DA
neg   r1,r0                         ; 080D35DC
@@Code080D35DE:
cmp   r1,0x7F                       ; 080D35DE
ble   @@Code080D35E6                ; 080D35E0
asr   r0,r0,0x1                     ; 080D35E2
str   r0,[r3,0x8]                   ; 080D35E4
@@Code080D35E6:
ldr   r0,=0x0202B36A                ; 080D35E6
ldrb  r2,[r0]                       ; 080D35E8
cmp   r2,0x0                        ; 080D35EA
beq   @@Code080D3634                ; 080D35EC
ldr   r1,[r3]                       ; 080D35EE
ldr   r0,=0x00013FFF                ; 080D35F0
cmp   r1,r0                         ; 080D35F2
ble   @@Code080D3618                ; 080D35F4
add   r0,0x1                        ; 080D35F6
str   r0,[r3]                       ; 080D35F8
str   r4,[r3,0x28]                  ; 080D35FA
str   r4,[r3,0x8]                   ; 080D35FC
strh  r4,[r5]                       ; 080D35FE
strh  r4,[r7]                       ; 080D3600
ldr   r0,[r6]                       ; 080D3602
ldr   r2,=0x153A                    ; 080D3604
add   r0,r0,r2                      ; 080D3606
strh  r4,[r0]                       ; 080D3608
b     @@Code080D366C                ; 080D360A
.pool                               ; 080D360C

@@Code080D3618:
ldr   r0,=0x03002200                ; 080D3618
ldr   r1,=0x48A2                    ; 080D361A
add   r0,r0,r1                      ; 080D361C
ldrh  r1,[r0]                       ; 080D361E
mov   r0,0x3                        ; 080D3620
and   r0,r1                         ; 080D3622
cmp   r0,0x0                        ; 080D3624
beq   @@Code080D366C                ; 080D3626
mov   r0,0x10                       ; 080D3628
b     @@Code080D366A                ; 080D362A
.pool                               ; 080D362C

@@Code080D3634:
ldr   r0,[r3]                       ; 080D3634
mov   r1,0xA0                       ; 080D3636
lsl   r1,r1,0x9                     ; 080D3638
cmp   r0,r1                         ; 080D363A
bgt   @@Code080D3658                ; 080D363C
str   r1,[r3]                       ; 080D363E
str   r2,[r3,0x28]                  ; 080D3640
str   r2,[r3,0x8]                   ; 080D3642
strh  r2,[r5]                       ; 080D3644
strh  r2,[r7]                       ; 080D3646
ldr   r0,[r6]                       ; 080D3648
ldr   r1,=0x153A                    ; 080D364A
add   r0,r0,r1                      ; 080D364C
strh  r2,[r0]                       ; 080D364E
b     @@Code080D366C                ; 080D3650
.pool                               ; 080D3652

@@Code080D3658:
ldr   r0,=0x03002200                ; 080D3658
ldr   r2,=0x48A2                    ; 080D365A
add   r0,r0,r2                      ; 080D365C
ldrh  r1,[r0]                       ; 080D365E
mov   r0,0x3                        ; 080D3660
and   r0,r1                         ; 080D3662
cmp   r0,0x0                        ; 080D3664
beq   @@Code080D366C                ; 080D3666
mov   r0,0x20                       ; 080D3668
@@Code080D366A:
strh  r0,[r5]                       ; 080D366A
@@Code080D366C:
pop   {r4-r7}                       ; 080D366C
pop   {r0}                          ; 080D366E
bx    r0                            ; 080D3670
.pool                               ; 080D3672
