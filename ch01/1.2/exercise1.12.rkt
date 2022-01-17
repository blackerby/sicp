#lang sicp

;; ex 1.12 
  
 (define (pascal r c) 
   (if (or (= c 1) (= c r)) 
       1 
       (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c))))

;; "the two numbers of it"
;; the number we're calculating is the sum of the two numbers above it in the triangle
;; (- r 1) is the previous row, (- c 1) is the previous column

;; given a row and a column, return the number at the place in Pascal's triangle

;; Testing 
(pascal 1 1) 
(pascal 2 2) 
(pascal 3 2) 
(pascal 4 2) 
(pascal 5 2) 
(pascal 5 3)

;; above from: http://community.schemewiki.org/?sicp-ex-1.12

;; r for row
;; c for column

;; think of it as a matrix where not every row has the same number of columns?

#|

1
1 1
1 2 1
1 3 3 1
1 4 6 4 1

|#