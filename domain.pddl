(define (domain fifteen_puzzle)
    (:requirements :strips :typing)
    (:types tile position)
    
    (:predicates
        (at ?t - tile ?p - position)  ; Tile is at a position
        (empty ?p - position)         ; Position is empty
        (adjacent ?p1 ?p2 - position) ; Two positions are adjacent
    )

    (:action move
        :parameters (?t - tile ?from - position ?to - position)
        :precondition (and 
            (at ?t ?from)
            (empty ?to)
            (adjacent ?from ?to)
        )
        :effect (and
            (not (at ?t ?from))
            (at ?t ?to)
            (not (empty ?to))
            (empty ?from)
        )
    )
)
