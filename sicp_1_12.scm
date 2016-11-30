(define (triangle r c)
	( if (or (= c 1) (= c r) )
	 1 
	 (+ 
	 (triangle (- r 1) (- c 1))
	 (triangle (- r 1) c )
	 )
	)
)

(triangle 1 1)
(triangle 5 3)
