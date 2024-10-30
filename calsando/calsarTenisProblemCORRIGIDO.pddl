(define (problem calsando)
    (:domain calsarTenisDomain)
    (:objects
        meinha - meia
        sapatinho - sapato)
    (:init
        (semMeia meinha)
        (semSapato sapatinho))
    (:goal
        (and (not(semMeia meinha)) (not(semSapato sapatinho))))
)
