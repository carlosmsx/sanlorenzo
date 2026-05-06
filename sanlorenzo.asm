; Marcha de San Lorenzo
; 2026 by Carlos Escobar
;
; Compilado con Telemark Assembler (TASM) version 3.2
; Basado en el proyecto darkside.asm
;

#include "notas.asm"
#define	RomSize(kbytes) .fill	(kbytes * 1024) - $ + StartProgram
        .ORG     4000h

StartProgram:

PITCH_POS 	.EQU	28
SUSTAIN_POS 	.EQU	PITCH_POS+32
NOISE_POS 	.EQU	SUSTAIN_POS+32
P_EVOL_POS 	.EQU	NOISE_POS+32
TITULO_POS 	.EQU	5*32
AUTOR_POS 	.EQU	6*32
DEVELOPER_POS 	.EQU	7*32

Xc      .equ 128-4
Yc      .equ 86-4

DELAY   .EQU    08000h
CONT    .EQU    08002h
NOISE	.EQU    08004h
SUSTAIN .EQU    08006H
P_EVOL  .EQU    08007H

STAT_A  .EQU    08010H
STAT_B  .EQU    08020H
STAT_C  .EQU    08030H

BOTTOM  .EQU    0FC48H

CHSNS	.EQU	0009Ch
CHGET	.EQU	0009Fh

DISSCR  .equ 041h
ENASCR  .equ 044h
WRTVDP  .equ 047h
RDVRM   .equ 04Ah
WRTVRM  .equ 04Dh
SETRD   .equ 050h
SETWRT  .equ 053h
FILVRM  .equ 056h
LDIRMV  .equ 059h
LDIRVM  .equ 05Ch

CHGMOD  .equ 05Fh
CHGCLR  .equ 062h
CLRSPR  .equ 069h

INITXT  .equ 06Ch
INIT32  .equ 06Fh
INIGRP  .equ 072h
INIMLT  .equ 075h
SETTXT  .equ 078h
SETT32  .equ 07Bh
SETGRP  .equ 07Eh
SETMLT  .equ 081h

FORCLR  .equ 0F3E9h
BAKCLR  .equ 0F3EAh
BDRCLR  .equ 0F3EBh

GRPNAM  .equ 0F3C7h
GRPCOL  .equ 0F3C9h
GRPCGP  .equ 0F3CBh
GRPATR  .equ 0F3CDh
GRPPAT  .equ 0F3CFh

NAMBAS  .equ 0F922h
CGPBAS  .equ 0F924h
PATBAS  .equ 0F926h
ATRBAS  .equ 0F928h

SCRMOD  .equ 0FCB0h

; --- Cabecera ROM ---
ID:     .DB      41h, 42h
INIT:   .DW    	 INSTALL
STAT:	.DW	 0
DEV:    .DW      0
TEXT:   .DW      0
        .DB      0,0,0,0,0,0

; ============================================================
; EJEC: se llama desde el hook de interrupcion VDP
; ============================================================
EJEC:
	DI
	PUSH	HL
	PUSH	BC
	PUSH	DE
	PUSH	IX
	PUSH	AF

        LD      HL,(CONT)
	DEC	HL
        LD      (CONT),HL
	LD	A,H
	OR	L
	RET	NZ

        LD      HL,(DELAY)
        LD      (CONT),HL

	LD	IX,STAT_A
	CALL	PLAY

	LD	IX,STAT_B
	CALL	PLAY

	;LD	IX,STAT_C	; Canal C deshabilitado por ahora
	;CALL	PLAY

	CALL	CHECK
	CALL	TECLADO
	CALL	TICK_STARS

        POP     AF
        POP     IX
        POP     DE
        POP     BC
        POP     HL
	EI
	RET

HOOK:	RST	30h
	.DB	1
	.DW	EJEC
	RET

