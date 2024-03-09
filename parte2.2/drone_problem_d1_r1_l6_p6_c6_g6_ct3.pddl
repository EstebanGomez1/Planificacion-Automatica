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
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc2)
	(persona-necesita-contenido persona3 medicine)
	(loc-persona persona3 Loc3)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 deposito)
	(persona-necesita-contenido persona5 medicine)
	(loc-persona persona5 Loc2)
	(persona-necesita-contenido persona5 bebida)
	(loc-persona persona5 Loc2)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(caja-contenido caja2 food)
	(loc-caja caja2 deposito)
	(caja-contenido caja3 medicine)
	(loc-caja caja3 deposito)
	(caja-contenido caja4 food)
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
	(=(fly-cost deposito Loc1) 193)
	(=(fly-cost Loc1 deposito) 193)
	(=(fly-cost deposito Loc2) 112)
	(=(fly-cost Loc2 deposito) 112)
	(=(fly-cost deposito Loc3) 199)
	(=(fly-cost Loc3 deposito) 199)
	(=(fly-cost deposito Loc4) 221)
	(=(fly-cost Loc4 deposito) 221)
	(=(fly-cost deposito Loc5) 202)
	(=(fly-cost Loc5 deposito) 202)
	(=(fly-cost deposito Loc6) 139)
	(=(fly-cost Loc6 deposito) 139)
	(=(fly-cost Loc1 Loc2) 83)
	(=(fly-cost Loc2 Loc1) 83)
	(=(fly-cost Loc1 Loc3) 89)
	(=(fly-cost Loc3 Loc1) 89)
	(=(fly-cost Loc1 Loc4) 83)
	(=(fly-cost Loc4 Loc1) 83)
	(=(fly-cost Loc1 Loc5) 244)
	(=(fly-cost Loc5 Loc1) 244)
	(=(fly-cost Loc1 Loc6) 150)
	(=(fly-cost Loc6 Loc1) 150)
	(=(fly-cost Loc2 Loc3) 102)
	(=(fly-cost Loc3 Loc2) 102)
	(=(fly-cost Loc2 Loc4) 118)
	(=(fly-cost Loc4 Loc2) 118)
	(=(fly-cost Loc2 Loc5) 196)
	(=(fly-cost Loc5 Loc2) 196)
	(=(fly-cost Loc2 Loc6) 99)
	(=(fly-cost Loc6 Loc2) 99)
	(=(fly-cost Loc3 Loc4) 28)
	(=(fly-cost Loc4 Loc3) 28)
	(=(fly-cost Loc3 Loc5) 171)
	(=(fly-cost Loc5 Loc3) 171)
	(=(fly-cost Loc3 Loc6) 94)
	(=(fly-cost Loc6 Loc3) 94)
	(=(fly-cost Loc4 Loc5) 196)
	(=(fly-cost Loc5 Loc4) 196)
	(=(fly-cost Loc4 Loc6) 121)
	(=(fly-cost Loc6 Loc4) 121)
	(=(fly-cost Loc5 Loc6) 98)
	(=(fly-cost Loc6 Loc5) 98)
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
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona3 medicine)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona5 medicine)
	(persona-tiene-contenido persona5 bebida)
	))
(:metric minimize(total-cost))

)
