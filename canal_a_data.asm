	; ============================================================
	; SECCION 1: FANFARRON DE APERTURA  (BASIC lines 1010-1110)
	; BASIC o4 -> darkside oct3, o5 -> oct4, o3 -> oct2
	; Duraciones: 1/16=2, 1/8=4, dot1/8=6, 1/4=8
	; Envelope 3 = EVOL3 (sostenido), 7 = EVOL_SIL (silencio)
	; ============================================================

	; --- Fanfarron de apertura  (La-La-La-La / Fa#-Fa# / Re-Re escalando) ---
	; --- [C001] 1010: o4a8aaa8o5do4a ---
	; piano
	.DB 4,p,A3
	.DB 2,p,A3
	.DB 2,p,A3
	.DB 4,p,A3
	.DB 2,p,D4
	.DB 2,p,A3
	; --- [C002] 1020: o4f#8f#f#f#8af# ---
	.DB 4,p,F3S
	.DB 2,p,F3S
	.DB 2,p,F3S
	.DB 4,p,F3S
	.DB 2,p,A3
	.DB 2,p,F3S
	; --- [C003] 1030: o4d8ddd8f#d ---
	.DB 4,p,D3
	.DB 2,p,D3
	.DB 2,p,D3
	.DB 4,p,D3
	.DB 2,p,F3S
	.DB 2,p,D3
	; --- [C004] 1040: o3a8.bo4c#def# ---
	.DB 6,p,A2
	;crescendo
	.DB 2,p,B2
	.DB 2,mp,C3S
	.DB 2,mp,D3
	.DB 2,mf,E3
	.DB 2,mf,F3S
	; --- [C005] 1050: o4g4d#4 ---
	;forte
	.DB 8,f,G3
	.DB 8,f,D3S

	; --- Primera parte – tema A  (melodia principal, Re mayor) ---
	; --- [C006] 1110: o4f#er16o3abo4c#de ---
	.DB 2,f,F3S
	.DB 2,f,E3
	.DB 2,sil,0
	;piano
	;crescendo
	.DB 2,p,A2
	.DB 2,mp,B2
	.DB 2,mf,C3S
	.DB 2,f,D3
	.DB 2,f,E3
	; --- [C007] 1120: o4f#4c#4 ---
	.DB 8,f,F3S
	.DB 8,f,C3S
	; --- [C008] 1130: o4edr16c#edc#o3b ---
	.DB 2,f,E3
	.DB 2,f,D3
	.DB 2,sil,0
	.DB 2,f,C3S
	.DB 2,f,E3
	.DB 2,f,D3
	.DB 2,f,C3S
	.DB 2,f,B2
	; --- [C009] 1140: o3a8o4ao3ao4a8ao3a ---
	.DB 4,f,A2
	.DB 2,f,A3
	.DB 2,f,A2
	.DB 4,f,A3
	.DB 2,f,A3
	.DB 2,f,A2
	; --- [C010] 1150: o4a8ao3ao4a8ao3a ---
	.DB 4,f,A3
	.DB 2,f,A3
	.DB 2,f,A2
	.DB 4,f,A3
	.DB 2,f,A3
	.DB 2,f,A2
	; --- [C011] 1210: o4a8ao3ao4a8ao3a ---
	.DB 4,f,A3
	.DB 2,f,A3
	.DB 2,f,A2
	.DB 4,f,A3
	.DB 2,f,A3
	.DB 2,f,A2
	; --- [C012] 1220: o4a8r16o3ao4f#8.e ---
	.DB 4,f,A3
	.DB 2,sil,0
	;piano
	.DB 2,p,A2
	.DB 6,p,F3S
	.DB 2,p,E3


; --- Primera parte – tema B  (motivo de dos notas, bajo arpegiado) --- pag 4
	; --- [C013] 1230: o4d4..r16 ---
	.DB 14,p,D3
	.DB 2,sil,0
	; --- [C014] 1240: o3a8r16ao4f#8.e ---
	.DB 4,p,A2
	.DB 2,sil,0
	.DB 2,p,A2
	.DB 6,p,F3S
	.DB 2,p,E3
	; --- [C015] 1310: o4d4..r16 ---
	.DB 14,p,D3
	.DB 2,sil,0
	; --- [C016] 1320: o3a8r16ao4f#8.e ---
	.DB 4,p,A2
	.DB 2,sil,0
	.DB 2,p,A2
	.DB 6,p,F3S
	.DB 2,p,E3
	; --- [C017] 1330: o4d8.ef#8.g ---
	.DB 6,p,D3
	.DB 2,p,E3
	.DB 6,p,F3S
	.DB 2,p,G3
	; --- [C018] 1340: o4b8.ag8.f# ---
	.DB 6,p,B3
	.DB 2,p,A3
	.DB 6,p,G3
	.DB 2,p,F3S

	; --- Primera parte – tema C  (region Sol mayor) ---
	; --- [C019] 1410: o4e4..r16 ---
	.DB 14,p,E3
	.DB 2,sil,0
	; --- [C020] 1420: o3b8r8o4g8.f# ---
	.DB 4,p,B2
	.DB 4,sil,0
	.DB 6,p,G3
	.DB 2,p,F3S
	; --- [C021] 1430: o4e4..r16 ---
	.DB 14,p,E3
	.DB 2,sil,0
	; --- [C022] 1440: o3b8r8o4g8.f# ---
	.DB 4,p,B2
	.DB 4,sil,0
	.DB 6,p,G3
	.DB 2,p,F3S

	; --- Primera parte – tema C variado ---
	; --- [C023] 1510: o4e4..r16 ---
	.DB 14,p,E3
	.DB 2,sil,0
	; --- [C024] 1520: o3b8.bo4g8.f# ---
	.DB 6,p,B2
	.DB 2,p,B2
	.DB 6,p,G3
	.DB 2,p,F3S
	; --- [C025] 1530: o4e8.f#g8.a ---
	.DB 6,p,E3
	.DB 2,p,F3S
	.DB 6,p,G3
	.DB 2,p,A3
	; --- [C026] 1540: o4b8.ag8.f# ---
	.DB 6,p,B3
	.DB 2,p,A3
	.DB 6,p,G3
	.DB 2,p,F3S

	; --- Primera parte – tema B con ornamento (vuelta a Re) ---
	; --- [C027] 1610: o4e#8e#e#e#8e#r16 ---
	.DB 4,p,F3
	.DB 2,p,F3
	.DB 2,p,F3
	.DB 4,p,F3
	.DB 2,p,F3
	.DB 2,sil,0
	; --- [C028] 1620: o4f#8r16o3ao4f#8.e ---
	.DB 4,p,F3S
	.DB 2,sil,0
	.DB 2,p,A2
	.DB 6,p,F3S
	.DB 2,p,E3
	; --- [C029] 1630: o4d4..r16 ---
	.DB 14,p,D3
	.DB 2,sil,0
	; --- [C030] 1640: o3a8r16ao4f#8.e ---
	.DB 4,p,A2
	.DB 2,sil,0
	.DB 2,p,A2
	.DB 6,p,F3S
	.DB 2,p,E3

	; --- Primera parte – tema B extendido / modulacion ---
	; --- [C031] 1710: o4d4..r16 ---
	.DB 14,p,D3
	.DB 2,sil,0
	; --- [C032] 1720: o3a8r16ao4f#8.e ---
	.DB 4,p,A2
	.DB 2,sil,0
	;crescendo
	.DB 2,p,A2
	.DB 6,p,F3S
	.DB 2,mp,E3
	; --- [C033] 1730: o4d8.ef#8.g ---
	.DB 6,mp,D3
	.DB 2,mp,E3
	.DB 6,mp,F3S
	.DB 2,mf,G3
	; --- [C034] 1740: o4a8.bo5c#8.d ---
	.DB 6,mf,A3
	.DB 2,mf,B3
	.DB 6,mf,C4S
	.DB 2,mf,D4

	; --- Transicion descendente (Do# / arpeggio) ---
	; --- [C035] 1810: o5d4..r16 ---
	;forte
	.DB 14,f,D4
	.DB 2,sil,0
	; --- [C036] 1820: o4e8r16ed#8.e ---
	.DB 4,f,E3
	.DB 2,sil,0
	.DB 2,f,E3
	.DB 6,f,D3S
	.DB 2,f,E3
	; --- [C037] 1830: o5c#2 ---
	.DB 16,f,C4S
	; --- [C038] 1840: r12o4b12a12g12f#12e12 ---
	.DB 2,sil,0
	.DB 2,f,B3
	.DB 3,f,A3
	.DB 3,f,G3
	.DB 3,f,F3S
	.DB 3,f,E3

	; --- Cadencia / cierre primera estrofa ---
	; --- [C039] 1910: o4b2 ---
	.DB 16,f,B3
	; --- [C040] 1920: r12o4a12g12f#12e12d12 ---
	.DB 2,sil,0
	.DB 2,f,A3
	.DB 3,f,G3
	.DB 3,f,F3S
	.DB 3,f,E3
	.DB 3,f,D3
	; --- [C041] 1930: o4c#8.ba4 ---
	.DB 6,f,C3S
	.DB 2,f,B3
	.DB 8,f,A3
	; --- [C042] 2010: o4r12b12a12g12f#12e12 ---
	.DB 2,sil,0
	.DB 2,f,B3
	.DB 3,f,A3
	.DB 3,f,G3
	.DB 3,f,F3S
	.DB 3,f,E3
	; --- [C043] 2020: o4d8r8d8r8 ---
	.DB 4,f,D3
	.DB 4,sil,0
	;forte
	.DB 4,f,D3
	.DB 4,sil,0
	; --- [C044] 2030: o4d8r8r4 ---
	.DB 4,f,D3
	.DB 4,sil,0
	.DB 8,sil,0

	; --- Segunda parte – tema en Si menor (acompañamiento arpegiado) ---
	; --- [C045] 2040: o3bo4c#def#8g8 ---
	;piano
	.DB 2,p,B2
	.DB 2,p,C3S
	.DB 2,p,D3
	.DB 2,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	; --- [C046] 2050: o4f#8b8f#8d8 ---
	.DB 4,p,F3S
	.DB 4,p,B3
	.DB 4,p,F3S
	.DB 4,p,D3
	; --- [C047] 2110: o3b8o4c#8d8o3b8 ---
	.DB 4,p,B2
	.DB 4,p,C3S
	.DB 4,p,D3
	.DB 4,p,B2
	; --- [C048] 2120: o4c#8.r16f#8r8 ---
	.DB 6,p,C3S
	.DB 2,sil,0
	.DB 4,p,F3S
	.DB 4,sil,0
	; --- [C049] 2130: o3bo4c#def#8g8 ---
	.DB 2,p,B2
	.DB 2,p,C3S
	.DB 2,p,D3
	.DB 2,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	; --- [C050] 2140: o4f#8b8f#8d8 ---
	.DB 4,p,F3S
	.DB 4,p,B3
	.DB 4,p,F3S
	.DB 4,p,D3
	; --- [C051] 2150: o3b8o4c#8d8o3b8 ---
	.DB 4,p,B2
	.DB 4,p,C3S
	.DB 4,p,D3
	.DB 4,p,B2
	; --- [C052] 2210: o4f#8r8b8.r16 ---
	.DB 4,p,F3S
	.DB 4,sil,0
	.DB 6,p,B3
	.DB 2,sil,0

	; --- Segunda parte – variacion armonica (Fa# mayor, Re mayor) ---
	; --- [C053] 2220: o4a4e8.f# ---
	.DB 8,p,A3
	.DB 6,p,E3
	.DB 2,p,F3S
	; --- [C054] 2230: o4g8g8f#8e#8 ---
	.DB 4,p,G3
	.DB 4,p,G3
	.DB 4,p,F3S
	.DB 4,p,F3
	; --- [C055] 2240: o4f#4d8.e ---
	.DB 8,p,F3S
	.DB 6,p,D3
	.DB 2,p,E3
	; --- [C056] 2250: o4f#4g4 ---
	.DB 8,p,F3S
	.DB 8,p,G3

	; --- Segunda parte – modulacion La mayor / Fa# menor ---
	; --- [C057] 2310: o4f#4c#8.d ---
	.DB 8,p,F3S
	.DB 6,p,C3S
	.DB 2,p,D3
	; --- [C058] 2320: o4e8e8d8c#8 ---
	.DB 4,p,E3
	.DB 4,p,E3
	.DB 4,p,D3
	.DB 4,p,C3S
	; --- [C059] 2330: o4d4o3b8.o4c# ---
	.DB 8,p,D3
	.DB 6,p,B2
	.DB 2,p,C3S
	; --- [C060] 2340: o4d8.r16d4 ---
	.DB 6,p,D3
	.DB 2,sil,0
	.DB 8,p,D3
	; --- [C061] 2350: o4b4e8.f# ---
	.DB 8,p,B3
	.DB 6,p,E3
	.DB 2,p,F3S

	; --- Segunda parte – desarrollo extendido ---
	; --- [C062] 2410: o4g8o5c#8o4b8o5c#8 ---
	.DB 4,p,G3
	.DB 4,p,C4S
	.DB 4,p,B3
	.DB 4,p,C4S
	; --- [C063] 2420: o4b4o4d8.e ---
	.DB 8,p,B3
	.DB 6,p,D3
	.DB 2,p,E3
	; --- [C064] 2430: o4f#4a4 ---
	.DB 8,p,F3S
	.DB 8,p,A3
	; --- [C065] 2440: o4g4c#8.d ---
	.DB 8,p,G3
	.DB 6,p,C3S
	.DB 2,p,D3
	; --- [C066] 2450: o4e8f#8g8a8 ---
	.DB 4,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	.DB 4,p,A3
	; --- [C067] 2510: o4g4o3b8.o4c# ---
	.DB 8,p,G3
	.DB 6,p,B2
	.DB 2,p,C3S
	; --- [C068] 2520: o4d4f#4 ---
	.DB 8,p,D3
	;crescendo
	.DB 8,mp,F3S

	; --- Segunda parte – culminacion del desarrollo (Re mayor) ---
	; --- [C069] 2530: o4e4b4 ---
	.DB 8,mp,E3
	.DB 8,mp,B3
	; --- [C070] 2540: o4e#8a#8b8.o5c# ---
	.DB 4,mp,F3
	.DB 4,mf,A3S
	.DB 6,mf,B3
	.DB 2,mf,C4S
	; --- [C071] 2550: o5d2 ---
	;forte
	.DB 16,f,D4

	; --- Segunda parte – bis del tema Si menor ---
	; --- [C072] 2610: o4f#8.r16b4 ---
	.DB 6,f,F3S
	.DB 2,sil,0
	.DB 8,f,B3
	; --- [C073] 2620: o4a2 ---
	.DB 16,f,A3
	; --- [C074] 2630: r8o4gr16f#r16er16 ---
	.DB 4,sil,0
	.DB 2,f,G3
	.DB 2,sil,0
	.DB 2,f,F3S
	.DB 2,sil,0
	.DB 2,f,E3
	.DB 2,sil,0
	; --- [C075] 2640: o4dr16r8r4 ---
	.DB 2,f,D3
	;piano
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,sil,0

	; --- Segunda parte – retorno al tema de la primera parte ---
	; --- [C076] 2710: r4o4b4 ---
	.DB 8,sil,0
	;piano
	.DB 8,p,B3
	; --- [C077] 2720: o4a4e8.f# ---
	.DB 8,p,A3
	.DB 6,p,E3
	.DB 2,p,F3S
	; --- [C078] 2730: g8g8f#8f8 ---
	.DB 4,p,G3
	.DB 4,p,G3
	.DB 4,p,F3S
	.DB 4,p,F3
	; --- [C079] 2740: o4f#4d8.e ---
	.DB 8,p,F3S
	.DB 6,p,D3
	.DB 2,p,E3
	; --- [C080] 2810: o4f#4g4 ---
	.DB 8,p,F3S
	.DB 8,p,G3
	; --- [C081] 2820: o4f#4c#8.d ---
	.DB 8,p,F3S
	.DB 6,p,C3S
	.DB 2,p,D3
	; --- [C082] 2830: o4e8e8d8c#8 ---
	.DB 4,p,E3
	.DB 4,p,E3
	.DB 4,p,D3
	.DB 4,p,C3S
	; --- [C083] 2840: o4d4o3b8.o4c# ---
	.DB 8,p,D3
	.DB 6,p,B2
	.DB 2,p,C3S
	; --- [C084] 2850: o4d8.r16d4 ---
	.DB 6,p,D3
	.DB 2,sil,0
	.DB 8,p,D3
	; --- [C085] 2910: o4b4e8.f# ---
	.DB 8,p,B3
	.DB 6,p,E3
	.DB 2,p,F3S
	; --- [C086] 2920: o4g8o5c#8o4b8o5c#8 ---
	.DB 4,p,G3
	.DB 4,p,C4S
	.DB 4,p,B3
	.DB 4,p,C4S
	; --- [C087] 2930: o4b4d8.e ---
	.DB 8,p,B3
	.DB 6,p,D3
	.DB 2,p,E3
	; --- [C088] 2940: o4f#4a4 ---
	.DB 8,p,F3S
	.DB 8,p,A3
	; --- [C089] 2950: o4g4c#8.d ---
	.DB 8,p,G3
	.DB 6,p,C3S
	.DB 2,p,D3
	; --- [C090] 3010: o4e8f#8g8a8 ---
	.DB 4,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	.DB 4,p,A3
	; --- [C091] 3020: o4g4o3b8.o4c# ---
	.DB 8,p,G3
	.DB 6,p,B2
	.DB 2,p,C3S
	; --- [C092] 3025: o4d4f#4 ---
	.DB 8,p,D3
	;crescendo
	.DB 8,mp,F3S
	; --- [C093] 3030: o4e4b4 ---
	.DB 8,mp,E3
	.DB 8,mp,B3
	; --- [C094] 3040: o4e#8a#8b8o5c#8 ---
	.DB 4,mp,F3
	.DB 4,mf,A3S
	.DB 4,mf,B3
	.DB 4,mf,C4S
	; --- [C095] 3110: o5d2 ---
	;forte
	.DB 16,f,D4
	; --- [C096] 3120: o4f#4b4 ---
	.DB 8,f,F3S
	.DB 8,f,B3
	; --- [C097] 3130: o4a2 ---
	.DB 16,f,A3

	; --- Segunda parte – cadencia final (arpeggio descendente, pedal Re) ---
	; --- [C098] 3140: o4r8gr16f#r16er16 ---
	.DB 4,sil,0
	.DB 2,f,G3
	.DB 2,sil,0
	.DB 2,f,F3S
	.DB 2,sil,0
	.DB 2,f,E3
	.DB 2,sil,0
	; --- [C099] 3150: o4dr16df#a4 ---
	.DB 2,f,D3
	.DB 2,sil,0
	.DB 2,f,D3
	.DB 2,f,F3S
	.DB 8,f,A3

	; --- Segunda parte – cierre ---
	; --- [C100] 3210: r8o4abagf#e ---
	.DB 4,sil,0
	.DB 2,f,A3
	.DB 2,f,B3
	.DB 2,f,A3
	.DB 2,f,G3
	.DB 2,f,F3S
	.DB 2,f,E3
	; --- [C101] 3220: o4dr16df#a4 ---
	.DB 2,f,D3
	.DB 2,sil,0
	.DB 2,f,D3
	.DB 2,f,F3S
	.DB 8,f,A3
	; --- [C102] 3230: r8o4abagf#e ---
	.DB 4,sil,0
	.DB 2,f,A3
	.DB 2,f,B3
	.DB 2,f,A3
	.DB 2,f,G3
	.DB 2,f,F3S
	.DB 2,f,E3
	; --- [C103] 3240: o4dr16r8d8r16d ---
	.DB 2,f,D3
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 4,f,D3
	.DB 2,sil,0
	.DB 2,f,D3
	; --- [C104] 3250: o4d8.r16r8r32d32e32f#32 ---
	.DB 6,f,D3
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 1,sil,0
	;forte
	.DB 1,f,D3
	.DB 1,f,E3
	.DB 1,f,F3S

	; --- Puente / Trio  (Re mayor, bajo simple) ---
	; --- [C105] 3310: o4g8f#ed4 ---
	.DB 4,f,G3
	.DB 2,f,F3S
	.DB 2,f,E3
	.DB 8,f,D3
	; --- [C106] 3320: r8o3b8o4c8e8 ---
	.DB 4,sil,0
	.DB 4,f,B2
	.DB 4,f,C3
	.DB 4,f,E3
	; --- [C107] 3330: o4d8o3b8g8.r16 ---
	.DB 4,f,D3
	.DB 4,f,B2
	.DB 6,f,G2
	.DB 2,sil,0
	; --- [C108] 3340: r4o3a4 ---
	.DB 8,sil,0
	.DB 8,f,A2
	; --- [C109] 3350: o3b8r8r4 ---
	.DB 4,f,B2
	.DB 4,sil,0
	.DB 8,sil,0
	; --- [C110] 3360: r4o4f#4 ---
	.DB 8,sil,0
	.DB 8,f,F3S
	; --- [C111] 3370: o4g8r8r4 ---
	.DB 4,p,G3
	;piano
	.DB 4,sil,0
	.DB 8,sil,0
	; --- [C112] 3410: r4o4d4 ---
	.DB 8,sil,0
	.DB 8,p,D3

	; --- Estribillo – motivo principal  (bajo G$ un tiempo) ---
	; --- [C113] 3420: o4d2 ---
	.DB 16,p,D3
	; --- [C114] 3430: r8o3b8o4c8e8 ---
	.DB 4,sil,0
	.DB 4,p,B2
	.DB 4,p,C3
	.DB 4,p,E3
	; --- [C115] 3440: o4d2 ---
	.DB 16,p,D3
	; --- [C116] 3450: o3b8r8o4g4 ---
	.DB 4,p,B2
	.DB 4,sil,0
	.DB 8,p,G3
	; --- [C117] 3460: o4g2 ---
	.DB 16,p,G3
	; --- [C118] 3510: r8o4f#8g8e8 ---
	.DB 4,sil,0
	.DB 4,p,F3S
	.DB 4,p,G3
	.DB 4,p,E3
	; --- [C119] 3520: o4d2 ---
	.DB 16,p,D3
	; --- [C120] 3530: o3b4o4d4 ---
	.DB 8,p,B2
	.DB 8,p,D3
	; --- [C121] 3540: o4d2 ---
	.DB 16,p,D3
	; --- [C122] 3550: r8o4e8d8e8 ---
	.DB 4,sil,0
	.DB 4,p,E3
	.DB 4,p,D3
	.DB 4,p,E3
	; --- [C123] 3610: o4d8r8d4 ---
	.DB 4,p,D3
	.DB 4,sil,0
	.DB 8,p,D3
	; --- [C124] 3620: o4r8e8f#8g8 ---
	.DB 4,sil,0
	.DB 4,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	; --- [C125] 3630: o4a8r8a4 ---
	.DB 4,p,A3
	.DB 4,sil,0
	.DB 8,p,A3
	; --- [C126] 3640: r8o4e8f#8g8 ---
	.DB 4,sil,0
	.DB 4,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	; --- [C127] 3650: o4f#8e8d4 ---
	.DB 4,p,F3S
	.DB 4,p,E3
	.DB 8,p,D3
	; --- [C128] 3660: r8r8o4d4 ---
	.DB 4,sil,0
	.DB 4,sil,0
	.DB 8,p,D3

	; --- Estribillo – modulacion relativo  (Sol / Re) ---
	; --- [C129] 3710: o4d2 ---
	;piano
	.DB 16,p,D3
	; --- [C130] 3720: r8o3b8o4c8e8 ---
	.DB 4,sil,0
	.DB 4,p,B2
	.DB 4,p,C3
	.DB 4,p,E3
	; --- [C131] 3730: o4d2 ---
	.DB 16,p,D3
	; --- [C132] 3740: o3b8r8o4g4 ---
	.DB 4,p,B2
	.DB 4,sil,0
	;crescendo
	.DB 8,mp,G3

	; --- Estribillo – Fa# mayor / Mi mayor ---
	; --- [C133] 3810: o4g2 ---
	.DB 16,mp,G3
	; --- [C134] 3820: r8o4f#8a8g8 ---
	.DB 4,sil,0
	.DB 4,mp,F3S
	.DB 4,mp,A3
	.DB 4,mp,G3
	; --- [C135] 3830: o4f#2 ---
	.DB 16,mf,F3S
	; --- [C136] 3840: o4e8r8a4 ---
	.DB 4,mf,E3
	.DB 4,sil,0
	;forte
	.DB 8,f,A3

	; --- Estribillo – Si mayor → Re mayor cierre ---
	; --- [C137] 3910: o4a2 ---
	;crescendo
	.DB 16,f,A3
	; --- [C138] 3920: r8o4g#8a8a#8 ---
	.DB 4,sil,0
	.DB 4,p,G3S
	.DB 4,mf,A3
	.DB 4,f,A3S
	; --- [C139] 3930: o4b2 ---
	;fortissimo
	.DB 16,ff,B3
	; --- [C140] 3940: r8o4f#8g8e8 ---
	.DB 4,sil,0
	.DB 4,ff,F3S
	.DB 4,ff,G3
	.DB 4,ff,E3
	; --- [C141] 3950: o4d8e-8e8r8 ---
	.DB 4,ff,D3
	.DB 4,ff,E3F
	.DB 4,ff,E3
	.DB 4,sil,0

	; --- Estribillo – cadencia final  (Sol - La - Re) ---
	; --- [C142] 4010: r4o4f#4 ---
	.DB 8,sil,0
	.DB 8,ff,F3S
	; --- [C143] 4020: o4g8r8a8ba ---
	.DB 4,ff,G3
	.DB 4,sil,0
	.DB 4,ff,A3
	.DB 2,ff,B3
	.DB 2,ff,A3
	; --- [C144] 4030: o4gr16ggg8r8 ---
	.DB 2,ff,G3
	.DB 2,sil,0
	.DB 2,ff,G3
	.DB 2,ff,G3
	.DB 4,ff,G3
	.DB 4,sil,0

	; --- Coda – arpeggios en Re mayor (tema inicial simplificado) ---
	; --- [C145] 4040: o4ar16aaar16f#r16 ---
	;forte
	.DB 2,f,A3
	.DB 2,sil,0
	.DB 2,f,A3
	.DB 2,f,A3
	.DB 2,f,A3
	.DB 2,sil,0
	.DB 2,f,F3S
	.DB 2,sil,0
	; --- [C146] 4050: o4d4.o3a8 ---
	.DB 12,f,D3
	.DB 4,f,A2
	; --- [C147] 4060: o4d8o3a8o4d8f#8 ---
	.DB 4,f,D3
	.DB 4,f,A2
	.DB 4,f,D3
	.DB 4,f,F3S

	; --- Coda – bis del arpeggio ---
	; --- [C148] 4110: o4ar16aaa8.r16 ---
	.DB 2,f,A3
	.DB 2,sil,0
	.DB 2,f,A3
	.DB 2,f,A3
	.DB 6,f,A3
	.DB 2,sil,0
	; --- [C149] 4120: o4ar16aaar16f#r16 ---
	.DB 2,f,A3
	.DB 2,sil,0
	.DB 2,f,A3
	.DB 2,f,A3
	.DB 2,f,A3
	.DB 2,sil,0
	.DB 2,f,F3S
	.DB 2,sil,0
	; --- [C150] 4130: o4d4.o3a8 ---
	.DB 12,f,D3
	.DB 4,f,A2
	; --- [C151] 4140: o4d8f#8a8o3a8 ---
	.DB 4,f,D3
	.DB 4,f,F3S
	.DB 4,f,A3
	.DB 4,f,A2
	; --- [C152] 4150: o4d4r4 ---
	.DB 8,f,D3
	.DB 8,sil,0

	; --- Coda – solo de melodia (canal B en silencio) ---
	; --- [C153] 4160: o4ar16aaar16f#r16 ---
	;pianissimo
	.DB 2,pp,A3
	.DB 2,sil,0
	.DB 2,pp,A3
	.DB 2,pp,A3
	.DB 2,pp,A3
	.DB 2,sil,0
	.DB 2,pp,F3S
	.DB 2,sil,0
	; --- [C154] 4210: o4d4.o3a8 ---
	.DB 12,pp,D3
	.DB 4,pp,A2
	; --- [C155] 4220: o4d8o3a8o4d8f#8 ---
	.DB 4,pp,D3
	.DB 4,pp,A2
	.DB 4,pp,D3
	.DB 4,pp,F3S
	; --- [C156] 4230: o4ar16aaa8.r16 ---
	.DB 2,pp,A3
	.DB 2,sil,0
	.DB 2,pp,A3
	.DB 2,pp,A3
	.DB 6,pp,A3
	.DB 2,sil,0
	; --- [C157] 4240: o4ar16aaar16f#r16 ---
	.DB 2,pp,A3
	.DB 2,sil,0
	.DB 2,pp,A3
	.DB 2,pp,A3
	.DB 2,pp,A3
	.DB 2,sil,0
	.DB 2,pp,F3S
	.DB 2,sil,0
	; --- [C158] 4250: o4d4.o3a8 ---
	.DB 12,pp,D3
	.DB 4,pp,A2
	; --- [C159] 4260: o4d8f#8a8o3a8 ---
	.DB 4,pp,D3
	.DB 4,pp,F3S
	.DB 4,pp,A3
	.DB 4,pp,A2

	; --- Coda – cierre final ---
	; --- [C160] 4310: o4dr16r8d8.r16 ---
	.DB 2,pp,D3
	.DB 2,sil,0
	.DB 4,sil,0
	;piano
	.DB 6,p,D3
	.DB 2,sil,0

	; --- Estribillo – motivo principal  (bajo G$ un tiempo) ---
	; --- [C161] 3420: o4d2 ---
	.DB 16,p,D3
	; --- [C162] 3430: r8o3b8o4c8e8 ---
	.DB 4,sil,0
	.DB 4,p,B2
	.DB 4,p,C3
	.DB 4,p,E3
	; --- [C163] 3440: o4d2 ---
	.DB 16,p,D3
	; --- [C164] 3450: o3b8r8o4g4 ---
	.DB 4,p,B2
	.DB 4,sil,0
	.DB 8,p,G3
	; --- [C165] 3460: o4g2 ---
	.DB 16,p,G3
	; --- [C166] 3510: r8o4f#8g8e8 ---
	.DB 4,sil,0
	.DB 4,p,F3S
	.DB 4,p,G3
	.DB 4,p,E3
	; --- [C167] 3520: o4d2 ---
	.DB 16,p,D3
	; --- [C168] 3530: o3b4o4d4 ---
	.DB 8,p,B2
	.DB 8,p,D3
	; --- [C169] 3540: o4d2 ---
	.DB 16,p,D3
	; --- [C170] 3550: r8o4e8d8e8 ---
	.DB 4,sil,0
	.DB 4,p,E3
	.DB 4,p,D3
	.DB 4,p,E3
	; --- [C171] 3610: o4d8r8d4 ---
	.DB 4,p,D3
	.DB 4,sil,0
	.DB 8,p,D3
	; --- [C172] 3620: o4r8e8f#8g8 ---
	.DB 4,sil,0
	.DB 4,mp,E3
	.DB 4,mp,F3S
	.DB 4,mf,G3
	; --- [C173] 3630: o4a8r8a4 ---
	.DB 4,mf,A3
	.DB 4,sil,0
	.DB 8,p,A3
	; --- [C174] 3640: r8o4e8f#8g8 ---
	.DB 4,sil,0
	.DB 4,p,E3
	.DB 4,p,F3S
	.DB 4,p,G3
	; --- [C175] 3650: o4f#8e8d4 ---
	.DB 4,p,F3S
	.DB 4,p,E3
	.DB 8,p,D3
	; --- [C176] 3660: r8r8o4d4 ---
	.DB 4,sil,0
	.DB 4,sil,0
	.DB 8,p,D3

	; --- Estribillo – modulacion relativo  (Sol / Re) ---
	; --- [C177] 3710: o4d2 ---
	.DB 16,p,D3
	; --- [C178] 3720: r8o3b8o4c8e8 ---
	.DB 4,sil,0
	.DB 4,p,B2
	.DB 4,p,C3
	.DB 4,p,E3
	; --- [C179] 3730: o4d2 ---
	.DB 16,p,D3
	; --- [C180] 3740: o3b8r8o4g4 ---
	.DB 4,p,B2
	.DB 4,sil,0
	;crescendo
	.DB 8,mp,G3

	; --- Estribillo – Fa# mayor / Mi mayor ---
	; --- [C181] 3810: o4g2 ---
	.DB 16,mp,G3
	; --- [C182] 3820: r8o4f#8a8g8 ---
	.DB 4,sil,0
	.DB 4,mp,F3S
	.DB 4,mp,A3
	.DB 4,mp,G3
	; --- [C183] 3830: o4f#2 ---
	.DB 16,mf,F3S
	; --- [C184] 3840: o4e8r8a4 ---
	.DB 4,mf,E3
	.DB 4,sil,0
	.DB 8,mf,A3

	; --- Estribillo – Si mayor → Re mayor cierre ---
	; --- [C185] 3910: o4a2 ---
	;forte
	.DB 16,f,A3
	; --- [C186] 3920: r8o4g#8a8a#8 ---
	;crescendo
	.DB 4,sil,0
	.DB 4,f,G3S
	.DB 4,f,A3
	.DB 4,f,A3S
	; --- [C187] 3930: o4b2 ---
	;fortissimo
	.DB 16,ff,B3
	; --- [C188] 3940: r8o4f#8g8e8 ---
	.DB 4,sil,0
	.DB 4,ff,F3S
	.DB 4,ff,G3
	.DB 4,ff,E3
	; --- [C189] 3950: o4d8e-8e8r8 ---
	.DB 4,ff,D3
	.DB 4,ff,E3F
	.DB 4,ff,E3
	.DB 4,sil,0

	; --- Estribillo – cadencia final  (Sol - La - Re) ---
	; --- [C190] 4010: r4o4f#4 ---
	.DB 8,sil,0
	.DB 8,ff,F3S
	; --- [C191] 4020: o4g8r8a8ba ---
	.DB 4,ff,G3
	.DB 4,sil,0
	.DB 4,ff,A3
	.DB 2,ff,B3
	.DB 2,ff,A3
	; --- [C192] 4030: o4gr16ggg8r8 ---
	.DB 2,ff,G3
	.DB 2,sil,0
	.DB 2,ff,G3
	.DB 2,ff,G3
	.DB 4,ff,G3
	.DB 4,sil,0

	; --- Silencio final: 2 compases antes de reiniciar ---
	.DB 32,sil,0
	