; ============================================================
; INSTALL: inicializa pantalla, estrellas, motor de audio
; ============================================================
INSTALL:
	CALL	PRISMA
	DI

        LD      HL,(BOTTOM)
        LD      DE,36
        ADD     HL,DE
        LD      (BOTTOM),HL

	LD	DE,0FD9FH
	LD	HL,HOOK
	LD	BC,5
	LDIR

	; --- Ajuste de tempo ---
	; Con DELAY=1 e interrupciones a 60Hz (NTSC) o 50Hz (PAL):
	;   P_EVOL=4 → cada unidad de duracion = 5 ticks
	;   Negra (dur=6) a 60Hz = 6*5/60 = 0.5s = 120 BPM  ← marcha tipica
	;   Negra (dur=6) a 50Hz = 6*5/50 = 0.6s = 100 BPM  ← marcha lenta
	; Ajustar DELAY para cambiar el tempo global.
        LD      HL,1
        LD      (DELAY),HL
        LD      (CONT),HL

	CALL	SET00
	CALL	VOL0
	CALL	SET0
	CALL	INIT_STARS
	EI

infinito:
	JR	infinito

; ============================================================
; PRISMA: inicializa pantalla SCREEN 2 y muestra titulo
; ============================================================
PRISMA:
        call    DISSCR
        ld      a,2
        call    CHGMOD
        call    INIGRP
        ld      a,0ffh
        ld      (FORCLR),a
        ld      a,1
        ld      (BAKCLR),a
        ld      (BDRCLR),a
        call    CHGCLR
        call    CLRSPR
	LD	HL,2000h
	LD	BC,768*8
	LD	A,0f1h
	CALL	FILVRM
	LD	HL,1a00h
	LD	BC,256
	LD	A,32
	CALL	FILVRM
	LD	HL,7103
	LD	DE,1000h
	LD	BC,256*8
	CALL	LDIRVM

;NUMEROS
	LD	HL,7487
	LD	B,80
	IN	A,(99h)
	LD	A,080h
	OUT	(99h),A
	LD	A,040H + 011h
	OUT	(99h),A
PRISMA_LOOP1:
	LD	A,(HL)
	LD	C,A
	SRL	A
	OR	C
	OUT	(98h),A
	INC	HL
	DJNZ	PRISMA_LOOP1
;LETRAS
	LD	HL,7623
	LD	B,208
	IN	A,(99h)
	LD	A,08h
	OUT	(99h),A
	LD	A,040H + 012h
	OUT	(99h),A
PRISMA_LOOP2:
	LD	A,(HL)
	LD	C,A
	SRL	A
	OR	C
	OUT	(98h),A
	INC	HL
	DJNZ	PRISMA_LOOP2

;LETRAS MINUSCULAS
	LD	HL,7871
	LD	B,208
	IN	A,(99h)
	LD	A,0
	OUT	(99h),A
	LD	A,040H + 013h
	OUT	(99h),A
PRISMA_LOOP3:
	LD	A,(HL)
	LD	C,A
	SRL	A
	OR	C
	OUT	(98h),A
	INC	HL
	DJNZ	PRISMA_LOOP3

;COLORES LETRAS
	IN	A,(99h)
	LD	A,0
	OUT	(99h),A
	LD	A,040H + 030h
	OUT	(99h),A
	LD	B,0
PRISMA_LOOP4:
	LD	A,0E0h
	OUT	(98h),A
	LD	A,0E0h
	OUT	(98h),A
	LD	A,0f0h
	OUT	(98h),A
	LD	A,0f0h
	OUT	(98h),A
	LD	A,0f0h
	OUT	(98h),A
	LD	A,0e0h
	OUT	(98h),A
	LD	A,0E0h
	OUT	(98h),A
	LD	A,0E0h
	OUT	(98h),A
	DJNZ	PRISMA_LOOP4

;COLORES NUMEROS
	IN	A,(99h)
	LD	A,080h
	OUT	(99h),A
	LD	A,040H + 031h
	OUT	(99h),A
	LD	B,10
