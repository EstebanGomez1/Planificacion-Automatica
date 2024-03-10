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
	(persona-necesita-contenido persona0 medicine)
	(loc-persona persona0 Loc6)
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 Loc4)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 Loc2)
	(persona-necesita-contenido persona4 medicine)
	(loc-persona persona4 Loc4)
	(persona-necesita-contenido persona5 medicine)
	(loc-persona persona5 Loc1)
	(persona-necesita-contenido persona5 bebida)
	(loc-persona persona5 Loc5)
	(caja-contenido caja1 medicine)
	(loc-caja caja1 deposito)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(caja-contenido caja4 medicine)
	(loc-caja caja4 deposito)
	(caja-contenido caja5 medicine)
	(loc-caja caja5 deposito)
	(caja-contenido caja6 bebida)
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
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 278)
	(=(fly-cost Loc1 deposito) 278)
	(=(fly-cost deposito Loc2) 105)
	(=(fly-cost Loc2 deposito) 105)
	(=(fly-cost deposito Loc3) 153)
	(=(fly-cost Loc3 deposito) 153)
	(=(fly-cost deposito Loc4) 225)
	(=(fly-cost Loc4 deposito) 225)
	(=(fly-cost deposito Loc5) 158)
	(=(fly-cost Loc5 deposito) 158)
	(=(fly-cost deposito Loc6) 262)
	(=(fly-cost Loc6 deposito) 262)
	(=(fly-cost Loc1 Loc2) 185)
	(=(fly-cost Loc2 Loc1) 185)
	(=(fly-cost Loc1 Loc3) 126)
	(=(fly-cost Loc3 Loc1) 126)
	(=(fly-cost Loc1 Loc4) 91)
	(=(fly-cost Loc4 Loc1) 91)
	(=(fly-cost Loc1 Loc5) 135)
	(=(fly-cost Loc5 Loc1) 135)
	(=(fly-cost Loc1 Loc6) 19)
	(=(fly-cost Loc6 Loc1) 19)
	(=(fly-cost Loc2 Loc3) 70)
	(=(fly-cost Loc3 Loc2) 70)
	(=(fly-cost Loc2 Loc4) 121)
	(=(fly-cost Loc4 Loc2) 121)
	(=(fly-cost Loc2 Loc5) 55)
	(=(fly-cost Loc5 Loc2) 55)
	(=(fly-cost Loc2 Loc6) 171)
	(=(fly-cost Loc6 Loc2) 171)
	(=(fly-cost Loc3 Loc4) 94)
	(=(fly-cost Loc4 Loc3) 94)
	(=(fly-cost Loc3 Loc5) 49)
	(=(fly-cost Loc5 Loc3) 49)
	(=(fly-cost Loc3 Loc6) 110)
	(=(fly-cost Loc6 Loc3) 110)
	(=(fly-cost Loc4 Loc5) 68)
	(=(fly-cost Loc5 Loc4) 68)
	(=(fly-cost Loc4 Loc6) 88)
	(=(fly-cost Loc6 Loc4) 88)
	(=(fly-cost Loc5 Loc6) 123)
	(=(fly-cost Loc6 Loc5) 123)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc4 Loc4) 1)
	(=(fly-cost Loc4 Loc4) 1)
	(=(fly-cost Loc5 Loc5) 1)
	(=(fly-cost Loc5 Loc5) 1)
	(=(fly-cost Loc6 Loc6) 1)
	(=(fly-cost Loc6 Loc6) 1)
	(=(total-cost)0)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona1 medicine)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona4 medicine)
	(persona-tiene-contenido persona5 medicine)
	(persona-tiene-contenido persona5 bebida)
	))
(:metric minimize(total-cost))

)
