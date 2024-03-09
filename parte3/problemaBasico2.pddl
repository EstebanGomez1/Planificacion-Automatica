(define (problem problemaBasico2) (:domain logisticaSE)
(:objects 
    persona1 persona2 persona3 - persona
    caja1 caja2 caja3 - caja
    comida medicina bebida - contenido
    A B C deposito - loc
    dron1 dron2 - dron
    transportador1 transportador2 - transportador
)

(:init
    (persona-necesita-contenido persona1 comida)
    (persona-necesita-contenido persona2 bebida)
    (persona-necesita-contenido persona3 medicina)
    (loc-caja caja1 deposito)
    (loc-caja caja2 deposito)
    (loc-caja caja3 deposito)
    (caja-free caja1)
    (caja-free caja2)
    (caja-free caja3)
    (loc-persona persona1 A)
    (loc-persona persona2 B)
    (loc-persona persona3 B)
    (loc-dron dron1 deposito)
    (loc-dron dron2 deposito)
    (caja-contenido caja1 comida)
    (caja-contenido caja2 medicina)
    (caja-contenido caja3 bebida)
    (loc-transportador transportador1 deposito)
    (loc-transportador transportador2 deposito)
    (dron-free dron1)
    (dron-free dron2)
    (=(capacidad-transportador transportador1) 4)
    (=(capacidad-transportador transportador2) 4)
	(=(fly-cost deposito A ) 100)
	(=(fly-cost deposito B ) 150)
	(=(fly-cost deposito C ) 2000)
	(=(fly-cost A deposito ) 100)
	(=(fly-cost B deposito ) 150)
	(=(fly-cost C deposito ) 2000)
	(=(fly-cost A B ) 50)
	(=(fly-cost B A ) 50)
	(=(fly-cost A C ) 300)
	(=(fly-cost C A ) 300)
	(=(fly-cost B C ) 100)
	(=(fly-cost C B ) 100)
    (=(fly-cost deposito deposito ) 1)
    (=(fly-cost A A) 1)
    (=(fly-cost B B) 1)
    (=(fly-cost C C) 1)
)

(:goal (and
    (loc-dron dron1 deposito)
	(loc-dron dron2 deposito)
    (persona-tiene-contenido persona1 comida)
    (persona-tiene-contenido persona2 bebida)
    (persona-tiene-contenido persona3 medicina)
))

;uncomment if use
;(:metric minimize (coste-total))
)