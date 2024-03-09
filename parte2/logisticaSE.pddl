(define (domain logisticaSE)

(:requirements :strips :typing )

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
    (siguiente ?n1 ?n2 - num ) ;siguiente del espacio del transportador
    (caja-cogida ?c - caja ?d - dron) ;caja cogida dispuesta a meterse en el transportador
    (dron-free ?d - dron) ;el dron esta libre para coger una caja
    (loc-transportador ?t - transportador ?l - loc)
    (caja-en-transportador ?c - caja ?t - transportador )
    (capacidad-actual ?t - transportador ?n - num)
    (caja-free ?c - caja)
)



(:action move-dron
    :parameters ( ?d - dron ?A - loc ?B - loc )
    :precondition (and
        (loc-dron ?d ?A)
        ;(dron-free ?d)
    )
    :effect (and 
        (loc-dron ?d ?B)
        ( not(loc-dron ?d ?A))
    )
)


(:action move-dron-transportador
    :parameters ( ?d - dron ?t - transportador ?A - loc ?B - loc )
    :precondition (and 
        (loc-dron ?d ?A)
        (dron-free ?d)
        (loc-transportador ?t ?A)
    )
    :effect (and 
        (loc-dron ?d ?B)
        ( not(loc-dron ?d ?A))
        (loc-transportador ?t ?B)
        ( not(loc-transportador ?t ?A))
    )
)

(:action poner-caja-transportador
    :parameters (
        ?c - caja ?t - transportador ?d - dron ?l - loc  ?nAnterior ?nPosterior - num 
    )
    :precondition (and 
        (siguiente ?nAnterior ?nPosterior)
        (caja-cogida ?c ?d)
        (loc-dron ?d ?l)
        (loc-transportador ?t ?l)
        (capacidad-actual ?t ?nAnterior)
    )
    :effect (and 
        (not(capacidad-actual ?t ?nAnterior))
        (capacidad-actual ?t ?nPosterior)
        (not (caja-cogida ?c ?d))
        (caja-en-transportador ?c ?t )
        (dron-free ?d)
    )
)


(:action take-caja-transportador
    :parameters (
        ?c - caja ?t - transportador ?d - dron ?l - loc ?nAnterior ?nPosterior - num
    )
    :precondition (and 
        (dron-free ?d)
        (caja-en-transportador ?c ?t )
        (loc-dron ?d ?l)
        (loc-transportador ?t ?l)
        (siguiente ?nAnterior ?nPosterior )
        (capacidad-actual ?t ?nPosterior)
    )
    :effect (and 
        (caja-cogida ?c ?d)
        (not (dron-free ?d))
        (capacidad-actual ?t ?nAnterior)
        (not (capacidad-actual ?t ?nPosterior) )
        (not (caja-en-transportador ?c ?t ))
    )
)

(:action take-caja
    :parameters ( ?c - caja ?d - dron ?l - loc)
    :precondition (and
        (loc-caja ?c ?l)
        (loc-dron ?d ?l)
        (dron-free ?d)
        (caja-free ?c)
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
        (not(caja-free ?c))
    )
)

)






