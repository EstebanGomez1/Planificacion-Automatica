(define (problem problemaBasico2) (:domain logisticaSE)
(:objects 
    persona1 persona2 - persona
    caja1 caja2 caja3 - caja
    comida medicina bebida - contenido
    A B C D deposito - loc
    dron1 - dron
    brazo1 - brazo
    brazo2 - brazo
)

(:init
    (persona-necesita-contenido persona1 comida)
    (persona-necesita-contenido persona2 bebida)
    (loc-caja caja1 deposito)
    (loc-caja caja2 deposito)
    (loc-caja caja3 deposito)
    (loc-persona persona1 B)
    (loc-persona persona2 C)
    (loc-dron dron1 deposito)
    (caja-contenido caja1 comida)
    (caja-contenido caja2 medicina)
    (caja-contenido caja3 bebida)
    (brazo-dron-free dron1 brazo1)
    (brazo-dron-free dron1 brazo2)
)

(:goal (and
    (persona-tiene-contenido persona1 comida)
    (persona-tiene-contenido persona2 bebida)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
