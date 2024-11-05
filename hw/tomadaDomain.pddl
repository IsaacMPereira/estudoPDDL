(define tomadaDomain
    (:requirements :strips)
    (:types lig des)
    (:predicates (mudarOn ?mo - lig)
                 (mudarOff ?mof - des))
    (:action mudarParaOn
        :parameters (?mo - lig ?mof - des)
        :precondition (mudarOff ?mof)
        :effect (and (not(mudarOff ?mof)) (mudarOn ?mo))
    )
    (:action mudarParaOff
        :parameters (?mo - lig ?mof - des)
        :precondition (mudarOn ?mo)
        :effect (and (not(mudarOn ?mo)) (mudarOff ?mof))
    )
)
