#lang sicp

(define (A x y)
  (cond
    ((= y 0) 0)
    ((= x 0) (* 2 y))
    ((= y 1) 2)
    (else (A (- x 1)
             (A x (- y 1))))))

(A 1 10) ;; => 1024
(A 2 4)  ;; => 65536
(A 3 3)  ;; => 65536

(define (f n) (A 0 n)) ;; f(n) = 2n
(define (g n) (A 1 n)) ;; g(n) = 2^n
(define (h n) (A 2 n)) ;; h(n) = define in terms of function composition, but composition of what?

;; h(4) = g(g(4))
;; does not work for n = 5

;; stuck. going to soluton wiki

;; http://community.schemewiki.org/?sicp-ex-1.10

#|

(f n): 2n
(g n): 0 for n=0, 2^{n} for n>0
(h n): 0 for n=0, 2 for n=1, 2^(2^(2^(2...(n times)))) for n>1

so could define in terms of composition of g, but how do you do that n times?

if a recursive definition is allowed:

h(n) = 0 if n = 0
       1 if n = 1
       g(h(n-1)) if n > 1

|#
