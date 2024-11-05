(define (problem grandeProblema)
    (:domain lampadaDomain)
    (:objects 
        s1 - sala
        it - interruptor
    )
    (:init
        (fora-sala s1)
    )
    (:goal
        (luz-desligada it)
    )
)
