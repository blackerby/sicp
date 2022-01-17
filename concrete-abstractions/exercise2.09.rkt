#lang sicp

(define (count-sixes n)
  (cond
    ((< n 0) (count-sixes (- n)))
    ((= n 0) 0)
    ((= 6 (remainder n 10)) (+ (count-sixes (quotient n 10)) 1))
    (else (count-sixes (quotient n 10)))))

(define (count-d n d)
  (cond
    ((< n 0) (count-d (- n) d))
    ((= n 0) 0)
    ((= d (remainder n 10)) (+ (count-d (quotient n 10) d) 1))
    (else (count-d (quotient n 10) d))))
