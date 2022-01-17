#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (identity x) x)

(define (inc n) (+ 1 n))

(define (sum-integers a b)
  (sum identity a inc b))

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
    (iter a 0))

(define (sum-integers-iter a b)
  (sum-iter identity a inc b))
