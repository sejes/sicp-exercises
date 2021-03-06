;-------------------------------------------------------------------------------

; Exercise 1.9

; Each of the following two procedures defines a method for adding two positive
; integers in terms of the procedures inc (1+), which increments its argument by 1,
; and dec (1-), which decrements its argument by 1.

(define (+ a b)
  (if (= a 0)
      b
      (1+ (+ (1- a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (1- a) (1+ b))))

; Using the substitution model, illustrate the process generated by each
; procedure in evaluating (+ 4 5). Are these processes iterative or recursive?

; First version, recursive
(+ 4 5)
(1+ (+ 3 5))
(1+ (1+ (+ 2 5)))
(1+ (1+ (1+ (+ 1 5))))
(1+ (1+ (1+ (1+ (+ 0 5)))))
(1+ (1+ (1+ (1+ 5))))
(1+ (1+ (1+ 6)))
(1+ (1+ 7))
(1+ 8)
9

; Second version, iterative
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9
