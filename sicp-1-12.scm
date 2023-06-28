(define (pascal r c)
  (cond ((and (= r 1) (= c 1)) 1)
        ((= r c) 1  )
	(( = c 1) 1 )
	(else (+ (pascal (- r 1 ) (- c 1)) (pascal (- r 1) c))  )
	)
  )

(display (pascal 1 1))

;rlfe scheme --load sicp-1-12.scm 
