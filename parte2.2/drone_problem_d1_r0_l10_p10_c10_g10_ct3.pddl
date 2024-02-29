(define (problem drone_problem_d1_r0_l10_p10_c10_g10_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	transportador1 - transportador
	n0 	n1 	n2 	n3 	n4  - num 
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
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 Loc8)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona0 medicine)
	(loc-persona persona0 Loc5)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona2 bebida)
	(loc-persona persona2 Loc7)
	(caja-contenido caja3 bebida)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc1)
	(caja-contenido caja4 food)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona3 bebida)
	(loc-persona persona3 deposito)
	(caja-contenido caja5 bebida)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 Loc4)
	(caja-contenido caja6 food)
	(loc-caja caja6 deposito)
	(persona-necesita-contenido persona6 bebida)
	(loc-persona persona6 deposito)
	(caja-contenido caja7 bebida)
	(loc-caja caja7 deposito)
	(persona-necesita-contenido persona7 bebida)
	(loc-persona persona7 Loc8)
	(caja-contenido caja8 bebida)
	(loc-caja caja8 deposito)
	(persona-necesita-contenido persona8 bebida)
	(loc-persona persona8 Loc3)
	(caja-contenido caja9 bebida)
	(loc-caja caja9 deposito)
	(persona-necesita-contenido persona9 food)
	(loc-persona persona9 deposito)
	(caja-contenido caja10 food)
	(loc-caja caja10 deposito)
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
	(=(fly-cost deposito Loc1) 170)
	(=(fly-cost deposito Loc2) 166)
	(=(fly-cost deposito Loc3) 275)
	(=(fly-cost deposito Loc4) 183)
	(=(fly-cost deposito Loc5) 198)
	(=(fly-cost deposito Loc6) 66)
	(=(fly-cost deposito Loc7) 204)
	(=(fly-cost deposito Loc8) 192)
	(=(fly-cost deposito Loc9) 188)
	(=(fly-cost deposito Loc10) 255)
	(=(fly-cost Loc1 Loc2) 31)
	(=(fly-cost Loc1 Loc3) 123)
	(=(fly-cost Loc1 Loc4) 50)
	(=(fly-cost Loc1 Loc5) 38)
	(=(fly-cost Loc1 Loc6) 105)
	(=(fly-cost Loc1 Loc7) 77)
	(=(fly-cost Loc1 Loc8) 43)
	(=(fly-cost Loc1 Loc9) 21)
	(=(fly-cost Loc1 Loc10) 97)
	(=(fly-cost Loc2 Loc3) 148)
	(=(fly-cost Loc2 Loc4) 81)
	(=(fly-cost Loc2 Loc5) 34)
	(=(fly-cost Loc2 Loc6) 105)
	(=(fly-cost Loc2 Loc7) 107)
	(=(fly-cost Loc2 Loc8) 27)
	(=(fly-cost Loc2 Loc9) 34)
	(=(fly-cost Loc2 Loc10) 120)
	(=(fly-cost Loc3 Loc4) 92)
	(=(fly-cost Loc3 Loc5) 125)
	(=(fly-cost Loc3 Loc6) 211)
	(=(fly-cost Loc3 Loc7) 74)
	(=(fly-cost Loc3 Loc8) 139)
	(=(fly-cost Loc3 Loc9) 115)
	(=(fly-cost Loc3 Loc10) 29)
	(=(fly-cost Loc4 Loc5) 79)
	(=(fly-cost Loc4 Loc6) 119)
	(=(fly-cost Loc4 Loc7) 29)
	(=(fly-cost Loc4 Loc8) 89)
	(=(fly-cost Loc4 Loc9) 59)
	(=(fly-cost Loc4 Loc10) 73)
	(=(fly-cost Loc5 Loc6) 136)
	(=(fly-cost Loc5 Loc7) 101)
	(=(fly-cost Loc5 Loc8) 15)
	(=(fly-cost Loc5 Loc9) 21)
	(=(fly-cost Loc5 Loc10) 97)
	(=(fly-cost Loc6 Loc7) 141)
	(=(fly-cost Loc6 Loc8) 131)
	(=(fly-cost Loc6 Loc9) 124)
	(=(fly-cost Loc6 Loc10) 190)
	(=(fly-cost Loc7 Loc8) 112)
	(=(fly-cost Loc7 Loc9) 82)
	(=(fly-cost Loc7 Loc10) 62)
	(=(fly-cost Loc8 Loc9) 31)
	(=(fly-cost Loc8 Loc10) 111)
	(=(fly-cost Loc9 Loc10) 87)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona2 bebida)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona3 bebida)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona6 bebida)
	(persona-tiene-contenido persona7 bebida)
	(persona-tiene-contenido persona8 bebida)
	(persona-tiene-contenido persona9 food)
	))
(:metric minimize(total-cost))

)
