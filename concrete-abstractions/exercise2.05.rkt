#lang sicp

(define (mult m n)
  (cond
    ((= 0 m) 0)
    ((= 0 n) 0)
    ((< m 0) (- (mult (- m) n)))
    ((< n 0) (- (mult m (- n))))
    (else    (+ m (mult m (- n 1))))))
