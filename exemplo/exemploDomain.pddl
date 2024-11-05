; Domain

(define
    (domain hamburguer)
    (:requirements :strips :typing :negative-preconditions)
    (:types
        pao carne acompanhamento molho - ingrediente)
    (:predicates
        (ingrediente-consumido ?i - ingrediente)
        (hamburguer-pronto ?p - pao ?c - carne ?a - acompanhamento ?m - molho))
    (:action fazer-hamburguer
        :parameters (?p - pao ?c - carne ?a - acompanhamento ?m - molho)
        :precondition (and
            (not (ingrediente-consumido ?p))
            (not (ingrediente-consumido ?c))
            (not (ingrediente-consumido ?a))
            (not (ingrediente-consumido ?m))
        )
        :effect (and
            (ingrediente-consumido ?p)
            (ingrediente-consumido ?c)
            (ingrediente-consumido ?a)
            (ingrediente-consumido ?m)
            (hamburguer-pronto ?p ?c ?a ?m)
        )
    )
    (:action comprar-ingrediente
        :parameters (?i - ingrediente)
        :precondition (ingrediente-consumido ?i)
        :effect (not (ingrediente-consumido ?i))
    )
)

