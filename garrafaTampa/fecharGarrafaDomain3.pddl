(define (domain fecharGarrafaDomain)
    (:requirements :strips)
    (:types garrafa tampa mesa)
    (:predicates
        (garrafa-chao ?g - garrafa)
        (tampa-chao ?t - tampa)
        (garrafa-mesa ?g - garrafa ?m - mesa)
        (tampa-mesa ?t - tampa ?m - mesa)
        (tampada ?g - garrafa ?t -tampa)
    )
    (:action PEGAR
        :parameters (?g - garrafa ?t - tampa)
        :precondition (and (garrafa-chao ?g) (tampa-chao ?t) )
        :effect (and (not(garrafa-chao ?g)) 
                 (not(tampa-chao ?t)) 
                 (not(garrafa-mesa ?g ?m)) 
                 (not(tampa-mesa ?t ?m)) )
    )
    (:action COLOCAR-NA-MESA
        :parameters (?g - garrafa ?t - tampa ?m - mesa)
        :precondition (and (not(garrafa-mesa ?g ?m)) 
                       (not(tampa-mesa ?t ?m)) )
        :effect (and (garrafa-mesa ?g ?m) 
                 (tampa-mesa ?t ?m) 
                 (not(tampada ?g)) )
    )
    (:action TAMPAR
        :parameters (?g - garrafa ?t - tampa)
        :precondition (and (not(tampada ?g)) )
        :effect (and (tampada ?g ?t) )
    )
)