PRISMA_LOOP5:
	LD	A,0A0h
	OUT	(98h),A
	LD	A,0A0h
	OUT	(98h),A
	LD	A,0B0h
	OUT	(98h),A
	LD	A,0B0h
	OUT	(98h),A
	LD	A,0B0h
	OUT	(98h),A
	LD	A,0A0h
	OUT	(98h),A
	LD	A,0A0h
	OUT	(98h),A
	LD	A,0A0h
	OUT	(98h),A
	DJNZ	PRISMA_LOOP5

	LD	HL,PRISMA_DAT+1
PRISMA1_POS:
	LD	A,(HL)
	INC	HL
	CP	0
	JR	Z,PRISMA1_END
	OUT	(99h),A
	LD	A,(HL)
	INC	HL
	OR	40h
	OUT	(99h),A
PRISMA1_1:
	LD	A,(HL)
	INC	HL
	CP	0
	JR	Z,PRISMA1_POS
PRISMA1_2:
	OUT	(98h),A
	INC	HL
	JR	PRISMA1_1
PRISMA1_END:

	LD	HL,PRISMA_DAT+1
PRISMA2_POS:
	LD	A,(HL)
	INC	HL
	CP	0
	JR	Z,PRISMA2_END
	OUT	(99h),A
	LD	A,(HL)
	INC	HL
	ADD	A,20h
	OR	40h
	OUT	(99h),A
PRISMA2_1:
	LD	A,(HL)
	INC	HL
	CP	0
	JR	Z,PRISMA2_POS
PRISMA2_2:
	LD	A,(HL)
	INC	HL
	OUT	(98h),A
	JR	PRISMA2_1
PRISMA2_END:

	LD	HL,TITULO
	LD	A,TITULO_POS
	CALL	PRINTSTR
	LD	HL,AUTOR
	LD	A,AUTOR_POS
	CALL	PRINTSTR
	LD	HL,DEVELOPER
	LD	A,DEVELOPER_POS
	CALL	PRINTSTR

        call    ENASCR
	ret

PRISMA_DAT:
#include "prisma.asm"

; ============================================================
; PRINTSTR / HEX: utilidades de visualizacion en VRAM
; ============================================================
PRINTSTR:
	PUSH	AF
	IN	A,(99h)
	POP	AF
	OUT	(99h),A
	LD	A,040h + 1ah
	OUT	(99h),A
PRINTSTR1:
	LD	A,(HL)
	CP	0
	RET	Z
	OUT	(98h),A
	INC	HL
	JR	PRINTSTR1

HEX:	PUSH	AF
	SRL	A
	SRL	A
	SRL	A
	SRL	A
	CP	10
	JR	C,HEX1
	ADD	A,'A'-'0'-10
HEX1:	ADD	A,'0'
	OUT	(98h),A
	POP	AF
	AND	0Fh
	CP	10
	JR	C,HEX2
	ADD	A,'A'-'0'-10
HEX2:	ADD	A,'0'
	OUT	(98h),A
	RET

; ============================================================
; TECLADO: control interactivo (q/a=pitch, w/s=sustain,
;           e/d=noise, r/f=p_evol, t/g=estrellas, espacio)
; ============================================================
TECLADO:
	CALL	CHSNS
	RET	Z
	CALL	CHGET
	CP	'q'
	JR	Z, ARRIBA
	CP	'a'
	JR	Z, ABAJO
	CP	'w'
	JR	Z,SUSTAIN_UP
	CP	's'
	JR	Z,SUSTAIN_DOWN
	CP	'e'
	JP	Z,NOISE_UP
	CP	'd'
	JP	Z,NOISE_DOWN
	CP	'r'
	JP	Z,P_EVOL_UP
	CP	'f'
	JP	Z,P_EVOL_DOWN
	CP	't'
	JP	Z,STAR_FASTER
	CP	'g'
	JP	Z,STAR_SLOWER
	CP	' '
	JP	Z,TOGGLE_STARS
	RET

