(define (domain logisticaSE)

(:requirements :strips :typing)

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
    (caja-en-transportador ?c - caja ?n - num) ;la caja esta en el transportador con un numero asociado
    (siguiente ?n1 ?n2 - num) ;siguiente del espacio del transportador
    (caja-cogida ?c - caja ?d - dron) ;caja cogida dispuesta a meterse en el transportador
    (dron-free ?d - dron) ;el dron esta libre para coger una caja
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
    :parameters ()
    :precondition (and )
    :effect (and )
)

(:action mover-transportador
    :parameters ()
    :precondition (and )
    :effect (and )
)

(:action coger-caja-transportador
    :parameters ()
    :precondition (and )
    :effect (and )
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
    :parameters ( ?c - caja ?d - dron ?br -brazo ?cont - contenido ?p - persona ?l - loc)
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