(define (square x)
	(* x x)
)

(square 5)

(define (even? n)
	(= (remainder n 2) 0)
)

(even? 6)
(even? 13)

(define (fast-exp b n)
	(fast-exp-iter b n 1)
)

(define (fast-exp-iter b n a)
	(cond ((= n 0 ) a)
		((even? n) (fast-exp-iter (square b )(/ n 2) a))
		(else (fast-exp-iter b (- n 1) (* a b)))
	)
)

(fast-exp 3 2)
(fast-exp 2 3)
(fast-exp 5 6)
(square 1.25)