ARRIBA:
	LD	IX,STAT_B
	LD	L,(IX+10)
	LD	H,(IX+11)
	INC	HL
	LD	(IX+10),L
	LD	(IX+11),H
	JR	PITCH_PRINT
ABAJO:
	LD	IX,STAT_B
	LD	L,(IX+10)
	LD	H,(IX+11)
	DEC	HL
	LD	(IX+10),L
	LD	(IX+11),H
PITCH_PRINT:
	IN	A,(99h)
	LD	A,PITCH_POS
	OUT	(99h),A
	LD	A,040h + 1ah
	OUT	(99h),A
	LD	A,H
	CALL	HEX
	LD	A,L
	CALL	HEX
	RET

SUSTAIN_UP:
	LD	A,(SUSTAIN)
	INC	A
	LD	(SUSTAIN),A
	JR 	SUSTAIN_PRINT
SUSTAIN_DOWN:
	LD	A,(SUSTAIN)
	DEC	A
	LD	(SUSTAIN),A
SUSTAIN_PRINT:
	PUSH	AF
	IN	A,(99h)
	LD	A,SUSTAIN_POS
	OUT	(99h),A
	LD	A,040h + 1ah
	OUT	(99h),A
	POP	AF
	CALL	HEX
	RET

NOISE_UP:
	LD	A,(NOISE)
	INC	A
	LD	(NOISE),A
	JR	NOISE_PRINT
NOISE_DOWN:
	LD	A,(NOISE)
	DEC	A
	LD	(NOISE),A
NOISE_PRINT:
	PUSH	AF
	LD	E,A
	LD	A,6
	CALL	WR_PSG
	IN	A,(99h)
	LD	A,NOISE_POS
	OUT	(99h),A
	LD	A,040h + 1ah
	OUT	(99h),A
	POP	AF
	CALL	HEX
	RET

P_EVOL_UP:
	LD	A,(P_EVOL)
	INC	A
	LD	(P_EVOL),A
	JR	P_EVOL_PRINT
P_EVOL_DOWN:
	LD	A,(P_EVOL)
	DEC	A
	LD	(P_EVOL),A
P_EVOL_PRINT:
	PUSH	AF
	IN	A,(99h)
	LD	A,P_EVOL_POS
	OUT	(99h),A
	LD	A,040h + 1ah
	OUT	(99h),A
	POP	AF
	CALL	HEX
	RET

; ============================================================
; SET00: inicializa variables de estado de los tres canales
; ============================================================
SET00:
        LD      IX,STAT_A
	LD	(IX+10),0
	LD	(IX+11),0
	LD	(IX+12),0
	LD	(IX+13),0
        LD      IX,STAT_B
	LD	(IX+10),0
	LD	(IX+11),0
	LD	(IX+12),0
	LD	(IX+13),0
        LD      IX,STAT_C
	LD	(IX+10),0
	LD	(IX+11),0
	LD	(IX+12),0
	LD	(IX+13),0
	LD	IX,SUSTAIN
	LD	(IX+0),3
	LD	IX,NOISE
	LD	(IX+0),0
	LD	IX,P_EVOL
	LD	(IX+0),3	; P_EVOL=4 → cada unidad dur = 5 ticks
	LD	A,0
	LD	(STARS_ON),A
	RET

; ============================================================
; SET0: apunta cada canal a su tabla de notas y hace FETCH
;       de la primera nota de cada canal
; ============================================================
SET0:
	PUSH	HL
	LD	HL,CANALA
        LD      (STAT_A),HL
        LD      IX,STAT_A
        LD      (IX+7),8	; reg vol canal A
        LD      (IX+8),0	; reg freq fine A
        LD      (IX+9),1	; reg freq coarse A
	CALL	FETCH

	LD	HL,CANALB
        LD      (STAT_B),HL
        LD      IX,STAT_B
        LD      (IX+7),9	; reg vol canal B
        LD      (IX+8),2	; reg freq fine B
        LD      (IX+9),3	; reg freq coarse B
	CALL	FETCH

	; Canal C deshabilitado por ahora
	;LD	HL,CANALC
        ;LD      (STAT_C),HL
        ;LD      IX,STAT_C
        ;LD      (IX+7),10	; reg vol canal C
        ;LD      (IX+8),4	; reg freq fine C
        ;LD      (IX+9),5	; reg freq coarse C
	;CALL	FETCH

	POP	HL
	RET

