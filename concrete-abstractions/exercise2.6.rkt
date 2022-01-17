#lang sicp

(define (subtract-the-first n)
  (if (= n 0)
      0
      (- (subtract-the-first (- n 1))
         n)))

#|

Subtracts the first n natural numbers from 0

|#

(define (factorial n)
  (if (= n 0)
      1
      (* (factorial (- n 1)) n)))

(define (factorial2 n)
  (if (= n 0)
      1
      (* n (factorial2 (- n 1)))))

;; Order of multiplication doesn't change because of commutativity of multiplication
;; Same would go for sum-of-first because addition is commutative too

(define (subtract-the-first2 n)
  (if (= n 0)
      0
      (- n (subtract-the-first (- n 1)))))

#|

Adds the first n natural numbers from 0

Different answer because subtraction is not commutative. 

|#