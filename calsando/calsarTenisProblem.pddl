(define problem calsarTenis
	(:domain calsarTenisDomain)
	(:objects meia - meia
		  sapato - sapato)
	(:init
		(sem-meia meia)
		(sem-sapato sapato))
	(:goal (and ((not (sem-meia meia)) (not (sem-sapato sapato))))) 
)
