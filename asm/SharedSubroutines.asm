swi_arctan2:
swi   0xA                           ; 0812F6B4
bx    lr                            ; 0812F6B6

swi_0E:
swi   0xE                           ; 0812F6B8
bx    lr                            ; 0812F6BA

swi_MemoryCopy32:
swi   0xC                           ; 0812F6BC  Memory copy/fill, 32-byte blocks
bx    lr                            ; 0812F6BE

swi_MemoryCopy4or2:
swi   0xB                           ; 0812F6C0  Memory copy/fill, 4- or 2-byte blocks
bx    lr                            ; 0812F6C2

swi_Divide:
swi   0x6                           ; 0812F6C4
bx    lr                            ; 0812F6C6

swi_Huffman:
swi   0x13                          ; 0812F6C8  Huffman decompress
bx    lr                            ; 0812F6CA

swi_LZ77_VRAM:
swi   0x12                          ; 0812F6CC  LZ77 decompress (VRAM)
bx    lr                            ; 0812F6CE

swi_LZ77_WRAM:
swi   0x11                          ; 0812F6D0  LZ77 decompress (WRAM)
bx    lr                            ; 0812F6D2

swi_25_1:
mov   r1,0x1                        ; 0812F6D4  1: up to 4 players
swi   0x25                          ; 0812F6D6
bx    lr                            ; 0812F6D8
.pool                               ; 0812F6DA

swi_0F:
swi   0xF                           ; 0812F6DC
bx    lr                            ; 0812F6DE

swi_01:
swi   0x1                           ; 0812F6E0
bx    lr                            ; 0812F6E2

SoftResetSinglePlayer:
ldr   r3,=0x04000208                ; 0812F6E4
mov   r2,0x0                        ; 0812F6E6
strb  r2,[r3]                       ; 0812F6E8
ldr   r1,=0x03007F00                ; 0812F6EA
mov   sp,r1                         ; 0812F6EC
swi   0x1                           ; 0812F6EE
swi   0x0                           ; 0812F6F0
.pool                               ; 0812F6F2

swi_SoundBias_0:
mov   r0,0x0                        ; 0812F6FC
swi   0x19                          ; 0812F6FE
bx    lr                            ; 0812F700
.pool                               ; 0812F702

swi_SoundBias_1:
mov   r0,0x1                        ; 0812F704
swi   0x19                          ; 0812F706
bx    lr                            ; 0812F708
.pool                               ; 0812F70A

SoftResetMultiplayer:
ldr   r3,=0x04000208                ; 0812F70C
mov   r2,0x0                        ; 0812F70E
strb  r2,[r3]                       ; 0812F710
ldr   r3,=0x03007FFA                ; 0812F712
mov   r2,0x0                        ; 0812F714
strb  r2,[r3]                       ; 0812F716
sub   r3,0xFA                       ; 0812F718
mov   sp,r3                         ; 0812F71A
swi   0x1                           ; 0812F71C
swi   0x0                           ; 0812F71E
.pool                               ; 0812F720

Sub0812F728:
lsl   r0,r0,0x10                    ; 0812F728
lsr   r0,r0,0x10                    ; 0812F72A
mov   r2,0x0                        ; 0812F72C
cmp   r0,0x4                        ; 0812F72E
bne   @@Code0812F744                ; 0812F730
ldr   r1,=0x030074E8                ; 0812F732 \ runs if input r0 is 4
ldr   r0,=Data083081B0              ; 0812F734
str   r0,[r1]                       ; 0812F736
b     @@Return_r2                   ; 0812F738 / return 0
.pool                               ; 0812F73A

@@Code0812F744:
cmp   r0,0x40                       ; 0812F744
bne   @@Code0812F758                ; 0812F746
ldr   r1,=0x030074E8                ; 0812F748 \ runs if input r0 is 40
ldr   r0,=Data083081BC              ; 0812F74A
str   r0,[r1]                       ; 0812F74C
b     @@Return_r2                   ; 0812F74E / return 0
.pool                               ; 0812F750

@@Code0812F758:
ldr   r1,=0x030074E8                ; 0812F758 \ runs if input r0 is any other value
ldr   r0,=Data083081B0              ; 0812F75A
str   r0,[r1]                       ; 0812F75C
mov   r2,0x1                        ; 0812F75E / return 1
@@Return_r2:
mov   r0,r2                         ; 0812F760
bx    lr                            ; 0812F762
.pool                               ; 0812F764

Sub0812F76C:
ldr   r1,=0x03002192                ; 0812F76C
ldrh  r0,[r1]                       ; 0812F76E
cmp   r0,0x0                        ; 0812F770
beq   @@Return                      ; 0812F772
ldrh  r0,[r1]                       ; 0812F774
sub   r0,0x1                        ; 0812F776
strh  r0,[r1]                       ; 0812F778
lsl   r0,r0,0x10                    ; 0812F77A
cmp   r0,0x0                        ; 0812F77C
bne   @@Return                      ; 0812F77E
ldr   r1,=0x03002194                ; 0812F780
mov   r0,0x1                        ; 0812F782
strb  r0,[r1]                       ; 0812F784
@@Return:
bx    lr                            ; 0812F786
.pool                               ; 0812F788

Sub0812F790:
mov   r2,r1                         ; 0812F790
lsl   r0,r0,0x18                    ; 0812F792
lsr   r1,r0,0x18                    ; 0812F794
cmp   r1,0x3                        ; 0812F796
bhi   @@Return_1                    ; 0812F798
ldr   r0,=0x03002190                ; 0812F79A
strb  r1,[r0]                       ; 0812F79C
ldr   r1,=0x03002198                ; 0812F79E
ldrb  r0,[r0]                       ; 0812F7A0
lsl   r0,r0,0x2                     ; 0812F7A2
ldr   r3,=0x04000100                ; 0812F7A4
add   r0,r0,r3                      ; 0812F7A6
str   r0,[r1]                       ; 0812F7A8
ldr   r0,=Sub0812F76C+1             ; 0812F7AA
str   r0,[r2]                       ; 0812F7AC
mov   r0,0x0                        ; 0812F7AE
b     @@Return_r0                   ; 0812F7B0
.pool                               ; 0812F7B2

