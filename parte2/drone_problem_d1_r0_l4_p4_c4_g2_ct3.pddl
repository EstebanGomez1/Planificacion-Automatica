(define (problem drone_problem_d1_r0_l4_p4_c4_g2_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	transportador1 - transportador
	n0 	n1 	n2 	n3  - num 
	deposito - loc
	Loc1 - loc
	Loc2 - loc
	Loc3 - loc
	Loc4 - loc
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	food - contenido
	medicine - contenido
	bebida - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	persona3 - persona
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona0 medicine)
	(loc-persona persona0 Loc2)
	(caja-contenido caja1 medicine)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc4)
	(caja-contenido caja2 food)
	(loc-caja caja2 deposito)
	(dron-free dron1)
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona1 food)
	))
)
