#lang sicp

#;(define (factorial-product a b)
  (if (= b 0)
      a
      (factorial-product (* a b) (- b 1))))

#;(define (factorial n)
  (factorial-product 1 n))

#;(define (factorial-product a b)
    (if (= 0 a)
        b
        (factorial-product (- a 1) (* a b))))

#;(define (factorial n)
    (factorial-product (- n 1) n))

#;(define (factorial a b n)
    (if (> a n)
        b
        (factorial (+ 1 a) (* a b) n)))

(define (factorial n)
  (define (factorial-product a b)
    (if (> a n)
        b
        (factorial-product (+ 1 a) (* a b))))
  (factorial-product 2 1))
