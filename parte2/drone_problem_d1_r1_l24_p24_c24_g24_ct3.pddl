(define (problem drone_problem_d1_r1_l24_p24_c24_g24_ct3)(:domain logisticaSE)
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
	Loc24 - loc
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
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 deposito)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 Loc20)
	(caja-contenido caja2 food)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona4 bebida)
	(loc-persona persona4 Loc12)
	(caja-contenido caja3 bebida)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona5 food)
	(loc-persona persona5 Loc19)
	(caja-contenido caja4 food)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona7 food)
	(loc-persona persona7 Loc17)
	(caja-contenido caja5 food)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona8 medicine)
	(loc-persona persona8 deposito)
	(caja-contenido caja6 medicine)
	(loc-caja caja6 deposito)
	(persona-necesita-contenido persona9 food)
	(loc-persona persona9 Loc22)
	(caja-contenido caja7 food)
	(loc-caja caja7 deposito)
	(persona-necesita-contenido persona10 bebida)
	(loc-persona persona10 Loc16)
	(caja-contenido caja8 bebida)
	(loc-caja caja8 deposito)
	(persona-necesita-contenido persona11 food)
	(loc-persona persona11 Loc15)
	(caja-contenido caja9 food)
	(loc-caja caja9 deposito)
	(persona-necesita-contenido persona11 bebida)
	(loc-persona persona11 Loc3)
	(caja-contenido caja10 bebida)
	(loc-caja caja10 deposito)
	(persona-necesita-contenido persona12 food)
	(loc-persona persona12 Loc11)
	(caja-contenido caja11 food)
	(loc-caja caja11 deposito)
	(persona-necesita-contenido persona14 bebida)
	(loc-persona persona14 Loc1)
	(caja-contenido caja12 bebida)
	(loc-caja caja12 deposito)
	(persona-necesita-contenido persona15 bebida)
	(loc-persona persona15 Loc15)
	(caja-contenido caja13 bebida)
	(loc-caja caja13 deposito)
	(persona-necesita-contenido persona16 food)
	(loc-persona persona16 Loc16)
	(caja-contenido caja14 food)
	(loc-caja caja14 deposito)
	(persona-necesita-contenido persona17 food)
	(loc-persona persona17 deposito)
	(caja-contenido caja15 food)
	(loc-caja caja15 deposito)
	(persona-necesita-contenido persona18 food)
	(loc-persona persona18 Loc5)
	(caja-contenido caja16 food)
	(loc-caja caja16 deposito)
	(persona-necesita-contenido persona18 bebida)
	(loc-persona persona18 Loc1)
	(caja-contenido caja17 bebida)
	(loc-caja caja17 deposito)
	(persona-necesita-contenido persona19 food)
	(loc-persona persona19 Loc11)
	(caja-contenido caja18 food)
	(loc-caja caja18 deposito)
	(persona-necesita-contenido persona19 bebida)
	(loc-persona persona19 Loc5)
	(caja-contenido caja19 bebida)
	(loc-caja caja19 deposito)
	(persona-necesita-contenido persona20 food)
	(loc-persona persona20 Loc9)
	(caja-contenido caja20 food)
	(loc-caja caja20 deposito)
	(persona-necesita-contenido persona20 bebida)
	(loc-persona persona20 Loc3)
	(caja-contenido caja21 bebida)
	(loc-caja caja21 deposito)
	(persona-necesita-contenido persona21 food)
	(loc-persona persona21 Loc15)
	(caja-contenido caja22 food)
	(loc-caja caja22 deposito)
	(persona-necesita-contenido persona22 food)
	(loc-persona persona22 Loc15)
	(caja-contenido caja23 food)
	(loc-caja caja23 deposito)
	(persona-necesita-contenido persona23 food)
	(loc-persona persona23 Loc8)
	(caja-contenido caja24 food)
	(loc-caja caja24 deposito)
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
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona4 bebida)
	(persona-tiene-contenido persona5 food)
	(persona-tiene-contenido persona7 food)
	(persona-tiene-contenido persona8 medicine)
	(persona-tiene-contenido persona9 food)
	(persona-tiene-contenido persona10 bebida)
	(persona-tiene-contenido persona11 food)
	(persona-tiene-contenido persona11 bebida)
	(persona-tiene-contenido persona12 food)
	(persona-tiene-contenido persona14 bebida)
	(persona-tiene-contenido persona15 bebida)
	(persona-tiene-contenido persona16 food)
	(persona-tiene-contenido persona17 food)
	(persona-tiene-contenido persona18 food)
	(persona-tiene-contenido persona18 bebida)
	(persona-tiene-contenido persona19 food)
	(persona-tiene-contenido persona19 bebida)
	(persona-tiene-contenido persona20 food)
	(persona-tiene-contenido persona20 bebida)
	(persona-tiene-contenido persona21 food)
	(persona-tiene-contenido persona22 food)
	(persona-tiene-contenido persona23 food)
	))
)
