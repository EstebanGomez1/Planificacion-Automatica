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
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 Loc1)
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 Loc1)
	(persona-necesita-contenido persona1 bebida)
	(loc-persona persona1 Loc4)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 Loc4)
	(persona-necesita-contenido persona3 medicine)
	(loc-persona persona3 Loc1)
	(persona-necesita-contenido persona5 food)
	(loc-persona persona5 Loc2)
	(persona-necesita-contenido persona5 medicine)
	(loc-persona persona5 Loc4)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(caja-contenido caja3 bebida)
	(loc-caja caja3 deposito)
	(caja-contenido caja4 food)
	(loc-caja caja4 deposito)
	(caja-contenido caja5 medicine)
	(loc-caja caja5 deposito)
	(caja-contenido caja6 food)
	(loc-caja caja6 deposito)
	(caja-contenido caja7 medicine)
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
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 38)
	(=(fly-cost Loc1 deposito) 38)
	(=(fly-cost deposito Loc2) 113)
	(=(fly-cost Loc2 deposito) 113)
	(=(fly-cost deposito Loc3) 72)
	(=(fly-cost Loc3 deposito) 72)
	(=(fly-cost deposito Loc4) 80)
	(=(fly-cost Loc4 deposito) 80)
	(=(fly-cost deposito Loc5) 65)
	(=(fly-cost Loc5 deposito) 65)
	(=(fly-cost deposito Loc6) 231)
	(=(fly-cost Loc6 deposito) 231)
	(=(fly-cost deposito Loc7) 86)
	(=(fly-cost Loc7 deposito) 86)
	(=(fly-cost Loc1 Loc2) 92)
	(=(fly-cost Loc2 Loc1) 92)
	(=(fly-cost Loc1 Loc3) 39)
	(=(fly-cost Loc3 Loc1) 39)
	(=(fly-cost Loc1 Loc4) 69)
	(=(fly-cost Loc4 Loc1) 69)
	(=(fly-cost Loc1 Loc5) 27)
	(=(fly-cost Loc5 Loc1) 27)
	(=(fly-cost Loc1 Loc6) 197)
	(=(fly-cost Loc6 Loc1) 197)
	(=(fly-cost Loc1 Loc7) 70)
	(=(fly-cost Loc7 Loc1) 70)
	(=(fly-cost Loc2 Loc3) 59)
	(=(fly-cost Loc3 Loc2) 59)
	(=(fly-cost Loc2 Loc4) 39)
	(=(fly-cost Loc4 Loc2) 39)
	(=(fly-cost Loc2 Loc5) 86)
	(=(fly-cost Loc5 Loc2) 86)
	(=(fly-cost Loc2 Loc6) 138)
	(=(fly-cost Loc6 Loc2) 138)
	(=(fly-cost Loc2 Loc7) 29)
	(=(fly-cost Loc7 Loc2) 29)
	(=(fly-cost Loc3 Loc4) 52)
	(=(fly-cost Loc4 Loc3) 52)
	(=(fly-cost Loc3 Loc5) 28)
	(=(fly-cost Loc5 Loc3) 28)
	(=(fly-cost Loc3 Loc6) 160)
	(=(fly-cost Loc6 Loc3) 160)
	(=(fly-cost Loc3 Loc7) 46)
	(=(fly-cost Loc7 Loc3) 46)
	(=(fly-cost Loc4 Loc5) 75)
	(=(fly-cost Loc5 Loc4) 75)
	(=(fly-cost Loc4 Loc6) 175)
	(=(fly-cost Loc6 Loc4) 175)
	(=(fly-cost Loc4 Loc7) 13)
	(=(fly-cost Loc7 Loc4) 13)
	(=(fly-cost Loc5 Loc6) 175)
	(=(fly-cost Loc6 Loc5) 175)
	(=(fly-cost Loc5 Loc7) 72)
	(=(fly-cost Loc7 Loc5) 72)
	(=(fly-cost Loc6 Loc7) 163)
	(=(fly-cost Loc7 Loc6) 163)
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
	(=(fly-cost Loc7 Loc7) 1)
	(=(fly-cost Loc7 Loc7) 1)
	(=(total-cost)0)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona1 medicine)
	(persona-tiene-contenido persona1 bebida)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona3 medicine)
	(persona-tiene-contenido persona5 food)
	(persona-tiene-contenido persona5 medicine)
	))
(:metric minimize(total-cost))

)
