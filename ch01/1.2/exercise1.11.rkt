#lang sicp

#;(define (f n)
  (cond
    ((< n 3) n)
    (else (+ (f (- n 1))
             (* 2 (f (- n 2)))
             (* 3 (f (- n 3)))))))

#|
(f 3)
(+ (f 2)
   (* 2 (f (- 3 2)))
   (* 3 (f (- 3 3))))
(+ 2
   (* 2 (f 1))
   (* 3 (f 0)))
(+ 2
   (* 2 1)
   (* 3 0))
(+ 2
   2
   0)
|#

;; got stuck. had to look here: http://community.schemewiki.org/?sicp-ex-1.11

#;(define (f n)
  (define (f-i a b c count)
    (cond ((< n 3) n) ;; will not be encountered in recursive call
          ((<= count 0) a)
          (else (f-i (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
  (f-i 2 1 0 (- n 2))) ;; starting count is n - 2. 2 1 0 are conditions that "bring about" 3.

;; excellent explanation of a different iterative version can be found
;; by searching "Explanation" at the above URL. corrected version below:

(define (f n) 
   ;; Given starting coefficients (a, b, c) = (1, 2, 3), 
   ;; where f(n) = 1 f(n-1) + 2 f(n-2) + 3 f(n-3), 
   ;; f-iter calculates new (a, b, c) such that 
   ;; f(n) = a f(2) + b f(1) + c f(0), 
   ;; where integer n > 3. 
   (define (f-iter n a b c) 
     (if (= n 3) 
         (+ (* a 2)  ;; f(2) = 2 
            (* b 1)  ;; f(1) = 1 ;; (* b 1) = b, and 
            (* c 0)) ;; f(0) = 0 ;; (* c 0) = 0, which can be omitted, 
                                 ;; but shown here for completeness. 
         (f-iter (- n 1)       ;; decrement counter 
                 (+ b a)       ;; new-a = a + b 
                 (+ c (* 2 a)) ;; new-b = 2a + c 
                 (* 3 a))))    ;; new-c = 3a 
   ;; main body 
   (if (< n 3) 
       n 
       (f-iter n 1 2 3))) 

;; takeaways: be patient, take your time, pay attention. work through the math, not just the structure. think.
;; challenges: what does the counter do? managing so many state variables.