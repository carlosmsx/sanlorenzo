	; ============================================================
	; Canal B: armonia/bajo  (BASIC lines 1010-1220)
	; BASIC o2 -> darkside oct1, o1 -> darkside oct0
	; Envelope 3 = EVOL3 (sostenido), 7 = EVOL_SIL (silencio)
	; ============================================================

	; --- Fanfarron de apertura  (La-La-La-La / Fa#-Fa# / Re-Re escalando) ---
	; --- [C001] 1010: r2 ---
	.DB 16,sil,0
	; --- [C002] 1020: r2 ---
	.DB 16,sil,0
	; --- [C003] 1030: r2 ---
	.DB 16,sil,0
	; --- [C004] 1040: o1a2 ---
	.DB 16,p,A0
	; --- [C005] 1050: o2a8r8ar16r8 ---
	.DB 4,f,A1
	.DB 4,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Primera parte – tema A  (melodia principal, Re mayor) ---
	; --- [C006] 1110: o2aar8r4 ---
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 4,sil,0
	.DB 8,sil,0
	; --- [C007] 1120: o2a8r8o2aar8 ---
	.DB 4,f,A1
	.DB 4,sil,0
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 4,sil,0
	; --- [C008] 1130: o2aar8r4 ---
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 4,sil,0
	.DB 8,sil,0
	; --- [C009] 1140: o2ar16r8g#8.r16 ---
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 6,f,G1S
	.DB 2,sil,0
	; --- [C010] 1150: o2g8.r16f#8.r16 ---
	.DB 6,f,G1
	.DB 2,sil,0
	.DB 6,f,F1S
	.DB 2,sil,0
	; --- [C011] 1210: o2e8.r16d8.r16 ---
	.DB 6,f,E1
	.DB 2,sil,0
	.DB 6,f,D1
	.DB 2,sil,0
	; --- [C012] 1220: o2c#8r8r4 ---
	.DB 4,f,C1S
	.DB 4,sil,0
	.DB 8,sil,0


; --- Primera parte – tema B  (motivo de dos notas, bajo arpegiado) ---
	; --- [C013] 1230: o2dr16ar16o1ar16o2ar16 ---
	.DB 4,p,D1
	.DB 4,p,A1
	.DB 4,p,A0
	.DB 4,p,A1
	; --- [C014] 1240: o2dr16ar16o1ar16o2ar16 ---
	.DB 4,p,D1
	.DB 4,p,A1
	.DB 4,p,A0
	.DB 4,p,A1
	; --- [C015] 1310: o2dr16ar16o1ar16o2ar16 ---
	.DB 4,p,D1
	.DB 4,p,A1
	.DB 4,p,A0
	.DB 4,p,A1
	; --- [C016] 1320: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C017] 1330: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C018] 1340: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0

	; --- Primera parte – tema C  (region Sol mayor) ---
	; --- [C019] 1410: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C020] 1420: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C021] 1430: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C022] 1440: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0

	; --- Primera parte – tema C variado ---
	; --- [C023] 1510: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C024] 1520: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C025] 1530: o1ar16o2gr16o2c#r16gr16 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,C1S
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C026] 1540: o1ar16o2gr16o2c#r16gr16 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,C1S
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0

	; --- Primera parte – tema B con ornamento (vuelta a Re) ---
	; --- [C027] 1610: o2d8br16br16br16 ---
	.DB 4,p,D1
	.DB 2,p,B1
	.DB 2,sil,0
	.DB 2,p,B1
	.DB 2,sil,0
	.DB 2,p,B1
	.DB 2,sil,0
	; --- [C028] 1620: o2ar16r8r4 ---
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,sil,0
	; --- [C029] 1630: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C030] 1640: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0

	; --- Primera parte – tema B extendido / modulacion ---
	; --- [C031] 1710: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C032] 1720: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,mp,A1
	.DB 2,sil,0
	; --- [C033] 1730: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,mp,D1
	.DB 2,sil,0
	.DB 2,mp,A1
	.DB 2,sil,0
	.DB 2,mp,A0
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	; --- [C034] 1740: o1f#r16o2f#r16o1dr16o2f#r16 ---
	.DB 2,mf,F0S
	.DB 2,sil,0
	.DB 2,mf,F1S
	.DB 2,sil,0
	.DB 2,mf,D0
	.DB 2,sil,0
	.DB 2,mf,F1S
	.DB 2,sil,0

	; --- Transicion descendente (Do# / arpeggio) ---
	; --- [C035] 1810: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,f,G0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,B0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C036] 1820: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,f,G0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,B0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C037] 1830: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,f,G0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,B0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C038] 1840: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,f,G0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,B0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0

	; --- Cadencia / cierre primera estrofa ---
	; --- [C039] 1910: o1f#r16o2f#r16o1ar16o2f#r16 ---
	.DB 2,f,F0S
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	; --- [C040] 1920: o1f#r16o2f#r16o1dr16o2f#r16 ---
	.DB 2,f,F0S
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	.DB 2,f,D0
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	; --- [C041] 1930: o1ar16o2gr16o2c#r16gr16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,C1S
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C042] 2010: o1ar16o2gr16o2c#r16gr16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,C1S
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C043] 2020: o2dr16r8o1a8r16f# ---
	.DB 2,f,D1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 4,f,A0
	.DB 2,sil,0
	.DB 2,f,F0S
	; --- [C044] 2030: o1dr16r8r4 ---
	.DB 2,f,D0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,sil,0

	; --- Segunda parte – tema en Si menor (acompañamiento arpegiado) ---
	; --- [C045] 2040: o1bo2c#def#r16gr16 ---
	.DB 2,p,B0
	.DB 2,p,C1S
	.DB 2,p,D1
	.DB 2,p,E1
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C046] 2050: o2f#r16br16f#r16dr16 ---
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,B1
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C047] 2110: o1br16r8br16r8 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C048] 2120: o1f#r16f#r16f#r16r8 ---
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C049] 2130: o1bo2c#def#r16gr16 ---
	.DB 2,p,B0
	.DB 2,p,C1S
	.DB 2,p,D1
	.DB 2,p,E1
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C050] 2140: o2f#r16br16f#r16dr16 ---
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,B1
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C051] 2150: o1br16r8br16r8 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C052] 2210: o1f#r16r8r4 ---
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,sil,0

	; --- Segunda parte – variacion armonica (Fa# mayor, Re mayor) ---
	; --- [C053] 2220: o2c#r16ar16o1ar16o2ar16 ---
	.DB 2,p,C1S
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C054] 2230: o2c#r16ar16o1ar16o2ar16 ---
	.DB 2,p,C1S
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C055] 2240: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C056] 2250: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0

	; --- Segunda parte – modulacion La mayor / Fa# menor ---
	; --- [C057] 2310: o1a#r16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C058] 2320: o1a#r16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C059] 2330: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C060] 2340: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C061] 2350: o1gr16o2gr16o1gr16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0

	; --- Segunda parte – desarrollo extendido ---
	; --- [C062] 2410: o1gr16o2gr16o1gr16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C063] 2420: o1f#r16o2f#r16o1ar16o2ar16 ---
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C064] 2430: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C065] 2440: o1a#r16o2er16o1f#r16o2er16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	; --- [C066] 2450: o1a#r16o2er16o1f#r16o2er16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	; --- [C067] 2510: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C068] 2520: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,mp,F0S
	.DB 2,sil,0
	.DB 2,mp,F1S
	.DB 2,sil,0

	; --- Segunda parte – culminacion del desarrollo (Re mayor) ---
	; --- [C069] 2530: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,mp,G0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	; --- [C070] 2540: o1g#r16o2g#r16o1br16o2g#r16 ---
	.DB 2,mp,G0S
	.DB 2,sil,0
	.DB 2,mf,G1S
	.DB 2,sil,0
	.DB 2,mf,B0
	.DB 2,sil,0
	.DB 2,mf,G1S
	.DB 2,sil,0
	; --- [C071] 2550: o1ar16o2ar16o2dr16ar16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,D1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0

	; --- Segunda parte – bis del tema Si menor ---
	; --- [C072] 2610: o1ar16o2ar16o2e#r16g#r16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,F1
	.DB 2,sil,0
	.DB 2,f,G1S
	.DB 2,sil,0
	; --- [C073] 2620: o2er16gr16o2c#r16gr16 ---
	.DB 2,f,E1
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,C1S
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C074] 2630: o1ar16o2gr16o1a#r16o2f#r16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,A0S
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	; --- [C075] 2640: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,f,D1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0

	; --- Segunda parte – retorno al tema de la primera parte ---
	; --- [C076] 2710: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C077] 2720: o2c#r16ar16o1ar16o2ar16 ---
	.DB 2,p,C1S
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C078] 2730: o2c#r16ar16o1ar16o2ar16 ---
	.DB 2,p,C1S
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C079] 2740: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C080] 2810: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C081] 2820: o1a#r16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C082] 2830: o1a#r16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C083] 2840: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C084] 2850: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C085] 2910: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C086] 2920: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,G1
	.DB 2,sil,0
	; --- [C087] 2930: o1f#r16o2f#r16o1a#r16o2f#r16 ---
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C088] 2940: o2dr16ar16o1ar16o2ar16 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 2,p,A1
	.DB 2,sil,0
	; --- [C089] 2950: o1a#r16o2er16o1f#r16o2er16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	; --- [C090] 3010: o1a#r16o2er16o1f#r16o2er16 ---
	.DB 2,p,A0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,E1
	.DB 2,sil,0
	; --- [C091] 3020: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,p,F0S
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	; --- [C092] 3025: o1br16o2f#r16o1f#r16o2f#r16 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 2,p,F1S
	.DB 2,sil,0
	.DB 2,mp,F0S
	.DB 2,sil,0
	.DB 2,mp,F1S
	.DB 2,sil,0
	; --- [C093] 3030: o1gr16o2gr16o1br16o2gr16 ---
	.DB 2,mp,G0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	; --- [C094] 3040: o1g#r16o2g#r16dr16g#r16 ---
	.DB 2,mp,G0S
	.DB 2,sil,0
	.DB 2,mf,G1S
	.DB 2,sil,0
	.DB 2,mf,D1
	.DB 2,sil,0
	.DB 2,mf,G1S
	.DB 2,sil,0
	; --- [C095] 3110: o1ar16o2ar16o2dr16ar16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,D1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	; --- [C096] 3120: o1ar16o2ar16o2e#r16g#r16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,F1
	.DB 2,sil,0
	.DB 2,f,G1S
	.DB 2,sil,0
	; --- [C097] 3130: o2er16gr16o2c#r16gr16 ---
	.DB 2,f,E1
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,C1S
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0

	; --- Segunda parte – cadencia final (arpeggio descendente, pedal Re) ---
	; --- [C098] 3140: o1ar16o2gr16o1ar16o2ar16 ---
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,A0
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	; --- [C099] 3150: o2f#8r8r4 ---
	.DB 4,f,F1S
	.DB 4,sil,0
	.DB 8,sil,0

	; --- Segunda parte – cierre ---
	; --- [C100] 3210: r8o2gr16gr16gr16 ---
	.DB 4,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C101] 3220: o2f#r16r8r4 ---
	.DB 2,f,F1S
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,sil,0
	; --- [C102] 3230: r8o2gr16gr16gr16 ---
	.DB 4,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,G1
	.DB 2,sil,0
	; --- [C103] 3240: o2f#8r8o1ar8f# ---
	.DB 4,f,F1S
	.DB 4,sil,0
	.DB 2,f,A0
	.DB 4,sil,0
	.DB 2,f,F0S
	; --- [C104] 3250: o1d8r8r8r32o2d32e32f#32 ---
	.DB 4,f,D0
	.DB 4,sil,0
	.DB 4,sil,0
	.DB 1,sil,0
	.DB 1,f,D1
	.DB 1,f,E1
	.DB 1,f,F1S

	; --- Puente / Trio  (Re mayor, bajo simple) ---
	; --- [C105] 3310: o2gr16f#ed8r8 ---
	.DB 2,f,G1
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,f,E1
	.DB 4,f,D1
	.DB 4,sil,0
	; --- [C106] 3320: r8o1br16o2cr16er16 ---
	.DB 4,sil,0
	.DB 2,f,B0
	.DB 2,sil,0
	.DB 2,f,C1
	.DB 2,sil,0
	.DB 2,f,E1
	.DB 2,sil,0
	; --- [C107] 3330: o2dr16o1br16gr16r8 ---
	.DB 2,f,D1
	.DB 2,sil,0
	.DB 2,f,B0
	.DB 2,sil,0
	.DB 2,f,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C108] 3340: r4o1a ---
	.DB 8,sil,0
	.DB 8,f,A0
	; --- [C109] 3350: o1b8r8dr16 ---
	.DB 4,f,B0
	.DB 4,sil,0
	.DB 8,f,D0
	; --- [C110] 3360: o1dr16r8d4 ---
	.DB 2,f,D0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,f,D0
	; --- [C111] 3370: o1g8r8g8r8 ---
	.DB 4,p,G0
	.DB 4,sil,0
	.DB 4,p,G0
	.DB 4,sil,0
	; --- [C112] 3410: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Estribillo – motivo principal  (bajo G$ un tiempo) ---
	; --- [C113] 3420: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C114] 3430: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C115] 3440: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C116] 3450: o1gr16r8o2cr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C117] 3460: o2cr16r8o2cr16r8 ---
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C118] 3510: o2cr16r8o2cr16r8 ---
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C119] 3520: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C120] 3530: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C121] 3540: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C122] 3550: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C123] 3610: o1br16r8o1br16r8 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C124] 3620: o1br16r8o1br16r8 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C125] 3630: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C126] 3640: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C127] 3650: o2dr16o1ar16d4 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 8,p,D0
	; --- [C128] 3660: r2 ---
	.DB 16,sil,0

	; --- Estribillo – modulacion relativo  (Sol / Re) ---
	; --- [C129] 3710: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,D0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C130] 3720: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,D0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C131] 3730: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,D0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C132] 3740: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,mp,D0
	.DB 2,sil,0
	.DB 2,mp,D1
	.DB 2,sil,0

	; --- Estribillo – Fa# mayor / Mi mayor ---
	; --- [C133] 3810: o1br16o2gr16o2dr16gr16 ---
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	.DB 2,mp,D1
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	; --- [C134] 3820: o1br16o2gr16o2dr16gr16 ---
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	.DB 2,mp,D1
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	; --- [C135] 3830: o2cr16ar16o2er16ar16 ---
	.DB 2,mf,C1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	.DB 2,mf,E1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	; --- [C136] 3840: o2cr16ar16o2er16ar16 ---
	.DB 2,mf,C1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	.DB 2,f,E1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0

	; --- Estribillo – Si mayor → Re mayor cierre ---
	; --- [C137] 3910: o2cr16ar16o2er16ar16 ---
	.DB 2,f,C1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,E1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	; --- [C138] 3920: o2cr16ar16o2er16ar16 ---
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	.DB 2,mf,E1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	; --- [C139] 3930: o2dr16br16o2gr16br16 ---
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	; --- [C140] 3940: o2dr16br16o2gr16br16 ---
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	; --- [C141] 3950: o2dr16dr16dr16r8 ---
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Estribillo – cadencia final  (Sol - La - Re) ---
	; --- [C142] 4010: r4o2d4 ---
	.DB 8,sil,0
	.DB 8,ff,D1
	; --- [C143] 4020: o2gr16r8d16 ---
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,ff,D1
	; --- [C144] 4030: o2gr16o1gr16gr16r8 ---
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 2,ff,G0
	.DB 2,sil,0
	.DB 2,ff,G0
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Coda – arpeggios en Re mayor (tema inicial simplificado) ---
	; --- [C145] 4040: o2ar16aaar16f#r16 ---
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	; --- [C146] 4050: o2d8r8r8o1a8 ---
	.DB 4,f,D1
	.DB 4,sil,0
	.DB 4,sil,0
	.DB 4,f,A0
	; --- [C147] 4060: o2d8o1a8o2d8f#8 ---
	.DB 4,f,D1
	.DB 4,f,A0
	.DB 4,f,D1
	.DB 4,f,F1S

	; --- Coda – bis del arpeggio ---
	; --- [C148] 4110: o2ar16aaa8.r16 ---
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 6,f,A1
	.DB 2,sil,0
	; --- [C149] 4120: o2ar16aaar16f#r16 ---
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,F1S
	.DB 2,sil,0
	; --- [C150] 4130: o2d4.o1a8 ---
	.DB 12,f,D1
	.DB 4,f,A0
	; --- [C151] 4140: o2d8f#8a8o1a8 ---
	.DB 4,f,D1
	.DB 4,f,F1S
	.DB 4,f,A1
	.DB 4,f,A0
	; --- [C152] 4150: o2d4r4 ---
	.DB 8,f,D1
	.DB 8,sil,0

	; --- Coda – solo de melodia (canal B en silencio) ---
	; --- [C153] 4160: r2 ---
	.DB 16,sil,0
	; --- [C154] 4210: r2 ---
	.DB 16,sil,0
	; --- [C155] 4220: r2 ---
	.DB 16,sil,0
	; --- [C156] 4230: r2 ---
	.DB 16,sil,0
	; --- [C157] 4240: r2 ---
	.DB 16,sil,0
	; --- [C158] 4250: r2 ---
	.DB 16,sil,0
	; --- [C159] 4260: r2 ---
	.DB 16,sil,0

	; --- Coda – cierre final ---
	; --- [C160] 4310: R4O2D16R16R8 ---
	.DB 8,sil,0
	.DB 2,pp,D1
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Estribillo – motivo principal  (bajo G$ un tiempo) ---
	; --- [C161] 3420: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C162] 3430: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C163] 3440: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C164] 3450: o1gr16r8o2cr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C165] 3460: o2cr16r8o2cr16r8 ---
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C166] 3510: o2cr16r8o2cr16r8 ---
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,C1
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C167] 3520: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C168] 3530: o1gr16r8o1gr16r8 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C169] 3540: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C170] 3550: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C171] 3610: o1br16r8o1br16r8 ---
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,B0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C172] 3620: o1br16r8o1br16r8 ---
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,mf,B0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C173] 3630: o1ar16r8o1ar16r8 ---
	.DB 2,mf,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C174] 3640: o1ar16r8o1ar16r8 ---
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 4,sil,0
	; --- [C175] 3650: o2dr16o1ar16d4 ---
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,A0
	.DB 2,sil,0
	.DB 8,p,D0
	; --- [C176] 3660: r2 ---
	.DB 16,sil,0

	; --- Estribillo – modulacion relativo  (Sol / Re) ---
	; --- [C177] 3710: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,D0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C178] 3720: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,D0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C179] 3730: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,p,D0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	; --- [C180] 3740: o1gr16o2dr16o1dr16o2dr16 ---
	.DB 2,p,G0
	.DB 2,sil,0
	.DB 2,p,D1
	.DB 2,sil,0
	.DB 2,mp,D0
	.DB 2,sil,0
	.DB 2,mp,D1
	.DB 2,sil,0

	; --- Estribillo – Fa# mayor / Mi mayor ---
	; --- [C181] 3810: o1br16o2gr16o2dr16gr16 ---
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	.DB 2,mp,D1
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	; --- [C182] 3820: o1br16o2gr16o2dr16gr16 ---
	.DB 2,mp,B0
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	.DB 2,mp,D1
	.DB 2,sil,0
	.DB 2,mp,G1
	.DB 2,sil,0
	; --- [C183] 3830: o2cr16ar16o2er16ar16 ---
	.DB 2,mf,C1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	.DB 2,mf,E1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	; --- [C184] 3840: o2cr16ar16o2er16ar16 ---
	.DB 2,mf,C1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0
	.DB 2,mf,E1
	.DB 2,sil,0
	.DB 2,mf,A1
	.DB 2,sil,0

	; --- Estribillo – Si mayor → Re mayor cierre ---
	; --- [C185] 3910: o2cr16ar16o2er16ar16 ---
	.DB 2,f,C1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,E1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	; --- [C186] 3920: o2cr16ar16o2er16ar16 ---
	.DB 2,f,C1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	.DB 2,f,E1
	.DB 2,sil,0
	.DB 2,f,A1
	.DB 2,sil,0
	; --- [C187] 3930: o2dr16br16o2gr16br16 ---
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	; --- [C188] 3940: o2dr16br16o2gr16br16 ---
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 2,ff,B1
	.DB 2,sil,0
	; --- [C189] 3950: o2dr16dr16dr16r8 ---
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 2,ff,D1
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Estribillo – cadencia final  (Sol - La - Re) ---
	; --- [C190] 4010: r4o2d4 ---
	.DB 8,sil,0
	.DB 8,ff,D1
	; --- [C191] 4020: o2gr16r8d16 ---
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 4,sil,0
	.DB 8,ff,D1
	; --- [C192] 4030: o2gr16o1gr16gr16r8 ---
	.DB 2,ff,G1
	.DB 2,sil,0
	.DB 2,ff,G0
	.DB 2,sil,0
	.DB 2,ff,G0
	.DB 2,sil,0
	.DB 4,sil,0

	; --- Silencio final: 2 compases antes de reiniciar ---
	.DB 32,sil,0
	.DB 32,sil,0
