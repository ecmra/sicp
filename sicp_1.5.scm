; here applicative order gets hung
; normal order answers 0

(define (p) (p))

(define (test x y) 
   (if (= x 0)
        0
        y))

(test 0 (p))
