#lang sicp

(define (square x) (* x x))

#;(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt-iter old-guess guess x)
    (if (good-enough? old-guess guess)
        guess
        (sqrt-iter guess (improve guess x)
                   x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

#;(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 0 1.0 x))

#;(define (sqrt x)
    (sqrt-iter 1.0 x))

#|

small number example:

> (sqrt 0.0000000000000001)
0.03125000000000106
> (square (sqrt 0.0000000000000001))
0.0009765625000000664

|#

#|

not sure about large number example. takes too long to run?

|#

#;(define (good-enough? old-guess new-guess)
    (<= (abs (- old-guess new-guess)) 0.0000001))

#|

doesn't seem like improvement for very small numbers,
but perhaps improves precision?

> (sqrt 9)
3.0
> (sqrt 0.0000000000000001)
6.016283869923496e-8
> (square (sqrt 0.0000000000000001))
3.6195671603501646e-15

|#

(define (good-enough? old-guess guess)
    (<= (abs (- old-guess guess)) (* guess 0.00001))) ; better solution and takes problem description into account

;; need a FRACTION of the original guess to check against

;; more here: http://community.schemewiki.org/?sicp-ex-1.7

#|

> (sqrt 9)
3.0
> (sqrt 0.0000000000000001)
1e-8
> (square (sqrt 0.0000000000000001))
1.0000000000000001e-16
> (sqrt 0)
0.0

|#

#;(define (good-enough? guess x)
  (<= (abs (- guess x)) (* guess 0.001)))

;; above does not work -- investigate why