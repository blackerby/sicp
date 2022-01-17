#lang sicp

#;(define (exp-of-2 n)
  (if (odd? n)
      0
      (+ 1 (exp-of-2 (/ n 2)))))

(define (exp-of-2-iter n e) ; returns (log (base 2) n/2k) + 1 where k is some odd number
  (if (odd? n)
      e
      (exp-of-2-iter (/ n 2) (+ 1 e))))

(define (exp-of-2 n)
  (exp-of-2-iter n 0))

#|

for n = (2^i)k, if n >= 1, if n is odd, procedure will terminate with 0 as its value. this is correct because
n = (2^0)k = 1(k) = k.

induction hypothesis: 

inductive step: 

|#
