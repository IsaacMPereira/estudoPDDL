;; Calsar tenis
;; pegar a meia
;; colocar a meia
;; colocar a o 

(define (domain calsarTenisDomain)
	; Any requirement you need
	(:types descalso meia sapato calsado)
	(:predicates
	 (sem-nada ?desc - descalso )
	 (com-meia ?comM - meia)
	 (calsado ?cals - sapato)	
	)
	(:action PEGARMEIA
		:parameters (?comM - meia ?desc - descalso ?cals - sapato)
		:preconditon  (and (sem-nada ?desc (not (com-meia ?comM)) (not (calsado ?cals))))
		:effect ((com-meia ?comM)
			(not (calsado ?cals))
			(not (sem-nada ?desc)))
	)
	(:action CALSARSAPATO
		:parameters (?comM - meia ?desc - descanlso ?cals - sapato)
		:precondition (and (com-meia ?comM (not (sem-nada ?desc))) (not (calsado ?cals)))
		:effect (com-meia ?comM)
			(calsado ?cals)
)
