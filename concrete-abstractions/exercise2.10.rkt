#lang sicp

(define (count-odd n)
  (cond
    ((< n 0) (count-odd (- n)))
    ((= n 0) 0)
    ((odd? (remainder n 10)) (+ (count-odd (quotient n 10)) 1))
    (else (count-odd (quotient n 10)))))
