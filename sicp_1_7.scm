(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
 (/ (+ x y) 2))

(define (good-enough? guess x)
 (< (abs ( - (square guess ) x)) 0.001))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
	x)))

(define (new-good-enough? guess1 guess2)
 (< (abs (/ (- guess2 guess1) guess1)) 1e-10))

(define (new-sqrt-iter guess1 guess2 x)
  (if (new-good-enough? guess1 guess2 )
    guess2
    (new-sqrt-iter guess2 (improve guess2 x) x)))

(define (sqrt x) 
    (sqrt-iter 1.0 x))

(define (new-sqrt x)
    (new-sqrt-iter 1.01 1.0 x)
)

(sqrt 9)
(new-sqrt 9.0)
(sqrt 1000000)
(new-sqrt 1000000)
(sqrt 1e12)
(new-sqrt 1e12)
(sqrt 1e-7)
(new-sqrt 1e-7)
(sqrt 1e-9)
(new-sqrt 1e-9)

;so how does it work better than the old version?
; some examples below:
;
;(sqrt 9)  3.00009155413138  (new-sqrt 9.0)  3  new one better
;(sqrt 1000000) 1000.0000000000118 (new-sqrt 1000000) 1000. new one better
;(sqrt 1e12)  1000000.   (new-sqrt 1e12) ;Value: 1000000.   the same
;(sqrt 1e-7)  .03125106561775382  (new-sqrt 1e-7)  3.1622776601683794e-4  new one much better
;(sqrt 1e-9)  .03125001065624928  (new-sqrt 1e-9)  3.1622776601683795e-5 
;
 
