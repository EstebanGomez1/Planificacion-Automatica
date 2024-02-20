(define (problem problemaBasico1) (:domain logisticaSE)
(:objects 
    persona1 - persona
    caja1 - caja
    comida medicina - contenido
    A B C D deposito - loc
    dron1 - dron
    transportador1 - transportador
)

(:init
    (persona-necesita-contenido persona1 comida)
    (loc-caja caja1 deposito)
    (loc-persona persona1 B)
    (loc-dron dron1 deposito)
    (caja-contenido caja1 comida)
    (loc-transportador transportador1 C)
    (dron-free dron1)
    (= (espacio-ocupa-caja caja1) 1)
    (= (capacidad-max transportador1) 4)
    (= (carga-actual transportador1) 0)

)

(:goal (and
    (persona-tiene-contenido persona1 comida)
))


)