@@Return_1:
mov   r0,0x1                        ; 0812F7C4
@@Return_r0:
bx    lr                            ; 0812F7C6

Sub0812F7C8:
; r0: always Data083081C8
push  {r4-r7,lr}                    ; 0812F7C8
mov   r7,r9                         ; 0812F7CA
mov   r6,r8                         ; 0812F7CC
push  {r6-r7}                       ; 0812F7CE
ldr   r2,=0x0300219C                ; 0812F7D0
ldr   r1,=0x04000208                ; 0812F7D2
mov   r9,r1                         ; 0812F7D4
ldrh  r1,[r1]                       ; 0812F7D6
strh  r1,[r2]                       ; 0812F7D8  [0300219C] = old value of 04000208
mov   r6,0x0                        ; 0812F7DA
mov   r2,r9                         ; 0812F7DC
strh  r6,[r2]                       ; 0812F7DE  disable interrupts
ldr   r3,=0x03002198                ; 0812F7E0
mov   r8,r3                         ; 0812F7E2
ldr   r5,[r3]                       ; 0812F7E4  pointer to timer count register (can be 04000108)
strh  r6,[r5,0x2]                   ; 0812F7E6  clear timer control register
ldr   r3,=0x04000202                ; 0812F7E8
ldr   r4,=0x03002190                ; 0812F7EA
ldrb  r1,[r4]                       ; 0812F7EC
mov   r2,0x8                        ; 0812F7EE  r2 = 8
mov   r7,r2                         ; 0812F7F0  r7 = 8
lsl   r7,r1                         ; 0812F7F2  r7 = [03002190]*2
mov   r1,r7                         ; 0812F7F4
strh  r1,[r3]                       ; 0812F7F6
sub   r3,0x2                        ; 0812F7F8  r3 = 04000200
ldrb  r1,[r4]                       ; 0812F7FA
lsl   r2,r1                         ; 0812F7FC
ldrh  r1,[r3]                       ; 0812F7FE
orr   r1,r2                         ; 0812F800
strh  r1,[r3]                       ; 0812F802
ldr   r1,=0x03002194                ; 0812F804
strb  r6,[r1]                       ; 0812F806
ldr   r2,=0x03002192                ; 0812F808
ldrh  r1,[r0]                       ; 0812F80A  000A ([Data083081C8+0])
strh  r1,[r2]                       ; 0812F80C
add   r0,0x2                        ; 0812F80E  r0 = Data083081C8+2
ldrh  r1,[r0]                       ; 0812F810  FFBD ([Data083081C8+2])
strh  r1,[r5]                       ; 0812F812  set timer count register
add   r1,r5,0x2                     ; 0812F814  pointer to timer control register
mov   r2,r8                         ; 0812F816
str   r1,[r2]                       ; 0812F818  [03002198] = pointer to timer control register
ldrh  r0,[r0,0x2]                   ; 0812F81A  00C2 (0000 0000 1100 0010) ([Data083081C8+4])
strh  r0,[r5,0x2]                   ; 0812F81C  set timer control register
str   r5,[r2]                       ; 0812F81E
mov   r0,0x1                        ; 0812F820
mov   r3,r9                         ; 0812F822
strh  r0,[r3]                       ; 0812F824  enable interrupts
pop   {r3-r4}                       ; 0812F826
mov   r8,r3                         ; 0812F828
mov   r9,r4                         ; 0812F82A
pop   {r4-r7}                       ; 0812F82C
pop   {r0}                          ; 0812F82E
bx    r0                            ; 0812F830
.pool                               ; 0812F832

Sub0812F850:
ldr   r3,=0x04000208                ; 0812F850
mov   r1,0x0                        ; 0812F852
strh  r1,[r3]                       ; 0812F854
ldr   r2,=0x03002198                ; 0812F856
ldr   r0,[r2]                       ; 0812F858
strh  r1,[r0]                       ; 0812F85A
add   r0,0x2                        ; 0812F85C
str   r0,[r2]                       ; 0812F85E
strh  r1,[r0]                       ; 0812F860
sub   r0,0x2                        ; 0812F862
str   r0,[r2]                       ; 0812F864
ldr   r2,=0x04000200                ; 0812F866
ldr   r0,=0x03002190                ; 0812F868
ldrb  r0,[r0]                       ; 0812F86A
mov   r1,0x8                        ; 0812F86C
lsl   r1,r0                         ; 0812F86E
ldrh  r0,[r2]                       ; 0812F870
bic   r0,r1                         ; 0812F872
strh  r0,[r2]                       ; 0812F874
ldr   r0,=0x0300219C                ; 0812F876
ldrh  r0,[r0]                       ; 0812F878
strh  r0,[r3]                       ; 0812F87A
bx    lr                            ; 0812F87C
.pool                               ; 0812F87E

