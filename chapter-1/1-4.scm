;-------------------------------------------------------------------------------

; Exercise 1.4
; Observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behaviour of
; the following procedure:

(define a-plus-abs-b
  (lambda (a b)
    ((if (> b 0) + -) a b)))

; If b is positive, we apply + to arguments a and b, and apply - otherwise. In
; the latter case, (- a b) is equivalent to (+ a (- b)). Therefore, in either
; case, we are always adding a positive quantity to a, namely the absolute
; value of b, as the name of the function would suggest.
