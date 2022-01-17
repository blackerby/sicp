#lang sicp

#|

Base case: (f 0) terminates with value 0. For n = 0, 2n = 0, the correct value for (f 0)

Induction hypothesis: Assume (f k) terminates with value 2k for all k >= 0

Inductive step: Consider (f n) where n >= 0. This will terminate if (f (- n 1)) does and will have the value
2 + f(n - 1). 
Because n - 1 is in the range 0 <= n - 1 < n, we can assume that (f (- n 1)) terminates with the value 2(n - 1).
Therefore, because 2 + f(n - 1) has the value 2 + 2(n-1) == 2 + 2n - 2 == 2n

Conclusion: (f n) terminates with value 2n for any n >= 0.

|#
