; Single-cart pseudo-ROM

; Japanese version's internal header
Data0812FDC0:                   ; 0812FDC0

; 08133824 CpuFastSet
; 08133828 CpuSet
; 0813382C HuffUnCompReadNormal
; 08133830 RegisterRamReset

.org 0x08138A44
Data08138A44:                   ; 08138A44
.org 0x0813B244
Data0813B244:                   ; 0813B244

; 081338EC-08142543: first psuedo-ROM data sector

.org 0x08142544
Data08142544:                   ; 08142544

; 0815B32C CpuFastSet
; 0815B330 CpuSet
; 0815B334 RegisterRamReset
; 0815B348 RegisterRamReset
; 0815B34A SoftReset

.org 0x08163290
Data08163290:                   ; 08163290

.org 0x08163F90
