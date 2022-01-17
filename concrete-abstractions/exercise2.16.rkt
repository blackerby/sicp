#lang sicp

(define (foo x n)
  (if (= n 0)
      1
      (+ (expt x n) (foo x (- n 1)))))

;; proof hand-written in notebook
