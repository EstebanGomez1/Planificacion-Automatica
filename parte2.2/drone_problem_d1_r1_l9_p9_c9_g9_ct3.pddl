(define (problem drone_problem_d1_r1_l9_p9_c9_g9_ct3)(:domain logisticaSE)
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
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	caja7 - caja
	caja8 - caja
	caja9 - caja
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
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona0 Loc4)
	(persona-necesita-contenido persona2 medicine)
	(loc-persona persona2 Loc8)
	(persona-necesita-contenido persona2 bebida)
	(loc-persona persona2 Loc4)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc7)
	(persona-necesita-contenido persona3 bebida)
	(loc-persona persona3 Loc9)
	(persona-necesita-contenido persona6 bebida)
	(loc-persona persona6 Loc4)
	(persona-necesita-contenido persona7 medicine)
	(loc-persona persona7 Loc6)
	(persona-necesita-contenido persona8 food)
	(loc-persona persona8 Loc1)
	(persona-necesita-contenido persona8 bebida)
	(loc-persona persona8 Loc1)
	(caja-contenido caja1 bebida)
	(loc-caja caja1 deposito)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(caja-contenido caja3 bebida)
	(loc-caja caja3 deposito)
	(caja-contenido caja4 food)
	(loc-caja caja4 deposito)
	(caja-contenido caja5 bebida)
	(loc-caja caja5 deposito)
	(caja-contenido caja6 bebida)
	(loc-caja caja6 deposito)
	(caja-contenido caja7 medicine)
	(loc-caja caja7 deposito)
	(caja-contenido caja8 food)
	(loc-caja caja8 deposito)
	(caja-contenido caja9 bebida)
	(loc-caja caja9 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(caja-free caja5)
	(caja-free caja6)
	(caja-free caja7)
	(caja-free caja8)
	(caja-free caja9)
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 227)
	(=(fly-cost Loc1 deposito) 227)
	(=(fly-cost deposito Loc2) 188)
	(=(fly-cost Loc2 deposito) 188)
	(=(fly-cost deposito Loc3) 39)
	(=(fly-cost Loc3 deposito) 39)
	(=(fly-cost deposito Loc4) 77)
	(=(fly-cost Loc4 deposito) 77)
	(=(fly-cost deposito Loc5) 103)
	(=(fly-cost Loc5 deposito) 103)
	(=(fly-cost deposito Loc6) 271)
	(=(fly-cost Loc6 deposito) 271)
	(=(fly-cost deposito Loc7) 132)
	(=(fly-cost Loc7 deposito) 132)
	(=(fly-cost deposito Loc8) 224)
	(=(fly-cost Loc8 deposito) 224)
	(=(fly-cost deposito Loc9) 45)
	(=(fly-cost Loc9 deposito) 45)
	(=(fly-cost Loc1 Loc2) 56)
	(=(fly-cost Loc2 Loc1) 56)
	(=(fly-cost Loc1 Loc3) 194)
	(=(fly-cost Loc3 Loc1) 194)
	(=(fly-cost Loc1 Loc4) 152)
	(=(fly-cost Loc4 Loc1) 152)
	(=(fly-cost Loc1 Loc5) 137)
	(=(fly-cost Loc5 Loc1) 137)
	(=(fly-cost Loc1 Loc6) 58)
	(=(fly-cost Loc6 Loc1) 58)
	(=(fly-cost Loc1 Loc7) 117)
	(=(fly-cost Loc7 Loc1) 117)
	(=(fly-cost Loc1 Loc8) 33)
	(=(fly-cost Loc8 Loc1) 33)
	(=(fly-cost Loc1 Loc9) 188)
	(=(fly-cost Loc9 Loc1) 188)
	(=(fly-cost Loc2 Loc3) 160)
	(=(fly-cost Loc3 Loc2) 160)
	(=(fly-cost Loc2 Loc4) 120)
	(=(fly-cost Loc4 Loc2) 120)
	(=(fly-cost Loc2 Loc5) 90)
	(=(fly-cost Loc5 Loc2) 90)
	(=(fly-cost Loc2 Loc6) 85)
	(=(fly-cost Loc6 Loc2) 85)
	(=(fly-cost Loc2 Loc7) 108)
	(=(fly-cost Loc7 Loc2) 108)
	(=(fly-cost Loc2 Loc8) 78)
	(=(fly-cost Loc8 Loc2) 78)
	(=(fly-cost Loc2 Loc9) 146)
	(=(fly-cost Loc9 Loc2) 146)
	(=(fly-cost Loc3 Loc4) 42)
	(=(fly-cost Loc4 Loc3) 42)
	(=(fly-cost Loc3 Loc5) 84)
	(=(fly-cost Loc5 Loc3) 84)
	(=(fly-cost Loc3 Loc6) 242)
	(=(fly-cost Loc6 Loc3) 242)
	(=(fly-cost Loc3 Loc7) 94)
	(=(fly-cost Loc7 Loc3) 94)
	(=(fly-cost Loc3 Loc8) 189)
	(=(fly-cost Loc8 Loc3) 189)
	(=(fly-cost Loc3 Loc9) 39)
	(=(fly-cost Loc9 Loc3) 39)
	(=(fly-cost Loc4 Loc5) 58)
	(=(fly-cost Loc5 Loc4) 58)
	(=(fly-cost Loc4 Loc6) 201)
	(=(fly-cost Loc6 Loc4) 201)
	(=(fly-cost Loc4 Loc7) 59)
	(=(fly-cost Loc7 Loc4) 59)
	(=(fly-cost Loc4 Loc8) 147)
	(=(fly-cost Loc8 Loc4) 147)
	(=(fly-cost Loc4 Loc9) 50)
	(=(fly-cost Loc9 Loc4) 50)
	(=(fly-cost Loc5 Loc6) 174)
	(=(fly-cost Loc6 Loc5) 174)
	(=(fly-cost Loc5 Loc7) 94)
	(=(fly-cost Loc7 Loc5) 94)
	(=(fly-cost Loc5 Loc8) 146)
	(=(fly-cost Loc8 Loc5) 146)
	(=(fly-cost Loc5 Loc9) 59)
	(=(fly-cost Loc9 Loc5) 59)
	(=(fly-cost Loc6 Loc7) 173)
	(=(fly-cost Loc7 Loc6) 173)
	(=(fly-cost Loc6 Loc8) 86)
	(=(fly-cost Loc8 Loc6) 86)
	(=(fly-cost Loc6 Loc9) 229)
	(=(fly-cost Loc9 Loc6) 229)
	(=(fly-cost Loc7 Loc8) 102)
	(=(fly-cost Loc8 Loc7) 102)
	(=(fly-cost Loc7 Loc9) 108)
	(=(fly-cost Loc9 Loc7) 108)
	(=(fly-cost Loc8 Loc9) 189)
	(=(fly-cost Loc9 Loc8) 189)
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
	(=(total-cost)0)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona2 medicine)
	(persona-tiene-contenido persona2 bebida)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona3 bebida)
	(persona-tiene-contenido persona6 bebida)
	(persona-tiene-contenido persona7 medicine)
	(persona-tiene-contenido persona8 food)
	(persona-tiene-contenido persona8 bebida)
	))
(:metric minimize(total-cost))

)
