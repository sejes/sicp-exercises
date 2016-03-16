;-------------------------------------------------------------------------------

; Exercise 1.18

; Using the results of exercise 1.16 and 1.17, devise a procedure that generates
; an iterative process for multiplying two integers in terms of adding,
; doubling, and halving and uses a logarithmic number of steps.

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (mult-iter a b)
  (define (* a b acc)
    (cond ((zero? a) acc)
          ((even? a) (* (halve a) (double b) acc))
          (else (* (1- a) b (+ b acc)))))
  (if (<= a b)
      (* a b 0)
      (* b a 0)))
