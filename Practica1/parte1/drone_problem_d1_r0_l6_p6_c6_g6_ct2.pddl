(define (problem drone_problem_d1_r0_l6_p6_c6_g6_ct2)(:domain logisticaSE)
(:objects
	dron1 - dron
	deposito - loc
	A - loc
	B - loc
	C - loc
	D - loc
	E - loc
	F - loc
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	food - contenido
	medicine - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
	brazo1 - brazo
	brazo2 - brazo)
(:init
	(loc-dron dron1 A)
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 A)
	(caja-contenido caja1 food)
	(loc-caja caja1 F)
	(persona-necesita-contenido persona0 medicine)
	(loc-persona persona0 B)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 F)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 deposito)
	(caja-contenido caja3 food)
	(loc-caja caja3 C)
	(persona-necesita-contenido persona3 medicine)
	(loc-persona persona3 C)
	(caja-contenido caja4 medicine)
	(loc-caja caja4 B)
	(persona-necesita-contenido persona4 food)
	(loc-persona persona4 A)
	(caja-contenido caja5 food)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona5 medicine)
	(loc-persona persona5 A)
	(caja-contenido caja6 medicine)
	(loc-caja caja6 E)
	(brazo-dron-free dron1 brazo1)
	(brazo-dron-free dron1 brazo2)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona0 medicine)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona3 medicine)
	(persona-tiene-contenido persona4 food)
	(persona-tiene-contenido persona5 medicine)
	))
)
