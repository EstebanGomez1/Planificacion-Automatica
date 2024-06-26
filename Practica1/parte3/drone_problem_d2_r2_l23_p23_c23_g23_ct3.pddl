(define (problem drone_problem_d2_r2_l23_p23_c23_g23_ct3)(:domain logisticaSE)
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
	Loc11 - loc
	Loc12 - loc
	Loc13 - loc
	Loc14 - loc
	Loc15 - loc
	Loc16 - loc
	Loc17 - loc
	Loc18 - loc
	Loc19 - loc
	Loc20 - loc
	Loc21 - loc
	Loc22 - loc
	Loc23 - loc
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
	(loc-persona persona0 Loc21)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona1 Loc10)
	(persona-necesita-contenido persona1 bebida)
	(loc-persona persona2 Loc14)
	(loc-persona persona3 Loc22)
	(persona-necesita-contenido persona3 bebida)
	(loc-persona persona4 Loc15)
	(loc-persona persona5 Loc8)
	(persona-necesita-contenido persona5 bebida)
	(loc-persona persona6 Loc9)
	(persona-necesita-contenido persona6 food)
	(persona-necesita-contenido persona6 bebida)
	(loc-persona persona7 Loc6)
	(persona-necesita-contenido persona7 bebida)
	(loc-persona persona8 Loc20)
	(persona-necesita-contenido persona8 food)
	(persona-necesita-contenido persona8 bebida)
	(loc-persona persona9 Loc3)
	(loc-persona persona10 Loc13)
	(persona-necesita-contenido persona10 bebida)
	(loc-persona persona11 Loc4)
	(persona-necesita-contenido persona11 food)
	(persona-necesita-contenido persona11 bebida)
	(loc-persona persona12 Loc18)
	(persona-necesita-contenido persona12 medicine)
	(loc-persona persona13 Loc9)
	(persona-necesita-contenido persona13 food)
	(loc-persona persona14 Loc18)
	(persona-necesita-contenido persona14 bebida)
	(loc-persona persona15 Loc3)
	(loc-persona persona16 deposito)
	(persona-necesita-contenido persona16 food)
	(persona-necesita-contenido persona16 bebida)
	(loc-persona persona17 Loc6)
	(loc-persona persona18 Loc3)
	(persona-necesita-contenido persona18 bebida)
	(loc-persona persona19 Loc14)
	(persona-necesita-contenido persona19 food)
	(persona-necesita-contenido persona19 bebida)
	(loc-persona persona20 Loc1)
	(persona-necesita-contenido persona20 bebida)
	(loc-persona persona21 Loc22)
	(persona-necesita-contenido persona21 bebida)
	(loc-persona persona22 Loc19)
	(persona-necesita-contenido persona22 bebida)
	(caja-contenido caja1 bebida)
	(caja-contenido caja2 bebida)
	(caja-contenido caja3 bebida)
	(caja-contenido caja4 bebida)
	(caja-contenido caja5 food)
	(caja-contenido caja6 bebida)
	(caja-contenido caja7 bebida)
	(caja-contenido caja8 food)
	(caja-contenido caja9 bebida)
	(caja-contenido caja10 bebida)
	(caja-contenido caja11 food)
	(caja-contenido caja12 bebida)
	(caja-contenido caja13 medicine)
	(caja-contenido caja14 food)
	(caja-contenido caja15 bebida)
	(caja-contenido caja16 food)
	(caja-contenido caja17 bebida)
	(caja-contenido caja18 bebida)
	(caja-contenido caja19 food)
	(caja-contenido caja20 bebida)
	(caja-contenido caja21 bebida)
	(caja-contenido caja22 bebida)
	(caja-contenido caja23 bebida)
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
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 192)
	(=(fly-cost Loc1 deposito) 192)
	(=(fly-cost deposito Loc2) 83)
	(=(fly-cost Loc2 deposito) 83)
	(=(fly-cost deposito Loc3) 8)
	(=(fly-cost Loc3 deposito) 8)
	(=(fly-cost deposito Loc4) 101)
	(=(fly-cost Loc4 deposito) 101)
	(=(fly-cost deposito Loc5) 111)
	(=(fly-cost Loc5 deposito) 111)
	(=(fly-cost deposito Loc6) 191)
	(=(fly-cost Loc6 deposito) 191)
	(=(fly-cost deposito Loc7) 143)
	(=(fly-cost Loc7 deposito) 143)
	(=(fly-cost deposito Loc8) 150)
	(=(fly-cost Loc8 deposito) 150)
	(=(fly-cost deposito Loc9) 183)
	(=(fly-cost Loc9 deposito) 183)
	(=(fly-cost deposito Loc10) 43)
	(=(fly-cost Loc10 deposito) 43)
	(=(fly-cost deposito Loc11) 113)
	(=(fly-cost Loc11 deposito) 113)
	(=(fly-cost deposito Loc12) 90)
	(=(fly-cost Loc12 deposito) 90)
	(=(fly-cost deposito Loc13) 182)
	(=(fly-cost Loc13 deposito) 182)
	(=(fly-cost deposito Loc14) 102)
	(=(fly-cost Loc14 deposito) 102)
	(=(fly-cost deposito Loc15) 70)
	(=(fly-cost Loc15 deposito) 70)
	(=(fly-cost deposito Loc16) 202)
	(=(fly-cost Loc16 deposito) 202)
	(=(fly-cost deposito Loc17) 220)
	(=(fly-cost Loc17 deposito) 220)
	(=(fly-cost deposito Loc18) 232)
	(=(fly-cost Loc18 deposito) 232)
	(=(fly-cost deposito Loc19) 249)
	(=(fly-cost Loc19 deposito) 249)
	(=(fly-cost deposito Loc20) 127)
	(=(fly-cost Loc20 deposito) 127)
	(=(fly-cost deposito Loc21) 42)
	(=(fly-cost Loc21 deposito) 42)
	(=(fly-cost deposito Loc22) 186)
	(=(fly-cost Loc22 deposito) 186)
	(=(fly-cost deposito Loc23) 206)
	(=(fly-cost Loc23 deposito) 206)
	(=(fly-cost Loc1 Loc2) 122)
	(=(fly-cost Loc2 Loc1) 122)
	(=(fly-cost Loc1 Loc3) 188)
	(=(fly-cost Loc3 Loc1) 188)
	(=(fly-cost Loc1 Loc4) 93)
	(=(fly-cost Loc4 Loc1) 93)
	(=(fly-cost Loc1 Loc5) 129)
	(=(fly-cost Loc5 Loc1) 129)
	(=(fly-cost Loc1 Loc6) 59)
	(=(fly-cost Loc6 Loc1) 59)
	(=(fly-cost Loc1 Loc7) 148)
	(=(fly-cost Loc7 Loc1) 148)
	(=(fly-cost Loc1 Loc8) 70)
	(=(fly-cost Loc8 Loc1) 70)
	(=(fly-cost Loc1 Loc9) 116)
	(=(fly-cost Loc9 Loc1) 116)
	(=(fly-cost Loc1 Loc10) 150)
	(=(fly-cost Loc10 Loc1) 150)
	(=(fly-cost Loc1 Loc11) 81)
	(=(fly-cost Loc11 Loc1) 81)
	(=(fly-cost Loc1 Loc12) 108)
	(=(fly-cost Loc12 Loc1) 108)
	(=(fly-cost Loc1 Loc13) 29)
	(=(fly-cost Loc13 Loc1) 29)
	(=(fly-cost Loc1 Loc14) 141)
	(=(fly-cost Loc14 Loc1) 141)
	(=(fly-cost Loc1 Loc15) 136)
	(=(fly-cost Loc15 Loc1) 136)
	(=(fly-cost Loc1 Loc16) 177)
	(=(fly-cost Loc16 Loc1) 177)
	(=(fly-cost Loc1 Loc17) 29)
	(=(fly-cost Loc17 Loc1) 29)
	(=(fly-cost Loc1 Loc18) 128)
	(=(fly-cost Loc18 Loc1) 128)
	(=(fly-cost Loc1 Loc19) 108)
	(=(fly-cost Loc19 Loc1) 108)
	(=(fly-cost Loc1 Loc20) 78)
	(=(fly-cost Loc20 Loc1) 78)
	(=(fly-cost Loc1 Loc21) 169)
	(=(fly-cost Loc21 Loc1) 169)
	(=(fly-cost Loc1 Loc22) 109)
	(=(fly-cost Loc22 Loc1) 109)
	(=(fly-cost Loc1 Loc23) 56)
	(=(fly-cost Loc23 Loc1) 56)
	(=(fly-cost Loc2 Loc3) 81)
	(=(fly-cost Loc3 Loc2) 81)
	(=(fly-cost Loc2 Loc4) 53)
	(=(fly-cost Loc4 Loc2) 53)
	(=(fly-cost Loc2 Loc5) 105)
	(=(fly-cost Loc5 Loc2) 105)
	(=(fly-cost Loc2 Loc6) 140)
	(=(fly-cost Loc6 Loc2) 140)
	(=(fly-cost Loc2 Loc7) 143)
	(=(fly-cost Loc7 Loc2) 143)
	(=(fly-cost Loc2 Loc8) 68)
	(=(fly-cost Loc8 Loc2) 68)
	(=(fly-cost Loc2 Loc9) 158)
	(=(fly-cost Loc9 Loc2) 158)
	(=(fly-cost Loc2 Loc10) 44)
	(=(fly-cost Loc10 Loc2) 44)
	(=(fly-cost Loc2 Loc11) 59)
	(=(fly-cost Loc11 Loc2) 59)
	(=(fly-cost Loc2 Loc12) 16)
	(=(fly-cost Loc12 Loc2) 16)
	(=(fly-cost Loc2 Loc13) 105)
	(=(fly-cost Loc13 Loc2) 105)
	(=(fly-cost Loc2 Loc14) 105)
	(=(fly-cost Loc14 Loc2) 105)
	(=(fly-cost Loc2 Loc15) 70)
	(=(fly-cost Loc15 Loc2) 70)
	(=(fly-cost Loc2 Loc16) 200)
	(=(fly-cost Loc16 Loc2) 200)
	(=(fly-cost Loc2 Loc17) 147)
	(=(fly-cost Loc17 Loc2) 147)
	(=(fly-cost Loc2 Loc18) 200)
	(=(fly-cost Loc18 Loc2) 200)
	(=(fly-cost Loc2 Loc19) 203)
	(=(fly-cost Loc19 Loc2) 203)
	(=(fly-cost Loc2 Loc20) 81)
	(=(fly-cost Loc20 Loc2) 81)
	(=(fly-cost Loc2 Loc21) 82)
	(=(fly-cost Loc21 Loc2) 82)
	(=(fly-cost Loc2 Loc22) 157)
	(=(fly-cost Loc22 Loc2) 157)
	(=(fly-cost Loc2 Loc23) 151)
	(=(fly-cost Loc23 Loc2) 151)
	(=(fly-cost Loc3 Loc4) 96)
	(=(fly-cost Loc4 Loc3) 96)
	(=(fly-cost Loc3 Loc5) 103)
	(=(fly-cost Loc5 Loc3) 103)
	(=(fly-cost Loc3 Loc6) 185)
	(=(fly-cost Loc6 Loc3) 185)
	(=(fly-cost Loc3 Loc7) 135)
	(=(fly-cost Loc7 Loc3) 135)
	(=(fly-cost Loc3 Loc8) 147)
	(=(fly-cost Loc8 Loc3) 147)
	(=(fly-cost Loc3 Loc9) 175)
	(=(fly-cost Loc9 Loc3) 175)
	(=(fly-cost Loc3 Loc10) 39)
	(=(fly-cost Loc10 Loc3) 39)
	(=(fly-cost Loc3 Loc11) 108)
	(=(fly-cost Loc11 Loc3) 108)
	(=(fly-cost Loc3 Loc12) 87)
	(=(fly-cost Loc12 Loc3) 87)
	(=(fly-cost Loc3 Loc13) 178)
	(=(fly-cost Loc13 Loc3) 178)
	(=(fly-cost Loc3 Loc14) 94)
	(=(fly-cost Loc14 Loc3) 94)
	(=(fly-cost Loc3 Loc15) 64)
	(=(fly-cost Loc15 Loc3) 64)
	(=(fly-cost Loc3 Loc16) 195)
	(=(fly-cost Loc16 Loc3) 195)
	(=(fly-cost Loc3 Loc17) 215)
	(=(fly-cost Loc17 Loc3) 215)
	(=(fly-cost Loc3 Loc18) 225)
	(=(fly-cost Loc18 Loc3) 225)
	(=(fly-cost Loc3 Loc19) 242)
	(=(fly-cost Loc19 Loc3) 242)
	(=(fly-cost Loc3 Loc20) 121)
	(=(fly-cost Loc20 Loc3) 121)
	(=(fly-cost Loc3 Loc21) 35)
	(=(fly-cost Loc21 Loc3) 35)
	(=(fly-cost Loc3 Loc22) 179)
	(=(fly-cost Loc22 Loc3) 179)
	(=(fly-cost Loc3 Loc23) 200)
	(=(fly-cost Loc23 Loc3) 200)
	(=(fly-cost Loc4 Loc5) 61)
	(=(fly-cost Loc5 Loc4) 61)
	(=(fly-cost Loc4 Loc6) 94)
	(=(fly-cost Loc6 Loc4) 94)
	(=(fly-cost Loc4 Loc7) 97)
	(=(fly-cost Loc7 Loc4) 97)
	(=(fly-cost Loc4 Loc8) 74)
	(=(fly-cost Loc8 Loc4) 74)
	(=(fly-cost Loc4 Loc9) 106)
	(=(fly-cost Loc9 Loc4) 106)
	(=(fly-cost Loc4 Loc10) 61)
	(=(fly-cost Loc10 Loc4) 61)
	(=(fly-cost Loc4 Loc11) 13)
	(=(fly-cost Loc11 Loc4) 13)
	(=(fly-cost Loc4 Loc12) 39)
	(=(fly-cost Loc12 Loc4) 39)
	(=(fly-cost Loc4 Loc13) 89)
	(=(fly-cost Loc13 Loc4) 89)
	(=(fly-cost Loc4 Loc14) 66)
	(=(fly-cost Loc14 Loc4) 66)
	(=(fly-cost Loc4 Loc15) 46)
	(=(fly-cost Loc15 Loc4) 46)
	(=(fly-cost Loc4 Loc16) 150)
	(=(fly-cost Loc16 Loc4) 150)
	(=(fly-cost Loc4 Loc17) 121)
	(=(fly-cost Loc17 Loc4) 121)
	(=(fly-cost Loc4 Loc18) 148)
	(=(fly-cost Loc18 Loc4) 148)
	(=(fly-cost Loc4 Loc19) 155)
	(=(fly-cost Loc19 Loc4) 155)
	(=(fly-cost Loc4 Loc20) 30)
	(=(fly-cost Loc20 Loc4) 30)
	(=(fly-cost Loc4 Loc21) 77)
	(=(fly-cost Loc21 Loc4) 77)
	(=(fly-cost Loc4 Loc22) 105)
	(=(fly-cost Loc22 Loc4) 105)
	(=(fly-cost Loc4 Loc23) 107)
	(=(fly-cost Loc23 Loc4) 107)
	(=(fly-cost Loc5 Loc6) 99)
	(=(fly-cost Loc6 Loc5) 99)
	(=(fly-cost Loc5 Loc7) 39)
	(=(fly-cost Loc7 Loc5) 39)
	(=(fly-cost Loc5 Loc8) 132)
	(=(fly-cost Loc8 Loc5) 132)
	(=(fly-cost Loc5 Loc9) 73)
	(=(fly-cost Loc9 Loc5) 73)
	(=(fly-cost Loc5 Loc10) 87)
	(=(fly-cost Loc10 Loc5) 87)
	(=(fly-cost Loc5 Loc11) 65)
	(=(fly-cost Loc11 Loc5) 65)
	(=(fly-cost Loc5 Loc12) 94)
	(=(fly-cost Loc12 Loc5) 94)
	(=(fly-cost Loc5 Loc13) 136)
	(=(fly-cost Loc13 Loc5) 136)
	(=(fly-cost Loc5 Loc14) 14)
	(=(fly-cost Loc14 Loc5) 14)
	(=(fly-cost Loc5 Loc15) 44)
	(=(fly-cost Loc15 Loc5) 44)
	(=(fly-cost Loc5 Loc16) 98)
	(=(fly-cost Loc16 Loc5) 98)
	(=(fly-cost Loc5 Loc17) 157)
	(=(fly-cost Loc17 Loc5) 157)
	(=(fly-cost Loc5 Loc18) 124)
	(=(fly-cost Loc18 Loc5) 124)
	(=(fly-cost Loc5 Loc19) 146)
	(=(fly-cost Loc19 Loc5) 146)
	(=(fly-cost Loc5 Loc20) 55)
	(=(fly-cost Loc20 Loc5) 55)
	(=(fly-cost Loc5 Loc21) 70)
	(=(fly-cost Loc21 Loc5) 70)
	(=(fly-cost Loc5 Loc22) 77)
	(=(fly-cost Loc22 Loc5) 77)
	(=(fly-cost Loc5 Loc23) 115)
	(=(fly-cost Loc23 Loc5) 115)
	(=(fly-cost Loc6 Loc7) 105)
	(=(fly-cost Loc7 Loc6) 105)
	(=(fly-cost Loc6 Loc8) 113)
	(=(fly-cost Loc8 Loc6) 113)
	(=(fly-cost Loc6 Loc9) 61)
	(=(fly-cost Loc9 Loc6) 61)
	(=(fly-cost Loc6 Loc10) 153)
	(=(fly-cost Loc10 Loc6) 153)
	(=(fly-cost Loc6 Loc11) 84)
	(=(fly-cost Loc11 Loc6) 84)
	(=(fly-cost Loc6 Loc12) 125)
	(=(fly-cost Loc12 Loc6) 125)
	(=(fly-cost Loc6 Loc13) 83)
	(=(fly-cost Loc13 Loc6) 83)
	(=(fly-cost Loc6 Loc14) 112)
	(=(fly-cost Loc14 Loc6) 112)
	(=(fly-cost Loc6 Loc15) 124)
	(=(fly-cost Loc15 Loc6) 124)
	(=(fly-cost Loc6 Loc16) 122)
	(=(fly-cost Loc16 Loc6) 122)
	(=(fly-cost Loc6 Loc17) 75)
	(=(fly-cost Loc17 Loc6) 75)
	(=(fly-cost Loc6 Loc18) 72)
	(=(fly-cost Loc18 Loc6) 72)
	(=(fly-cost Loc6 Loc19) 64)
	(=(fly-cost Loc19 Loc6) 64)
	(=(fly-cost Loc6 Loc20) 66)
	(=(fly-cost Loc20 Loc6) 66)
	(=(fly-cost Loc6 Loc21) 158)
	(=(fly-cost Loc21 Loc6) 158)
	(=(fly-cost Loc6 Loc22) 54)
	(=(fly-cost Loc22 Loc6) 54)
	(=(fly-cost Loc6 Loc23) 16)
	(=(fly-cost Loc23 Loc6) 16)
	(=(fly-cost Loc7 Loc8) 165)
	(=(fly-cost Loc8 Loc7) 165)
	(=(fly-cost Loc7 Loc9) 56)
	(=(fly-cost Loc9 Loc7) 56)
	(=(fly-cost Loc7 Loc10) 124)
	(=(fly-cost Loc10 Loc7) 124)
	(=(fly-cost Loc7 Loc11) 99)
	(=(fly-cost Loc11 Loc7) 99)
	(=(fly-cost Loc7 Loc12) 132)
	(=(fly-cost Loc12 Loc7) 132)
	(=(fly-cost Loc7 Loc13) 161)
	(=(fly-cost Loc13 Loc7) 161)
	(=(fly-cost Loc7 Loc14) 43)
	(=(fly-cost Loc14 Loc7) 43)
	(=(fly-cost Loc7 Loc15) 81)
	(=(fly-cost Loc15 Loc7) 81)
	(=(fly-cost Loc7 Loc16) 61)
	(=(fly-cost Loc16 Loc7) 61)
	(=(fly-cost Loc7 Loc17) 173)
	(=(fly-cost Loc17 Loc7) 173)
	(=(fly-cost Loc7 Loc18) 104)
	(=(fly-cost Loc18 Loc7) 104)
	(=(fly-cost Loc7 Loc19) 136)
	(=(fly-cost Loc19 Loc7) 136)
	(=(fly-cost Loc7 Loc20) 83)
	(=(fly-cost Loc20 Loc7) 83)
	(=(fly-cost Loc7 Loc21) 101)
	(=(fly-cost Loc21 Loc7) 101)
	(=(fly-cost Loc7 Loc22) 63)
	(=(fly-cost Loc22 Loc7) 63)
	(=(fly-cost Loc7 Loc23) 120)
	(=(fly-cost Loc23 Loc7) 120)
	(=(fly-cost Loc8 Loc9) 155)
	(=(fly-cost Loc9 Loc8) 155)
	(=(fly-cost Loc8 Loc10) 109)
	(=(fly-cost Loc10 Loc8) 109)
	(=(fly-cost Loc8 Loc11) 68)
	(=(fly-cost Loc11 Loc8) 68)
	(=(fly-cost Loc8 Loc12) 61)
	(=(fly-cost Loc12 Loc8) 61)
	(=(fly-cost Loc8 Loc13) 45)
	(=(fly-cost Loc13 Loc8) 45)
	(=(fly-cost Loc8 Loc14) 139)
	(=(fly-cost Loc14 Loc8) 139)
	(=(fly-cost Loc8 Loc15) 116)
	(=(fly-cost Loc15 Loc8) 116)
	(=(fly-cost Loc8 Loc16) 211)
	(=(fly-cost Loc16 Loc8) 211)
	(=(fly-cost Loc8 Loc17) 88)
	(=(fly-cost Loc17 Loc8) 88)
	(=(fly-cost Loc8 Loc18) 183)
	(=(fly-cost Loc18 Loc8) 183)
	(=(fly-cost Loc8 Loc19) 173)
	(=(fly-cost Loc19 Loc8) 173)
	(=(fly-cost Loc8 Loc20) 83)
	(=(fly-cost Loc20 Loc8) 83)
	(=(fly-cost Loc8 Loc21) 141)
	(=(fly-cost Loc21 Loc8) 141)
	(=(fly-cost Loc8 Loc22) 151)
	(=(fly-cost Loc22 Loc8) 151)
	(=(fly-cost Loc8 Loc23) 118)
	(=(fly-cost Loc23 Loc8) 118)
	(=(fly-cost Loc9 Loc10) 153)
	(=(fly-cost Loc10 Loc9) 153)
	(=(fly-cost Loc9 Loc11) 101)
	(=(fly-cost Loc11 Loc9) 101)
	(=(fly-cost Loc9 Loc12) 144)
	(=(fly-cost Loc12 Loc9) 144)
	(=(fly-cost Loc9 Loc13) 136)
	(=(fly-cost Loc13 Loc9) 136)
	(=(fly-cost Loc9 Loc14) 84)
	(=(fly-cost Loc14 Loc9) 84)
	(=(fly-cost Loc9 Loc15) 113)
	(=(fly-cost Loc15 Loc9) 113)
	(=(fly-cost Loc9 Loc16) 62)
	(=(fly-cost Loc16 Loc9) 62)
	(=(fly-cost Loc9 Loc17) 136)
	(=(fly-cost Loc17 Loc9) 136)
	(=(fly-cost Loc9 Loc18) 51)
	(=(fly-cost Loc18 Loc9) 51)
	(=(fly-cost Loc9 Loc19) 80)
	(=(fly-cost Loc19 Loc9) 80)
	(=(fly-cost Loc9 Loc20) 79)
	(=(fly-cost Loc20 Loc9) 79)
	(=(fly-cost Loc9 Loc21) 143)
	(=(fly-cost Loc21 Loc9) 143)
	(=(fly-cost Loc9 Loc22) 9)
	(=(fly-cost Loc22 Loc9) 9)
	(=(fly-cost Loc9 Loc23) 73)
	(=(fly-cost Loc23 Loc9) 73)
	(=(fly-cost Loc10 Loc11) 72)
	(=(fly-cost Loc11 Loc10) 72)
	(=(fly-cost Loc10 Loc12) 49)
	(=(fly-cost Loc12 Loc10) 49)
	(=(fly-cost Loc10 Loc13) 139)
	(=(fly-cost Loc13 Loc10) 139)
	(=(fly-cost Loc10 Loc14) 82)
	(=(fly-cost Loc14 Loc10) 82)
	(=(fly-cost Loc10 Loc15) 44)
	(=(fly-cost Loc15 Loc10) 44)
	(=(fly-cost Loc10 Loc16) 184)
	(=(fly-cost Loc16 Loc10) 184)
	(=(fly-cost Loc10 Loc17) 177)
	(=(fly-cost Loc17 Loc10) 177)
	(=(fly-cost Loc10 Loc18) 201)
	(=(fly-cost Loc18 Loc10) 201)
	(=(fly-cost Loc10 Loc19) 213)
	(=(fly-cost Loc19 Loc10) 213)
	(=(fly-cost Loc10 Loc20) 88)
	(=(fly-cost Loc20 Loc10) 88)
	(=(fly-cost Loc10 Loc21) 41)
	(=(fly-cost Loc21 Loc10) 41)
	(=(fly-cost Loc10 Loc22) 155)
	(=(fly-cost Loc22 Loc10) 155)
	(=(fly-cost Loc10 Loc23) 167)
	(=(fly-cost Loc23 Loc10) 167)
	(=(fly-cost Loc11 Loc12) 44)
	(=(fly-cost Loc12 Loc11) 44)
	(=(fly-cost Loc11 Loc13) 78)
	(=(fly-cost Loc13 Loc11) 78)
	(=(fly-cost Loc11 Loc14) 73)
	(=(fly-cost Loc14 Loc11) 73)
	(=(fly-cost Loc11 Loc15) 57)
	(=(fly-cost Loc15 Loc11) 57)
	(=(fly-cost Loc11 Loc16) 150)
	(=(fly-cost Loc16 Loc11) 150)
	(=(fly-cost Loc11 Loc17) 109)
	(=(fly-cost Loc17 Loc11) 109)
	(=(fly-cost Loc11 Loc18) 141)
	(=(fly-cost Loc18 Loc11) 141)
	(=(fly-cost Loc11 Loc19) 146)
	(=(fly-cost Loc19 Loc11) 146)
	(=(fly-cost Loc11 Loc20) 23)
	(=(fly-cost Loc20 Loc11) 23)
	(=(fly-cost Loc11 Loc21) 89)
	(=(fly-cost Loc21 Loc11) 89)
	(=(fly-cost Loc11 Loc22) 100)
	(=(fly-cost Loc22 Loc11) 100)
	(=(fly-cost Loc11 Loc23) 96)
	(=(fly-cost Loc23 Loc11) 96)
	(=(fly-cost Loc12 Loc13) 93)
	(=(fly-cost Loc13 Loc12) 93)
	(=(fly-cost Loc12 Loc14) 97)
	(=(fly-cost Loc14 Loc12) 97)
	(=(fly-cost Loc12 Loc15) 64)
	(=(fly-cost Loc15 Loc12) 64)
	(=(fly-cost Loc12 Loc16) 188)
	(=(fly-cost Loc16 Loc12) 188)
	(=(fly-cost Loc12 Loc17) 134)
	(=(fly-cost Loc17 Loc12) 134)
	(=(fly-cost Loc12 Loc18) 185)
	(=(fly-cost Loc18 Loc12) 185)
	(=(fly-cost Loc12 Loc19) 188)
	(=(fly-cost Loc19 Loc12) 188)
	(=(fly-cost Loc12 Loc20) 66)
	(=(fly-cost Loc20 Loc12) 66)
	(=(fly-cost Loc12 Loc21) 83)
	(=(fly-cost Loc21 Loc12) 83)
	(=(fly-cost Loc12 Loc22) 143)
	(=(fly-cost Loc22 Loc12) 143)
	(=(fly-cost Loc12 Loc23) 136)
	(=(fly-cost Loc23 Loc12) 136)
	(=(fly-cost Loc13 Loc14) 146)
	(=(fly-cost Loc14 Loc13) 146)
	(=(fly-cost Loc13 Loc15) 134)
	(=(fly-cost Loc15 Loc13) 134)
	(=(fly-cost Loc13 Loc16) 196)
	(=(fly-cost Loc16 Loc13) 196)
	(=(fly-cost Loc13 Loc17) 44)
	(=(fly-cost Loc17 Loc13) 44)
	(=(fly-cost Loc13 Loc18) 154)
	(=(fly-cost Loc18 Loc13) 154)
	(=(fly-cost Loc13 Loc19) 136)
	(=(fly-cost Loc19 Loc13) 136)
	(=(fly-cost Loc13 Loc20) 82)
	(=(fly-cost Loc20 Loc13) 82)
	(=(fly-cost Loc13 Loc21) 164)
	(=(fly-cost Loc21 Loc13) 164)
	(=(fly-cost Loc13 Loc22) 130)
	(=(fly-cost Loc22 Loc13) 130)
	(=(fly-cost Loc13 Loc23) 83)
	(=(fly-cost Loc23 Loc13) 83)
	(=(fly-cost Loc14 Loc15) 39)
	(=(fly-cost Loc15 Loc14) 39)
	(=(fly-cost Loc14 Loc16) 103)
	(=(fly-cost Loc16 Loc14) 103)
	(=(fly-cost Loc14 Loc17) 169)
	(=(fly-cost Loc17 Loc14) 169)
	(=(fly-cost Loc14 Loc18) 135)
	(=(fly-cost Loc18 Loc14) 135)
	(=(fly-cost Loc14 Loc19) 159)
	(=(fly-cost Loc19 Loc14) 159)
	(=(fly-cost Loc14 Loc20) 65)
	(=(fly-cost Loc20 Loc14) 65)
	(=(fly-cost Loc14 Loc21) 60)
	(=(fly-cost Loc21 Loc14) 60)
	(=(fly-cost Loc14 Loc22) 89)
	(=(fly-cost Loc22 Loc14) 89)
	(=(fly-cost Loc14 Loc23) 128)
	(=(fly-cost Loc23 Loc14) 128)
	(=(fly-cost Loc15 Loc16) 141)
	(=(fly-cost Loc16 Loc15) 141)
	(=(fly-cost Loc15 Loc17) 165)
	(=(fly-cost Loc17 Loc15) 165)
	(=(fly-cost Loc15 Loc18) 163)
	(=(fly-cost Loc18 Loc15) 163)
	(=(fly-cost Loc15 Loc19) 180)
	(=(fly-cost Loc19 Loc15) 180)
	(=(fly-cost Loc15 Loc20) 62)
	(=(fly-cost Loc20 Loc15) 62)
	(=(fly-cost Loc15 Loc21) 35)
	(=(fly-cost Loc21 Loc15) 35)
	(=(fly-cost Loc15 Loc22) 116)
	(=(fly-cost Loc22 Loc15) 116)
	(=(fly-cost Loc15 Loc23) 139)
	(=(fly-cost Loc23 Loc15) 139)
	(=(fly-cost Loc16 Loc17) 197)
	(=(fly-cost Loc17 Loc16) 197)
	(=(fly-cost Loc16 Loc18) 82)
	(=(fly-cost Loc18 Loc16) 82)
	(=(fly-cost Loc16 Loc19) 123)
	(=(fly-cost Loc19 Loc16) 123)
	(=(fly-cost Loc16 Loc20) 130)
	(=(fly-cost Loc20 Loc16) 130)
	(=(fly-cost Loc16 Loc21) 160)
	(=(fly-cost Loc21 Loc16) 160)
	(=(fly-cost Loc16 Loc22) 69)
	(=(fly-cost Loc22 Loc16) 69)
	(=(fly-cost Loc16 Loc23) 132)
	(=(fly-cost Loc23 Loc16) 132)
	(=(fly-cost Loc17 Loc18) 138)
	(=(fly-cost Loc18 Loc17) 138)
	(=(fly-cost Loc17 Loc19) 111)
	(=(fly-cost Loc19 Loc17) 111)
	(=(fly-cost Loc17 Loc20) 106)
	(=(fly-cost Loc20 Loc17) 106)
	(=(fly-cost Loc17 Loc21) 198)
	(=(fly-cost Loc21 Loc17) 198)
	(=(fly-cost Loc17 Loc22) 128)
	(=(fly-cost Loc22 Loc17) 128)
	(=(fly-cost Loc17 Loc23) 67)
	(=(fly-cost Loc23 Loc17) 67)
	(=(fly-cost Loc18 Loc19) 42)
	(=(fly-cost Loc19 Loc18) 42)
	(=(fly-cost Loc18 Loc20) 120)
	(=(fly-cost Loc20 Loc18) 120)
	(=(fly-cost Loc18 Loc21) 193)
	(=(fly-cost Loc21 Loc18) 193)
	(=(fly-cost Loc18 Loc22) 47)
	(=(fly-cost Loc22 Loc18) 47)
	(=(fly-cost Loc18 Loc23) 73)
	(=(fly-cost Loc23 Loc18) 73)
	(=(fly-cost Loc19 Loc20) 126)
	(=(fly-cost Loc20 Loc19) 126)
	(=(fly-cost Loc19 Loc21) 213)
	(=(fly-cost Loc21 Loc19) 213)
	(=(fly-cost Loc19 Loc22) 73)
	(=(fly-cost Loc22 Loc19) 73)
	(=(fly-cost Loc19 Loc23) 56)
	(=(fly-cost Loc23 Loc19) 56)
	(=(fly-cost Loc20 Loc21) 96)
	(=(fly-cost Loc21 Loc20) 96)
	(=(fly-cost Loc20 Loc22) 78)
	(=(fly-cost Loc22 Loc20) 78)
	(=(fly-cost Loc20 Loc23) 80)
	(=(fly-cost Loc23 Loc20) 80)
	(=(fly-cost Loc21 Loc22) 146)
	(=(fly-cost Loc22 Loc21) 146)
	(=(fly-cost Loc21 Loc23) 174)
	(=(fly-cost Loc23 Loc21) 174)
	(=(fly-cost Loc22 Loc23) 65)
	(=(fly-cost Loc23 Loc22) 65)
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
	(=(fly-cost Loc11 Loc11) 1)
	(=(fly-cost Loc11 Loc11) 1)
	(=(fly-cost Loc12 Loc12) 1)
	(=(fly-cost Loc12 Loc12) 1)
	(=(fly-cost Loc13 Loc13) 1)
	(=(fly-cost Loc13 Loc13) 1)
	(=(fly-cost Loc14 Loc14) 1)
	(=(fly-cost Loc14 Loc14) 1)
	(=(fly-cost Loc15 Loc15) 1)
	(=(fly-cost Loc15 Loc15) 1)
	(=(fly-cost Loc16 Loc16) 1)
	(=(fly-cost Loc16 Loc16) 1)
	(=(fly-cost Loc17 Loc17) 1)
	(=(fly-cost Loc17 Loc17) 1)
	(=(fly-cost Loc18 Loc18) 1)
	(=(fly-cost Loc18 Loc18) 1)
	(=(fly-cost Loc19 Loc19) 1)
	(=(fly-cost Loc19 Loc19) 1)
	(=(fly-cost Loc20 Loc20) 1)
	(=(fly-cost Loc20 Loc20) 1)
	(=(fly-cost Loc21 Loc21) 1)
	(=(fly-cost Loc21 Loc21) 1)
	(=(fly-cost Loc22 Loc22) 1)
	(=(fly-cost Loc22 Loc22) 1)
	(=(fly-cost Loc23 Loc23) 1)
	(=(fly-cost Loc23 Loc23) 1)
)
(:goal (and
	(loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona1 bebida)
	(persona-tiene-contenido persona3 bebida)
	(persona-tiene-contenido persona5 bebida)
	(persona-tiene-contenido persona6 food)
	(persona-tiene-contenido persona6 bebida)
	(persona-tiene-contenido persona7 bebida)
	(persona-tiene-contenido persona8 food)
	(persona-tiene-contenido persona8 bebida)
	(persona-tiene-contenido persona10 bebida)
	(persona-tiene-contenido persona11 food)
	(persona-tiene-contenido persona11 bebida)
	(persona-tiene-contenido persona12 medicine)
	(persona-tiene-contenido persona13 food)
	(persona-tiene-contenido persona14 bebida)
	(persona-tiene-contenido persona16 food)
	(persona-tiene-contenido persona16 bebida)
	(persona-tiene-contenido persona18 bebida)
	(persona-tiene-contenido persona19 food)
	(persona-tiene-contenido persona19 bebida)
	(persona-tiene-contenido persona20 bebida)
	(persona-tiene-contenido persona21 bebida)
	(persona-tiene-contenido persona22 bebida)
	))
)
