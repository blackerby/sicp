#lang sicp

(define (square n)
  (if (= n 0)
      0
      (if (even? n)
          (* (square (/ n 2)) 4)
          (+ (square (- n 1))
             (- (+ n n) 1)))))
