;-------------------------------------------------------------------------------

; Exercise 1.16

; Design a procedure that evolves an iterative exponentiation process that uses
; successive squaring and uses a logarithmic number of steps, as does fast-
; expt. (Hint: Using the observation that (b^(n/2))^2 = (b^2)^(n/2), keep, along
; with the exponent n and the base b, and additional state variable a, and
; define a state transformation in such a way that the product ab^n is unchanged
; from state to state. At the beginnin of the process a is taken to be 1, and
; the answer is given by a at the end of the process. In general, the technique
; of defining an invariant quantity that remains unchanged from state to state
; is a powerful way to think about the design of iterative algorithms.)

(define (square x)
  (* x x))

(define (fast-expt base expt)
  (define (iter b n a)
    (cond ((zero? n) a)
          ((even? n) (iter (square b) (/ n 2) a))
          (else (iter b (1- n) (* b a)))))
  (iter base expt 1))
