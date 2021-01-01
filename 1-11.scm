;; recursive
(define (f n)
  (cond ((< n 3) n)
	(else
         ( + (f (- n 1) ) (* 2 ( f (- n 2 ) )) (* 3 (f (- n 3))) )  
	 )
	 )
  )



;; iterative

(define (fit-iter a b c count)
  (cond ((= count 3) (+ a (* 2 b) (* 3 c)))
	(else (fit-iter (+ a (* 2 b) (* 3 c)) a b (- count 1) ) )
	)
  )


(define (f2 n)
  (fit-iter 2 1 0 n)
  )


( f 20)
(f2 20)