VOL0:	LD	A,8
	LD	E,0
	CALL	WR_PSG
	LD	A,9
	LD	E,0
	CALL	WR_PSG
	LD	A,10
	LD	E,0
	CALL	WR_PSG
	LD	A,(NOISE)
	LD	E,A
	LD	A,6
	CALL	WR_PSG
	LD	A,7
	LD	E,10111100B	; Tono A+B ON, tono C OFF, ruido A+B+C OFF
	CALL	WR_PSG
	RET

; CHECK: si canal A llego al final (puntero == CANALB) reinicia
CHECK:  LD      HL,(STAT_A)
	LD	DE,CANALB
	SCF
	CCF
	SBC	HL,DE
	LD	A,H
	OR	L
	RET	NZ
	CALL	SET0
	RET

; ============================================================
; FETCH: pre-carga los parametros de la proxima nota
;
; Estructura de cada entrada en CANALx (3 bytes):
;   +0  duracion   (ver tabla de duraciones abajo)
;   +1  envolvente (indice 0..7 → EVOL0..EVOL_SIL)
;   +2  nota       (ver tabla de notas abajo)
; ============================================================
FETCH:	LD	L,(IX+0)
	LD	H,(IX+1)
	PUSH	HL
	POP	IY

	LD	A,(P_EVOL)
	LD	B,A
	LD	A,(IY+0)
	LD	C,A
MULT:	ADD	A,C
	DJNZ	MULT

	LD	(IX+2),A
	LD	H,(IY+1)
	LD	L,0
	LD	DE, EVOL0
	ADD	HL,DE

	PUSH	HL
	LD	HL,STAT_C
	PUSH	IX
	POP	DE
	SBC	HL,DE
	LD	A,H
	OR	L
	POP	HL
	JR	Z,skip_sustain

	LD	A,(SUSTAIN)
	LD	E,0
	LD	D,A
	ADD	HL,DE

skip_sustain:
	LD	(IX+3),L
	LD	(IX+4),H
	LD	L,(IY+2)
	LD	H,0
	LD	DE,TABLA
        ADD     HL,HL
	ADD	HL,DE
	LD	A,(HL)
	LD	(Ix+5),A
	INC	HL
	LD	A,(HL)
	LD	(IX+6),A

	RET

SETVOL: LD      L,(IX+3)
	LD	H,(IX+4)
	LD	A,(HL)
	CP	255
	RET	Z
	AND	0FH
	LD	E,A
	LD	A,(IX+7)
	CALL	WR_PSG
	INC	HL
	LD	(IX+3),L
	LD	(IX+4),H
	RET

NOTA:	LD	H,(IX+5)
	LD	L,(IX+6)
	LD	C,(IX+10)
	LD	B,(IX+11)
	ADD	HL,BC
	LD	E,H
	LD	A,(IX+9)
	CALL	WR_PSG
	LD	E,L
	LD	A,(IX+8)
	CALL	WR_PSG
	RET

PLAY:	CALL	SETVOL
	CALL	NOTA
	LD	A,(IX+2)
	DEC	A
	LD	(IX+2),A
        OR      A
	RET	NZ

NEXT:	LD	L,(IX+0)
	LD	H,(Ix+1)
	INC	HL
        INC     HL
        INC     HL
	LD	(IX+0),L
	LD	(IX+1),H
	CALL	FETCH
	RET

WR_PSG:	PUSH	AF
	OUT	(0A0H),A
	LD	A,E
	OUT	(0A1H),A
	POP	AF
	RET

