(define (problem drone_problem_d2_r2_l3_p2_c3_g1_ct3)(:domain logisticaSE)
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
	persona2 - persona
	persona1 - persona
)
(:init
	(persona-necesita-contenido persona1 medicine)
	(persona-necesita-contenido persona2 food)
	(loc-caja caja1 deposito)
	(loc-caja caja2 deposito)
	(loc-caja caja3 deposito)
	(caja-free caja1)
	(caja-free caja2)
	(caja-free caja3)
	(loc-persona persona1 Loc2)
	(loc-persona persona2 Loc1)
	(loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
	(caja-contenido caja1 medicine)
	(caja-contenido caja2 food)
	(caja-contenido caja3 food)
	(loc-transportador transportador1 deposito)
	(loc-transportador transportador2 deposito)
	(dron-free dron1)
	(dron-free dron2)	
	(=(coste-mov dron1) 1)
	(=(coste-mov dron2) 1)
	(=(capacidad-transportador transportador1) 4)
	(=(capacidad-transportador transportador2) 4)
	(=(fly-cost deposito deposito)1)
	(=(fly-cost deposito Loc1) 37)
	(=(fly-cost deposito Loc2) 281)
	(=(fly-cost deposito Loc3) 172)
	(=(fly-cost Loc1 Loc2) 245)
	(=(fly-cost Loc2 Loc1) 245)
	(=(fly-cost Loc1 Loc3) 137)
	(=(fly-cost Loc3 Loc1) 137)
	(=(fly-cost Loc2 Loc3) 131)
	(=(fly-cost Loc3 Loc2) 131)
	(=(fly-cost Loc1 Loc1) 1)
	(=(fly-cost Loc2 Loc2) 1)
	(=(fly-cost Loc3 Loc3) 1)
	(=(coste-total dron1) 0)
	(=(coste-total dron2) 0)
)
(:goal (and
	(loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
	(persona-tiene-contenido persona1 medicine)
	(persona-tiene-contenido persona2 food)
))

)
