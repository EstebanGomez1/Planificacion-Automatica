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
	(loc-persona persona0 Loc6)
	(caja-contenido caja1 bebida)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona2 medicine)
	(loc-persona persona2 Loc2)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona3 medicine)
	(loc-persona persona3 Loc5)
	(caja-contenido caja3 medicine)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona3 bebida)
	(loc-persona persona3 deposito)
	(caja-contenido caja4 bebida)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona4 medicine)
	(loc-persona persona4 Loc4)
	(caja-contenido caja5 medicine)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona6 medicine)
	(loc-persona persona6 Loc4)
	(caja-contenido caja6 medicine)
	(loc-caja caja6 deposito)
	(persona-necesita-contenido persona7 food)
	(loc-persona persona7 Loc3)
	(caja-contenido caja7 food)
	(loc-caja caja7 deposito)
	(persona-necesita-contenido persona7 bebida)
	(loc-persona persona7 deposito)
	(caja-contenido caja8 bebida)
	(loc-caja caja8 deposito)
	(persona-necesita-contenido persona8 medicine)
	(loc-persona persona8 Loc3)
	(caja-contenido caja9 medicine)
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
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona2 medicine)
	(persona-tiene-contenido persona3 medicine)
	(persona-tiene-contenido persona3 bebida)
	(persona-tiene-contenido persona4 medicine)
	(persona-tiene-contenido persona6 medicine)
	(persona-tiene-contenido persona7 food)
	(persona-tiene-contenido persona7 bebida)
	(persona-tiene-contenido persona8 medicine)
	))
)
