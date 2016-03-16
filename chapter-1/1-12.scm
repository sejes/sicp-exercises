;-------------------------------------------------------------------------------

; Exercise 1.12

1
1 1
1 2 1
1 3 3 1
1 4 6 4 1

; The numbers at the edge of the triangle are all 1, and each number inside the
; triangle is the sum of the two numbers above it. Write a procedure that
; computes elements of Pascal's triangle by means of a recursive process.

(define (choose n k)
  (cond ((or (< k 0) (> k n)) 0)
        ((or (= k 0) (= k n)) 1)
        (else (+ (choose (1- n) k)
                 (choose (1- n) (1- k))))))
