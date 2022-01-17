#lang sicp

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

#|

Base case: (factorial 1) terminates with the value 1 because of the evaluation rule for if.
Because 1 = 1!, (factorial 1) computes the correct value.

Induction hypothesis: Assume that (factorial k) terminates with the value k! for all k in
the range 1 <= k < n.

Inductive step: Consider evaluating (factorial n) with n > 1. This will terminate if the evaluation
of (factorial (- n 1)) does and will have the same value as (* n (factorial (- n 1))). Because 1 <= n - 1 < n,
we can assume by our induction hypothesis that (factorial (- n 1)) does terminate with the value (n - 1)!.
Therefore (* n (factorial (- n 1))) evaluates to n * (n - 1)!. Because n! = n * (n - 1)!, we see that (factorial n)
does terminate with the correct value for any arbitrary positive n under the inductive hypothesis of correct operation
for smaller arguments.

Conclusion: Therefore, by mathematical induction on n, (factorial n) terminates with the value n! for any nonnegative
integer n.

|#
