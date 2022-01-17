#lang sicp

(define (sum-digits n)
  (cond
    ((< n 0) (sum-digits (- n)))
    ((= 0 n) 0)
    (else (+ (remainder n 10) (sum-digits (quotient n 10))))))
