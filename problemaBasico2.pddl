(define (problem problemaBasico2) (:domain logisticaSE)
(:objects 
    persona1 persona2 - persona
    caja1 caja2 caja3 - caja
    comida medicina bebida - contenido
    A B C deposito - loc
    dron1 dron2 - dron
    transportador1 transportador2 - transportador
)

(:init
    (persona-necesita-contenido persona1 comida)
    (persona-necesita-contenido persona2 bebida)
    (loc-caja caja1 deposito)
    (loc-caja caja2 deposito)
    (loc-caja caja3 deposito)
    (caja-free caja1)
    (caja-free caja2)
    (caja-free caja3)
    (loc-persona persona1 B)
    (loc-persona persona2 C)
    (loc-dron dron1 deposito)
    (loc-dron dron2 deposito)
    (caja-contenido caja1 comida)
    (caja-contenido caja2 medicina)
    (caja-contenido caja3 bebida)
    (loc-transportador transportador1 deposito)
    (loc-transportador transportador2 deposito)
    (dron-free dron1)
    (dron-free dron2)
    (=(coste-mov dron1)1)
    (=(coste-mov dron2)1)
    (=(capacidad-transportador transportador1) 4)
    (=(cajas-deposito)3)
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
    (=(coste-total dron1) 0)
    (=(coste-total dron2) 0)
)

(:goal (and
    (persona-tiene-contenido persona1 comida)
    (persona-tiene-contenido persona2 bebida)
))

;uncomment if use
(:metric minimize (coste-total))
)