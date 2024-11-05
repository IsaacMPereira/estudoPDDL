(define (domain lampadaDomain)
    (:requirements :strips)
    (:predicates
        (fora-sala)
        (luz-ligada)
        (luz-desligada)
    )
    (:action entrar-na-sala
        :precondition (fora-sala)
        :effect (and (not(fora-sala)) (luz-ligada))
    )
    (:action desligar-luz
        :precondition (luz-ligada)
        :effect (and (not(luz-ligada)) (luz-desligada))
    )
)
