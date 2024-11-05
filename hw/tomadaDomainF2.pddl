(define (domain tomadaDomain)
    (:predicates (esta-ligado)
                 (esta-desligado))
    (:action ligar
        :precondition (esta-desligado)
        :effect (and (esta-ligado) (not(esta-desligado)))
    )
    (:action desligar
        :precondition (esta-ligado)
        :effect (and (esta-desligado) (not(esta-ligado)))
    )
)
