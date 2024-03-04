;Header and description

(define (domain airports)

;remove requirements that are not needed
(:requirements :strips :fluents :typing :durative-actions)

(:types 
    persona avion ciudad - object
)

(:predicates ;todo: define predicates here
    (avion-en-ciudad ?a - avion ?c - ciudad)
    (persona-en-avion ?p - persona ?a - avion)
    (persona-en-ciudad ?p - persona ?c - ciudad)       
    (puente-libre ?a - avion)
    (repostar-disponible ?a - avion)
)

(:functions ;todo: define numeric functions here
    (fuel-actual ?a - avion)
    (fuel-maximo ?a - avion)
    (consumo-por-km ?a - avion)
    (fuel-consumido)
    (distancia-entre-cidudades ?co ?cd - ciudad)    
    (tiempo-embarque)
    (velocidad-kmh ?a - avion)
)

(:durative-action embarcar
    :parameters (?p - persona ?a - avion ?c - ciudad)
    :duration (= ?duration (tiempo-embarque))
    :condition (and 
        (at start (and
            (persona-en-ciudad ?p ?c) 
            (puente-libre ?a)
        ))
        (over all (and 
            (avion-en-ciudad ?a ?c)
        ))
    )
    :effect (and 
        (at start (and 
            (not (persona-en-ciudad ?p ?c)) 
            (not (puente-libre ?a))
        ))
        (at end (and 
            (persona-en-avion ?p ?a)
            (puente-libre ?a)
        ))
    )    
)

(:durative-action desembarcar
    :parameters (?p - persona ?a - avion ?c - ciudad)
    :duration (= ?duration (tiempo-embarque))
    :condition (and 
        (at start (and 
            (puente-libre ?a)
            (persona-en-avion ?p ?a) 
        ))
        (over all (and 
            (avion-en-ciudad ?a ?c)
        ))
    )
    :effect (and 
        (at start (and 
            (not (puente-libre ?a))
            (not (persona-en-avion ?p ?a))
        ))
        (at end (and 
            (puente-libre ?a)
            (persona-en-ciudad ?p ?c) 
        ))
    )
)

(:durative-action repostar
    :parameters (?a - avion)
    :duration (= ?duration 1)
    :condition (and 
        (at start (and 
            (repostar-disponible ?a)
            (< (fuel-actual ?a) (fuel-maximo ?a))
        ))
    )
    :effect (and 
        (at start (and
            (not (repostar-disponible ?a))
        ))
        (at end (and 
            (assign (fuel-actual ?a) (fuel-maximo ?a))
            (repostar-disponible ?a)
        ))
    )
)

(:durative-action volar
    :parameters (?a - avion ?co ?cd - ciudad)
    :duration (= ?duration (* (/ (distancia-entre-cidudades ?co ?cd) (velocidad-kmh ?a)) 3600))
    :condition (and 
        (at start (and 
            (puente-libre ?a)
            (repostar-disponible ?a)
            (avion-en-ciudad ?a ?co) 
            (>= (fuel-actual ?a) (* (distancia-entre-cidudades ?co ?cd) (consumo-por-km ?a)))
        ))
    )
    :effect (and 
        (at start (and 
            (not (avion-en-ciudad ?a ?co))
        ))
        (at end (and 
            (avion-en-ciudad ?a ?cd)
            (decrease (fuel-actual ?a) (* (distancia-entre-cidudades ?co ?cd) (consumo-por-km ?a)))
            (increase (fuel-consumido) (* (distancia-entre-cidudades ?co ?cd) (consumo-por-km ?a)))
        ))
    )
)


)