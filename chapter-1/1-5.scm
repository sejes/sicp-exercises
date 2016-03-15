;-------------------------------------------------------------------------------

; Exercise 1.5
; Ben Bitdiddle has invented a test to determine whether the interpreter he is
; faced with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:

(define p
  (lambda ()
    (p)))

(define (test x y)
  (if (zero? x)
      0
      y))

; Then he evaluates the expression
'(test 0 (p))

; What behaviour will Ben observe with an interpreter that uses applicative-
; order evaluation? What behaviour will he observe with an interpreter that
; uses normal-order evaluation? Explain your answer. (Assume that the
; evaluation rule for the special form if is the same whether the interpreter
; is using normal or applicative order: The predicate expression is evaluated
; first, and the result determines whether to evaluate the consequent or the
; alternative expression.)

; In applicative-order evaluation, the interpreter would attempt to evaluate 0
; and (p) before passing their values to test. However, since p never halts,
; (test 0 (p)) won't either. Whereas in normal-order evaluation, the expression
; (p) will be substituted for the formal parameter y in the body of test, which
; returns 0 because x is found to be 0 without (p) ever being evaluated.