EEPROM_WriteDMA:
; Write to DMA when saving to EEPROM? Called twice by 0812F914 and once by 0812F9C4
; r0: DMA source address
; r1: DMA dest address
; r2: length in 16-bit words?
push  {r4-r6,lr}                    ; 0812F894
lsl   r2,r2,0x10                    ; 0812F896
lsr   r2,r2,0x10                    ; 0812F898
ldr   r4,=0x04000208                ; 0812F89A
ldrh  r3,[r4]                       ; 0812F89C
mov   r6,r3                         ; 0812F89E  r6 = old interrupt register value
mov   r3,0x0                        ; 0812F8A0
strh  r3,[r4]                       ; 0812F8A2  disable all interrupts
ldr   r5,=0x04000204                ; 0812F8A4
ldrh  r4,[r5]                       ; 0812F8A6
ldr   r3,=0xF8FF                    ; 0812F8A8  1111 1000 1111 1111
and   r4,r3                         ; 0812F8AA  [04000204] with bits 8-10 clear
ldr   r3,=0x030074E8                ; 0812F8AC
ldr   r3,[r3]                       ; 0812F8AE  EEPROM struct ptr? 083081B0 or 083081BC
ldrh  r3,[r3,0x6]                   ; 0812F8B0  always 0300 (0000 0011 0000 0000)
orr   r4,r3                         ; 0812F8B2  set bits 8-9 from struct+6
strh  r4,[r5]                       ; 0812F8B4  store new value to 04000204
ldr   r3,=0x040000D4                ; 0812F8B6
str   r0,[r3]                       ; 0812F8B8  set DMA 3 source addr
ldr   r0,=0x040000D8                ; 0812F8BA
str   r1,[r0]                       ; 0812F8BC  set DMA 3 dest addr
ldr   r1,=0x040000DC                ; 0812F8BE
mov   r0,0x80                       ; 0812F8C0
lsl   r0,r0,0x18                    ; 0812F8C2  80000000
orr   r2,r0                         ; 0812F8C4  set highest bit (enable DMA)
str   r2,[r1]                       ; 0812F8C6  set word count and enable DMA
add   r1,0x2                        ; 0812F8C8  040000DE
mov   r2,0x80                       ; 0812F8CA
lsl   r2,r2,0x8                     ; 0812F8CC  8000
mov   r0,r2                         ; 0812F8CE
ldrh  r1,[r1]                       ; 0812F8D0  load DMA enable register again
and   r0,r1                         ; 0812F8D2  filter highest bit
cmp   r0,0x0                        ; 0812F8D4
beq   @@RestoreInterruptAndReturn   ; 0812F8D6  if highest bit is now clear, return
ldr   r2,=0x040000DE                ; 0812F8D8 \ else, wait for bit to clear
mov   r0,0x80                       ; 0812F8DA
lsl   r0,r0,0x8                     ; 0812F8DC  8000
mov   r1,r0                         ; 0812F8DE
@@WaitForBitClear:
ldrh  r0,[r2]                       ; 0812F8E0
and   r0,r1                         ; 0812F8E2
cmp   r0,0x0                        ; 0812F8E4
bne   @@WaitForBitClear             ; 0812F8E6 /
@@RestoreInterruptAndReturn:
ldr   r0,=0x04000208                ; 0812F8E8
strh  r6,[r0]                       ; 0812F8EA  restore old interrupt register value
pop   {r4-r6}                       ; 0812F8EC
pop   {r0}                          ; 0812F8EE
bx    r0                            ; 0812F8F0
.pool                               ; 0812F8F2

Sub0812F914:
push  {r4-r6,lr}                    ; 0812F914
add   sp,-0x88                      ; 0812F916
mov   r5,r1                         ; 0812F918
lsl   r0,r0,0x10                    ; 0812F91A
lsr   r3,r0,0x10                    ; 0812F91C
ldr   r0,=0x030074E8                ; 0812F91E
ldr   r0,[r0]                       ; 0812F920
ldrh  r0,[r0,0x4]                   ; 0812F922
cmp   r3,r0                         ; 0812F924
blo   @@Code0812F934                ; 0812F926
ldr   r0,=0x80FF                    ; 0812F928
b     @@Return_r0                   ; 0812F92A
.pool                               ; 0812F92C

@@Code0812F934:
ldr   r0,=0x030074E8                ; 0812F934
mov   r6,r0                         ; 0812F936
ldr   r0,[r0]                       ; 0812F938
ldrb  r1,[r0,0x8]                   ; 0812F93A
lsl   r0,r1,0x1                     ; 0812F93C
mov   r4,sp                         ; 0812F93E
add   r2,r0,r4                      ; 0812F940
add   r2,0x2                        ; 0812F942
mov   r4,0x0                        ; 0812F944
cmp   r4,r1                         ; 0812F946
bhs   @@Code0812F95E                ; 0812F948
@@Code0812F94A:
strh  r3,[r2]                       ; 0812F94A
sub   r2,0x2                        ; 0812F94C
lsr   r3,r3,0x1                     ; 0812F94E
add   r0,r4,0x1                     ; 0812F950
lsl   r0,r0,0x18                    ; 0812F952
lsr   r4,r0,0x18                    ; 0812F954
ldr   r0,[r6]                       ; 0812F956
ldrb  r0,[r0,0x8]                   ; 0812F958
cmp   r4,r0                         ; 0812F95A
blo   @@Code0812F94A                ; 0812F95C
@@Code0812F95E:
mov   r0,0x1                        ; 0812F95E
strh  r0,[r2]                       ; 0812F960
sub   r2,0x2                        ; 0812F962
strh  r0,[r2]                       ; 0812F964
mov   r4,0xD0                       ; 0812F966
lsl   r4,r4,0x14                    ; 0812F968  0D000000
ldr   r0,=0x030074E8                ; 0812F96A
ldr   r0,[r0]                       ; 0812F96C
ldrb  r2,[r0,0x8]                   ; 0812F96E
add   r2,0x3                        ; 0812F970
mov   r0,sp                         ; 0812F972
mov   r1,r4                         ; 0812F974
bl    EEPROM_WriteDMA               ; 0812F976
mov   r0,r4                         ; 0812F97A
mov   r1,sp                         ; 0812F97C
mov   r2,0x44                       ; 0812F97E
bl    EEPROM_WriteDMA               ; 0812F980
add   r2,sp,0x8                     ; 0812F984
add   r5,0x6                        ; 0812F986
mov   r4,0x0                        ; 0812F988
mov   r6,0x1                        ; 0812F98A
@@Code0812F98C:
mov   r1,0x0                        ; 0812F98C
mov   r3,0x0                        ; 0812F98E
@@Code0812F990:
lsl   r1,r1,0x11                    ; 0812F990
ldrh  r0,[r2]                       ; 0812F992
and   r0,r6                         ; 0812F994
lsr   r1,r1,0x10                    ; 0812F996
orr   r1,r0                         ; 0812F998
add   r2,0x2                        ; 0812F99A
add   r0,r3,0x1                     ; 0812F99C
lsl   r0,r0,0x18                    ; 0812F99E
lsr   r3,r0,0x18                    ; 0812F9A0
cmp   r3,0xF                        ; 0812F9A2
bls   @@Code0812F990                ; 0812F9A4
strh  r1,[r5]                       ; 0812F9A6
sub   r5,0x2                        ; 0812F9A8
add   r0,r4,0x1                     ; 0812F9AA
lsl   r0,r0,0x18                    ; 0812F9AC
lsr   r4,r0,0x18                    ; 0812F9AE
cmp   r4,0x3                        ; 0812F9B0
bls   @@Code0812F98C                ; 0812F9B2
mov   r0,0x0                        ; 0812F9B4
@@Return_r0:
add   sp,0x88                       ; 0812F9B6
pop   {r4-r6}                       ; 0812F9B8
pop   {r1}                          ; 0812F9BA
bx    r1                            ; 0812F9BC
.pool                               ; 0812F9BE

