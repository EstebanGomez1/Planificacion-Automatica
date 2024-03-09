(define (problem drone_problem_d1_r1_l6_p6_c6_g6_ct3)(:domain logisticaSE)
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
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	food - contenido
	medicine - contenido
	bebida - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 Loc6)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc4)
	(caja-contenido caja2 food)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc5)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona4 medicine)
	(loc-persona persona4 Loc4)
	(caja-contenido caja4 medicine)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona4 bebida)
	(loc-persona persona4 Loc4)
	(caja-contenido caja5 bebida)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona5 food)
	(loc-persona persona5 Loc4)
	(caja-contenido caja6 food)
	(loc-caja caja6 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(caja-free caja5)
	(caja-free caja6)
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
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona4 medicine)
	(persona-tiene-contenido persona4 bebida)
	(persona-tiene-contenido persona5 food)
	))
)
