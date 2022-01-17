#lang sicp

(define (presents-on-day n)
  (if (= n 1)
      1
      (+ n (presents-on-day (- n 1)))))

(define (presents-through-day n)
  (if (= n 1)
      1
      (+ (presents-on-day n) (presents-through-day (- n 1)))))