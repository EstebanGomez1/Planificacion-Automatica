(define (problem drone_problem_d1_r0_l4_p4_c4_g4_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	transportador1 - transportador
	n0 	n1 	n2 	n3 	n4  - num 
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
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 Loc1)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona1 bebida)
	(loc-persona persona1 Loc2)
	(caja-contenido caja2 bebida)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona2 medicine)
	(loc-persona persona2 Loc4)
	(caja-contenido caja3 medicine)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona2 bebida)
	(loc-persona persona2 Loc1)
	(caja-contenido caja4 bebida)
	(loc-caja caja4 deposito)
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
	(=(fly-cost deposito Loc1) 43)
	(=(fly-cost deposito Loc2) 214)
	(=(fly-cost deposito Loc3) 191)
	(=(fly-cost deposito Loc4) 184)
	(=(fly-cost Loc1 Loc2) 172)
	(=(fly-cost Loc1 Loc3) 150)
	(=(fly-cost Loc1 Loc4) 142)
	(=(fly-cost Loc2 Loc3) 66)
	(=(fly-cost Loc2 Loc4) 66)
	(=(fly-cost Loc3 Loc4) 9)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona1 bebida)
	(persona-tiene-contenido persona2 medicine)
	(persona-tiene-contenido persona2 bebida)
	))
(:metric minimize(total-cost))

)