Sub0812F9C4:
push  {r4-r5,lr}                    ; 0812F9C4
add   sp,-0xA4                      ; 0812F9C6
mov   r5,r1                         ; 0812F9C8
lsl   r0,r0,0x10                    ; 0812F9CA
lsr   r4,r0,0x10                    ; 0812F9CC
ldr   r0,=0x030074E8                ; 0812F9CE
ldr   r0,[r0]                       ; 0812F9D0
ldrh  r0,[r0,0x4]                   ; 0812F9D2
cmp   r4,r0                         ; 0812F9D4
blo   @@Code0812F9E4                ; 0812F9D6
ldr   r0,=0x80FF                    ; 0812F9D8
b     @@Return_r0                   ; 0812F9DA
.pool                               ; 0812F9DC

@@Code0812F9E4:
ldr   r0,=0x030074E8                ; 0812F9E4
ldr   r0,[r0]                       ; 0812F9E6
ldrb  r0,[r0,0x8]                   ; 0812F9E8
lsl   r0,r0,0x1                     ; 0812F9EA
mov   r1,sp                         ; 0812F9EC
add   r3,r0,r1                      ; 0812F9EE
add   r3,0x84                       ; 0812F9F0
mov   r0,0x0                        ; 0812F9F2
strh  r0,[r3]                       ; 0812F9F4
sub   r3,0x2                        ; 0812F9F6
mov   r1,0x0                        ; 0812F9F8
@@Loop0812F9FA:
ldrh  r2,[r5]                       ; 0812F9FA
add   r5,0x2                        ; 0812F9FC
mov   r0,0x0                        ; 0812F9FE
@@Loop0812FA00:
strh  r2,[r3]                       ; 0812FA00
sub   r3,0x2                        ; 0812FA02
lsr   r2,r2,0x1                     ; 0812FA04
add   r0,0x1                        ; 0812FA06
lsl   r0,r0,0x18                    ; 0812FA08
lsr   r0,r0,0x18                    ; 0812FA0A
cmp   r0,0xF                        ; 0812FA0C
bls   @@Loop0812FA00                ; 0812FA0E
add   r0,r1,0x1                     ; 0812FA10
lsl   r0,r0,0x18                    ; 0812FA12
lsr   r1,r0,0x18                    ; 0812FA14
cmp   r1,0x3                        ; 0812FA16
bls   @@Loop0812F9FA                ; 0812FA18
mov   r1,0x0                        ; 0812FA1A
ldr   r0,=0x030074E8                ; 0812FA1C
mov   r2,r0                         ; 0812FA1E
ldr   r0,[r0]                       ; 0812FA20
b     @@Code0812FA36                ; 0812FA22
.pool                               ; 0812FA24

@@Loop0812FA28:
strh  r4,[r3]                       ; 0812FA28
sub   r3,0x2                        ; 0812FA2A
lsr   r4,r4,0x1                     ; 0812FA2C
add   r0,r1,0x1                     ; 0812FA2E
lsl   r0,r0,0x18                    ; 0812FA30
lsr   r1,r0,0x18                    ; 0812FA32
ldr   r0,[r2]                       ; 0812FA34
@@Code0812FA36:
ldrb  r0,[r0,0x8]                   ; 0812FA36
cmp   r1,r0                         ; 0812FA38
blo   @@Loop0812FA28                ; 0812FA3A
mov   r0,0x0                        ; 0812FA3C
strh  r0,[r3]                       ; 0812FA3E
sub   r3,0x2                        ; 0812FA40
mov   r0,0x1                        ; 0812FA42
strh  r0,[r3]                       ; 0812FA44
mov   r1,0xD0                       ; 0812FA46
lsl   r1,r1,0x14                    ; 0812FA48  0D000000
ldr   r0,=0x030074E8                ; 0812FA4A
ldr   r0,[r0]                       ; 0812FA4C
ldrb  r2,[r0,0x8]                   ; 0812FA4E
add   r2,0x43                       ; 0812FA50
mov   r0,sp                         ; 0812FA52
bl    EEPROM_WriteDMA               ; 0812FA54
ldr   r0,=Data083081C8              ; 0812FA58
bl    Sub0812F7C8                   ; 0812FA5A
mov   r4,0x0                        ; 0812FA5E
mov   r1,0xD0                       ; 0812FA60
lsl   r1,r1,0x14                    ; 0812FA62  0D000000
mov   r3,0x1                        ; 0812FA64
ldr   r2,=0x03002194                ; 0812FA66
@@Loop0812FA68:
ldrh  r0,[r1]                       ; 0812FA68
and   r0,r3                         ; 0812FA6A
cmp   r0,0x0                        ; 0812FA6C
bne   @@Code0812FA82                ; 0812FA6E
ldrb  r0,[r2]                       ; 0812FA70
cmp   r0,0x0                        ; 0812FA72
beq   @@Loop0812FA68                ; 0812FA74
ldrh  r0,[r1]                       ; 0812FA76
mov   r1,0x1                        ; 0812FA78
and   r0,r1                         ; 0812FA7A
cmp   r0,0x0                        ; 0812FA7C
bne   @@Code0812FA82                ; 0812FA7E
ldr   r4,=0xC001                    ; 0812FA80
@@Code0812FA82:
bl    Sub0812F850                   ; 0812FA82
mov   r0,r4                         ; 0812FA86
@@Return_r0:
add   sp,0xA4                       ; 0812FA88
pop   {r4-r5}                       ; 0812FA8A
pop   {r1}                          ; 0812FA8C
bx    r1                            ; 0812FA8E
.pool                               ; 0812FA90

