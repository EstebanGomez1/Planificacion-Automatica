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
	(persona-necesita-contenido persona0 medicine)
	(loc-persona persona0 Loc1)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 Loc2)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc1)
	(persona-necesita-contenido persona3 bebida)
	(loc-persona persona3 deposito)
	(caja-contenido caja1 medicine)
	(loc-caja caja1 deposito)
	(caja-contenido caja2 food)
	(loc-caja caja2 deposito)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(caja-contenido caja4 bebida)
	(loc-caja caja4 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(siguiente n0 n1) 
	(siguiente n1 n2) 
	(siguiente n2 n3) 
	(siguiente n3 n4) 
	(capacidad-actual transportador1 n0)
	(dron-free dron1)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 273)
	(=(fly-cost Loc1 deposito) 273)
	(=(fly-cost deposito Loc2) 249)
	(=(fly-cost Loc2 deposito) 249)
	(=(fly-cost deposito Loc3) 210)
	(=(fly-cost Loc3 deposito) 210)
	(=(fly-cost deposito Loc4) 152)
	(=(fly-cost Loc4 deposito) 152)
	(=(fly-cost Loc1 Loc2) 40)
	(=(fly-cost Loc2 Loc1) 40)
	(=(fly-cost Loc1 Loc3) 107)
	(=(fly-cost Loc3 Loc1) 107)
	(=(fly-cost Loc1 Loc4) 163)
	(=(fly-cost Loc4 Loc1) 163)
	(=(fly-cost Loc2 Loc3) 68)
	(=(fly-cost Loc3 Loc2) 68)
	(=(fly-cost Loc2 Loc4) 128)
	(=(fly-cost Loc4 Loc2) 128)
	(=(fly-cost Loc3 Loc4) 67)
	(=(fly-cost Loc4 Loc3) 67)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc4 Loc4) 1)
	(=(fly-cost Loc4 Loc4) 1)
	(=(total-cost)0)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona3 bebida)
	))
(:metric minimize(total-cost))

)
