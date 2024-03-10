(define (problem drone_problem_d1_r1_l5_p5_c5_g5_ct3)(:domain logisticaSE)
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
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	food - contenido
	medicine - contenido
	bebida - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
)
(:init
	(loc-dron dron1 deposito)
	(loc-transportador transportador1 deposito)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc5)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona2 medicine)
	(loc-persona persona2 deposito)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc1)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 deposito)
	(caja-contenido caja4 food)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona4 bebida)
	(loc-persona persona4 Loc1)
	(caja-contenido caja5 bebida)
	(loc-caja caja5 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(caja-free caja5)
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
	(persona-tiene-contenido persona2 medicine)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona4 bebida)
	))
)