Sub0812FAA0:
push  {r4-r5,lr}                    ; 0812FAA0
add   sp,-0x8                       ; 0812FAA2
mov   r4,r1                         ; 0812FAA4
lsl   r0,r0,0x10                    ; 0812FAA6
lsr   r1,r0,0x10                    ; 0812FAA8
mov   r5,0x0                        ; 0812FAAA
ldr   r0,=0x030074E8                ; 0812FAAC
ldr   r0,[r0]                       ; 0812FAAE
ldrh  r0,[r0,0x4]                   ; 0812FAB0
cmp   r1,r0                         ; 0812FAB2
blo   @@Code0812FAC4                ; 0812FAB4
ldr   r0,=0x80FF                    ; 0812FAB6
b     @@Return_r0                   ; 0812FAB8
.pool                               ; 0812FABA

@@Code0812FAC4:
mov   r0,r1                         ; 0812FAC4
mov   r1,sp                         ; 0812FAC6
bl    Sub0812F914                   ; 0812FAC8
mov   r2,sp                         ; 0812FACC
mov   r3,0x0                        ; 0812FACE
b     @@Code0812FADC                ; 0812FAD0
@@Code0812FAD2:
add   r0,r3,0x1                     ; 0812FAD2
lsl   r0,r0,0x18                    ; 0812FAD4
lsr   r3,r0,0x18                    ; 0812FAD6
cmp   r3,0x3                        ; 0812FAD8
bhi   @@Return_r5                   ; 0812FADA
@@Code0812FADC:
ldrh  r1,[r4]                       ; 0812FADC
ldrh  r0,[r2]                       ; 0812FADE
add   r2,0x2                        ; 0812FAE0
add   r4,0x2                        ; 0812FAE2
cmp   r1,r0                         ; 0812FAE4
beq   @@Code0812FAD2                ; 0812FAE6
mov   r5,0x80                       ; 0812FAE8
lsl   r5,r5,0x8                     ; 0812FAEA
@@Return_r5:
mov   r0,r5                         ; 0812FAEC
@@Return_r0:
add   sp,0x8                        ; 0812FAEE
pop   {r4-r5}                       ; 0812FAF0
pop   {r1}                          ; 0812FAF2
bx    r1                            ; 0812FAF4
.pool                               ; 0812FAF6

Sub0812FAF8:
push  {r4-r6,lr}                    ; 0812FAF8
mov   r5,r1                         ; 0812FAFA
lsl   r0,r0,0x10                    ; 0812FAFC
lsr   r4,r0,0x10                    ; 0812FAFE
mov   r6,0x0                        ; 0812FB00
b     @@Code0812FB0A                ; 0812FB02
@@Code0812FB04:
add   r0,r6,0x1                     ; 0812FB04
lsl   r0,r0,0x18                    ; 0812FB06
lsr   r6,r0,0x18                    ; 0812FB08
@@Code0812FB0A:
cmp   r6,0x2                        ; 0812FB0A
bhi   @@Return_r2                   ; 0812FB0C
mov   r0,r4                         ; 0812FB0E
mov   r1,r5                         ; 0812FB10
bl    Sub0812F9C4                   ; 0812FB12
lsl   r0,r0,0x10                    ; 0812FB16
lsr   r2,r0,0x10                    ; 0812FB18
cmp   r2,0x0                        ; 0812FB1A
bne   @@Code0812FB04                ; 0812FB1C
mov   r0,r4                         ; 0812FB1E
mov   r1,r5                         ; 0812FB20
bl    Sub0812FAA0                   ; 0812FB22
lsl   r0,r0,0x10                    ; 0812FB26
lsr   r2,r0,0x10                    ; 0812FB28
cmp   r2,0x0                        ; 0812FB2A
bne   @@Code0812FB04                ; 0812FB2C
@@Return_r2:
mov   r0,r2                         ; 0812FB2E
pop   {r4-r6}                       ; 0812FB30
pop   {r1}                          ; 0812FB32
bx    r1                            ; 0812FB34
.pool                               ; 0812FB36

Sub_bx_r0:
bx    r0                            ; 0812FB38
nop                                 ; 0812FB3A

Sub_bx_r1:
bx    r1                            ; 0812FB3C
nop                                 ; 0812FB3E

Sub_bx_r2:
bx    r2                            ; 0812FB40
nop                                 ; 0812FB42

Sub_bx_r3:
bx    r3                            ; 0812FB44
nop                                 ; 0812FB46

Sub_bx_r4:
bx    r4                            ; 0812FB48
nop                                 ; 0812FB4A

Sub_bx_r5:
bx    r5                            ; 0812FB4C
nop                                 ; 0812FB4E

bx    r6                            ; 0812FB50
nop                                 ; 0812FB52

Sub_bx_r7:
bx    r7                            ; 0812FB54
nop                                 ; 0812FB56

Sub_bx_r8:
bx    r8                            ; 0812FB58
nop                                 ; 0812FB5A

Sub_bx_r9:
bx    r9                            ; 0812FB5C
nop                                 ; 0812FB5E

