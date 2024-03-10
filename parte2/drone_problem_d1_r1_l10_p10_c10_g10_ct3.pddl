(define (problem drone_problem_d1_r1_l10_p10_c10_g10_ct3)(:domain logisticaSE)
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
	(persona-necesita-contenido persona0 medicine)
	(loc-persona persona0 Loc4)
	(caja-contenido caja1 medicine)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona0 Loc10)
	(caja-contenido caja2 bebida)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc8)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 Loc3)
	(caja-contenido caja4 medicine)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 Loc7)
	(caja-contenido caja5 food)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc5)
	(caja-contenido caja6 food)
	(loc-caja caja6 deposito)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 Loc5)
	(caja-contenido caja7 food)
	(loc-caja caja7 deposito)
	(persona-necesita-contenido persona5 food)
	(loc-persona persona5 Loc10)
	(caja-contenido caja8 food)
	(loc-caja caja8 deposito)
	(persona-necesita-contenido persona8 food)
	(loc-persona persona8 Loc7)
	(caja-contenido caja9 food)
	(loc-caja caja9 deposito)
	(persona-necesita-contenido persona9 food)
	(loc-persona persona9 Loc9)
	(caja-contenido caja10 food)
	(loc-caja caja10 deposito)
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
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona1 medicine)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona5 food)
	(persona-tiene-contenido persona8 food)
	(persona-tiene-contenido persona9 food)
	))
)
