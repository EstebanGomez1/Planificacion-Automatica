(define (problem ejercicio_problem) (:domain logisticaSE)
(:objects 
    persona1 - persona
    caja1 - caja
    comida medicina - contenido
    A B C D deposito - loc
    dron1 - dron
    brazo1 - brazo
    brazo2 - brazo
)

(:init
    (persona-necesita-contenido persona1 comida)
    (caja-en-deposito caja1)
    (dron-en-deposito dron1)
    (loc-caja caja1 deposito)
    (loc-persona persona1 B)
    (loc-dron dron1 deposito)
    (caja-contenido caja1 comida)
    (not (persona-tiene-contenido persona1 comida))
    (not (persona-tiene-caja persona1 caja1))
    (not (carry-caja dron1 brazo1 caja1))
    (not (carry-caja dron1 brazo2 caja1))
    (brazo-dron-free dron1 brazo1)
    (brazo-dron-free dron1 brazo2)
)

(:goal (and
    (persona-tiene-contenido persona1 comida)
))


)