Sub_bx_r10:
bx    r10                           ; 0812FB60
nop                                 ; 0812FB62

bx    r11                           ; 0812FB64
nop                                 ; 0812FB66

bx    r12                           ; 0812FB68
nop                                 ; 0812FB6A

bx    sp                            ; 0812FB6C
nop                                 ; 0812FB6E

bx    lr                            ; 0812FB70
nop                                 ; 0812FB72

Sub0812FB74:
cmp   r1,0x0                        ; 0812FB74
beq   @@Return0                     ; 0812FB76
push  {r4}                          ; 0812FB78
mov   r4,r0                         ; 0812FB7A
eor   r4,r1                         ; 0812FB7C
mov   r12,r4                        ; 0812FB7E
mov   r3,0x1                        ; 0812FB80
mov   r2,0x0                        ; 0812FB82
cmp   r1,0x0                        ; 0812FB84
bpl   @@Code0812FB8A                ; 0812FB86
neg   r1,r1                         ; 0812FB88
@@Code0812FB8A:
cmp   r0,0x0                        ; 0812FB8A
bpl   @@Code0812FB90                ; 0812FB8C
neg   r0,r0                         ; 0812FB8E
@@Code0812FB90:
cmp   r0,r1                         ; 0812FB90
blo   @@Code0812FBEE                ; 0812FB92
mov   r4,0x1                        ; 0812FB94
lsl   r4,r4,0x1C                    ; 0812FB96
@@Code0812FB98:
cmp   r1,r4                         ; 0812FB98
bhs   @@Code0812FBA6                ; 0812FB9A
cmp   r1,r0                         ; 0812FB9C
bhs   @@Code0812FBA6                ; 0812FB9E
lsl   r1,r1,0x4                     ; 0812FBA0
lsl   r3,r3,0x4                     ; 0812FBA2
b     @@Code0812FB98                ; 0812FBA4
@@Code0812FBA6:
lsl   r4,r4,0x3                     ; 0812FBA6
@@Code0812FBA8:
cmp   r1,r4                         ; 0812FBA8
bhs   @@Code0812FBB6                ; 0812FBAA
cmp   r1,r0                         ; 0812FBAC
bhs   @@Code0812FBB6                ; 0812FBAE
lsl   r1,r1,0x1                     ; 0812FBB0
lsl   r3,r3,0x1                     ; 0812FBB2
b     @@Code0812FBA8                ; 0812FBB4
@@Code0812FBB6:
cmp   r0,r1                         ; 0812FBB6
blo   @@Code0812FBBE                ; 0812FBB8
sub   r0,r0,r1                      ; 0812FBBA
orr   r2,r3                         ; 0812FBBC
@@Code0812FBBE:
lsr   r4,r1,0x1                     ; 0812FBBE
cmp   r0,r4                         ; 0812FBC0
blo   @@Code0812FBCA                ; 0812FBC2
sub   r0,r0,r4                      ; 0812FBC4
lsr   r4,r3,0x1                     ; 0812FBC6
orr   r2,r4                         ; 0812FBC8
@@Code0812FBCA:
lsr   r4,r1,0x2                     ; 0812FBCA
cmp   r0,r4                         ; 0812FBCC
blo   @@Code0812FBD6                ; 0812FBCE
sub   r0,r0,r4                      ; 0812FBD0
lsr   r4,r3,0x2                     ; 0812FBD2
orr   r2,r4                         ; 0812FBD4
@@Code0812FBD6:
lsr   r4,r1,0x3                     ; 0812FBD6
cmp   r0,r4                         ; 0812FBD8
blo   @@Code0812FBE2                ; 0812FBDA
sub   r0,r0,r4                      ; 0812FBDC
lsr   r4,r3,0x3                     ; 0812FBDE
orr   r2,r4                         ; 0812FBE0
@@Code0812FBE2:
cmp   r0,0x0                        ; 0812FBE2
beq   @@Code0812FBEE                ; 0812FBE4
lsr   r3,r3,0x4                     ; 0812FBE6
beq   @@Code0812FBEE                ; 0812FBE8
lsr   r1,r1,0x4                     ; 0812FBEA
b     @@Code0812FBB6                ; 0812FBEC
@@Code0812FBEE:
mov   r0,r2                         ; 0812FBEE
mov   r4,r12                        ; 0812FBF0
cmp   r4,0x0                        ; 0812FBF2
bpl   @@Code0812FBF8                ; 0812FBF4
neg   r0,r0                         ; 0812FBF6
@@Code0812FBF8:
pop   {r4}                          ; 0812FBF8
mov   pc,lr                         ; 0812FBFA

@@Return0:
push  {lr}                          ; 0812FBFC
bl    Return0812FC08                ; 0812FBFE
mov   r0,0x0                        ; 0812FC02
pop   {pc}                          ; 0812FC04
.pool                               ; 0812FC06

Return0812FC08:
mov   pc,lr                         ; 0812FC08
.pool                               ; 0812FC0A

