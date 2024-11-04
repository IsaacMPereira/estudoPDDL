(define (problem fritandoProblem)
	(:domain fritandoDomain)
	(:objects ovinho - ovo
		  frigi1 - frigideira
		  fogao1 - fogao
		  oleo1 - oleo
		  prato1 - prato
		  temp1 - tempero
		  mesa1 - mesa)
	(:init
		(fogaoDesligado fogao1)
		;(frigideiraNoFogao frigi1 fogao1)
		;(oleoNaFrigideira oleo1 frigi1)
		;(ovoNaFrigideira ovinho frigi1)
		;(ovoPronto ovinho temp1)
		;(ovoProntoPrato ovinho prato1)
		;(pratoMesa prato1 mesa1)
	)
	(:goal (and (pratoMesa prato1 mesa1)(ovoProntoPrato ovinho prato1)))
)
