(define (problem drone_problem_d2_r2_l5_p5_c5_g5_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	dron2 - dron
	transportador1 - transportador
	transportador2 - transportador
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
	(dron-free dron1)
	(loc-dron dron2 deposito)
	(dron-free dron2)
	(loc-transportador transportador1 deposito)
	(=(capacidad-transportador transportador1) 4)
	(loc-transportador transportador2 deposito)
	(=(capacidad-transportador transportador2) 4)
	(loc-persona persona0 Loc3)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona1 Loc1)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona2 Loc2)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona3 deposito)
	(persona-necesita-contenido persona3 food)
	(persona-necesita-contenido persona3 medicine)
	(loc-persona persona4 Loc1)
	(caja-contenido caja1 bebida)
	(caja-contenido caja2 food)
	(caja-contenido caja3 food)
	(caja-contenido caja4 food)
	(caja-contenido caja5 medicine)
	(loc-caja caja1 deposito)
	(loc-caja caja2 deposito)
	(loc-caja caja3 deposito)
	(loc-caja caja4 deposito)
	(loc-caja caja5 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(caja-free caja4)
	(caja-free caja5)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 198)
	(=(fly-cost deposito Loc2) 251)
	(=(fly-cost deposito Loc3) 142)
	(=(fly-cost deposito Loc4) 125)
	(=(fly-cost deposito Loc5) 162)
	(=(fly-cost Loc1 Loc2) 122)
	(=(fly-cost Loc2 Loc1) 122)
	(=(fly-cost Loc1 Loc3) 109)
	(=(fly-cost Loc3 Loc1) 109)
	(=(fly-cost Loc1 Loc4) 130)
	(=(fly-cost Loc4 Loc1) 130)
	(=(fly-cost Loc1 Loc5) 72)
	(=(fly-cost Loc5 Loc1) 72)
	(=(fly-cost Loc2 Loc3) 111)
	(=(fly-cost Loc3 Loc2) 111)
	(=(fly-cost Loc2 Loc4) 132)
	(=(fly-cost Loc4 Loc2) 132)
	(=(fly-cost Loc2 Loc5) 95)
	(=(fly-cost Loc5 Loc2) 95)
	(=(fly-cost Loc3 Loc4) 25)
	(=(fly-cost Loc4 Loc3) 25)
	(=(fly-cost Loc3 Loc5) 39)
	(=(fly-cost Loc5 Loc3) 39)
	(=(fly-cost Loc4 Loc5) 63)
	(=(fly-cost Loc5 Loc4) 63)
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
)
(:goal (and
	(loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona3 medicine)
	))
)
