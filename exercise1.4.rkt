#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 4 -4)

(((lambda (b)
  (lambda (a)
    ((if (> b 0) + -) a b))) -4) 4)

((if (> -4 0) + -) 4 -4)

((if #f + -) 4 -4)

(- 4 -4)

8
