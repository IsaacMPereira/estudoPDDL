(define (domain fecharGarrafaDomain)
    (:requirements :strips)
    (:types garrafa tampa mesa)
    (:predicates
        (garrafa-chao ?g - garrafa)
        (tampa-chao ?t - tampa)
        (garrafa-mesa ?g - garrafa ?m - mesa)
        (tampa-mesa ?t - tampa ?m - mesa)
        (tampada ?g - garrafa)
        (destampada ?g - garrafa)
        (tampada-com ?g - garrafa ?t - tampa)
    )
    (:action PEGAR
        :parameters (?g - garrafa ?t - tampa ?m - mesa)
        :precondition (and (garrafa-chao ?g) 
                       (tampa-chao ?t) 
                       (not(garrafa-mesa ?g ?m)) 
                       (not(tampa-mesa ?t ?m)) )
        :effect (and (not(garrafa-chao ?g)) 
                 (not(tampa-chao ?t)) 
                 (garrafa-mesa ?g ?m) 
                 (tampa-mesa ?t ?m) 
                 (not(tampada ?g)) 
                 (destampada ?g) )
    )
    (:action TAMPAR
        :parameters (?g - garrafa ?t - tampa ?m - mesa)
        :precondition (and (garrafa-mesa ?g ?m) 
                       (tampa-mesa ?t ?m) 
                       (not(tampada ?g)) 
                       (destampada ?g) )
        :effect (and (not(destampada ?g))
                 (tampada ?g)
                 (tampada-com ?g ?t) )
    )
)
