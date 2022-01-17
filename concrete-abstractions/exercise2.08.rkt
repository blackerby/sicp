#lang sicp

(define (sum-of-squares n)
  (if (= n 0)
      0
      (+ (sum-of-squares (- n 1)) (* n n))))

(define (sum-of-cubes n)
   (if (= n 0)
      0
      (+ (sum-of-cubes (- n 1)) (* n n n))))

(define (sum-of-powers n p)
  (if (= n 0)
      0
      (+ (sum-of-powers (- n 1) p) (expt n p))))
