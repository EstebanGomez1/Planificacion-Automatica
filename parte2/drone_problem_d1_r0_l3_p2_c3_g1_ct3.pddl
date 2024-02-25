(define (problem drone_problem_d1_r0_l3_p2_c3_g1_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	transportador1 - transportador
	n0 	n1 	n2 	n3 	n4  - num 
	deposito - loc
	Loc1 - loc
	Loc2 - loc
	Loc3 - loc
	caja1 - caja
	caja2 - caja
	caja3 - caja
	food - contenido
	medicine - contenido
	bebida - contenido
	persona0 - persona
	persona1 - persona
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc1)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona1 food)
	))
)
