#lang sicp

(define (square n) ; another version that doesn’t work
  (if (= n 0)
      0
      (+ (square (- n 2))
         (- (* 4 n) 4))))

#|

Base case: (square 0) terminates with value 0 because of the evaluation rule for if.
Because 0 = 0^2, (square 0) terminates with the correct value.

Induction hypothesis: Assume (square k) terminates with value k^2 for all k in the the range
0 <= k < n.

Induction step: Consider evaluating (square n) with n > 0. This will terminate if (square (- n 2)) does.
Because 0 <= n - 2 < n (not true if n = 1)... all odd numbers end up at 1, so won't terminate for any odd number

|#