DivideUnsigned:
; input r0: numerator, r1: denominator
; output r0: quotient
; from context, seems to break if numerator is 0, not just denominator?
cmp   r1,0x0                        ; 0812FC0C
beq   @@Return0                     ; 0812FC0E
mov   r3,0x1                        ; 0812FC10
mov   r2,0x0                        ; 0812FC12
push  {r4}                          ; 0812FC14
cmp   r0,r1                         ; 0812FC16
blo   @@Return_r2                   ; 0812FC18
mov   r4,0x1                        ; 0812FC1A
lsl   r4,r4,0x1C                    ; 0812FC1C
@@Code0812FC1E:
cmp   r1,r4                         ; 0812FC1E
bhs   @@Code0812FC2C                ; 0812FC20
cmp   r1,r0                         ; 0812FC22
bhs   @@Code0812FC2C                ; 0812FC24
lsl   r1,r1,0x4                     ; 0812FC26
lsl   r3,r3,0x4                     ; 0812FC28
b     @@Code0812FC1E                ; 0812FC2A
@@Code0812FC2C:
lsl   r4,r4,0x3                     ; 0812FC2C
@@Code0812FC2E:
cmp   r1,r4                         ; 0812FC2E
bhs   @@Code0812FC3C                ; 0812FC30
cmp   r1,r0                         ; 0812FC32
bhs   @@Code0812FC3C                ; 0812FC34
lsl   r1,r1,0x1                     ; 0812FC36
lsl   r3,r3,0x1                     ; 0812FC38
b     @@Code0812FC2E                ; 0812FC3A
@@Code0812FC3C:
cmp   r0,r1                         ; 0812FC3C
blo   @@Code0812FC44                ; 0812FC3E
sub   r0,r0,r1                      ; 0812FC40
orr   r2,r3                         ; 0812FC42
@@Code0812FC44:
lsr   r4,r1,0x1                     ; 0812FC44
cmp   r0,r4                         ; 0812FC46
blo   @@Code0812FC50                ; 0812FC48
sub   r0,r0,r4                      ; 0812FC4A
lsr   r4,r3,0x1                     ; 0812FC4C
orr   r2,r4                         ; 0812FC4E
@@Code0812FC50:
lsr   r4,r1,0x2                     ; 0812FC50
cmp   r0,r4                         ; 0812FC52
blo   @@Code0812FC5C                ; 0812FC54
sub   r0,r0,r4                      ; 0812FC56
lsr   r4,r3,0x2                     ; 0812FC58
orr   r2,r4                         ; 0812FC5A
@@Code0812FC5C:
lsr   r4,r1,0x3                     ; 0812FC5C
cmp   r0,r4                         ; 0812FC5E
blo   @@Code0812FC68                ; 0812FC60
sub   r0,r0,r4                      ; 0812FC62
lsr   r4,r3,0x3                     ; 0812FC64
orr   r2,r4                         ; 0812FC66
@@Code0812FC68:
cmp   r0,0x0                        ; 0812FC68
beq   @@Return_r2                   ; 0812FC6A
lsr   r3,r3,0x4                     ; 0812FC6C
beq   @@Return_r2                   ; 0812FC6E
lsr   r1,r1,0x4                     ; 0812FC70
b     @@Code0812FC3C                ; 0812FC72
@@Return_r2:
mov   r0,r2                         ; 0812FC74
pop   {r4}                          ; 0812FC76
mov   pc,lr                         ; 0812FC78

@@Return0:
push  {lr}                          ; 0812FC7A
bl    Return0812FC08                ; 0812FC7C
mov   r0,0x0                        ; 0812FC80
pop   {pc}                          ; 0812FC82

Sub0812FC84:
cmp   r1,0x0                        ; 0812FC84
beq   @@Code0812FD3A                ; 0812FC86
mov   r3,0x1                        ; 0812FC88
cmp   r0,r1                         ; 0812FC8A
bhs   @@Code0812FC90                ; 0812FC8C
mov   pc,lr                         ; 0812FC8E

@@Code0812FC90:
push  {r4}                          ; 0812FC90
mov   r4,0x1                        ; 0812FC92
lsl   r4,r4,0x1C                    ; 0812FC94
@@Code0812FC96:
cmp   r1,r4                         ; 0812FC96
bhs   @@Code0812FCA4                ; 0812FC98
cmp   r1,r0                         ; 0812FC9A
bhs   @@Code0812FCA4                ; 0812FC9C
lsl   r1,r1,0x4                     ; 0812FC9E
lsl   r3,r3,0x4                     ; 0812FCA0
b     @@Code0812FC96                ; 0812FCA2
@@Code0812FCA4:
lsl   r4,r4,0x3                     ; 0812FCA4
@@Code0812FCA6:
cmp   r1,r4                         ; 0812FCA6
bhs   @@Code0812FCB4                ; 0812FCA8
cmp   r1,r0                         ; 0812FCAA
bhs   @@Code0812FCB4                ; 0812FCAC
lsl   r1,r1,0x1                     ; 0812FCAE
lsl   r3,r3,0x1                     ; 0812FCB0
b     @@Code0812FCA6                ; 0812FCB2
@@Code0812FCB4:
mov   r2,0x0                        ; 0812FCB4
cmp   r0,r1                         ; 0812FCB6
blo   @@Code0812FCBC                ; 0812FCB8
sub   r0,r0,r1                      ; 0812FCBA
@@Code0812FCBC:
lsr   r4,r1,0x1                     ; 0812FCBC
cmp   r0,r4                         ; 0812FCBE
blo   @@Code0812FCCE                ; 0812FCC0
sub   r0,r0,r4                      ; 0812FCC2
mov   r12,r3                        ; 0812FCC4
mov   r4,0x1                        ; 0812FCC6
ror   r3,r4                         ; 0812FCC8
orr   r2,r3                         ; 0812FCCA
mov   r3,r12                        ; 0812FCCC
@@Code0812FCCE:
lsr   r4,r1,0x2                     ; 0812FCCE
cmp   r0,r4                         ; 0812FCD0
blo   @@Code0812FCE0                ; 0812FCD2
sub   r0,r0,r4                      ; 0812FCD4
mov   r12,r3                        ; 0812FCD6
mov   r4,0x2                        ; 0812FCD8
ror   r3,r4                         ; 0812FCDA
orr   r2,r3                         ; 0812FCDC
mov   r3,r12                        ; 0812FCDE
@@Code0812FCE0:
lsr   r4,r1,0x3                     ; 0812FCE0
cmp   r0,r4                         ; 0812FCE2
blo   @@Code0812FCF2                ; 0812FCE4
sub   r0,r0,r4                      ; 0812FCE6
mov   r12,r3                        ; 0812FCE8
mov   r4,0x3                        ; 0812FCEA
ror   r3,r4                         ; 0812FCEC
orr   r2,r3                         ; 0812FCEE
mov   r3,r12                        ; 0812FCF0
@@Code0812FCF2:
mov   r12,r3                        ; 0812FCF2
cmp   r0,0x0                        ; 0812FCF4
beq   @@Code0812FD00                ; 0812FCF6
lsr   r3,r3,0x4                     ; 0812FCF8
beq   @@Code0812FD00                ; 0812FCFA
lsr   r1,r1,0x4                     ; 0812FCFC
b     @@Code0812FCB4                ; 0812FCFE
@@Code0812FD00:
mov   r4,0xE                        ; 0812FD00
lsl   r4,r4,0x1C                    ; 0812FD02
and   r2,r4                         ; 0812FD04
bne   @@Code0812FD0C                ; 0812FD06
pop   {r4}                          ; 0812FD08
mov   pc,lr                         ; 0812FD0A

