; Problem

(define
    (problem hamburguer001)
    (:domain hamburguer)
    (:objects
        pao-normal - pao
        brioche - pao
        bovina - carne
        vegetariana - carne
        queijo - acompanhamento
        alface - acompanhamento
        mostarda - molho
        ketchup - molho
    )
    (:init
        (ingrediente-consumido mostarda)
    )
    (:goal (and
        (hamburguer-pronto brioche bovina alface mostarda)
        (hamburguer-pronto brioche vegetariana alface ketchup))
    )
)

