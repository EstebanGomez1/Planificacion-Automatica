(define (problem problemaBasico1) (:domain logisticaSE_ejercicio2)
(:objects 
    persona1 - persona
    caja1 - caja
    comida medicina - contenido
    A B C D deposito - loc
    dron1 - dron
    transportador1 - transportador
    n0 n1 n2 n3 n4 - num
)
 
(:init
    (persona-necesita-contenido persona1 comida)
    (loc-caja caja1 deposito)
    (loc-persona persona1 B)
    (loc-dron dron1 deposito)
    (caja-contenido caja1 comida)
    (loc-transportador transportador1 deposito)
    (dron-free dron1)
    (siguiente n0 n1)
    (siguiente n1 n2)
    (siguiente n2 n3)
    (siguiente n3 n4)
    (capacidad-actual transportador1 n0)
    (= (total-cost) 0); valor total-cost = 0
)

(:goal (and
    (persona-tiene-contenido persona1 comida)
))


)