#lang sicp

(define (sum-integers-from-to low high)
  (if (> low high)
      0
      (+ (sum-integers-from-to (+ low 1) high) low)))
