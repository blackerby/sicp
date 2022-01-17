#lang sicp

(define (p) (p)) ;; function of no arguments that calls itself

(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p))

#; (((lambda (x)
       (lambda (y)
         (if (= x 0)
             0
             y))) 0) (p)) ;; I may have the argument order wrong here, but the idea is basically the same

;; with an applicative order interpreter, the above call to test runs without terminating because the
;; arguments are evaluated before the procedure is applied

;; normal order
(if (= 0 0)
    0
    (p))

(if #t
    0
    (p))