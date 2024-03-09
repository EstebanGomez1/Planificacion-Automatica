(define (problem drone_problem_d2_r2_l3_p3_c3_g3_ct3)(:domain logisticaSE)
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
	(loc-persona persona0 Loc1)
	(persona-necesita-contenido persona0 medicine)
	(persona-necesita-contenido persona0 bebida)
	(loc-persona persona1 Loc3)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona2 Loc2)
	(caja-contenido caja1 medicine)
	(caja-contenido caja2 bebida)
	(caja-contenido caja3 food)
	(loc-caja caja1 deposito)
	(loc-caja caja2 deposito)
	(loc-caja caja3 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 53)
	(=(fly-cost Loc1 deposito) 53)
	(=(fly-cost deposito Loc2) 264)
	(=(fly-cost Loc2 deposito) 264)
	(=(fly-cost deposito Loc3) 215)
	(=(fly-cost Loc3 deposito) 215)
	(=(fly-cost Loc1 Loc2) 216)
	(=(fly-cost Loc2 Loc1) 216)
	(=(fly-cost Loc1 Loc3) 163)
	(=(fly-cost Loc3 Loc1) 163)
	(=(fly-cost Loc2 Loc3) 72)
	(=(fly-cost Loc3 Loc2) 72)
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
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona0 bebida)
	(persona-tiene-contenido persona1 food)
	))
)
