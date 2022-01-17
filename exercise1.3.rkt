#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-greater x y z)
  (cond
    ((and (>= x y) (>= y z))
      (sum-of-squares x y))
     ((and (>= y x) (>= x z))
      (sum-of-squares y x))
     ((and (>= z x) (>= x y))
      (sum-of-squares z x))
     ((and (>= x y) (>= z y))
      (sum-of-squares x z))
     ((and (>= z x) (>= y x))
      (sum-of-squares z y))
     (else (sum-of-squares y z))))

;; 1 2 3
;; 1 3 2
;; 2 1 3
;; 2 3 1
;; 3 2 1
;; 3 1 2
(sum-greater 1 2 3)
(sum-greater 1 3 2)
(sum-greater 2 1 3)
(sum-greater 2 3 1)
(sum-greater 3 2 1)
(sum-greater 3 1 2)

;; consider including tests for when some arguments are identical
