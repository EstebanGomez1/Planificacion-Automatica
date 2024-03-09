(define (problem drone_problem_d2_r2_l3_p3_c3_g2_ct3)(:domain logisticaSE)
(:objects
	dron1 - dron
	dron2 - dron
	transportador1 - transportador
	transportador2 - transportador
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
	persona2 - persona
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
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 Loc3)
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 Loc1)
	(caja-contenido caja1 food)
	(caja-contenido caja2 medicine)
	(loc-caja caja1 deposito)
	(loc-caja caja2 deposito)
	(loc-caja caja3 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 191)
	(=(fly-cost deposito Loc2) 91)
	(=(fly-cost deposito Loc3) 130)
	(=(fly-cost Loc1 Loc2) 183)
	(=(fly-cost Loc2 Loc1) 183)
	(=(fly-cost Loc1 Loc3) 75)
	(=(fly-cost Loc3 Loc1) 75)
	(=(fly-cost Loc2 Loc3) 109)
	(=(fly-cost Loc3 Loc2) 109)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(fly-cost Loc3 Loc3) 1)
)
(:goal (and
	(loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona1 medicine)
	))
)
