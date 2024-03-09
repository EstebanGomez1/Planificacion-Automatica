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
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 Loc2)
	(persona-necesita-contenido persona1 bebida)
	(loc-persona persona1 Loc1)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 deposito)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 Loc2)
	(persona-necesita-contenido persona4 medicine)
	(loc-persona persona4 deposito)
	(caja-contenido caja1 medicine)
	(loc-caja caja1 deposito)
	(caja-contenido caja2 bebida)
	(loc-caja caja2 deposito)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(caja-contenido caja4 food)
	(loc-caja caja4 deposito)
	(caja-contenido caja5 medicine)
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
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 206)
	(=(fly-cost Loc1 deposito) 206)
	(=(fly-cost deposito Loc2) 177)
	(=(fly-cost Loc2 deposito) 177)
	(=(fly-cost deposito Loc3) 98)
	(=(fly-cost Loc3 deposito) 98)
	(=(fly-cost deposito Loc4) 159)
	(=(fly-cost Loc4 deposito) 159)
	(=(fly-cost deposito Loc5) 92)
	(=(fly-cost Loc5 deposito) 92)
	(=(fly-cost Loc1 Loc2) 147)
	(=(fly-cost Loc2 Loc1) 147)
	(=(fly-cost Loc1 Loc3) 127)
	(=(fly-cost Loc3 Loc1) 127)
	(=(fly-cost Loc1 Loc4) 145)
	(=(fly-cost Loc4 Loc1) 145)
	(=(fly-cost Loc1 Loc5) 135)
	(=(fly-cost Loc5 Loc1) 135)
	(=(fly-cost Loc2 Loc3) 172)
	(=(fly-cost Loc3 Loc2) 172)
	(=(fly-cost Loc2 Loc4) 18)
	(=(fly-cost Loc4 Loc2) 18)
	(=(fly-cost Loc2 Loc5) 91)
	(=(fly-cost Loc5 Loc2) 91)
	(=(fly-cost Loc3 Loc4) 158)
	(=(fly-cost Loc4 Loc3) 158)
	(=(fly-cost Loc3 Loc5) 91)
	(=(fly-cost Loc5 Loc3) 91)
	(=(fly-cost Loc4 Loc5) 74)
	(=(fly-cost Loc5 Loc4) 74)
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
	(=(total-cost)0)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona1 medicine)
	(persona-tiene-contenido persona1 bebida)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona4 medicine)
	))
(:metric minimize(total-cost))

)
