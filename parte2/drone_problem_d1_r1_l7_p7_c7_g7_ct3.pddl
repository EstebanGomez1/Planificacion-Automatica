(define (problem drone_problem_d1_r1_l7_p7_c7_g7_ct3)(:domain logisticaSE)
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
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	caja7 - caja
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
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona0 Loc2)
	(caja-contenido caja1 bebida)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona1 bebida)
	(loc-persona persona1 deposito)
	(caja-contenido caja2 bebida)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 Loc7)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona2 bebida)
	(loc-persona persona2 Loc2)
	(caja-contenido caja4 bebida)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona4 bebida)
	(loc-persona persona4 Loc6)
	(caja-contenido caja5 bebida)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona6 medicine)
	(loc-persona persona6 Loc1)
	(caja-contenido caja6 medicine)
	(loc-caja caja6 deposito)
	(persona-necesita-contenido persona6 bebida)
	(loc-persona persona6 Loc4)
	(caja-contenido caja7 bebida)
	(loc-caja caja7 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(caja-free caja5)
	(caja-free caja6)
	(caja-free caja7)
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
	(persona-tiene-contenido persona1 bebida)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona2 bebida)
	(persona-tiene-contenido persona4 bebida)
	(persona-tiene-contenido persona6 medicine)
	(persona-tiene-contenido persona6 bebida)
	))
)
