;-------------------------------------------------------------------------------

; Exercise 1.7

; The good-enough? test used in computing square roots will not be very
; effective for finding the square roots of very small numbers. Also, in real
; computers, arithmetic operations are almost always performed with limited
; precision. This makes our test inadequate for very large numbers. Explain
; these statements, with examples showing how the test fails for small and large
; numbers. An alternative strategy for implementing good-enough? is to watch how
; guess changes from one iteration to the next and to stop when the change is a
; very small fraction of the guess. Design a square-root procedure that uses
; this kind of test. Does this work better for small and large numbers?

(define tolerance 0.000001)

(define (square n)
  (* n n))

(define (sqrt x)
  (define (iter guess)
    (let ((new-guess (improve guess)))
      (if (close-enough? guess new-guess)
          new-guess
          (iter new-guess))))
  (define (close-enough? guess new-guess)
    (< (abs (- guess new-guess)) tolerance))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (average a b)
    (/ (+ a b) 2))
  (iter 1.0))
