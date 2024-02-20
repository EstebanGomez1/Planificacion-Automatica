(define (domain logisticaSE)

(:requirements :strips :typing :fluents)

(:types 
    persona loc caja contenido dron transportador num - objects

)

(:predicates 
    (loc-persona ?p - persona ?l - loc) ;localizacion de una persona herida
    (loc-caja ?c - caja ?l - loc) ;localizacion de una caja
    (caja-contenido ?c - caja ?cont - contenido) ;contenido de una caja
    (persona-tiene-contenido ?p - persona ?cont - contenido) ;la persona tiene ya un contenido
    (persona-tiene-caja ?p - persona ?c - caja) ;la persona tiene ya una caja
    (persona-necesita-contenido ?p - persona ?cont -contenido) ;necesita una persona contenido de una caja
    (loc-dron ?d - dron ?l - loc) ;localizacion del dron
    ;(siguiente ?n1 ?n2 - num ?t - transportador) ;siguiente del espacio del transportador
    (caja-cogida ?c - caja ?d - dron) ;caja cogida dispuesta a meterse en el transportador
    (dron-free ?d - dron) ;el dron esta libre para coger una caja
    (loc-transportador ?t - transportador ?l - loc)
    (caja-en-transportador ?c - caja ?t - transportador )
    ;(espacio-free ?n - num ?t - transportador) ;el espacio en el transportador esta libre
)

(:functions
    (capacidad-max ?t - transportador) ;empieza en 4 espacios maximos
    (carga-actual ?t - transportador) ;empezara en 0 y cambiara a lo largo de las acciones
    (espacio-ocupa-caja ?c - caja) ;una caja ocupa 1 espacio
)


(:action move-dron
    :parameters ( ?d - dron ?A - loc ?B - loc)
    :precondition (and 
        (loc-dron ?d ?A)
    )
    :effect (and 
        (loc-dron ?d ?B)
        ( not(loc-dron ?d ?A))
    )
)

(:action poner-caja-transportador
    :parameters (
        ?c - caja ?t - transportador ?d - dron ?l - loc    
    )
    :precondition (and 
        (< (carga-actual ?t) (capacidad-max ?t))
        (caja-cogida ?c ?d)
        (loc-dron ?d ?l)
        (loc-transportador ?t ?l)
    )
    :effect (and 
        (increase (carga-actual ?t) (espacio-ocupa-caja ?c))
        (not (caja-cogida ?c ?d))
        (caja-en-transportador ?c ?t )
    )
)

(:action move-transportador
    :parameters ( ?t - transportador ?A - loc ?B - loc)
    :precondition (and 
        (loc-transportador ?t ?A)
    )
    :effect (and 
        (loc-transportador ?t ?B)
        ( not(loc-transportador ?t ?A))
    )
)

(:action take-caja-transportador
    :parameters (
        ?c - caja ?t - transportador ?d - dron ?l - loc
    )
    :precondition (and 
        (dron-free ?d)
        (caja-en-transportador ?c ?t )
        (loc-dron ?d ?l)
        (loc-transportador ?t ?l)
    )
    :effect (and 
        (caja-cogida ?c ?d)
        (not (dron-free ?d))
        (decrease (carga-actual ?t) (espacio-ocupa-caja ?c))
    )
)

(:action take-caja
    :parameters ( ?c - caja ?d - dron ?l - loc)
    :precondition (and
        (loc-caja ?c ?l)
        (loc-dron ?d ?l)
        (dron-free ?d)

    )
    :effect (and 
        (not (loc-caja ?c ?l))
        (not (dron-free ?d))
        (caja-cogida ?c ?d)

    )
)

(:action drop-caja
    :parameters ( ?c - caja ?d - dron ?cont - contenido ?p - persona ?l - loc)
    :precondition (and 
        (persona-necesita-contenido ?p ?cont)
        (caja-contenido ?c ?cont)
        (loc-dron ?d ?l)
        (loc-persona ?p ?l)
        (caja-cogida ?c ?d)
    )
    :effect (and 
        (loc-caja ?c ?l)
        (not (caja-cogida ?c ?d))
        (dron-free ?d)
        (persona-tiene-caja ?p ?c)
        (persona-tiene-contenido ?p ?cont)
        (not (persona-necesita-contenido ?p ?cont))
    )
)


)