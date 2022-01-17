#lang sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (factorial a b)
  (product-iter identity a inc b))

(define (pi-product a b)
  (define (pi-term x)
    (* (/ x (+ x 1.0)) ; lazy: change just one numeric literal to float
       (/ (+ x 2) (+ x 1))))
  (define (pi-next x)
    (+ x 2))
  (* 4 (product-iter pi-term a pi-next b)))
