(define (problem drone_problem_d1_r0_l3_p3_c3_g3_ct2)(:domain logisticaSE)
(:objects
	dron1 - dron
	deposito - loc
	A - loc
	B - loc
	C - loc
	caja1 - caja
	caja2 - caja
	caja3 - caja
	food - contenido
	medicine - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	brazo1 - brazo
	brazo2 - brazo)
(:init
	(loc-dron dron1 B)
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 deposito)
	(caja-contenido caja1 food)
	(loc-caja caja1 C)
	(persona-necesita-contenido persona1 food)
	(loc-persona persona1 C)
	(caja-contenido caja2 food)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 C)
	(caja-contenido caja3 medicine)
	(loc-caja caja3 C)
	(brazo-dron-free dron1 brazo1)
	(brazo-dron-free dron1 brazo2)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona1 food)
	(persona-tiene-contenido persona1 medicine)
	))
)
