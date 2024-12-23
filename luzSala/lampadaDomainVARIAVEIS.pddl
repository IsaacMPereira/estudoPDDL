(define (domain lampadaDomain)
    (:requirements :strips)
    (:types sala interruptor)
    (:predicates
        (fora-sala ?s - sala)
        (luz-ligada ?ll - interruptor)
        (luz-desligada ?ld - interruptor)
    )
    (:action entrar-na-sala
        :parameters (?s - sala ?ll - interruptor)
        ; :parameters (?s - sala)
        :precondition (fora-sala ?s)
        :effect (and (not(fora-sala ?s)) (luz-ligada ?ll))
        ; :effect (and (not(fora-sala ?s))) ;Isso não funciona
    )
    (:action desligar-luz
        :parameters (?ll - interruptor ?ld - interruptor)
        :precondition (luz-ligada ?ll)
        :effect (and (not(luz-ligada ?ll)) (luz-desligada ?ld))
    )
)
