(define (problem drone_problem_d2_r2_l10_p24_c30_g24_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	dron2 - dron
	transportador1 - transportador
	transportador2 - transportador
	deposito - loc
	Loc1 - loc
	Loc2 - loc
	Loc3 - loc
	Loc4 - loc
	Loc5 - loc
	Loc6 - loc
	Loc7 - loc
	Loc8 - loc
	Loc9 - loc
	Loc10 - loc
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	caja7 - caja
	caja8 - caja
	caja9 - caja
	caja10 - caja
	caja11 - caja
	caja12 - caja
	caja13 - caja
	caja14 - caja
	caja15 - caja
	caja16 - caja
	caja17 - caja
	caja18 - caja
	caja19 - caja
	caja20 - caja
	caja21 - caja
	caja22 - caja
	caja23 - caja
	caja24 - caja
	caja25 - caja
	caja26 - caja
	caja27 - caja
	caja28 - caja
	caja29 - caja
	caja30 - caja
	food - contenido
	medicine - contenido
	bebida - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
	persona6 - persona
	persona7 - persona
	persona8 - persona
	persona9 - persona
	persona10 - persona
	persona11 - persona
	persona12 - persona
	persona13 - persona
	persona14 - persona
	persona15 - persona
	persona16 - persona
	persona17 - persona
	persona18 - persona
	persona19 - persona
	persona20 - persona
	persona21 - persona
	persona22 - persona
	persona23 - persona
)
(:init
	(loc-dron dron1 deposito)
	(dron-free dron1)
	(loc-dron dron2 deposito)
	(dron-free dron2)
	(loc-transportador transportador1 deposito)
	(=(capacidad-transportador transportador1) 4)
	(loc-transportador transportador2 deposito)
	(=(capacidad-transportador transportador2) 4)
	(loc-persona persona0 Loc1)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona1 Loc3)
	(persona-necesita-contenido persona1 food)
	(persona-necesita-contenido persona1 bebida)
	(loc-persona persona2 Loc9)
	(persona-necesita-contenido persona2 bebida)
	(loc-persona persona3 Loc1)
	(persona-necesita-contenido persona3 food)
	(persona-necesita-contenido persona3 medicine)
	(persona-necesita-contenido persona3 bebida)
	(loc-persona persona4 Loc3)
	(persona-necesita-contenido persona4 medicine)
	(loc-persona persona5 Loc4)
	(loc-persona persona6 Loc4)
	(persona-necesita-contenido persona6 bebida)
	(loc-persona persona7 Loc6)
	(persona-necesita-contenido persona7 bebida)
	(loc-persona persona8 Loc8)
	(persona-necesita-contenido persona8 bebida)
	(loc-persona persona9 Loc8)
	(persona-necesita-contenido persona9 bebida)
	(loc-persona persona10 deposito)
	(persona-necesita-contenido persona10 bebida)
	(loc-persona persona11 deposito)
	(persona-necesita-contenido persona11 food)
	(persona-necesita-contenido persona11 bebida)
	(loc-persona persona12 Loc4)
	(loc-persona persona13 Loc2)
	(persona-necesita-contenido persona13 bebida)
	(loc-persona persona14 Loc2)
	(loc-persona persona15 Loc7)
	(persona-necesita-contenido persona15 bebida)
	(loc-persona persona16 Loc2)
	(loc-persona persona17 deposito)
	(persona-necesita-contenido persona17 bebida)
	(loc-persona persona18 Loc4)
	(persona-necesita-contenido persona18 food)
	(loc-persona persona19 Loc8)
	(persona-necesita-contenido persona19 food)
	(loc-persona persona20 Loc10)
	(loc-persona persona21 Loc1)
	(persona-necesita-contenido persona21 food)
	(persona-necesita-contenido persona21 bebida)
	(loc-persona persona22 Loc1)
	(persona-necesita-contenido persona22 food)
	(loc-persona persona23 Loc1)
	(persona-necesita-contenido persona23 bebida)
	(caja-contenido caja1 bebida)
	(caja-contenido caja2 food)
	(caja-contenido caja3 bebida)
	(caja-contenido caja4 bebida)
	(caja-contenido caja5 food)
	(caja-contenido caja6 medicine)
	(caja-contenido caja7 bebida)
	(caja-contenido caja8 medicine)
	(caja-contenido caja9 bebida)
	(caja-contenido caja10 bebida)
	(caja-contenido caja11 bebida)
	(caja-contenido caja12 bebida)
	(caja-contenido caja13 bebida)
	(caja-contenido caja14 food)
	(caja-contenido caja15 bebida)
	(caja-contenido caja16 bebida)
	(caja-contenido caja17 bebida)
	(caja-contenido caja18 bebida)
	(caja-contenido caja19 food)
	(caja-contenido caja20 food)
	(caja-contenido caja21 food)
	(caja-contenido caja22 bebida)
	(caja-contenido caja23 food)
	(caja-contenido caja24 bebida)
	(loc-caja caja1 deposito)
	(loc-caja caja2 deposito)
	(loc-caja caja3 deposito)
	(loc-caja caja4 deposito)
	(loc-caja caja5 deposito)
	(loc-caja caja6 deposito)
	(loc-caja caja7 deposito)
	(loc-caja caja8 deposito)
	(loc-caja caja9 deposito)
	(loc-caja caja10 deposito)
	(loc-caja caja11 deposito)
	(loc-caja caja12 deposito)
	(loc-caja caja13 deposito)
	(loc-caja caja14 deposito)
	(loc-caja caja15 deposito)
	(loc-caja caja16 deposito)
	(loc-caja caja17 deposito)
	(loc-caja caja18 deposito)
	(loc-caja caja19 deposito)
	(loc-caja caja20 deposito)
	(loc-caja caja21 deposito)
	(loc-caja caja22 deposito)
	(loc-caja caja23 deposito)
	(loc-caja caja24 deposito)
	(loc-caja caja25 deposito)
	(loc-caja caja26 deposito)
	(loc-caja caja27 deposito)
	(loc-caja caja28 deposito)
	(loc-caja caja29 deposito)
	(loc-caja caja30 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(caja-free caja5)
	(caja-free caja6)
	(caja-free caja7)
	(caja-free caja8)
	(caja-free caja9)
	(caja-free caja10)
	(caja-free caja11)
	(caja-free caja12)
	(caja-free caja13)
	(caja-free caja14)
	(caja-free caja15)
	(caja-free caja16)
	(caja-free caja17)
	(caja-free caja18)
	(caja-free caja19)
	(caja-free caja20)
	(caja-free caja21)
	(caja-free caja22)
	(caja-free caja23)
	(caja-free caja24)
	(caja-free caja25)
	(caja-free caja26)
	(caja-free caja27)
	(caja-free caja28)
	(caja-free caja29)
	(caja-free caja30)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 51)
	(=(fly-cost Loc1 deposito) 51)
	(=(fly-cost deposito Loc2) 263)
	(=(fly-cost Loc2 deposito) 263)
	(=(fly-cost deposito Loc3) 130)
	(=(fly-cost Loc3 deposito) 130)
	(=(fly-cost deposito Loc4) 100)
	(=(fly-cost Loc4 deposito) 100)
	(=(fly-cost deposito Loc5) 194)
	(=(fly-cost Loc5 deposito) 194)
	(=(fly-cost deposito Loc6) 181)
	(=(fly-cost Loc6 deposito) 181)
	(=(fly-cost deposito Loc7) 209)
	(=(fly-cost Loc7 deposito) 209)
	(=(fly-cost deposito Loc8) 58)
	(=(fly-cost Loc8 deposito) 58)
	(=(fly-cost deposito Loc9) 220)
	(=(fly-cost Loc9 deposito) 220)
	(=(fly-cost deposito Loc10) 150)
	(=(fly-cost Loc10 deposito) 150)
	(=(fly-cost Loc1 Loc2) 217)
	(=(fly-cost Loc2 Loc1) 217)
	(=(fly-cost Loc1 Loc3) 97)
	(=(fly-cost Loc3 Loc1) 97)
	(=(fly-cost Loc1 Loc4) 58)
	(=(fly-cost Loc4 Loc1) 58)
	(=(fly-cost Loc1 Loc5) 144)
	(=(fly-cost Loc5 Loc1) 144)
	(=(fly-cost Loc1 Loc6) 147)
	(=(fly-cost Loc6 Loc1) 147)
	(=(fly-cost Loc1 Loc7) 165)
	(=(fly-cost Loc7 Loc1) 165)
	(=(fly-cost Loc1 Loc8) 54)
	(=(fly-cost Loc8 Loc1) 54)
	(=(fly-cost Loc1 Loc9) 182)
	(=(fly-cost Loc9 Loc1) 182)
	(=(fly-cost Loc1 Loc10) 125)
	(=(fly-cost Loc10 Loc1) 125)
	(=(fly-cost Loc2 Loc3) 147)
	(=(fly-cost Loc3 Loc2) 147)
	(=(fly-cost Loc2 Loc4) 163)
	(=(fly-cost Loc4 Loc2) 163)
	(=(fly-cost Loc2 Loc5) 94)
	(=(fly-cost Loc5 Loc2) 94)
	(=(fly-cost Loc2 Loc6) 114)
	(=(fly-cost Loc6 Loc2) 114)
	(=(fly-cost Loc2 Loc7) 57)
	(=(fly-cost Loc7 Loc2) 57)
	(=(fly-cost Loc2 Loc8) 222)
	(=(fly-cost Loc8 Loc2) 222)
	(=(fly-cost Loc2 Loc9) 80)
	(=(fly-cost Loc9 Loc2) 80)
	(=(fly-cost Loc2 Loc10) 157)
	(=(fly-cost Loc10 Loc2) 157)
	(=(fly-cost Loc3 Loc4) 45)
	(=(fly-cost Loc4 Loc3) 45)
	(=(fly-cost Loc3 Loc5) 115)
	(=(fly-cost Loc5 Loc3) 115)
	(=(fly-cost Loc3 Loc6) 52)
	(=(fly-cost Loc6 Loc3) 52)
	(=(fly-cost Loc3 Loc7) 90)
	(=(fly-cost Loc7 Loc3) 90)
	(=(fly-cost Loc3 Loc8) 79)
	(=(fly-cost Loc8 Loc3) 79)
	(=(fly-cost Loc3 Loc9) 91)
	(=(fly-cost Loc9 Loc3) 91)
	(=(fly-cost Loc3 Loc10) 37)
	(=(fly-cost Loc10 Loc3) 37)
	(=(fly-cost Loc4 Loc5) 103)
	(=(fly-cost Loc5 Loc4) 103)
	(=(fly-cost Loc4 Loc6) 93)
	(=(fly-cost Loc6 Loc4) 93)
	(=(fly-cost Loc4 Loc7) 109)
	(=(fly-cost Loc7 Loc4) 109)
	(=(fly-cost Loc4 Loc8) 65)
	(=(fly-cost Loc8 Loc4) 65)
	(=(fly-cost Loc4 Loc9) 126)
	(=(fly-cost Loc9 Loc4) 126)
	(=(fly-cost Loc4 Loc10) 80)
	(=(fly-cost Loc10 Loc4) 80)
	(=(fly-cost Loc5 Loc6) 119)
	(=(fly-cost Loc6 Loc5) 119)
	(=(fly-cost Loc5 Loc7) 73)
	(=(fly-cost Loc7 Loc5) 73)
	(=(fly-cost Loc5 Loc8) 168)
	(=(fly-cost Loc8 Loc5) 168)
	(=(fly-cost Loc5 Loc9) 116)
	(=(fly-cost Loc9 Loc5) 116)
	(=(fly-cost Loc5 Loc10) 144)
	(=(fly-cost Loc10 Loc5) 144)
	(=(fly-cost Loc6 Loc7) 63)
	(=(fly-cost Loc7 Loc6) 63)
	(=(fly-cost Loc6 Loc8) 128)
	(=(fly-cost Loc8 Loc6) 128)
	(=(fly-cost Loc6 Loc9) 43)
	(=(fly-cost Loc9 Loc6) 43)
	(=(fly-cost Loc6 Loc10) 45)
	(=(fly-cost Loc10 Loc6) 45)
	(=(fly-cost Loc7 Loc8) 165)
	(=(fly-cost Loc8 Loc7) 165)
	(=(fly-cost Loc7 Loc9) 45)
	(=(fly-cost Loc9 Loc7) 45)
	(=(fly-cost Loc7 Loc10) 103)
	(=(fly-cost Loc10 Loc7) 103)
	(=(fly-cost Loc8 Loc9) 169)
	(=(fly-cost Loc9 Loc8) 169)
	(=(fly-cost Loc8 Loc10) 93)
	(=(fly-cost Loc10 Loc8) 93)
	(=(fly-cost Loc9 Loc10) 87)
	(=(fly-cost Loc10 Loc9) 87)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc4 Loc4) 1)
	(=(fly-cost Loc4 Loc4) 1)
	(=(fly-cost Loc5 Loc5) 1)
	(=(fly-cost Loc5 Loc5) 1)
	(=(fly-cost Loc6 Loc6) 1)
	(=(fly-cost Loc6 Loc6) 1)
	(=(fly-cost Loc7 Loc7) 1)
	(=(fly-cost Loc7 Loc7) 1)
	(=(fly-cost Loc8 Loc8) 1)
	(=(fly-cost Loc8 Loc8) 1)
	(=(fly-cost Loc9 Loc9) 1)
	(=(fly-cost Loc9 Loc9) 1)
	(=(fly-cost Loc10 Loc10) 1)
	(=(fly-cost Loc10 Loc10) 1)
)
(:goal (and
	(loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona1 bebida)
	(persona-tiene-contenido persona2 bebida)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona3 medicine)
	(persona-tiene-contenido persona3 bebida)
	(persona-tiene-contenido persona4 medicine)
	(persona-tiene-contenido persona6 bebida)
	(persona-tiene-contenido persona7 bebida)
	(persona-tiene-contenido persona8 bebida)
	(persona-tiene-contenido persona9 bebida)
	(persona-tiene-contenido persona10 bebida)
	(persona-tiene-contenido persona11 food)
	(persona-tiene-contenido persona11 bebida)
	(persona-tiene-contenido persona13 bebida)
	(persona-tiene-contenido persona15 bebida)
	(persona-tiene-contenido persona17 bebida)
	(persona-tiene-contenido persona18 food)
	(persona-tiene-contenido persona19 food)
	(persona-tiene-contenido persona21 food)
	(persona-tiene-contenido persona21 bebida)
	(persona-tiene-contenido persona22 food)
	(persona-tiene-contenido persona23 bebida)
	))
)
