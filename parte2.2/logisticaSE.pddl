(define (domain logisticaSE)

(:requirements :fluents :strips :typing :action-costs)

(:types 
    persona loc caja contenido dron transportador num - objects

)
 
(:predicates 
    (loc-persona ?p - persona ?l - loc) 
    (loc-caja ?c - caja ?l - loc) 
    (caja-contenido ?c - caja ?cont - contenido) 
    (persona-tiene-contenido ?p - persona ?cont - contenido) 
    (persona-tiene-caja ?p - persona ?c - caja) 
    (persona-necesita-contenido ?p - persona ?cont -contenido) 
    (loc-dron ?d - dron ?l - loc) 
    (siguiente ?n1 ?n2 - num ) 
    (caja-cogida ?c - caja ?d - dron) 
    (dron-free ?d - dron) 
    (loc-transportador ?t - transportador ?l - loc)
    (caja-en-transportador ?c - caja ?t - transportador )
    (capacidad-actual ?t - transportador ?n - num)
)

(:functions
    (total-cost)
    (fly-cost ?L1 - loc ?l2 - loc)
)

(:action move-dron
    :parameters ( ?d - dron ?A - loc ?B - loc )
    :precondition (and
        (loc-dron ?d ?A)
    )
    :effect (and 
        (loc-dron ?d ?B)
        ( not(loc-dron ?d ?A))
        (increase(total-cost)(fly-cost ?A ?B))
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
        (increase(total-cost)(fly-cost ?A ?B))
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
        (increase (total-cost) 1)
    )
)


(:action take-caja-transportador
    :parameters (
        ?c - caja ?t - transportador ?d - dron ?l - loc ?nAnterior - num ?nPosterior - num
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
        (increase (total-cost) 1)
        (not (caja-en-transportador ?c ?t ))
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
        (increase (total-cost) 1)
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
        (increase (total-cost) 1)
    )
)

)