@@Code0812FD0C:
mov   r3,r12                        ; 0812FD0C
mov   r4,0x3                        ; 0812FD0E
ror   r3,r4                         ; 0812FD10
tst   r2,r3                         ; 0812FD12
beq   @@Code0812FD1A                ; 0812FD14
lsr   r4,r1,0x3                     ; 0812FD16
add   r0,r0,r4                      ; 0812FD18
@@Code0812FD1A:
mov   r3,r12                        ; 0812FD1A
mov   r4,0x2                        ; 0812FD1C
ror   r3,r4                         ; 0812FD1E
tst   r2,r3                         ; 0812FD20
beq   @@Code0812FD28                ; 0812FD22
lsr   r4,r1,0x2                     ; 0812FD24
add   r0,r0,r4                      ; 0812FD26
@@Code0812FD28:
mov   r3,r12                        ; 0812FD28
mov   r4,0x1                        ; 0812FD2A
ror   r3,r4                         ; 0812FD2C
tst   r2,r3                         ; 0812FD2E
beq   @@Code0812FD36                ; 0812FD30
lsr   r4,r1,0x1                     ; 0812FD32
add   r0,r0,r4                      ; 0812FD34
@@Code0812FD36:
pop   {r4}                          ; 0812FD36
mov   pc,lr                         ; 0812FD38

@@Code0812FD3A:
push  {lr}                          ; 0812FD3A
bl    Return0812FC08                ; 0812FD3C
mov   r0,0x0                        ; 0812FD40
pop   {pc}                          ; 0812FD42

Sub0812FD44:
mov   r2,r0                         ; 0812FD44
mov   r0,r1                         ; 0812FD46
sub   r1,0x1                        ; 0812FD48
cmp   r0,0x0                        ; 0812FD4A
beq   @@Return                      ; 0812FD4C
mov   r3,0x0                        ; 0812FD4E
@@Loop0812FD50:
strb  r3,[r2]                       ; 0812FD50
add   r2,0x1                        ; 0812FD52
mov   r0,r1                         ; 0812FD54
sub   r1,0x1                        ; 0812FD56
cmp   r0,0x0                        ; 0812FD58
bne   @@Loop0812FD50                ; 0812FD5A
@@Return:
bx    lr                            ; 0812FD5C
.pool                               ; 0812FD5E

Sub0812FD60:
push  {r4-r5,lr}                    ; 0812FD60
mov   r5,r0                         ; 0812FD62
mov   r4,r5                         ; 0812FD64
mov   r3,r1                         ; 0812FD66
cmp   r2,0xF                        ; 0812FD68
bls   @@Code0812FDA0                ; 0812FD6A
mov   r0,r3                         ; 0812FD6C
orr   r0,r5                         ; 0812FD6E
mov   r1,0x3                        ; 0812FD70
and   r0,r1                         ; 0812FD72
cmp   r0,0x0                        ; 0812FD74
bne   @@Code0812FDA0                ; 0812FD76
mov   r1,r5                         ; 0812FD78
@@Code0812FD7A:
ldmia r3!,{r0}                      ; 0812FD7A
stmia r1!,{r0}                      ; 0812FD7C
ldmia r3!,{r0}                      ; 0812FD7E
stmia r1!,{r0}                      ; 0812FD80
ldmia r3!,{r0}                      ; 0812FD82
stmia r1!,{r0}                      ; 0812FD84
ldmia r3!,{r0}                      ; 0812FD86
stmia r1!,{r0}                      ; 0812FD88
sub   r2,0x10                       ; 0812FD8A
cmp   r2,0xF                        ; 0812FD8C
bhi   @@Code0812FD7A                ; 0812FD8E
cmp   r2,0x3                        ; 0812FD90
bls   @@Code0812FD9E                ; 0812FD92
@@Code0812FD94:
ldmia r3!,{r0}                      ; 0812FD94
stmia r1!,{r0}                      ; 0812FD96
sub   r2,0x4                        ; 0812FD98
cmp   r2,0x3                        ; 0812FD9A
bhi   @@Code0812FD94                ; 0812FD9C
@@Code0812FD9E:
mov   r4,r1                         ; 0812FD9E
@@Code0812FDA0:
sub   r2,0x1                        ; 0812FDA0
mov   r0,0x1                        ; 0812FDA2
neg   r0,r0                         ; 0812FDA4
cmp   r2,r0                         ; 0812FDA6
beq   @@Code0812FDBA                ; 0812FDA8
mov   r1,r0                         ; 0812FDAA
@@Code0812FDAC:
ldrb  r0,[r3]                       ; 0812FDAC
strb  r0,[r4]                       ; 0812FDAE
add   r3,0x1                        ; 0812FDB0
add   r4,0x1                        ; 0812FDB2
sub   r2,0x1                        ; 0812FDB4
cmp   r2,r1                         ; 0812FDB6
bne   @@Code0812FDAC                ; 0812FDB8
@@Code0812FDBA:
mov   r0,r5                         ; 0812FDBA
pop   {r4-r5,pc}                    ; 0812FDBC
.pool                               ; 0812FDBE
