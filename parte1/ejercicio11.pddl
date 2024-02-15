(define (domain logisticaSE)

(:requirements :strips :typing)

(:types 
    persona loc caja contenido dron brazo- objects
)

(:predicates 
    (loc-persona ?p - persona ?l - loc) ;localizacion de una persona herida
    (loc-caja ?c - caja ?l - loc) ;localizacion de una caja
    (caja-contenido ?c - caja ?cont - contenido) ;contenido de una caja
    (persona-tiene-contenido ?p - persona ?cont - contenido) ;la persona tiene ya un contenido
    (persona-tiene-caja ?p - persona ?c - caja) ;la persona tiene ya una caja
    (persona-necesita-contenido ?p - persona ?cont -contenido) ;necesita una persona contenido de una caja
    (caja-en-deposito ?c - caja) ;caja en el deposito
    (loc-dron ?l - loc) ;localizacion del dron
    (carry-caja ?d - dron ?b - brazo ?c -caja) ;el dron lleva una caja con un brazo
    (caja-free ?c - caja) ;esta libre la caja
    (brazo-dron-free ?d - dron ?b - brazo) ;esta libre un brazo del dron
)


(:functions 
)

)
