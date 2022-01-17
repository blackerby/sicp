#lang sicp

(define (foo n)
  (if (= n 0)
      2
      (expt (foo (- n 1)) 2)))

#|

Base case: (foo n) terminates with value 2 if n = 0 by the evaluation rule for if. Because 2^(2^0) == 2^1 == 2,
(foo 0) computes the correct value.

Induction hypothesis: Assume (foo k) terminates with value 2^(2^k) for all k > 0.

Inductive step: Consider evaluating (foo n) where n > 0. This will terminate if (foo (- n 1)) does with value
foo(n - 1)^2 == 2^(2^(n-1))^2 == 2^(2 * 2^(n-1)) == 2^(2^(1 + n - 1)) == 2^(2^n).

Conclusion: (foo n) terminates with value 2^(2^n) for any nonnegative integer n.

|#
