#lang sicp

;; couldn't understand the problem so found this solution
;; http://concrete-abstractions.blogspot.com/2006/05/ex-212.html

(define (exp-of-2 n)
  (if (odd? n)
      0
      (+ 1 (exp-of-2 (/ n 2)))))

;; how it works: how many times can you divide n by two before reaching an odd number? that's the exponent of 2
;; in i. the odd number your reach is k.
