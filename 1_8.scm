(define (square x) (* x x))
(define (cube x) (* (* x x) x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess) ) 3 ) )

(define (cubic-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubic-iter (improve guess x)
                 x)))

(define (cubic x)
  (cubic-iter 1.0 x))

(display (cubic 27))
