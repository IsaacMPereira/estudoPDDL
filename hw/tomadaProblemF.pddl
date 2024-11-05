(define (problem problemaTomada)
    (:domain tomadaDomain)
    (:objects ligado - lig
              desligado - des)
    (:init
        esta-desligado desligado
    )
    (:goal
        esta-ligado ligado
    )
)
