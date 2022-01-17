#lang sicp

; Number N -> Number
(define (power b e)
  (if (zero? e)
      1
      (* b (power b (- e 1)))))
  