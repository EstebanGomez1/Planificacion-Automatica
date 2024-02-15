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
    (loc-caja caja1 deposito)
    (loc-persona persona1 B)
    (loc-dron dron1 deposito)
    (caja-contenido caja1 comida)
    (brazo-dron-free dron1 brazo1)
    (brazo-dron-free dron1 brazo2)
)

(:goal (and
    (persona-tiene-contenido persona1 comida)
))


)
