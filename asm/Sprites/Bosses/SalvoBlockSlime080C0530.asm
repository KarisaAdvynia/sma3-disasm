Sub080C0530:
push  {lr}                          ; 080C0530
mov   r2,r0                         ; 080C0532
ldr   r0,=0x03007240                ; 080C0534  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C0536
ldr   r1,=0x2AAC                    ; 080C0538
add   r0,r0,r1                      ; 080C053A
ldrh  r0,[r0]                       ; 080C053C
cmp   r0,0x67                       ; 080C053E
bne   @@Return                      ; 080C0540
ldr   r3,=0x03002200                ; 080C0542
ldr   r1,=0x47E4                    ; 080C0544
add   r0,r3,r1                      ; 080C0546
ldrh  r1,[r0]                       ; 080C0548
mov   r0,0xC2                       ; 080C054A
lsl   r0,r0,0x2                     ; 080C054C
cmp   r1,r0                         ; 080C054E
bhi   @@Return                      ; 080C0550
ldr   r1,=0x47EC                    ; 080C0552
add   r0,r3,r1                      ; 080C0554
ldrh  r1,[r0]                       ; 080C0556
ldr   r0,=0x0613                    ; 080C0558
cmp   r1,r0                         ; 080C055A
bls   @@Return                      ; 080C055C
ldr   r0,=0x0744                    ; 080C055E
cmp   r1,r0                         ; 080C0560
bhi   @@Return                      ; 080C0562
ldr   r1,[r2]                       ; 080C0564
cmp   r1,0x0                        ; 080C0566
bge   @@Code080C0590                ; 080C0568
mov   r0,0x80                       ; 080C056A
lsl   r0,r0,0x6                     ; 080C056C
str   r0,[r2]                       ; 080C056E
b     @@Return                      ; 080C0570
.pool                               ; 080C0572

@@Code080C0590:
ldr   r0,=0x0003FFFF                ; 080C0590
cmp   r1,r0                         ; 080C0592
ble   @@Code080C05A4                ; 080C0594
mov   r0,0xEC                       ; 080C0596
lsl   r0,r0,0xA                     ; 080C0598
str   r0,[r2]                       ; 080C059A
b     @@Return                      ; 080C059C
.pool                               ; 080C059E

@@Code080C05A4:
ldr   r1,[r2,0x4]                   ; 080C05A4
ldr   r0,=0x0006CFFF                ; 080C05A6
cmp   r1,r0                         ; 080C05A8
bgt   @@Code080C05B8                ; 080C05AA
mov   r0,0xDE                       ; 080C05AC
lsl   r0,r0,0xB                     ; 080C05AE
b     @@Code080C05C2                ; 080C05B0
.pool                               ; 080C05B2

@@Code080C05B8:
ldr   r0,=0x0007FFFF                ; 080C05B8
cmp   r1,r0                         ; 080C05BA
ble   @@Return                      ; 080C05BC
mov   r0,0xF2                       ; 080C05BE
lsl   r0,r0,0xB                     ; 080C05C0
@@Code080C05C2:
str   r0,[r2,0x4]                   ; 080C05C2
@@Return:
pop   {r0}                          ; 080C05C4
bx    r0                            ; 080C05C6
.pool                               ; 080C05C8
