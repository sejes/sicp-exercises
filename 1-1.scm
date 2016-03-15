;-------------------------------------------------------------------------------

; Exercise 1.1
; Below is a sequence of expressions. What is the result printed by the
; interpreter in response to each expression? Assume that the sequence is to be
; evaluated in the order in which it is presented.

10
; => 10

(+ 5 3 4)
; => 12

(- 9 1)
; => 8

(/ 6 2)
; => 3

(+ (* 2 4) (- 4 6))
; => 6

(define a 3)
; guile doesn't print anything but mit-scheme prints ";Value: a"

(define b (+ a 1))
; analogous to above

(+ a b (* a b))
; => 19

(= a b)
; => #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; => 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; => 16

(+ 2 (if (> b a) b a))
; => 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; => 16
