(define (domain logisticaSE)

(:requirements :durative-actions :fluents :strips :typing)

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
    (caja-cogida ?c - caja ?d - dron) 
    (dron-free ?d - dron) 
    (loc-transportador ?t - transportador ?l - loc)
    (caja-en-transportador ?c - caja ?t - transportador )
    (caja-free ?c - caja)
)

(:functions
    (coste-total ?d)
    (fly-cost ?L1 - loc ?l2 - loc)
    (cajas-deposito)
    (capacidad-transportador ?t)
    (coste-mov ?d)
)

(:durative-action move-dron
    :parameters ( ?d - dron ?A - loc ?B - loc )
    :duration(= ?duration (fly-cost ?A ?B))
    :condition (and
        (at start(and
            (loc-dron ?d ?A)
        ))
    )
    :effect (and 
        (at start(and
            (not(loc-dron ?d ?A))      
            )
        )
        (at end(and
            (loc-dron ?d ?B)
            (increase (coste-total ?d)(* (fly-cost ?A ?B) (coste-mov ?d)))
            )
        )
    )  
) 


(:durative-action move-dron-transportador
    :parameters ( ?d - dron ?t - transportador ?A - loc ?B - loc )
    :duration(= ?duration (fly-cost ?A ?B))
    :condition (and 
        (at start(and    
            (loc-dron ?d ?A)
            (dron-free ?d)
            (loc-transportador ?t ?A)
            )
        )
    )
    :effect (and 
        (at start(and
            ( not(loc-dron ?d ?A))
            ( not(loc-transportador ?t ?A))            
            )
        )
        (at end(and
            (loc-dron ?d ?B)
            (loc-transportador ?t ?B)
            (increase (coste-total ?d)(* (fly-cost ?A ?B) (coste-mov ?d)))
            )
        )
    )
)

(:durative-action poner-caja-transportador
    :parameters (
        ?c - caja ?t - transportador ?d - dron ?l - loc 
    )
    :duration (= ?duration 5)
    :condition (and 
        (at start(and
            (caja-cogida ?c ?d)
            (>(capacidad-transportador ?t)0)
            )
        )(over all(and
            (loc-dron ?d ?l)
            (loc-transportador ?t ?l)
            )
        )
    )
    :effect (and 
        (at start(and              
            (increase (coste-total ?d) 1) 
            (not (caja-cogida ?c ?d))   
            )
        )(at end (and
            (caja-en-transportador ?c ?t)
            (dron-free ?d)
            (decrease (capacidad-transportador ?t)1)
            )
        )
    )
)   



(:durative-action take-caja-transportador
    :parameters (?c - caja ?t - transportador ?d - dron ?l - loc )
    :duration (= ?duration 5)
    :condition (and 
        (at start (and 
            (dron-free ?d)
            (caja-en-transportador ?c ?t )
            )
        )
        (over all(and
            (loc-dron ?d ?l)
            (loc-transportador ?t ?l)
            )
        )

    )
    :effect (and
        (at start (and 
            (caja-cogida ?c ?d)
            (not (dron-free ?d))
            (increase (coste-total ?d) 1)
            )
        )
        (at end(and 
            (not (caja-en-transportador ?c ?t ))
            (increase(capacidad-transportador ?t)1)
            )
        )
    )
)

(:durative-action take-caja
    :parameters ( ?c - caja ?d - dron ?l - loc)
    :duration(= ?duration 2)
    :condition (and
        (at start (and           
            (dron-free ?d)
            (caja-free ?c)
            )
        )
        (over all (and
            (loc-caja ?c ?l)
            (loc-dron ?d ?l)
            )
        )
    )
    :effect (and 
        (at start (and   
            (not (loc-caja ?c ?l))
            (not (dron-free ?d))
            (not (caja-free ?c))
            (increase (coste-total ?d) 1)
            )
        )
        (at end (and
            (caja-cogida ?c ?d)
            )
        )
    )
)

(:durative-action drop-caja
    :parameters ( ?c - caja ?d - dron ?cont - contenido ?p - persona ?l - loc)
    :duration(= ?duration 5)
    :condition (and 
        (at start(and
            (persona-necesita-contenido ?p ?cont)
            (caja-contenido ?c ?cont)
            (caja-cogida ?c ?d)
            )
        )
        (over all(and
            (loc-dron ?d ?l)
            (loc-persona ?p ?l)
            )
        )
    )
    :effect (and 
        (at start(and    
            (loc-caja ?c ?l)
            (not (caja-cogida ?c ?d))
            (dron-free ?d)            
            (not (persona-necesita-contenido ?p ?cont))
            (increase (coste-total ?d) 1)
            )
        )
        (at end(and
            (persona-tiene-caja ?p ?c)
            (persona-tiene-contenido ?p ?cont)
            )
        )
        
    )
)

)