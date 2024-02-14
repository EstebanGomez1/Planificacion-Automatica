(define (domain logisticaSE)

(:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality)

(:types 
    persona loc caja tipocaja- objects
)

(:predicates 
    (persona-herida ?p-persona ?l-loc)
    (caja-en-loc ?c-caja ?l-loc)
    (caja-tipo ?c-caja ?tc-tipocaja)
    (persona-tiene-contenido ?p-persona ?tc-tipocaja)
    (persona-tiene-caja ?p-persona ?c-caja)
    (caja-en-deposito ?c-caja ?l-loc)
    ()
)


(:functions 
)

)
