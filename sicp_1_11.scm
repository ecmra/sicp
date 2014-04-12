#lang racket
(define (f n)
   (cond ((< n 3) n)
         (else (+ (f (- n 1))
                  (* 2 (f (- n 2)))
                  (* 3 (f (- n 3)))
                  )
               ))
    )

(define (factit n acc)
  (cond ((= n 0) acc)
      (else (factit (- n 1) (* n acc)))  
  ))

(define (fit n acc1 acc2 acc3)
  (cond 
    ((< n 3) acc1)
    (else (fit (- n 1) (+ acc1 (* 2 acc2) (* 3 acc3)) acc1 acc2)
  )))

; it is important to get the correct initial values in acc1,acc2, acc3 namely
; (fit n 2 1 0)
; for example (fit 10 2 1 0)=1892 = (f 10)