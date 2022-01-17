#lang sicp

(define (power-product a b e)
  (if (= e 0)
      a
      (power-product (* a b) b (- e 1))))

(define (power b e)
  (power-product 1 b e))