; ============================================================
; TABLA DE FRECUENCIAS PSG
; Indice = octava*16 + nota
;   octava: 0-6 (octava 0 del darkside = octava 2 del BASIC)
;   nota:   1=C  2=C# 3=D  4=D# 5=E  6=F  7=F# 8=G  9=G# 10=A 11=A# 12=B
;           0=silencio
; Mapeo octavas BASIC → darkside:
;   BASIC o2 → darkside octava 0
;   BASIC o3 → darkside octava 1
;   BASIC o4 → darkside octava 2   ← octava principal de la melodia
;   BASIC o5 → darkside octava 3
; ============================================================
TABLA:	.DB 0,0,13,92,12,156,11,231,11,60,10,154,10,2,9,114,8,234,8,106,7,241,7,127,7,19,0,0,0,0,0,0
	.DB 0,0,6,174,6,78,5,243,5,158,5,77,5,1,4,185,4,117,4,53,3,248,3,191,3,137,0,0,0,0,0,0
	.DB 0,0,3,87,3,39,2,249,2,207,2,166,2,128,2,92,2,58,2,26,1,252,1,223,1,196,0,0,0,0,0,0
	.DB 0,0,1,171,1,147,1,124,1,103,1,83,1,64,1,46,1,29,1,13,0,254,0,239,0,226,0,0,0,0,0,0
	.DB 0,0,0,213,0,201,0,190,0,179,0,169,0,160,0,151,0,142,0,134,0,127,0,119,0,113,0,0,0,0,0,0
	.DB 0,0,0,106,0,100,0,95,0,89,0,84,0,80,0,75,0,71,0,67,0,63,0,59,0,56,0,0,0,0,0,0
	.DB 0,0,0,53,0,50,0,47,0,44,0,42,0,40,0,37,0,35,0,33,0,31,0,29,0,28,0,0,0,0,0,0

; ============================================================
; TABLAS DE ENVOLVENTE (EVOL0..EVOL_SIL)
;
; Indice de envolvente en cada nota .DB dur, ENV, nota:
;   0 = EVOL0     decaimiento largo  (bueno para notas cortas / pizzicato)
;   1 = EVOL1     sostenido vibrato  (bueno para melodia)
;   2 = EVOL2     sostenido largo    (bueno para notas largas)
;   3 = EVOL3     volumen pleno flat (sostenuto sin vibrato)
;   4 = EVOL4     ataque lento       (pad / efecto)
;   5 = EVOL5     ataque muy lento
;   6 = EVOL6     modo envolvente HW (usa el envelope del PSG)
;   7 = EVOL_SIL  silencio total     (para silencios/pausas/rests)
; ============================================================
EVOL0:	.DB 13,12,11,11,10,10,10,9,9,9,9,8,8,8,7,7,7,6,6,6,5,5,5,4,4,4,4,3,3,3,3,2
	.DB 2,2,2,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255

EVOL1:	.DB 15,14,14,13,13,13,12,12,12,12,11,11,11,11,11,10,10,10,10,10,9,9,9,8,8,8,7,7,7,8,8,8
	.DB 9,9,7,7,5,5,7,7,9,9,7,7,5,5,7,7,9,9,7,7,5,5,7,7,9,9,7,7,5,5,7,7
	.DB 9,9,7,7,5,5,7,7,9,9,7,7,5,5,7,7,9,9,7,7,5,5,7,7,9,9,7,7,5,5,7,7
	.DB 8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5
	.DB 8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5,8,5,1,5
	.DB 7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4
	.DB 7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4,7,4,1,4
	.DB 3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,255

EVOL2:	.DB 15,14,14,13,13,13,13,12,12,12,12,12,12,11,11,11,11,11,11,11,11,10,10,10,10,10,10,10,10,10,10,10
	.DB 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,8
	.DB 8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8
	.DB 8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,7
	.DB 7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	.DB 7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	.DB 7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	.DB 7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,255

EVOL3:	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,255

