(define (domain calsarTenisDomain)
	(:types meia sapato)
	(:predicates
	 (semMeia ?sMeia - meia)
	 (semSapato ?sSapato - sapato)
	)
	(:action COLOCARMEIA
		:parameters (?sMeia - meia ?sSapato - sapato)
		:precondition  (and (semMeia ?sMeia) (semSapato ?sSapato))
        :effect (not (semMeia ?sMeia))
	)
	(:action CALSARSAPATO
		:parameters (?sMeia - meia ?sSapato - sapato)
		:precondition (and (not(semMeia ?sMeia)) (semSapato ?sSapato))
		:effect (and (not(semMeia ?sMeia)) (not(semSapato ?sSapato)))
    	)
)
