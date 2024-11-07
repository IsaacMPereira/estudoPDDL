(define (problem fecharGarrafa001)
    (:domain fecharGarrafaDomain)
    (:objects t1 - tampa 
              g1 - garrafa 
              m1 - mesa)
    (:init 
        (garrafa-chao g1)
        (tampa-chao t1)
    )
    (:goal (and (tampada g1) ))
)