EVOL4:	.DB 10,11,12,13,14,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,255

EVOL5:	.DB 5,9,10,13,14,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,255

EVOL6:	.DB 1fh,1eh,1eh,1dh,1dh,1dh,1dh,1ch,1ch,1ch,1ch,1ch,1ch,1bh,1bh,1bh,1bh,1bh,1bh,1bh,1bh,1ah,1ah,1ah,1ah,1ah,1ah,1ah,1ah,1ah,1ah,1ah
	.DB 19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,19h,18h
	.DB 18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h
	.DB 18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,18h,17h
	.DB 17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h
	.DB 17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h
	.DB 17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h
	.DB 17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,17h,255

; EVOL_SIL: envolvente de silencio total (para silencios/pausas del BASIC)
; Volumen = 0 en todos los ticks → nota completamente muda
EVOL_SIL:
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.DB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255

; ============================================================
; DATOS DE NOTA  (formato: .DB duracion, envolvente, nota)
;
; DURACIONES con P_EVOL=4, DELAY=1 a ~60Hz (NTSC) → 120 BPM:
;   1  = semicorchea (1/16)  ~125ms
;   2  = corchea     (1/8)   ~250ms
;   3  = corchea con puntillo(3/16) ~375ms
;   6  = negra       (1/4)   ~500ms   ← pulso de la marcha
;   9  = negra con puntillo  (3/8)   ~750ms
;  12  = blanca      (1/2)  ~1000ms
;  18  = blanca con puntillo (3/4)  ~1500ms
;  24  = redonda     (1)    ~2000ms
; (A 50Hz PAL el tempo sube un 20% → ajustar DELAY o P_EVOL)
;
; INDICES DE ENVOLVENTE:
;   0=EVOL0(decay)  1=EVOL1(vibrato)  2=EVOL2(sostenido)
;   3=EVOL3(pleno)  4=EVOL4(atk lento) 5=EVOL5(atk muy lento)
;   6=EVOL6(hw env) 7=EVOL_SIL(silencio)
;
; CODIGOS DE NOTA  →  (octava_darkside << 4) | posicion
;   posicion: C=1 C#=2 D=3 D#=4 E=5 F=6 F#=7 G=8 G#=9 A=10 A#=11 B=12
;   silencio: 0
;   Constantes de notas.asm:  A2=0x2A  D2=0x23  F2S=0x27  etc.
;
; MAPEO OCTAVAS BASIC → DARKSIDE:
;   BASIC o1 → darkside 0 (transponer +1 octava)
;   BASIC o2 → darkside 0
;   BASIC o3 → darkside 1
;   BASIC o4 → darkside 2   ← melodia principal
;   BASIC o5 → darkside 3
;
; ORDEN DE SECCIONES (igual al GOSUB del BASIC):
;   1. Intro/Melodia     (lineas BASIC 1010-2035)
;   2. Desarrollo        (lineas BASIC 2040-3260)
;   3. Puente            (lineas BASIC 3310-3415)
;   4. Estribillo 1      (lineas BASIC 3420-4035)
;   5. Coda              (lineas BASIC 4040-4960)
;   6. Estribillo 2      (lineas BASIC 3420-4035 repetido)
;
; CHECK reinicia la cancion cuando STAT_A llega a CANALB.
; CANALB y CANALC deben tener la misma duracion total que CANALA.
; ============================================================

CANALA:
#include "canal_a_data.asm"

CANALB:
#include "canal_b_data.asm"

CANALC:
	; Canal C silencio toda la cancion (canal deshabilitado)
	.DB 96,7,0

#include "estrella.asm"

; ============================================================
; STRINGS DE PRESENTACION (mostrados por PRISMA via PRINTSTR)
; ============================================================
TITULO:		.DB ">MARCHA DE SAN LORENZO",0
AUTOR:		.DB " MUSICA: CAYETANO SILVA 1901",0
DEVELOPER:	.DB " CarlosMSX 2026",0

	RomSize(32)
	.END
