(define (domain tomadaDomain)
    (:requirements :strips)
    (:types lig des)
    (:predicates (esta-ligado ?l - lig)
                 (esta-desligado ?d - des))
    (:action ligar
        :parameters (?l - lig ?d - des)
        :precondition (esta-desligado ?d)
        :effect (and (not(esta-desligado ?d)) (esta-ligado ?l))
    )
    (:action desligar
        :parameters (?l - lig ?d - des)
        :precondition (esta-ligado ?l)
        :effect (and (not(esta-ligado ?l)) (esta-desligado ?d))
    )
)
