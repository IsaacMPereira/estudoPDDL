(define (problem letSeat-simple)
	(:domain eatingDomain)
	(:objects
		arm - robot
		cupcake - cupcake
		table - location
		plate - location
	)
	(:init 
		(on arm table)
		(on cupcake table)
		(path table plate)
	)
	(:goal 
		(on cupcake plate)
	)
