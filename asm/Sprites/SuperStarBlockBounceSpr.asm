StarBlockBounceSpr_Init:
; sprite 004 init
ldr   r1,[r0,0x4]                   ; 08061244
asr   r1,r1,0x8                     ; 08061246
mov   r2,r0                         ; 08061248
add   r2,0x6A                       ; 0806124A
strh  r1,[r2]                       ; 0806124C
ldr   r1,=0xFFFFFC80                ; 0806124E
str   r1,[r0,0xC]                   ; 08061250
bx    lr                            ; 08061252
.pool                               ; 08061254

StarBlockBounceSpr_Main:
; sprite 004 main
push  {r4-r5,lr}                    ; 08061258
mov   r4,r0                         ; 0806125A
bl    Sub0804C330                   ; 0806125C
cmp   r0,0x0                        ; 08061260
beq   @@Code08061266                ; 08061262
b     @@Return                      ; 08061264
@@Code08061266:
mov   r0,r4                         ; 08061266
bl    Sub080DF7E4                   ; 08061268
mov   r0,r4                         ; 0806126C
add   r0,0x6E                       ; 0806126E
ldrh  r1,[r0]                       ; 08061270
mov   r5,r0                         ; 08061272
cmp   r1,0x0                        ; 08061274
bne   @@Code08061318                ; 08061276
ldr   r0,[r4,0xC]                   ; 08061278
cmp   r0,0x0                        ; 0806127A
blt   @@Code08061318                ; 0806127C
add   r0,r1,0x1                     ; 0806127E
strh  r0,[r5]                       ; 08061280
ldr   r0,=0x03002200                ; 08061282
ldr   r1,=0x48CE                    ; 08061284
add   r0,r0,r1                      ; 08061286  03006ACE
ldrh  r1,[r0]                       ; 08061288  star count
ldr   r0,=0x012B                    ; 0806128A
cmp   r1,r0                         ; 0806128C
bhi   @@Code080612E8                ; 0806128E
ldr   r5,=0x03007240                ; 08061290  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 08061292
ldr   r2,=0x29CC                    ; 08061294
add   r0,r0,r2                      ; 08061296
ldrh  r1,[r0]                       ; 08061298
mov   r0,0x7                        ; 0806129A
and   r0,r1                         ; 0806129C
cmp   r0,0x0                        ; 0806129E
bne   @@Code080612E8                ; 080612A0
mov   r0,0xD1                       ; 080612A2
lsl   r0,r0,0x1                     ; 080612A4  1A2: star
bl    Sub0804A2AC                   ; 080612A6
lsl   r0,r0,0x18                    ; 080612AA
asr   r1,r0,0x18                    ; 080612AC
cmp   r1,0x0                        ; 080612AE
blt   @@Return                      ; 080612B0
mov   r0,0xB0                       ; 080612B2
mul   r0,r1                         ; 080612B4
mov   r3,0x95                       ; 080612B6
lsl   r3,r3,0x2                     ; 080612B8
add   r0,r0,r3                      ; 080612BA
ldr   r1,[r5]                       ; 080612BC
add   r1,r1,r0                      ; 080612BE
ldr   r0,[r4]                       ; 080612C0
str   r0,[r1]                       ; 080612C2
ldr   r0,[r4,0x4]                   ; 080612C4
str   r0,[r1,0x4]                   ; 080612C6
ldr   r0,=0xFFFFFD00                ; 080612C8
str   r0,[r1,0xC]                   ; 080612CA
b     @@Return                      ; 080612CC
.pool                               ; 080612CE

@@Code080612E8:
mov   r0,r4                         ; 080612E8
mov   r1,0x4                        ; 080612EA
bl    Sub0804A63C                   ; 080612EC
ldr   r1,=0x03002200                ; 080612F0
ldr   r0,[r4]                       ; 080612F2
asr   r0,r0,0x8                     ; 080612F4
ldr   r3,=0x47E4                    ; 080612F6
add   r2,r1,r3                      ; 080612F8
ldrh  r2,[r2]                       ; 080612FA
sub   r0,r0,r2                      ; 080612FC
ldr   r2,=0x4058                    ; 080612FE
add   r1,r1,r2                      ; 08061300
strh  r0,[r1]                       ; 08061302
mov   r0,0x6B                       ; 08061304
bl    PlayYISound                   ; 08061306
b     @@Return                      ; 0806130A
.pool                               ; 0806130C

@@Code08061318:
ldr   r0,[r4,0x4]                   ; 08061318
asr   r0,r0,0x8                     ; 0806131A
mov   r3,r4                         ; 0806131C
add   r3,0x6A                       ; 0806131E
ldrh  r1,[r3]                       ; 08061320
sub   r0,r0,r1                      ; 08061322
cmp   r0,0x0                        ; 08061324
blt   @@Return                      ; 08061326
ldrh  r0,[r5]                       ; 08061328
add   r0,0x1                        ; 0806132A
mov   r2,0x0                        ; 0806132C
strh  r0,[r5]                       ; 0806132E
ldr   r0,=0x03007240                ; 08061330  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08061332
ldr   r1,=0x2678                    ; 08061334
add   r0,r0,r1                      ; 08061336
ldr   r1,[r4]                       ; 08061338
asr   r1,r1,0x8                     ; 0806133A
strh  r1,[r0,0x2]                   ; 0806133C
ldrh  r1,[r3]                       ; 0806133E
strh  r1,[r0,0x4]                   ; 08061340
ldrh  r1,[r3]                       ; 08061342
lsl   r1,r1,0x8                     ; 08061344
str   r1,[r4,0x4]                   ; 08061346
str   r2,[r4,0x14]                  ; 08061348
str   r2,[r4,0xC]                   ; 0806134A
mov   r1,0x1                        ; 0806134C
strh  r1,[r0]                       ; 0806134E
mov   r1,0x8A                       ; 08061350
lsl   r1,r1,0x8                     ; 08061352
strh  r1,[r0,0x6]                   ; 08061354
bl    Sub08018668                   ; 08061356
mov   r0,r4                         ; 0806135A
bl    DespawnSprite                 ; 0806135C
@@Return:
pop   {r4-r5}                       ; 08061360
pop   {r0}                          ; 08061362
bx    r0                            ; 08061364
.pool                               ; 08061366
