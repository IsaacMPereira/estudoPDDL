(define (domain robotArmEating)
	(:requirements :typing)
	(:types
		location locatable - object
			bot cupcake - llocatable
		robot - bot
	)
	
	(:predicates 
			(on ?obj - lacatable ?loc - location)
			(holding ?arm - locatable ?cupcack - locatable)
		(arm-empty)
		(path ?location1 - location ?location2 - location)
	)	
	(:action pick-up
		:parameters
			(?arm - bot
			 ?cupcacke - locatable
			 ?loc - location)
		:precondition
		 (and
			(on ?arm ?loc)
			(on ?cupcacke ?loc)
			(arm-empty)
		)
		:effect 
			(and
				(not (on ?cupcacke ?loc))
				(holding ?arm ?cupcacke)
				(not (arm-empty))
			)
	)
	(:action drop
		:parameters
			(?arm - bot
			 ?cupcacke - locatable
			 ?loc - location)
		:precondition
			(and
				(on ?arm ?loc)
				(holding ?arm ?cupcake)
			)
		?effect
			(and
				(on ?cupcacke ?loc)
				(arm-empty)
				(not (holding ?arm ?cupcake))
			)
	)
	(:action move
		:parameters
			(?Arm - bot
			 ?from - location
			 ?to - location)
		:precondition
			(and
				(on ?arm ?from)
				(path ?from ?to)
			)
		:effect
			(and
				(not (on ?arm ?from))
				(on ?arm ?to)
			)
	)
